-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Dec 10 23:28:42 2025
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
    validW : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \morlet_to_phase_env.env_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : in STD_LOGIC;
    \freq_low_46.diff_W_reg[19]\ : in STD_LOGIC_VECTOR ( 19 downto 0 )
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
  signal \^q\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \freq_low_46.diff_W[15]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[15]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[15]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[15]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[15]_i_6_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[15]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[15]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[15]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[19]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[19]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[19]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[19]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[7]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[7]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[7]_i_6_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[7]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[7]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W[7]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_W_reg[7]_i_1_n_7\ : STD_LOGIC;
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
  signal \morlet_to_phase_env.delay[4]_i_1__0_n_0\ : STD_LOGIC;
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
  signal \^validw\ : STD_LOGIC;
  signal \NLW_freq_low_46.diff_W_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_freq_low_46.diff_W_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_W_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_W_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_W_reg[7]_i_1\ : label is 35;
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
  Q(19 downto 0) <= \^q\(19 downto 0);
  validW <= \^validw\;
\freq_low_46.diff_W[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(15),
      I1 => \freq_low_46.diff_W_reg[19]\(15),
      O => \freq_low_46.diff_W[15]_i_2_n_0\
    );
\freq_low_46.diff_W[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(14),
      I1 => \freq_low_46.diff_W_reg[19]\(14),
      O => \freq_low_46.diff_W[15]_i_3_n_0\
    );
\freq_low_46.diff_W[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(13),
      I1 => \freq_low_46.diff_W_reg[19]\(13),
      O => \freq_low_46.diff_W[15]_i_4_n_0\
    );
\freq_low_46.diff_W[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \freq_low_46.diff_W_reg[19]\(12),
      O => \freq_low_46.diff_W[15]_i_5_n_0\
    );
\freq_low_46.diff_W[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \freq_low_46.diff_W_reg[19]\(11),
      O => \freq_low_46.diff_W[15]_i_6_n_0\
    );
\freq_low_46.diff_W[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \freq_low_46.diff_W_reg[19]\(10),
      O => \freq_low_46.diff_W[15]_i_7_n_0\
    );
\freq_low_46.diff_W[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \freq_low_46.diff_W_reg[19]\(9),
      O => \freq_low_46.diff_W[15]_i_8_n_0\
    );
\freq_low_46.diff_W[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \freq_low_46.diff_W_reg[19]\(8),
      O => \freq_low_46.diff_W[15]_i_9_n_0\
    );
\freq_low_46.diff_W[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(19),
      I1 => \freq_low_46.diff_W_reg[19]\(19),
      O => \freq_low_46.diff_W[19]_i_2_n_0\
    );
\freq_low_46.diff_W[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(18),
      I1 => \freq_low_46.diff_W_reg[19]\(18),
      O => \freq_low_46.diff_W[19]_i_3_n_0\
    );
\freq_low_46.diff_W[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(17),
      I1 => \freq_low_46.diff_W_reg[19]\(17),
      O => \freq_low_46.diff_W[19]_i_4_n_0\
    );
\freq_low_46.diff_W[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(16),
      I1 => \freq_low_46.diff_W_reg[19]\(16),
      O => \freq_low_46.diff_W[19]_i_5_n_0\
    );
\freq_low_46.diff_W[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \freq_low_46.diff_W_reg[19]\(7),
      O => \freq_low_46.diff_W[7]_i_2_n_0\
    );
\freq_low_46.diff_W[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \freq_low_46.diff_W_reg[19]\(6),
      O => \freq_low_46.diff_W[7]_i_3_n_0\
    );
\freq_low_46.diff_W[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \freq_low_46.diff_W_reg[19]\(5),
      O => \freq_low_46.diff_W[7]_i_4_n_0\
    );
\freq_low_46.diff_W[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \freq_low_46.diff_W_reg[19]\(4),
      O => \freq_low_46.diff_W[7]_i_5_n_0\
    );
\freq_low_46.diff_W[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \freq_low_46.diff_W_reg[19]\(3),
      O => \freq_low_46.diff_W[7]_i_6_n_0\
    );
\freq_low_46.diff_W[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \freq_low_46.diff_W_reg[19]\(2),
      O => \freq_low_46.diff_W[7]_i_7_n_0\
    );
\freq_low_46.diff_W[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \freq_low_46.diff_W_reg[19]\(1),
      O => \freq_low_46.diff_W[7]_i_8_n_0\
    );
\freq_low_46.diff_W[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \freq_low_46.diff_W_reg[19]\(0),
      O => \freq_low_46.diff_W[7]_i_9_n_0\
    );
\freq_low_46.diff_W_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \freq_low_46.diff_W_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \freq_low_46.diff_W_reg[15]_i_1_n_0\,
      CO(6) => \freq_low_46.diff_W_reg[15]_i_1_n_1\,
      CO(5) => \freq_low_46.diff_W_reg[15]_i_1_n_2\,
      CO(4) => \freq_low_46.diff_W_reg[15]_i_1_n_3\,
      CO(3) => \freq_low_46.diff_W_reg[15]_i_1_n_4\,
      CO(2) => \freq_low_46.diff_W_reg[15]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_W_reg[15]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_W_reg[15]_i_1_n_7\,
      DI(7 downto 0) => \^q\(15 downto 8),
      O(7 downto 0) => D(15 downto 8),
      S(7) => \freq_low_46.diff_W[15]_i_2_n_0\,
      S(6) => \freq_low_46.diff_W[15]_i_3_n_0\,
      S(5) => \freq_low_46.diff_W[15]_i_4_n_0\,
      S(4) => \freq_low_46.diff_W[15]_i_5_n_0\,
      S(3) => \freq_low_46.diff_W[15]_i_6_n_0\,
      S(2) => \freq_low_46.diff_W[15]_i_7_n_0\,
      S(1) => \freq_low_46.diff_W[15]_i_8_n_0\,
      S(0) => \freq_low_46.diff_W[15]_i_9_n_0\
    );
\freq_low_46.diff_W_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \freq_low_46.diff_W_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_freq_low_46.diff_W_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \freq_low_46.diff_W_reg[19]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_W_reg[19]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_W_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => \^q\(18 downto 16),
      O(7 downto 4) => \NLW_freq_low_46.diff_W_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => D(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \freq_low_46.diff_W[19]_i_2_n_0\,
      S(2) => \freq_low_46.diff_W[19]_i_3_n_0\,
      S(1) => \freq_low_46.diff_W[19]_i_4_n_0\,
      S(0) => \freq_low_46.diff_W[19]_i_5_n_0\
    );
\freq_low_46.diff_W_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \freq_low_46.diff_W_reg[7]_i_1_n_0\,
      CO(6) => \freq_low_46.diff_W_reg[7]_i_1_n_1\,
      CO(5) => \freq_low_46.diff_W_reg[7]_i_1_n_2\,
      CO(4) => \freq_low_46.diff_W_reg[7]_i_1_n_3\,
      CO(3) => \freq_low_46.diff_W_reg[7]_i_1_n_4\,
      CO(2) => \freq_low_46.diff_W_reg[7]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_W_reg[7]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_W_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \^q\(7 downto 0),
      O(7 downto 0) => D(7 downto 0),
      S(7) => \freq_low_46.diff_W[7]_i_2_n_0\,
      S(6) => \freq_low_46.diff_W[7]_i_3_n_0\,
      S(5) => \freq_low_46.diff_W[7]_i_4_n_0\,
      S(4) => \freq_low_46.diff_W[7]_i_5_n_0\,
      S(3) => \freq_low_46.diff_W[7]_i_6_n_0\,
      S(2) => \freq_low_46.diff_W[7]_i_7_n_0\,
      S(1) => \freq_low_46.diff_W[7]_i_8_n_0\,
      S(0) => \freq_low_46.diff_W[7]_i_9_n_0\
    );
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
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_0\,
      O => \morlet_to_phase_env.delay[1]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[2]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(3),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_0\,
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[3]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(0),
      I5 => \morlet_to_phase_env.phase_reg[19]_0\,
      O => \morlet_to_phase_env.delay[4]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.phase_reg[19]_0\,
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(1),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.delay[4]_i_2__1_n_0\
    );
\morlet_to_phase_env.delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[0]_i_1__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(0),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[1]_i_1__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(1),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[2]_i_1__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(2),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[3]_i_1__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(3),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[4]_i_2__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(4),
      R => '0'
    );
\morlet_to_phase_env.env[15]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555D55555555554"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_0\,
      I1 => \morlet_to_phase_env.delay_reg\(4),
      I2 => \morlet_to_phase_env.delay_reg\(3),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      I5 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.env[15]_i_1__1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(9),
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
      Q => \^q\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(10),
      Q => \^q\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(11),
      Q => \^q\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(12),
      Q => \^q\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(13),
      Q => \^q\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(14),
      Q => \^q\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(15),
      Q => \^q\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(16),
      Q => \^q\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(17),
      Q => \^q\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(18),
      Q => \^q\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(19),
      Q => \^q\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(1),
      Q => \^q\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(2),
      Q => \^q\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(3),
      Q => \^q\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(4),
      Q => \^q\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(5),
      Q => \^q\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(6),
      Q => \^q\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(7),
      Q => \^q\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(8),
      Q => \^q\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(9),
      Q => \^q\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2__1_n_0\,
      I1 => \morlet_to_phase_env.phase_reg[19]_0\,
      I2 => \^validw\,
      I3 => \morlet_to_phase_env.valid_i_3__1_n_0\,
      O => \morlet_to_phase_env.valid_i_1__1_n_0\
    );
\morlet_to_phase_env.valid_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.valid_i_2__1_n_0\
    );
\morlet_to_phase_env.valid_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(3),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.phase_reg[19]_0\,
      O => \morlet_to_phase_env.valid_i_3__1_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1__1_n_0\,
      Q => \^validw\,
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
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_0\
    );
tan2_i: component cordic_atan2_16_HD7
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \morlet_to_phase_env.env_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : in STD_LOGIC;
    validE : in STD_LOGIC;
    validW : in STD_LOGIC;
    \freq_low_46.diff_N_reg[19]\ : in STD_LOGIC_VECTOR ( 19 downto 0 )
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
  signal \^q\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal amp_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal delay0 : STD_LOGIC;
  signal \freq_low_46.diff_N[15]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[15]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[15]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[15]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[15]_i_6_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[15]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[15]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[15]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[19]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[19]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[19]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[19]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[7]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[7]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[7]_i_6_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[7]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[7]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N[7]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_N_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lphase : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \morlet_to_phase_env.delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[3]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[4]_i_1_n_0\ : STD_LOGIC;
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
  signal validN : STD_LOGIC;
  signal \NLW_freq_low_46.diff_N_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_freq_low_46.diff_N_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_N_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_N_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_N_reg[7]_i_1\ : label is 35;
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
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_2\ : label is "soft_lutpair2";
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
  Q(19 downto 0) <= \^q\(19 downto 0);
\freq_low_46.diff_N[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(15),
      I1 => \freq_low_46.diff_N_reg[19]\(15),
      O => \freq_low_46.diff_N[15]_i_2_n_0\
    );
\freq_low_46.diff_N[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(14),
      I1 => \freq_low_46.diff_N_reg[19]\(14),
      O => \freq_low_46.diff_N[15]_i_3_n_0\
    );
\freq_low_46.diff_N[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(13),
      I1 => \freq_low_46.diff_N_reg[19]\(13),
      O => \freq_low_46.diff_N[15]_i_4_n_0\
    );
\freq_low_46.diff_N[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \freq_low_46.diff_N_reg[19]\(12),
      O => \freq_low_46.diff_N[15]_i_5_n_0\
    );
\freq_low_46.diff_N[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \freq_low_46.diff_N_reg[19]\(11),
      O => \freq_low_46.diff_N[15]_i_6_n_0\
    );
\freq_low_46.diff_N[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \freq_low_46.diff_N_reg[19]\(10),
      O => \freq_low_46.diff_N[15]_i_7_n_0\
    );
\freq_low_46.diff_N[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \freq_low_46.diff_N_reg[19]\(9),
      O => \freq_low_46.diff_N[15]_i_8_n_0\
    );
\freq_low_46.diff_N[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \freq_low_46.diff_N_reg[19]\(8),
      O => \freq_low_46.diff_N[15]_i_9_n_0\
    );
\freq_low_46.diff_N[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(19),
      I1 => \freq_low_46.diff_N_reg[19]\(19),
      O => \freq_low_46.diff_N[19]_i_2_n_0\
    );
\freq_low_46.diff_N[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(18),
      I1 => \freq_low_46.diff_N_reg[19]\(18),
      O => \freq_low_46.diff_N[19]_i_3_n_0\
    );
\freq_low_46.diff_N[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(17),
      I1 => \freq_low_46.diff_N_reg[19]\(17),
      O => \freq_low_46.diff_N[19]_i_4_n_0\
    );
\freq_low_46.diff_N[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(16),
      I1 => \freq_low_46.diff_N_reg[19]\(16),
      O => \freq_low_46.diff_N[19]_i_5_n_0\
    );
\freq_low_46.diff_N[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \freq_low_46.diff_N_reg[19]\(7),
      O => \freq_low_46.diff_N[7]_i_2_n_0\
    );
\freq_low_46.diff_N[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \freq_low_46.diff_N_reg[19]\(6),
      O => \freq_low_46.diff_N[7]_i_3_n_0\
    );
\freq_low_46.diff_N[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \freq_low_46.diff_N_reg[19]\(5),
      O => \freq_low_46.diff_N[7]_i_4_n_0\
    );
\freq_low_46.diff_N[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \freq_low_46.diff_N_reg[19]\(4),
      O => \freq_low_46.diff_N[7]_i_5_n_0\
    );
\freq_low_46.diff_N[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \freq_low_46.diff_N_reg[19]\(3),
      O => \freq_low_46.diff_N[7]_i_6_n_0\
    );
\freq_low_46.diff_N[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \freq_low_46.diff_N_reg[19]\(2),
      O => \freq_low_46.diff_N[7]_i_7_n_0\
    );
\freq_low_46.diff_N[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \freq_low_46.diff_N_reg[19]\(1),
      O => \freq_low_46.diff_N[7]_i_8_n_0\
    );
\freq_low_46.diff_N[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \freq_low_46.diff_N_reg[19]\(0),
      O => \freq_low_46.diff_N[7]_i_9_n_0\
    );
\freq_low_46.diff_N_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \freq_low_46.diff_N_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \freq_low_46.diff_N_reg[15]_i_1_n_0\,
      CO(6) => \freq_low_46.diff_N_reg[15]_i_1_n_1\,
      CO(5) => \freq_low_46.diff_N_reg[15]_i_1_n_2\,
      CO(4) => \freq_low_46.diff_N_reg[15]_i_1_n_3\,
      CO(3) => \freq_low_46.diff_N_reg[15]_i_1_n_4\,
      CO(2) => \freq_low_46.diff_N_reg[15]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_N_reg[15]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_N_reg[15]_i_1_n_7\,
      DI(7 downto 0) => \^q\(15 downto 8),
      O(7 downto 0) => D(15 downto 8),
      S(7) => \freq_low_46.diff_N[15]_i_2_n_0\,
      S(6) => \freq_low_46.diff_N[15]_i_3_n_0\,
      S(5) => \freq_low_46.diff_N[15]_i_4_n_0\,
      S(4) => \freq_low_46.diff_N[15]_i_5_n_0\,
      S(3) => \freq_low_46.diff_N[15]_i_6_n_0\,
      S(2) => \freq_low_46.diff_N[15]_i_7_n_0\,
      S(1) => \freq_low_46.diff_N[15]_i_8_n_0\,
      S(0) => \freq_low_46.diff_N[15]_i_9_n_0\
    );
\freq_low_46.diff_N_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \freq_low_46.diff_N_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_freq_low_46.diff_N_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \freq_low_46.diff_N_reg[19]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_N_reg[19]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_N_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => \^q\(18 downto 16),
      O(7 downto 4) => \NLW_freq_low_46.diff_N_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => D(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \freq_low_46.diff_N[19]_i_2_n_0\,
      S(2) => \freq_low_46.diff_N[19]_i_3_n_0\,
      S(1) => \freq_low_46.diff_N[19]_i_4_n_0\,
      S(0) => \freq_low_46.diff_N[19]_i_5_n_0\
    );
\freq_low_46.diff_N_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \freq_low_46.diff_N_reg[7]_i_1_n_0\,
      CO(6) => \freq_low_46.diff_N_reg[7]_i_1_n_1\,
      CO(5) => \freq_low_46.diff_N_reg[7]_i_1_n_2\,
      CO(4) => \freq_low_46.diff_N_reg[7]_i_1_n_3\,
      CO(3) => \freq_low_46.diff_N_reg[7]_i_1_n_4\,
      CO(2) => \freq_low_46.diff_N_reg[7]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_N_reg[7]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_N_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \^q\(7 downto 0),
      O(7 downto 0) => D(7 downto 0),
      S(7) => \freq_low_46.diff_N[7]_i_2_n_0\,
      S(6) => \freq_low_46.diff_N[7]_i_3_n_0\,
      S(5) => \freq_low_46.diff_N[7]_i_4_n_0\,
      S(4) => \freq_low_46.diff_N[7]_i_5_n_0\,
      S(3) => \freq_low_46.diff_N[7]_i_6_n_0\,
      S(2) => \freq_low_46.diff_N[7]_i_7_n_0\,
      S(1) => \freq_low_46.diff_N[7]_i_8_n_0\,
      S(0) => \freq_low_46.diff_N[7]_i_9_n_0\
    );
\freq_low_46.valid_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => validN,
      I1 => validE,
      I2 => validW,
      O => E(0)
    );
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
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_0\,
      O => \morlet_to_phase_env.delay[1]_i_1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[2]_i_1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.phase_reg[19]_0\,
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(3),
      I5 => \morlet_to_phase_env.delay_reg\(4),
      O => delay0
    );
\morlet_to_phase_env.delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(3),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_0\,
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[3]_i_2_n_0\
    );
\morlet_to_phase_env.delay[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay[4]_i_2_n_0\,
      I2 => delay0,
      O => \morlet_to_phase_env.delay[4]_i_1_n_0\
    );
\morlet_to_phase_env.delay[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.phase_reg[19]_0\,
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(1),
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
      D => \morlet_to_phase_env.delay[3]_i_2_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(3),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.delay[4]_i_1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(4),
      R => '0'
    );
\morlet_to_phase_env.env[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B3333333333332"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.phase_reg[19]_0\,
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(3),
      I5 => \morlet_to_phase_env.delay_reg\(4),
      O => \morlet_to_phase_env.env[15]_i_1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(0),
      Q => \morlet_to_phase_env.env_reg[15]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(10),
      Q => \morlet_to_phase_env.env_reg[15]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(11),
      Q => \morlet_to_phase_env.env_reg[15]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(12),
      Q => \morlet_to_phase_env.env_reg[15]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(13),
      Q => \morlet_to_phase_env.env_reg[15]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(14),
      Q => \morlet_to_phase_env.env_reg[15]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(15),
      Q => \morlet_to_phase_env.env_reg[15]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(1),
      Q => \morlet_to_phase_env.env_reg[15]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(2),
      Q => \morlet_to_phase_env.env_reg[15]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(3),
      Q => \morlet_to_phase_env.env_reg[15]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(4),
      Q => \morlet_to_phase_env.env_reg[15]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(5),
      Q => \morlet_to_phase_env.env_reg[15]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(6),
      Q => \morlet_to_phase_env.env_reg[15]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(7),
      Q => \morlet_to_phase_env.env_reg[15]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(8),
      Q => \morlet_to_phase_env.env_reg[15]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(9),
      Q => \morlet_to_phase_env.env_reg[15]_0\(9),
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
      Q => \^q\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(10),
      Q => \^q\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(11),
      Q => \^q\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(12),
      Q => \^q\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(13),
      Q => \^q\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(14),
      Q => \^q\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(15),
      Q => \^q\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(16),
      Q => \^q\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(17),
      Q => \^q\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(18),
      Q => \^q\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(19),
      Q => \^q\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(1),
      Q => \^q\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(2),
      Q => \^q\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(3),
      Q => \^q\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(4),
      Q => \^q\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(5),
      Q => \^q\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(6),
      Q => \^q\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(7),
      Q => \^q\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(8),
      Q => \^q\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(9),
      Q => \^q\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2_n_0\,
      I1 => \morlet_to_phase_env.phase_reg[19]_0\,
      I2 => validN,
      I3 => \morlet_to_phase_env.valid_i_3_n_0\,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.valid_i_2_n_0\
    );
\morlet_to_phase_env.valid_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(0),
      I4 => \morlet_to_phase_env.phase_reg[19]_0\,
      I5 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.valid_i_3_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => validN,
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
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_0\
    );
tan2_i: component ps_freq_low_46_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ is
  port (
    validE : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \morlet_to_phase_env.env_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : in STD_LOGIC;
    \freq_low_46.diff_E_reg[19]\ : in STD_LOGIC_VECTOR ( 19 downto 0 )
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
  signal \^q\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \freq_low_46.diff_E[15]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[15]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[15]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[15]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[15]_i_6_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[15]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[15]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[15]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[19]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[19]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[19]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[19]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[7]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[7]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[7]_i_6_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[7]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[7]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E[7]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \freq_low_46.diff_E_reg[7]_i_1_n_7\ : STD_LOGIC;
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
  signal \morlet_to_phase_env.delay[4]_i_1_n_0\ : STD_LOGIC;
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
  signal \^valide\ : STD_LOGIC;
  signal \NLW_freq_low_46.diff_E_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_freq_low_46.diff_E_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_E_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_E_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \freq_low_46.diff_E_reg[7]_i_1\ : label is 35;
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
  Q(19 downto 0) <= \^q\(19 downto 0);
  validE <= \^valide\;
\freq_low_46.diff_E[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(15),
      I1 => \freq_low_46.diff_E_reg[19]\(15),
      O => \freq_low_46.diff_E[15]_i_2_n_0\
    );
\freq_low_46.diff_E[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(14),
      I1 => \freq_low_46.diff_E_reg[19]\(14),
      O => \freq_low_46.diff_E[15]_i_3_n_0\
    );
\freq_low_46.diff_E[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(13),
      I1 => \freq_low_46.diff_E_reg[19]\(13),
      O => \freq_low_46.diff_E[15]_i_4_n_0\
    );
\freq_low_46.diff_E[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \freq_low_46.diff_E_reg[19]\(12),
      O => \freq_low_46.diff_E[15]_i_5_n_0\
    );
\freq_low_46.diff_E[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \freq_low_46.diff_E_reg[19]\(11),
      O => \freq_low_46.diff_E[15]_i_6_n_0\
    );
\freq_low_46.diff_E[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \freq_low_46.diff_E_reg[19]\(10),
      O => \freq_low_46.diff_E[15]_i_7_n_0\
    );
\freq_low_46.diff_E[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \freq_low_46.diff_E_reg[19]\(9),
      O => \freq_low_46.diff_E[15]_i_8_n_0\
    );
\freq_low_46.diff_E[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \freq_low_46.diff_E_reg[19]\(8),
      O => \freq_low_46.diff_E[15]_i_9_n_0\
    );
\freq_low_46.diff_E[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(19),
      I1 => \freq_low_46.diff_E_reg[19]\(19),
      O => \freq_low_46.diff_E[19]_i_2_n_0\
    );
\freq_low_46.diff_E[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(18),
      I1 => \freq_low_46.diff_E_reg[19]\(18),
      O => \freq_low_46.diff_E[19]_i_3_n_0\
    );
\freq_low_46.diff_E[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(17),
      I1 => \freq_low_46.diff_E_reg[19]\(17),
      O => \freq_low_46.diff_E[19]_i_4_n_0\
    );
\freq_low_46.diff_E[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(16),
      I1 => \freq_low_46.diff_E_reg[19]\(16),
      O => \freq_low_46.diff_E[19]_i_5_n_0\
    );
\freq_low_46.diff_E[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \freq_low_46.diff_E_reg[19]\(7),
      O => \freq_low_46.diff_E[7]_i_2_n_0\
    );
\freq_low_46.diff_E[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \freq_low_46.diff_E_reg[19]\(6),
      O => \freq_low_46.diff_E[7]_i_3_n_0\
    );
\freq_low_46.diff_E[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \freq_low_46.diff_E_reg[19]\(5),
      O => \freq_low_46.diff_E[7]_i_4_n_0\
    );
\freq_low_46.diff_E[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \freq_low_46.diff_E_reg[19]\(4),
      O => \freq_low_46.diff_E[7]_i_5_n_0\
    );
\freq_low_46.diff_E[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \freq_low_46.diff_E_reg[19]\(3),
      O => \freq_low_46.diff_E[7]_i_6_n_0\
    );
\freq_low_46.diff_E[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \freq_low_46.diff_E_reg[19]\(2),
      O => \freq_low_46.diff_E[7]_i_7_n_0\
    );
\freq_low_46.diff_E[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \freq_low_46.diff_E_reg[19]\(1),
      O => \freq_low_46.diff_E[7]_i_8_n_0\
    );
\freq_low_46.diff_E[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \freq_low_46.diff_E_reg[19]\(0),
      O => \freq_low_46.diff_E[7]_i_9_n_0\
    );
\freq_low_46.diff_E_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \freq_low_46.diff_E_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \freq_low_46.diff_E_reg[15]_i_1_n_0\,
      CO(6) => \freq_low_46.diff_E_reg[15]_i_1_n_1\,
      CO(5) => \freq_low_46.diff_E_reg[15]_i_1_n_2\,
      CO(4) => \freq_low_46.diff_E_reg[15]_i_1_n_3\,
      CO(3) => \freq_low_46.diff_E_reg[15]_i_1_n_4\,
      CO(2) => \freq_low_46.diff_E_reg[15]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_E_reg[15]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_E_reg[15]_i_1_n_7\,
      DI(7 downto 0) => \^q\(15 downto 8),
      O(7 downto 0) => D(15 downto 8),
      S(7) => \freq_low_46.diff_E[15]_i_2_n_0\,
      S(6) => \freq_low_46.diff_E[15]_i_3_n_0\,
      S(5) => \freq_low_46.diff_E[15]_i_4_n_0\,
      S(4) => \freq_low_46.diff_E[15]_i_5_n_0\,
      S(3) => \freq_low_46.diff_E[15]_i_6_n_0\,
      S(2) => \freq_low_46.diff_E[15]_i_7_n_0\,
      S(1) => \freq_low_46.diff_E[15]_i_8_n_0\,
      S(0) => \freq_low_46.diff_E[15]_i_9_n_0\
    );
\freq_low_46.diff_E_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \freq_low_46.diff_E_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_freq_low_46.diff_E_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \freq_low_46.diff_E_reg[19]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_E_reg[19]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_E_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => \^q\(18 downto 16),
      O(7 downto 4) => \NLW_freq_low_46.diff_E_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => D(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \freq_low_46.diff_E[19]_i_2_n_0\,
      S(2) => \freq_low_46.diff_E[19]_i_3_n_0\,
      S(1) => \freq_low_46.diff_E[19]_i_4_n_0\,
      S(0) => \freq_low_46.diff_E[19]_i_5_n_0\
    );
\freq_low_46.diff_E_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \freq_low_46.diff_E_reg[7]_i_1_n_0\,
      CO(6) => \freq_low_46.diff_E_reg[7]_i_1_n_1\,
      CO(5) => \freq_low_46.diff_E_reg[7]_i_1_n_2\,
      CO(4) => \freq_low_46.diff_E_reg[7]_i_1_n_3\,
      CO(3) => \freq_low_46.diff_E_reg[7]_i_1_n_4\,
      CO(2) => \freq_low_46.diff_E_reg[7]_i_1_n_5\,
      CO(1) => \freq_low_46.diff_E_reg[7]_i_1_n_6\,
      CO(0) => \freq_low_46.diff_E_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \^q\(7 downto 0),
      O(7 downto 0) => D(7 downto 0),
      S(7) => \freq_low_46.diff_E[7]_i_2_n_0\,
      S(6) => \freq_low_46.diff_E[7]_i_3_n_0\,
      S(5) => \freq_low_46.diff_E[7]_i_4_n_0\,
      S(4) => \freq_low_46.diff_E[7]_i_5_n_0\,
      S(3) => \freq_low_46.diff_E[7]_i_6_n_0\,
      S(2) => \freq_low_46.diff_E[7]_i_7_n_0\,
      S(1) => \freq_low_46.diff_E[7]_i_8_n_0\,
      S(0) => \freq_low_46.diff_E[7]_i_9_n_0\
    );
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
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_0\,
      O => \morlet_to_phase_env.delay[1]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[2]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(3),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_0\,
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[3]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(0),
      I5 => \morlet_to_phase_env.phase_reg[19]_0\,
      O => \morlet_to_phase_env.delay[4]_i_1_n_0\
    );
\morlet_to_phase_env.delay[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.phase_reg[19]_0\,
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(1),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.delay[4]_i_2__0_n_0\
    );
\morlet_to_phase_env.delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1_n_0\,
      D => \morlet_to_phase_env.delay[0]_i_1__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(0),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1_n_0\,
      D => \morlet_to_phase_env.delay[1]_i_1__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(1),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1_n_0\,
      D => \morlet_to_phase_env.delay[2]_i_1__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(2),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1_n_0\,
      D => \morlet_to_phase_env.delay[3]_i_1__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(3),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1_n_0\,
      D => \morlet_to_phase_env.delay[4]_i_2__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(4),
      R => '0'
    );
\morlet_to_phase_env.env[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555D55555555554"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_0\,
      I1 => \morlet_to_phase_env.delay_reg\(4),
      I2 => \morlet_to_phase_env.delay_reg\(3),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      I5 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.env[15]_i_1__0_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\,
      Q => \morlet_to_phase_env.env_reg[15]_0\(9),
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
      Q => \^q\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(10),
      Q => \^q\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(11),
      Q => \^q\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(12),
      Q => \^q\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(13),
      Q => \^q\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(14),
      Q => \^q\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(15),
      Q => \^q\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(16),
      Q => \^q\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(17),
      Q => \^q\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(18),
      Q => \^q\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(19),
      Q => \^q\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(1),
      Q => \^q\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(2),
      Q => \^q\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(3),
      Q => \^q\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(4),
      Q => \^q\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(5),
      Q => \^q\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(6),
      Q => \^q\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(7),
      Q => \^q\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(8),
      Q => \^q\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(9),
      Q => \^q\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2__0_n_0\,
      I1 => \morlet_to_phase_env.phase_reg[19]_0\,
      I2 => \^valide\,
      I3 => \morlet_to_phase_env.valid_i_3__0_n_0\,
      O => \morlet_to_phase_env.valid_i_1__0_n_0\
    );
\morlet_to_phase_env.valid_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.valid_i_2__0_n_0\
    );
\morlet_to_phase_env.valid_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(3),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.phase_reg[19]_0\,
      O => \morlet_to_phase_env.valid_i_3__0_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1__0_n_0\,
      Q => \^valide\,
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
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_0\
    );
tan2_i: component ps_freq_low_46_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0_freq_low_46 is
  port (
    deci_clk : in STD_LOGIC;
    deci_fifo_wr : in STD_LOGIC;
    deci_fifo_data : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    freq_fifo_valid : in STD_LOGIC;
    freq_fifo_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    valid : out STD_LOGIC;
    env_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_W : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_W : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_freq_low_46_0_0_freq_low_46 : entity is "freq_low_46";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_freq_low_46_0_0_freq_low_46 : entity is "soft";
end ps_freq_low_46_0_0_freq_low_46;

architecture STRUCTURE of ps_freq_low_46_0_0_freq_low_46 is
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
  component ps_freq_low_46_0_0_ila_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component ps_freq_low_46_0_0_ila_0;
  signal E : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal N : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal W : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^diff_e\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^diff_e\ : signal is std.standard.true;
  signal \^diff_n\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^diff_n\ : signal is std.standard.true;
  signal \^diff_w\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^diff_w\ : signal is std.standard.true;
  signal env : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^env_e\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env_e\ : signal is std.standard.true;
  signal \^env_n\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env_n\ : signal is std.standard.true;
  signal \^env_w\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env_w\ : signal is std.standard.true;
  signal fir_freq_low_re_N_i_i_1_n_0 : STD_LOGIC;
  signal fir_im_E : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_im_N : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_im_W : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_E : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_N : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_W : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal freq_E_i_n_1 : STD_LOGIC;
  signal freq_E_i_n_10 : STD_LOGIC;
  signal freq_E_i_n_11 : STD_LOGIC;
  signal freq_E_i_n_12 : STD_LOGIC;
  signal freq_E_i_n_13 : STD_LOGIC;
  signal freq_E_i_n_14 : STD_LOGIC;
  signal freq_E_i_n_15 : STD_LOGIC;
  signal freq_E_i_n_16 : STD_LOGIC;
  signal freq_E_i_n_17 : STD_LOGIC;
  signal freq_E_i_n_18 : STD_LOGIC;
  signal freq_E_i_n_19 : STD_LOGIC;
  signal freq_E_i_n_2 : STD_LOGIC;
  signal freq_E_i_n_20 : STD_LOGIC;
  signal freq_E_i_n_21 : STD_LOGIC;
  signal freq_E_i_n_22 : STD_LOGIC;
  signal freq_E_i_n_23 : STD_LOGIC;
  signal freq_E_i_n_24 : STD_LOGIC;
  signal freq_E_i_n_25 : STD_LOGIC;
  signal freq_E_i_n_26 : STD_LOGIC;
  signal freq_E_i_n_27 : STD_LOGIC;
  signal freq_E_i_n_28 : STD_LOGIC;
  signal freq_E_i_n_29 : STD_LOGIC;
  signal freq_E_i_n_3 : STD_LOGIC;
  signal freq_E_i_n_30 : STD_LOGIC;
  signal freq_E_i_n_31 : STD_LOGIC;
  signal freq_E_i_n_32 : STD_LOGIC;
  signal freq_E_i_n_33 : STD_LOGIC;
  signal freq_E_i_n_34 : STD_LOGIC;
  signal freq_E_i_n_35 : STD_LOGIC;
  signal freq_E_i_n_36 : STD_LOGIC;
  signal freq_E_i_n_4 : STD_LOGIC;
  signal freq_E_i_n_5 : STD_LOGIC;
  signal freq_E_i_n_6 : STD_LOGIC;
  signal freq_E_i_n_7 : STD_LOGIC;
  signal freq_E_i_n_8 : STD_LOGIC;
  signal freq_E_i_n_9 : STD_LOGIC;
  signal freq_W_i_n_1 : STD_LOGIC;
  signal freq_W_i_n_10 : STD_LOGIC;
  signal freq_W_i_n_11 : STD_LOGIC;
  signal freq_W_i_n_12 : STD_LOGIC;
  signal freq_W_i_n_13 : STD_LOGIC;
  signal freq_W_i_n_14 : STD_LOGIC;
  signal freq_W_i_n_15 : STD_LOGIC;
  signal freq_W_i_n_16 : STD_LOGIC;
  signal freq_W_i_n_17 : STD_LOGIC;
  signal freq_W_i_n_18 : STD_LOGIC;
  signal freq_W_i_n_19 : STD_LOGIC;
  signal freq_W_i_n_2 : STD_LOGIC;
  signal freq_W_i_n_20 : STD_LOGIC;
  signal freq_W_i_n_21 : STD_LOGIC;
  signal freq_W_i_n_22 : STD_LOGIC;
  signal freq_W_i_n_23 : STD_LOGIC;
  signal freq_W_i_n_24 : STD_LOGIC;
  signal freq_W_i_n_25 : STD_LOGIC;
  signal freq_W_i_n_26 : STD_LOGIC;
  signal freq_W_i_n_27 : STD_LOGIC;
  signal freq_W_i_n_28 : STD_LOGIC;
  signal freq_W_i_n_29 : STD_LOGIC;
  signal freq_W_i_n_3 : STD_LOGIC;
  signal freq_W_i_n_30 : STD_LOGIC;
  signal freq_W_i_n_31 : STD_LOGIC;
  signal freq_W_i_n_32 : STD_LOGIC;
  signal freq_W_i_n_33 : STD_LOGIC;
  signal freq_W_i_n_34 : STD_LOGIC;
  signal freq_W_i_n_35 : STD_LOGIC;
  signal freq_W_i_n_36 : STD_LOGIC;
  signal freq_W_i_n_4 : STD_LOGIC;
  signal freq_W_i_n_5 : STD_LOGIC;
  signal freq_W_i_n_6 : STD_LOGIC;
  signal freq_W_i_n_7 : STD_LOGIC;
  signal freq_W_i_n_8 : STD_LOGIC;
  signal freq_W_i_n_9 : STD_LOGIC;
  signal \freq_low_46.curr_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_10_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_11_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_12_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_13_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_14_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_15_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_6_n_0\ : STD_LOGIC;
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
  signal \freq_low_46.diff_E_reg01_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \freq_low_46.diff_N_reg02_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \freq_low_46.diff_W_reg00_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \freq_low_46.env_N_reg0\ : STD_LOGIC;
  signal \freq_low_46.morlet_active_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.morlet_active_reg_n_0\ : STD_LOGIC;
  signal \freq_low_46.raw_fifo_rd_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_3_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal phase : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^phase_e\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_e\ : signal is std.standard.true;
  signal \^phase_n\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_n\ : signal is std.standard.true;
  signal \^phase_w\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_w\ : signal is std.standard.true;
  signal prevE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prevN : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prevW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_fifo_data : STD_LOGIC_VECTOR ( 191 downto 0 );
  attribute MARK_DEBUG of raw_fifo_data : signal is std.standard.true;
  signal raw_fifo_empty : STD_LOGIC;
  attribute MARK_DEBUG of raw_fifo_empty : signal is std.standard.true;
  signal raw_fifo_rd : STD_LOGIC;
  attribute MARK_DEBUG of raw_fifo_rd : signal is std.standard.true;
  signal \^valid\ : STD_LOGIC;
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal validE : STD_LOGIC;
  signal validW : STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_raw_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
  attribute x_core_info : string;
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
  attribute KEEP : string;
  attribute KEEP of \freq_low_46.diff_E_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \freq_low_46.diff_E_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[16]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[16]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[17]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[17]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[18]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[18]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[19]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[19]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_E_reg[9]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[16]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[16]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[17]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[17]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[18]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[18]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[19]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[19]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_N_reg[9]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[16]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[16]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[17]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[17]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[18]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[18]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[19]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[19]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.diff_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.diff_W_reg[9]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_E_reg[9]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_N_reg[9]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.env_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.env_W_reg[9]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[16]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[16]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[17]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[17]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[18]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[18]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[19]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[19]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_E_reg[9]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[16]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[16]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[17]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[17]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[18]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[18]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[19]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[19]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_N_reg[9]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[0]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[10]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[11]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[12]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[13]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[14]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[15]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[16]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[16]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[17]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[17]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[18]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[18]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[19]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[19]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[1]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[2]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[3]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[4]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[5]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[6]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[7]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[8]\ : label is "yes";
  attribute KEEP of \freq_low_46.phase_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_low_46.phase_W_reg[9]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[10]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[11]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[12]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[13]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[14]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[15]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[16]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[17]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[18]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[19]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[1]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[2]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[3]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[4]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[5]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[6]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[7]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[8]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevE_reg[9]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[10]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[11]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[12]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[13]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[14]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[15]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[16]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[17]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[18]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[19]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[1]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[2]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[3]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[4]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[5]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[6]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[7]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[8]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevN_reg[9]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[10]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[11]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[12]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[13]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[14]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[15]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[16]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[17]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[18]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[19]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[1]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[2]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[3]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[4]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[5]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[6]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[7]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[8]\ : label is "no";
  attribute equivalent_register_removal of \freq_low_46.prevW_reg[9]\ : label is "no";
  attribute KEEP of \freq_low_46.raw_fifo_rd_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[4]_i_1\ : label is "soft_lutpair6";
  attribute KEEP of \freq_low_46.valid_reg\ : label is "yes";
  attribute CHECK_LICENSE_TYPE of ila_0_i : label is "ila_0,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_0_i : label is "yes";
  attribute x_core_info of ila_0_i : label is "ila,Vivado 2025.1";
begin
  diff_E(19 downto 0) <= \^diff_e\(19 downto 0);
  diff_N(19 downto 0) <= \^diff_n\(19 downto 0);
  diff_W(19 downto 0) <= \^diff_w\(19 downto 0);
  env_E(15 downto 0) <= \^env_e\(15 downto 0);
  env_N(15 downto 0) <= \^env_n\(15 downto 0);
  env_W(15 downto 0) <= \^env_w\(15 downto 0);
  phase_E(19 downto 0) <= \^phase_e\(19 downto 0);
  phase_N(19 downto 0) <= \^phase_n\(19 downto 0);
  phase_W(19 downto 0) <= \^phase_w\(19 downto 0);
  valid <= \^valid\;
fifo_raw_i: component ps_freq_low_46_0_0_fifo_raw_low
     port map (
      din(191 downto 1) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      din(0) => deci_fifo_data,
      dout(191 downto 0) => raw_fifo_data(191 downto 0),
      empty => raw_fifo_empty,
      full => NLW_fifo_raw_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => raw_fifo_rd,
      rd_rst_busy => NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => deci_clk,
      wr_en => deci_fifo_wr,
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
      D(19 downto 0) => \freq_low_46.diff_E_reg01_out\(19 downto 0),
      Q(19) => freq_E_i_n_1,
      Q(18) => freq_E_i_n_2,
      Q(17) => freq_E_i_n_3,
      Q(16) => freq_E_i_n_4,
      Q(15) => freq_E_i_n_5,
      Q(14) => freq_E_i_n_6,
      Q(13) => freq_E_i_n_7,
      Q(12) => freq_E_i_n_8,
      Q(11) => freq_E_i_n_9,
      Q(10) => freq_E_i_n_10,
      Q(9) => freq_E_i_n_11,
      Q(8) => freq_E_i_n_12,
      Q(7) => freq_E_i_n_13,
      Q(6) => freq_E_i_n_14,
      Q(5) => freq_E_i_n_15,
      Q(4) => freq_E_i_n_16,
      Q(3) => freq_E_i_n_17,
      Q(2) => freq_E_i_n_18,
      Q(1) => freq_E_i_n_19,
      Q(0) => freq_E_i_n_20,
      clk => clk,
      \freq_low_46.diff_E_reg[19]\(19 downto 0) => prevE(19 downto 0),
      \morlet_to_phase_env.env_reg[15]_0\(15) => freq_E_i_n_21,
      \morlet_to_phase_env.env_reg[15]_0\(14) => freq_E_i_n_22,
      \morlet_to_phase_env.env_reg[15]_0\(13) => freq_E_i_n_23,
      \morlet_to_phase_env.env_reg[15]_0\(12) => freq_E_i_n_24,
      \morlet_to_phase_env.env_reg[15]_0\(11) => freq_E_i_n_25,
      \morlet_to_phase_env.env_reg[15]_0\(10) => freq_E_i_n_26,
      \morlet_to_phase_env.env_reg[15]_0\(9) => freq_E_i_n_27,
      \morlet_to_phase_env.env_reg[15]_0\(8) => freq_E_i_n_28,
      \morlet_to_phase_env.env_reg[15]_0\(7) => freq_E_i_n_29,
      \morlet_to_phase_env.env_reg[15]_0\(6) => freq_E_i_n_30,
      \morlet_to_phase_env.env_reg[15]_0\(5) => freq_E_i_n_31,
      \morlet_to_phase_env.env_reg[15]_0\(4) => freq_E_i_n_32,
      \morlet_to_phase_env.env_reg[15]_0\(3) => freq_E_i_n_33,
      \morlet_to_phase_env.env_reg[15]_0\(2) => freq_E_i_n_34,
      \morlet_to_phase_env.env_reg[15]_0\(1) => freq_E_i_n_35,
      \morlet_to_phase_env.env_reg[15]_0\(0) => freq_E_i_n_36,
      \morlet_to_phase_env.phase_reg[19]_0\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_E(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_E(36 downto 13),
      validE => validE
    );
freq_N_i: entity work.\ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\
     port map (
      D(19 downto 0) => \freq_low_46.diff_N_reg02_out\(19 downto 0),
      E(0) => \freq_low_46.env_N_reg0\,
      Q(19 downto 0) => phase(19 downto 0),
      clk => clk,
      \freq_low_46.diff_N_reg[19]\(19 downto 0) => prevN(19 downto 0),
      \morlet_to_phase_env.env_reg[15]_0\(15 downto 0) => env(15 downto 0),
      \morlet_to_phase_env.phase_reg[19]_0\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_N(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_N(36 downto 13),
      validE => validE,
      validW => validW
    );
freq_W_i: entity work.ps_freq_low_46_0_0_morlet_to_phase_env
     port map (
      D(19 downto 0) => \freq_low_46.diff_W_reg00_out\(19 downto 0),
      Q(19) => freq_W_i_n_1,
      Q(18) => freq_W_i_n_2,
      Q(17) => freq_W_i_n_3,
      Q(16) => freq_W_i_n_4,
      Q(15) => freq_W_i_n_5,
      Q(14) => freq_W_i_n_6,
      Q(13) => freq_W_i_n_7,
      Q(12) => freq_W_i_n_8,
      Q(11) => freq_W_i_n_9,
      Q(10) => freq_W_i_n_10,
      Q(9) => freq_W_i_n_11,
      Q(8) => freq_W_i_n_12,
      Q(7) => freq_W_i_n_13,
      Q(6) => freq_W_i_n_14,
      Q(5) => freq_W_i_n_15,
      Q(4) => freq_W_i_n_16,
      Q(3) => freq_W_i_n_17,
      Q(2) => freq_W_i_n_18,
      Q(1) => freq_W_i_n_19,
      Q(0) => freq_W_i_n_20,
      clk => clk,
      \freq_low_46.diff_W_reg[19]\(19 downto 0) => prevW(19 downto 0),
      \morlet_to_phase_env.env_reg[15]_0\(15) => freq_W_i_n_21,
      \morlet_to_phase_env.env_reg[15]_0\(14) => freq_W_i_n_22,
      \morlet_to_phase_env.env_reg[15]_0\(13) => freq_W_i_n_23,
      \morlet_to_phase_env.env_reg[15]_0\(12) => freq_W_i_n_24,
      \morlet_to_phase_env.env_reg[15]_0\(11) => freq_W_i_n_25,
      \morlet_to_phase_env.env_reg[15]_0\(10) => freq_W_i_n_26,
      \morlet_to_phase_env.env_reg[15]_0\(9) => freq_W_i_n_27,
      \morlet_to_phase_env.env_reg[15]_0\(8) => freq_W_i_n_28,
      \morlet_to_phase_env.env_reg[15]_0\(7) => freq_W_i_n_29,
      \morlet_to_phase_env.env_reg[15]_0\(6) => freq_W_i_n_30,
      \morlet_to_phase_env.env_reg[15]_0\(5) => freq_W_i_n_31,
      \morlet_to_phase_env.env_reg[15]_0\(4) => freq_W_i_n_32,
      \morlet_to_phase_env.env_reg[15]_0\(3) => freq_W_i_n_33,
      \morlet_to_phase_env.env_reg[15]_0\(2) => freq_W_i_n_34,
      \morlet_to_phase_env.env_reg[15]_0\(1) => freq_W_i_n_35,
      \morlet_to_phase_env.env_reg[15]_0\(0) => freq_W_i_n_36,
      \morlet_to_phase_env.phase_reg[19]_0\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_W(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_W(36 downto 13),
      validW => validW
    );
\freq_low_46.E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(16),
      Q => E(0),
      R => '0'
    );
\freq_low_46.E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(26),
      Q => E(10),
      R => '0'
    );
\freq_low_46.E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(27),
      Q => E(11),
      R => '0'
    );
\freq_low_46.E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(28),
      Q => E(12),
      R => '0'
    );
\freq_low_46.E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(29),
      Q => E(13),
      R => '0'
    );
\freq_low_46.E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(30),
      Q => E(14),
      R => '0'
    );
\freq_low_46.E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(31),
      Q => E(15),
      R => '0'
    );
\freq_low_46.E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(17),
      Q => E(1),
      R => '0'
    );
\freq_low_46.E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(18),
      Q => E(2),
      R => '0'
    );
\freq_low_46.E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(19),
      Q => E(3),
      R => '0'
    );
\freq_low_46.E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(20),
      Q => E(4),
      R => '0'
    );
\freq_low_46.E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(21),
      Q => E(5),
      R => '0'
    );
\freq_low_46.E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(22),
      Q => E(6),
      R => '0'
    );
\freq_low_46.E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(23),
      Q => E(7),
      R => '0'
    );
\freq_low_46.E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(24),
      Q => E(8),
      R => '0'
    );
\freq_low_46.E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(25),
      Q => E(9),
      R => '0'
    );
\freq_low_46.N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(0),
      Q => N(0),
      R => '0'
    );
\freq_low_46.N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(10),
      Q => N(10),
      R => '0'
    );
\freq_low_46.N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(11),
      Q => N(11),
      R => '0'
    );
\freq_low_46.N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(12),
      Q => N(12),
      R => '0'
    );
\freq_low_46.N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(13),
      Q => N(13),
      R => '0'
    );
\freq_low_46.N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(14),
      Q => N(14),
      R => '0'
    );
\freq_low_46.N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(15),
      Q => N(15),
      R => '0'
    );
\freq_low_46.N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(1),
      Q => N(1),
      R => '0'
    );
\freq_low_46.N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(2),
      Q => N(2),
      R => '0'
    );
\freq_low_46.N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(3),
      Q => N(3),
      R => '0'
    );
\freq_low_46.N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(4),
      Q => N(4),
      R => '0'
    );
\freq_low_46.N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(5),
      Q => N(5),
      R => '0'
    );
\freq_low_46.N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(6),
      Q => N(6),
      R => '0'
    );
\freq_low_46.N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(7),
      Q => N(7),
      R => '0'
    );
\freq_low_46.N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(8),
      Q => N(8),
      R => '0'
    );
\freq_low_46.N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(9),
      Q => N(9),
      R => '0'
    );
\freq_low_46.W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(32),
      Q => W(0),
      R => '0'
    );
\freq_low_46.W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(42),
      Q => W(10),
      R => '0'
    );
\freq_low_46.W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(43),
      Q => W(11),
      R => '0'
    );
\freq_low_46.W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(44),
      Q => W(12),
      R => '0'
    );
\freq_low_46.W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(45),
      Q => W(13),
      R => '0'
    );
\freq_low_46.W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(46),
      Q => W(14),
      R => '0'
    );
\freq_low_46.W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(47),
      Q => W(15),
      R => '0'
    );
\freq_low_46.W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(33),
      Q => W(1),
      R => '0'
    );
\freq_low_46.W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(34),
      Q => W(2),
      R => '0'
    );
\freq_low_46.W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(35),
      Q => W(3),
      R => '0'
    );
\freq_low_46.W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(36),
      Q => W(4),
      R => '0'
    );
\freq_low_46.W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(37),
      Q => W(5),
      R => '0'
    );
\freq_low_46.W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(38),
      Q => W(6),
      R => '0'
    );
\freq_low_46.W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(39),
      Q => W(7),
      R => '0'
    );
\freq_low_46.W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
      D => freq_fifo_data(40),
      Q => W(8),
      R => '0'
    );
\freq_low_46.W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid,
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
\freq_low_46.curr_delay[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_low_46.curr_delay[7]_i_4_n_0\,
      I2 => \freq_low_46.start_delay_reg\(3),
      I3 => \freq_low_46.start_delay_reg\(2),
      I4 => \freq_low_46.start_delay_reg\(6),
      I5 => \freq_low_46.start_delay_reg\(4),
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
      INIT => X"FFFD"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(6),
      I1 => \freq_low_46.start_delay_reg\(2),
      I2 => \freq_low_46.start_delay_reg\(4),
      I3 => \freq_low_46.start_delay_reg\(0),
      O => \freq_low_46.curr_delay[7]_i_14_n_0\
    );
\freq_low_46.curr_delay[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(7),
      I1 => \freq_low_46.curr_delay_reg\(6),
      I2 => \freq_low_46.curr_delay_reg\(0),
      I3 => \freq_low_46.curr_delay_reg\(1),
      O => \freq_low_46.curr_delay[7]_i_15_n_0\
    );
\freq_low_46.curr_delay[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I2 => \freq_low_46.curr_delay[7]_i_6_n_0\,
      O => \freq_low_46.curr_delay[7]_i_2_n_0\
    );
\freq_low_46.curr_delay[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(1),
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => \freq_low_46.start_delay_reg\(7),
      I3 => \freq_low_46.start_delay_reg\(5),
      O => \freq_low_46.curr_delay[7]_i_4_n_0\
    );
\freq_low_46.curr_delay[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(3),
      I1 => \freq_low_46.start_delay_reg\(5),
      I2 => \freq_low_46.start_delay_reg\(1),
      I3 => \freq_low_46.start_delay_reg\(7),
      I4 => \freq_low_46.curr_delay[7]_i_14_n_0\,
      O => \freq_low_46.curr_delay[7]_i_5_n_0\
    );
\freq_low_46.curr_delay[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(3),
      I1 => \freq_low_46.curr_delay_reg\(4),
      I2 => \freq_low_46.curr_delay_reg\(2),
      I3 => \freq_low_46.curr_delay_reg\(5),
      I4 => \freq_low_46.curr_delay[7]_i_15_n_0\,
      O => \freq_low_46.curr_delay[7]_i_6_n_0\
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
\freq_low_46.diff_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(0),
      Q => \^diff_e\(0),
      R => '0'
    );
\freq_low_46.diff_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(10),
      Q => \^diff_e\(10),
      R => '0'
    );
\freq_low_46.diff_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(11),
      Q => \^diff_e\(11),
      R => '0'
    );
\freq_low_46.diff_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(12),
      Q => \^diff_e\(12),
      R => '0'
    );
\freq_low_46.diff_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(13),
      Q => \^diff_e\(13),
      R => '0'
    );
\freq_low_46.diff_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(14),
      Q => \^diff_e\(14),
      R => '0'
    );
\freq_low_46.diff_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(15),
      Q => \^diff_e\(15),
      R => '0'
    );
\freq_low_46.diff_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(16),
      Q => \^diff_e\(16),
      R => '0'
    );
\freq_low_46.diff_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(17),
      Q => \^diff_e\(17),
      R => '0'
    );
\freq_low_46.diff_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(18),
      Q => \^diff_e\(18),
      R => '0'
    );
\freq_low_46.diff_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(19),
      Q => \^diff_e\(19),
      R => '0'
    );
\freq_low_46.diff_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(1),
      Q => \^diff_e\(1),
      R => '0'
    );
\freq_low_46.diff_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(2),
      Q => \^diff_e\(2),
      R => '0'
    );
\freq_low_46.diff_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(3),
      Q => \^diff_e\(3),
      R => '0'
    );
\freq_low_46.diff_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(4),
      Q => \^diff_e\(4),
      R => '0'
    );
\freq_low_46.diff_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(5),
      Q => \^diff_e\(5),
      R => '0'
    );
\freq_low_46.diff_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(6),
      Q => \^diff_e\(6),
      R => '0'
    );
\freq_low_46.diff_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(7),
      Q => \^diff_e\(7),
      R => '0'
    );
\freq_low_46.diff_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(8),
      Q => \^diff_e\(8),
      R => '0'
    );
\freq_low_46.diff_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_E_reg01_out\(9),
      Q => \^diff_e\(9),
      R => '0'
    );
\freq_low_46.diff_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(0),
      Q => \^diff_n\(0),
      R => '0'
    );
\freq_low_46.diff_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(10),
      Q => \^diff_n\(10),
      R => '0'
    );
\freq_low_46.diff_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(11),
      Q => \^diff_n\(11),
      R => '0'
    );
\freq_low_46.diff_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(12),
      Q => \^diff_n\(12),
      R => '0'
    );
\freq_low_46.diff_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(13),
      Q => \^diff_n\(13),
      R => '0'
    );
\freq_low_46.diff_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(14),
      Q => \^diff_n\(14),
      R => '0'
    );
\freq_low_46.diff_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(15),
      Q => \^diff_n\(15),
      R => '0'
    );
\freq_low_46.diff_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(16),
      Q => \^diff_n\(16),
      R => '0'
    );
\freq_low_46.diff_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(17),
      Q => \^diff_n\(17),
      R => '0'
    );
\freq_low_46.diff_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(18),
      Q => \^diff_n\(18),
      R => '0'
    );
\freq_low_46.diff_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(19),
      Q => \^diff_n\(19),
      R => '0'
    );
\freq_low_46.diff_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(1),
      Q => \^diff_n\(1),
      R => '0'
    );
\freq_low_46.diff_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(2),
      Q => \^diff_n\(2),
      R => '0'
    );
\freq_low_46.diff_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(3),
      Q => \^diff_n\(3),
      R => '0'
    );
\freq_low_46.diff_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(4),
      Q => \^diff_n\(4),
      R => '0'
    );
\freq_low_46.diff_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(5),
      Q => \^diff_n\(5),
      R => '0'
    );
\freq_low_46.diff_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(6),
      Q => \^diff_n\(6),
      R => '0'
    );
\freq_low_46.diff_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(7),
      Q => \^diff_n\(7),
      R => '0'
    );
\freq_low_46.diff_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(8),
      Q => \^diff_n\(8),
      R => '0'
    );
\freq_low_46.diff_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_N_reg02_out\(9),
      Q => \^diff_n\(9),
      R => '0'
    );
\freq_low_46.diff_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(0),
      Q => \^diff_w\(0),
      R => '0'
    );
\freq_low_46.diff_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(10),
      Q => \^diff_w\(10),
      R => '0'
    );
\freq_low_46.diff_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(11),
      Q => \^diff_w\(11),
      R => '0'
    );
\freq_low_46.diff_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(12),
      Q => \^diff_w\(12),
      R => '0'
    );
\freq_low_46.diff_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(13),
      Q => \^diff_w\(13),
      R => '0'
    );
\freq_low_46.diff_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(14),
      Q => \^diff_w\(14),
      R => '0'
    );
\freq_low_46.diff_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(15),
      Q => \^diff_w\(15),
      R => '0'
    );
\freq_low_46.diff_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(16),
      Q => \^diff_w\(16),
      R => '0'
    );
\freq_low_46.diff_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(17),
      Q => \^diff_w\(17),
      R => '0'
    );
\freq_low_46.diff_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(18),
      Q => \^diff_w\(18),
      R => '0'
    );
\freq_low_46.diff_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(19),
      Q => \^diff_w\(19),
      R => '0'
    );
\freq_low_46.diff_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(1),
      Q => \^diff_w\(1),
      R => '0'
    );
\freq_low_46.diff_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(2),
      Q => \^diff_w\(2),
      R => '0'
    );
\freq_low_46.diff_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(3),
      Q => \^diff_w\(3),
      R => '0'
    );
\freq_low_46.diff_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(4),
      Q => \^diff_w\(4),
      R => '0'
    );
\freq_low_46.diff_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(5),
      Q => \^diff_w\(5),
      R => '0'
    );
\freq_low_46.diff_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(6),
      Q => \^diff_w\(6),
      R => '0'
    );
\freq_low_46.diff_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(7),
      Q => \^diff_w\(7),
      R => '0'
    );
\freq_low_46.diff_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(8),
      Q => \^diff_w\(8),
      R => '0'
    );
\freq_low_46.diff_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => \freq_low_46.diff_W_reg00_out\(9),
      Q => \^diff_w\(9),
      R => '0'
    );
\freq_low_46.env_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_36,
      Q => \^env_e\(0),
      R => '0'
    );
\freq_low_46.env_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_26,
      Q => \^env_e\(10),
      R => '0'
    );
\freq_low_46.env_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_25,
      Q => \^env_e\(11),
      R => '0'
    );
\freq_low_46.env_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_24,
      Q => \^env_e\(12),
      R => '0'
    );
\freq_low_46.env_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_23,
      Q => \^env_e\(13),
      R => '0'
    );
\freq_low_46.env_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_22,
      Q => \^env_e\(14),
      R => '0'
    );
\freq_low_46.env_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_21,
      Q => \^env_e\(15),
      R => '0'
    );
\freq_low_46.env_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_35,
      Q => \^env_e\(1),
      R => '0'
    );
\freq_low_46.env_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_34,
      Q => \^env_e\(2),
      R => '0'
    );
\freq_low_46.env_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_33,
      Q => \^env_e\(3),
      R => '0'
    );
\freq_low_46.env_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_32,
      Q => \^env_e\(4),
      R => '0'
    );
\freq_low_46.env_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_31,
      Q => \^env_e\(5),
      R => '0'
    );
\freq_low_46.env_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_30,
      Q => \^env_e\(6),
      R => '0'
    );
\freq_low_46.env_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_29,
      Q => \^env_e\(7),
      R => '0'
    );
\freq_low_46.env_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_28,
      Q => \^env_e\(8),
      R => '0'
    );
\freq_low_46.env_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_27,
      Q => \^env_e\(9),
      R => '0'
    );
\freq_low_46.env_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(0),
      Q => \^env_n\(0),
      R => '0'
    );
\freq_low_46.env_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(10),
      Q => \^env_n\(10),
      R => '0'
    );
\freq_low_46.env_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(11),
      Q => \^env_n\(11),
      R => '0'
    );
\freq_low_46.env_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(12),
      Q => \^env_n\(12),
      R => '0'
    );
\freq_low_46.env_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(13),
      Q => \^env_n\(13),
      R => '0'
    );
\freq_low_46.env_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(14),
      Q => \^env_n\(14),
      R => '0'
    );
\freq_low_46.env_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(15),
      Q => \^env_n\(15),
      R => '0'
    );
\freq_low_46.env_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(1),
      Q => \^env_n\(1),
      R => '0'
    );
\freq_low_46.env_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(2),
      Q => \^env_n\(2),
      R => '0'
    );
\freq_low_46.env_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(3),
      Q => \^env_n\(3),
      R => '0'
    );
\freq_low_46.env_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(4),
      Q => \^env_n\(4),
      R => '0'
    );
\freq_low_46.env_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(5),
      Q => \^env_n\(5),
      R => '0'
    );
\freq_low_46.env_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(6),
      Q => \^env_n\(6),
      R => '0'
    );
\freq_low_46.env_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(7),
      Q => \^env_n\(7),
      R => '0'
    );
\freq_low_46.env_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(8),
      Q => \^env_n\(8),
      R => '0'
    );
\freq_low_46.env_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => env(9),
      Q => \^env_n\(9),
      R => '0'
    );
\freq_low_46.env_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_36,
      Q => \^env_w\(0),
      R => '0'
    );
\freq_low_46.env_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_26,
      Q => \^env_w\(10),
      R => '0'
    );
\freq_low_46.env_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_25,
      Q => \^env_w\(11),
      R => '0'
    );
\freq_low_46.env_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_24,
      Q => \^env_w\(12),
      R => '0'
    );
\freq_low_46.env_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_23,
      Q => \^env_w\(13),
      R => '0'
    );
\freq_low_46.env_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_22,
      Q => \^env_w\(14),
      R => '0'
    );
\freq_low_46.env_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_21,
      Q => \^env_w\(15),
      R => '0'
    );
\freq_low_46.env_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_35,
      Q => \^env_w\(1),
      R => '0'
    );
\freq_low_46.env_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_34,
      Q => \^env_w\(2),
      R => '0'
    );
\freq_low_46.env_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_33,
      Q => \^env_w\(3),
      R => '0'
    );
\freq_low_46.env_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_32,
      Q => \^env_w\(4),
      R => '0'
    );
\freq_low_46.env_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_31,
      Q => \^env_w\(5),
      R => '0'
    );
\freq_low_46.env_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_30,
      Q => \^env_w\(6),
      R => '0'
    );
\freq_low_46.env_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_29,
      Q => \^env_w\(7),
      R => '0'
    );
\freq_low_46.env_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_28,
      Q => \^env_w\(8),
      R => '0'
    );
\freq_low_46.env_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_27,
      Q => \^env_w\(9),
      R => '0'
    );
\freq_low_46.morlet_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_6_n_0\,
      I1 => freq_fifo_valid,
      I2 => \freq_low_46.curr_delay[7]_i_5_n_0\,
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
\freq_low_46.phase_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_20,
      Q => \^phase_e\(0),
      R => '0'
    );
\freq_low_46.phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_10,
      Q => \^phase_e\(10),
      R => '0'
    );
\freq_low_46.phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_9,
      Q => \^phase_e\(11),
      R => '0'
    );
\freq_low_46.phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_8,
      Q => \^phase_e\(12),
      R => '0'
    );
\freq_low_46.phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_7,
      Q => \^phase_e\(13),
      R => '0'
    );
\freq_low_46.phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_6,
      Q => \^phase_e\(14),
      R => '0'
    );
\freq_low_46.phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_5,
      Q => \^phase_e\(15),
      R => '0'
    );
\freq_low_46.phase_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_4,
      Q => \^phase_e\(16),
      R => '0'
    );
\freq_low_46.phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_3,
      Q => \^phase_e\(17),
      R => '0'
    );
\freq_low_46.phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_2,
      Q => \^phase_e\(18),
      R => '0'
    );
\freq_low_46.phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_1,
      Q => \^phase_e\(19),
      R => '0'
    );
\freq_low_46.phase_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_19,
      Q => \^phase_e\(1),
      R => '0'
    );
\freq_low_46.phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_18,
      Q => \^phase_e\(2),
      R => '0'
    );
\freq_low_46.phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_17,
      Q => \^phase_e\(3),
      R => '0'
    );
\freq_low_46.phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_16,
      Q => \^phase_e\(4),
      R => '0'
    );
\freq_low_46.phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_15,
      Q => \^phase_e\(5),
      R => '0'
    );
\freq_low_46.phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_14,
      Q => \^phase_e\(6),
      R => '0'
    );
\freq_low_46.phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_13,
      Q => \^phase_e\(7),
      R => '0'
    );
\freq_low_46.phase_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_12,
      Q => \^phase_e\(8),
      R => '0'
    );
\freq_low_46.phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_11,
      Q => \^phase_e\(9),
      R => '0'
    );
\freq_low_46.phase_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(0),
      Q => \^phase_n\(0),
      R => '0'
    );
\freq_low_46.phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(10),
      Q => \^phase_n\(10),
      R => '0'
    );
\freq_low_46.phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(11),
      Q => \^phase_n\(11),
      R => '0'
    );
\freq_low_46.phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(12),
      Q => \^phase_n\(12),
      R => '0'
    );
\freq_low_46.phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(13),
      Q => \^phase_n\(13),
      R => '0'
    );
\freq_low_46.phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(14),
      Q => \^phase_n\(14),
      R => '0'
    );
\freq_low_46.phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(15),
      Q => \^phase_n\(15),
      R => '0'
    );
\freq_low_46.phase_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(16),
      Q => \^phase_n\(16),
      R => '0'
    );
\freq_low_46.phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(17),
      Q => \^phase_n\(17),
      R => '0'
    );
\freq_low_46.phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(18),
      Q => \^phase_n\(18),
      R => '0'
    );
\freq_low_46.phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(19),
      Q => \^phase_n\(19),
      R => '0'
    );
\freq_low_46.phase_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(1),
      Q => \^phase_n\(1),
      R => '0'
    );
\freq_low_46.phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(2),
      Q => \^phase_n\(2),
      R => '0'
    );
\freq_low_46.phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(3),
      Q => \^phase_n\(3),
      R => '0'
    );
\freq_low_46.phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(4),
      Q => \^phase_n\(4),
      R => '0'
    );
\freq_low_46.phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(5),
      Q => \^phase_n\(5),
      R => '0'
    );
\freq_low_46.phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(6),
      Q => \^phase_n\(6),
      R => '0'
    );
\freq_low_46.phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(7),
      Q => \^phase_n\(7),
      R => '0'
    );
\freq_low_46.phase_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(8),
      Q => \^phase_n\(8),
      R => '0'
    );
\freq_low_46.phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(9),
      Q => \^phase_n\(9),
      R => '0'
    );
\freq_low_46.phase_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_20,
      Q => \^phase_w\(0),
      R => '0'
    );
\freq_low_46.phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_10,
      Q => \^phase_w\(10),
      R => '0'
    );
\freq_low_46.phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_9,
      Q => \^phase_w\(11),
      R => '0'
    );
\freq_low_46.phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_8,
      Q => \^phase_w\(12),
      R => '0'
    );
\freq_low_46.phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_7,
      Q => \^phase_w\(13),
      R => '0'
    );
\freq_low_46.phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_6,
      Q => \^phase_w\(14),
      R => '0'
    );
\freq_low_46.phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_5,
      Q => \^phase_w\(15),
      R => '0'
    );
\freq_low_46.phase_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_4,
      Q => \^phase_w\(16),
      R => '0'
    );
\freq_low_46.phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_3,
      Q => \^phase_w\(17),
      R => '0'
    );
\freq_low_46.phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_2,
      Q => \^phase_w\(18),
      R => '0'
    );
\freq_low_46.phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_1,
      Q => \^phase_w\(19),
      R => '0'
    );
\freq_low_46.phase_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_19,
      Q => \^phase_w\(1),
      R => '0'
    );
\freq_low_46.phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_18,
      Q => \^phase_w\(2),
      R => '0'
    );
\freq_low_46.phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_17,
      Q => \^phase_w\(3),
      R => '0'
    );
\freq_low_46.phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_16,
      Q => \^phase_w\(4),
      R => '0'
    );
\freq_low_46.phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_15,
      Q => \^phase_w\(5),
      R => '0'
    );
\freq_low_46.phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_14,
      Q => \^phase_w\(6),
      R => '0'
    );
\freq_low_46.phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_13,
      Q => \^phase_w\(7),
      R => '0'
    );
\freq_low_46.phase_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_12,
      Q => \^phase_w\(8),
      R => '0'
    );
\freq_low_46.phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_11,
      Q => \^phase_w\(9),
      R => '0'
    );
\freq_low_46.prevE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_20,
      Q => prevE(0),
      R => '0'
    );
\freq_low_46.prevE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_10,
      Q => prevE(10),
      R => '0'
    );
\freq_low_46.prevE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_9,
      Q => prevE(11),
      R => '0'
    );
\freq_low_46.prevE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_8,
      Q => prevE(12),
      R => '0'
    );
\freq_low_46.prevE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_7,
      Q => prevE(13),
      R => '0'
    );
\freq_low_46.prevE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_6,
      Q => prevE(14),
      R => '0'
    );
\freq_low_46.prevE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_5,
      Q => prevE(15),
      R => '0'
    );
\freq_low_46.prevE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_4,
      Q => prevE(16),
      R => '0'
    );
\freq_low_46.prevE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_3,
      Q => prevE(17),
      R => '0'
    );
\freq_low_46.prevE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_2,
      Q => prevE(18),
      R => '0'
    );
\freq_low_46.prevE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_1,
      Q => prevE(19),
      R => '0'
    );
\freq_low_46.prevE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_19,
      Q => prevE(1),
      R => '0'
    );
\freq_low_46.prevE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_18,
      Q => prevE(2),
      R => '0'
    );
\freq_low_46.prevE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_17,
      Q => prevE(3),
      R => '0'
    );
\freq_low_46.prevE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_16,
      Q => prevE(4),
      R => '0'
    );
\freq_low_46.prevE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_15,
      Q => prevE(5),
      R => '0'
    );
\freq_low_46.prevE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_14,
      Q => prevE(6),
      R => '0'
    );
\freq_low_46.prevE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_13,
      Q => prevE(7),
      R => '0'
    );
\freq_low_46.prevE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_12,
      Q => prevE(8),
      R => '0'
    );
\freq_low_46.prevE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_E_i_n_11,
      Q => prevE(9),
      R => '0'
    );
\freq_low_46.prevN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(0),
      Q => prevN(0),
      R => '0'
    );
\freq_low_46.prevN_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(10),
      Q => prevN(10),
      R => '0'
    );
\freq_low_46.prevN_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(11),
      Q => prevN(11),
      R => '0'
    );
\freq_low_46.prevN_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(12),
      Q => prevN(12),
      R => '0'
    );
\freq_low_46.prevN_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(13),
      Q => prevN(13),
      R => '0'
    );
\freq_low_46.prevN_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(14),
      Q => prevN(14),
      R => '0'
    );
\freq_low_46.prevN_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(15),
      Q => prevN(15),
      R => '0'
    );
\freq_low_46.prevN_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(16),
      Q => prevN(16),
      R => '0'
    );
\freq_low_46.prevN_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(17),
      Q => prevN(17),
      R => '0'
    );
\freq_low_46.prevN_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(18),
      Q => prevN(18),
      R => '0'
    );
\freq_low_46.prevN_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(19),
      Q => prevN(19),
      R => '0'
    );
\freq_low_46.prevN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(1),
      Q => prevN(1),
      R => '0'
    );
\freq_low_46.prevN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(2),
      Q => prevN(2),
      R => '0'
    );
\freq_low_46.prevN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(3),
      Q => prevN(3),
      R => '0'
    );
\freq_low_46.prevN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(4),
      Q => prevN(4),
      R => '0'
    );
\freq_low_46.prevN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(5),
      Q => prevN(5),
      R => '0'
    );
\freq_low_46.prevN_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(6),
      Q => prevN(6),
      R => '0'
    );
\freq_low_46.prevN_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(7),
      Q => prevN(7),
      R => '0'
    );
\freq_low_46.prevN_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(8),
      Q => prevN(8),
      R => '0'
    );
\freq_low_46.prevN_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => phase(9),
      Q => prevN(9),
      R => '0'
    );
\freq_low_46.prevW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_20,
      Q => prevW(0),
      R => '0'
    );
\freq_low_46.prevW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_10,
      Q => prevW(10),
      R => '0'
    );
\freq_low_46.prevW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_9,
      Q => prevW(11),
      R => '0'
    );
\freq_low_46.prevW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_8,
      Q => prevW(12),
      R => '0'
    );
\freq_low_46.prevW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_7,
      Q => prevW(13),
      R => '0'
    );
\freq_low_46.prevW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_6,
      Q => prevW(14),
      R => '0'
    );
\freq_low_46.prevW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_5,
      Q => prevW(15),
      R => '0'
    );
\freq_low_46.prevW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_4,
      Q => prevW(16),
      R => '0'
    );
\freq_low_46.prevW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_3,
      Q => prevW(17),
      R => '0'
    );
\freq_low_46.prevW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_2,
      Q => prevW(18),
      R => '0'
    );
\freq_low_46.prevW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_1,
      Q => prevW(19),
      R => '0'
    );
\freq_low_46.prevW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_19,
      Q => prevW(1),
      R => '0'
    );
\freq_low_46.prevW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_18,
      Q => prevW(2),
      R => '0'
    );
\freq_low_46.prevW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_17,
      Q => prevW(3),
      R => '0'
    );
\freq_low_46.prevW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_16,
      Q => prevW(4),
      R => '0'
    );
\freq_low_46.prevW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_15,
      Q => prevW(5),
      R => '0'
    );
\freq_low_46.prevW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_14,
      Q => prevW(6),
      R => '0'
    );
\freq_low_46.prevW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_13,
      Q => prevW(7),
      R => '0'
    );
\freq_low_46.prevW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_12,
      Q => prevW(8),
      R => '0'
    );
\freq_low_46.prevW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.env_N_reg0\,
      D => freq_W_i_n_11,
      Q => prevW(9),
      R => '0'
    );
\freq_low_46.raw_fifo_rd_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => raw_fifo_empty,
      I1 => \^valid\,
      O => \freq_low_46.raw_fifo_rd_i_1_n_0\
    );
\freq_low_46.raw_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_low_46.raw_fifo_rd_i_1_n_0\,
      Q => raw_fifo_rd,
      R => '0'
    );
\freq_low_46.start_delay[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => freq_fifo_valid,
      I2 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      O => p_0_in(0)
    );
\freq_low_46.start_delay[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(1),
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => freq_fifo_valid,
      I3 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      O => p_0_in(1)
    );
\freq_low_46.start_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(2),
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => \freq_low_46.start_delay_reg\(1),
      O => p_0_in(2)
    );
\freq_low_46.start_delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BBBBBBBB0000000"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I2 => \freq_low_46.start_delay_reg\(1),
      I3 => \freq_low_46.start_delay_reg\(0),
      I4 => \freq_low_46.start_delay_reg\(2),
      I5 => \freq_low_46.start_delay_reg\(3),
      O => p_0_in(3)
    );
\freq_low_46.start_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(4),
      I1 => \freq_low_46.start_delay_reg\(1),
      I2 => \freq_low_46.start_delay_reg\(0),
      I3 => \freq_low_46.start_delay_reg\(2),
      I4 => \freq_low_46.start_delay_reg\(3),
      O => p_0_in(4)
    );
\freq_low_46.start_delay[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6606"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(5),
      I1 => \freq_low_46.start_delay[7]_i_3_n_0\,
      I2 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I3 => freq_fifo_valid,
      O => p_0_in(5)
    );
\freq_low_46.start_delay[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0DD0DD00"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I1 => freq_fifo_valid,
      I2 => \freq_low_46.start_delay[7]_i_3_n_0\,
      I3 => \freq_low_46.start_delay_reg\(6),
      I4 => \freq_low_46.start_delay_reg\(5),
      O => p_0_in(6)
    );
\freq_low_46.start_delay[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004F"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_low_46.curr_delay[7]_i_6_n_0\,
      I2 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I3 => \freq_low_46.curr_delay[7]_i_1_n_0\,
      O => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6AAA00006AAA"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(7),
      I1 => \freq_low_46.start_delay_reg\(5),
      I2 => \freq_low_46.start_delay_reg\(6),
      I3 => \freq_low_46.start_delay[7]_i_3_n_0\,
      I4 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I5 => freq_fifo_valid,
      O => p_0_in(7)
    );
\freq_low_46.start_delay[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(4),
      I1 => \freq_low_46.start_delay_reg\(1),
      I2 => \freq_low_46.start_delay_reg\(0),
      I3 => \freq_low_46.start_delay_reg\(2),
      I4 => \freq_low_46.start_delay_reg\(3),
      O => \freq_low_46.start_delay[7]_i_3_n_0\
    );
\freq_low_46.start_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \freq_low_46.start_delay_reg\(0),
      R => '0'
    );
\freq_low_46.start_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \freq_low_46.start_delay_reg\(1),
      R => '0'
    );
\freq_low_46.start_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \freq_low_46.start_delay_reg\(2),
      R => '0'
    );
\freq_low_46.start_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \freq_low_46.start_delay_reg\(3),
      R => '0'
    );
\freq_low_46.start_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \freq_low_46.start_delay_reg\(4),
      R => '0'
    );
\freq_low_46.start_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \freq_low_46.start_delay_reg\(5),
      R => '0'
    );
\freq_low_46.start_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \freq_low_46.start_delay_reg\(6),
      R => '0'
    );
\freq_low_46.start_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \freq_low_46.start_delay_reg\(7),
      R => '0'
    );
\freq_low_46.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_low_46.env_N_reg0\,
      Q => \^valid\,
      R => '0'
    );
ila_0_i: component ps_freq_low_46_0_0_ila_0
     port map (
      clk => clk,
      probe0(0) => \^valid\,
      probe1(0) => raw_fifo_rd,
      probe10(15 downto 0) => \^env_w\(15 downto 0),
      probe11(19 downto 0) => \^phase_w\(19 downto 0),
      probe12(19 downto 0) => \^diff_w\(19 downto 0),
      probe2(0) => raw_fifo_empty,
      probe3(15 downto 0) => raw_fifo_data(15 downto 0),
      probe4(15 downto 0) => \^env_n\(15 downto 0),
      probe5(19 downto 0) => \^phase_n\(19 downto 0),
      probe6(19 downto 0) => \^diff_n\(19 downto 0),
      probe7(15 downto 0) => \^env_e\(15 downto 0),
      probe8(19 downto 0) => \^phase_e\(19 downto 0),
      probe9(19 downto 0) => \^diff_e\(19 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0 is
  port (
    deci_clk : in STD_LOGIC;
    deci_fifo_wr : in STD_LOGIC;
    deci_fifo_data : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    freq_fifo_valid : in STD_LOGIC;
    freq_fifo_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    valid : out STD_LOGIC;
    env_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_W : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_W : out STD_LOGIC_VECTOR ( 19 downto 0 )
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
  attribute X_INTERFACE_INFO of deci_clk : signal is "xilinx.com:signal:clock:1.0 deci_clk CLK";
  attribute X_INTERFACE_MODE of deci_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of deci_clk : signal is "XIL_INTERFACENAME deci_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_freq_low_46_0_0_freq_low_46
     port map (
      clk => clk,
      deci_clk => deci_clk,
      deci_fifo_data => deci_fifo_data,
      deci_fifo_wr => deci_fifo_wr,
      diff_E(19 downto 0) => diff_E(19 downto 0),
      diff_N(19 downto 0) => diff_N(19 downto 0),
      diff_W(19 downto 0) => diff_W(19 downto 0),
      env_E(15 downto 0) => env_E(15 downto 0),
      env_N(15 downto 0) => env_N(15 downto 0),
      env_W(15 downto 0) => env_W(15 downto 0),
      freq_fifo_data(47 downto 0) => freq_fifo_data(47 downto 0),
      freq_fifo_valid => freq_fifo_valid,
      phase_E(19 downto 0) => phase_E(19 downto 0),
      phase_N(19 downto 0) => phase_N(19 downto 0),
      phase_W(19 downto 0) => phase_W(19 downto 0),
      reset => reset,
      valid => valid
    );
end STRUCTURE;
