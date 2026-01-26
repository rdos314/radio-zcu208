-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Jan 26 22:49:36 2026
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_ana_0_1/ps_comp_ana_0_1_sim_netlist.vhdl
-- Design      : ps_comp_ana_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_ana_0_1_morlet_to_phase_env is
  port (
    clk : in STD_LOGIC;
    active : in STD_LOGIC;
    re : in STD_LOGIC_VECTOR ( 23 downto 0 );
    im : in STD_LOGIC_VECTOR ( 23 downto 0 );
    valid : out STD_LOGIC;
    env : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_ana_0_1_morlet_to_phase_env : entity is "morlet_to_phase_env";
end ps_comp_ana_0_1_morlet_to_phase_env;

architecture STRUCTURE of ps_comp_ana_0_1_morlet_to_phase_env is
  component mult_16_16_HD4 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mult_16_16_HD4;
  component ps_comp_ana_0_1_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_comp_ana_0_1_mult_16_16;
  component cordic_sqrt_16_HD5 is
  port (
    aclk : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component cordic_sqrt_16_HD5;
  component cordic_atan2_16_HD6 is
  port (
    aclk : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component cordic_atan2_16_HD6;
  signal amp_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal delay0 : STD_LOGIC;
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
  signal \^valid\ : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/phase_env_i_3/\morlet_to_phase_env.amp_4_reg[9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_2\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.valid_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.valid_i_3\ : label is "soft_lutpair9";
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
  valid <= \^valid\;
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
      I1 => active,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => active,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => active,
      O => delay0
    );
\morlet_to_phase_env.delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => active,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(3),
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
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => active,
      I3 => \morlet_to_phase_env.delay_reg\(2),
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
      INIT => X"55555555D5555554"
    )
        port map (
      I0 => active,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(3),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(1),
      I5 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.env[15]_i_1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(0),
      Q => env(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(10),
      Q => env(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(11),
      Q => env(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(12),
      Q => env(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(13),
      Q => env(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(14),
      Q => env(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(15),
      Q => env(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(1),
      Q => env(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(2),
      Q => env(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(3),
      Q => env(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(4),
      Q => env(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(5),
      Q => env(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(6),
      Q => env(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(7),
      Q => env(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(8),
      Q => env(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(9),
      Q => env(9),
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
      Q => phase(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(10),
      Q => phase(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(11),
      Q => phase(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(12),
      Q => phase(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(13),
      Q => phase(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(14),
      Q => phase(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(15),
      Q => phase(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(16),
      Q => phase(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(17),
      Q => phase(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(18),
      Q => phase(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(19),
      Q => phase(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(1),
      Q => phase(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(2),
      Q => phase(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(3),
      Q => phase(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(4),
      Q => phase(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(5),
      Q => phase(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(6),
      Q => phase(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(7),
      Q => phase(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(8),
      Q => phase(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(9),
      Q => phase(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAA"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2_n_0\,
      I1 => \^valid\,
      I2 => \morlet_to_phase_env.valid_i_3_n_0\,
      I3 => active,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(4),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.valid_i_2_n_0\
    );
\morlet_to_phase_env.valid_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      O => \morlet_to_phase_env.valid_i_3_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => \^valid\,
      R => '0'
    );
mult_im_i: component mult_16_16_HD4
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_comp_ana_0_1_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component cordic_sqrt_16_HD5
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component cordic_atan2_16_HD6
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 24) => im(23 downto 0),
      s_axis_cartesian_tdata(23 downto 0) => re(23 downto 0),
      s_axis_cartesian_tvalid => active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__1\ is
  port (
    clk : in STD_LOGIC;
    active : in STD_LOGIC;
    re : in STD_LOGIC_VECTOR ( 23 downto 0 );
    im : in STD_LOGIC_VECTOR ( 23 downto 0 );
    valid : out STD_LOGIC;
    env : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__1\ : entity is "morlet_to_phase_env";
end \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__1\;

architecture STRUCTURE of \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__1\ is
  component ps_comp_ana_0_1_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_comp_ana_0_1_mult_16_16;
  component ps_comp_ana_0_1_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_comp_ana_0_1_cordic_sqrt_16;
  component ps_comp_ana_0_1_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_comp_ana_0_1_cordic_atan2_16;
  signal amp_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal delay0 : STD_LOGIC;
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
  signal \^valid\ : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/phase_env_i_0/\morlet_to_phase_env.amp_4_reg[9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_2\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.valid_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.valid_i_3\ : label is "soft_lutpair0";
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
  valid <= \^valid\;
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
      I1 => active,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => active,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => active,
      O => delay0
    );
\morlet_to_phase_env.delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => active,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(3),
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
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => active,
      I3 => \morlet_to_phase_env.delay_reg\(2),
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
      INIT => X"55555555D5555554"
    )
        port map (
      I0 => active,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(3),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(1),
      I5 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.env[15]_i_1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(0),
      Q => env(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(10),
      Q => env(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(11),
      Q => env(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(12),
      Q => env(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(13),
      Q => env(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(14),
      Q => env(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(15),
      Q => env(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(1),
      Q => env(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(2),
      Q => env(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(3),
      Q => env(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(4),
      Q => env(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(5),
      Q => env(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(6),
      Q => env(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(7),
      Q => env(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(8),
      Q => env(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(9),
      Q => env(9),
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
      Q => phase(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(10),
      Q => phase(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(11),
      Q => phase(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(12),
      Q => phase(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(13),
      Q => phase(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(14),
      Q => phase(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(15),
      Q => phase(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(16),
      Q => phase(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(17),
      Q => phase(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(18),
      Q => phase(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(19),
      Q => phase(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(1),
      Q => phase(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(2),
      Q => phase(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(3),
      Q => phase(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(4),
      Q => phase(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(5),
      Q => phase(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(6),
      Q => phase(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(7),
      Q => phase(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(8),
      Q => phase(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(9),
      Q => phase(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAA"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2_n_0\,
      I1 => \^valid\,
      I2 => \morlet_to_phase_env.valid_i_3_n_0\,
      I3 => active,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(4),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.valid_i_2_n_0\
    );
\morlet_to_phase_env.valid_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      O => \morlet_to_phase_env.valid_i_3_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => \^valid\,
      R => '0'
    );
mult_im_i: component ps_comp_ana_0_1_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_comp_ana_0_1_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_comp_ana_0_1_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_comp_ana_0_1_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 24) => im(23 downto 0),
      s_axis_cartesian_tdata(23 downto 0) => re(23 downto 0),
      s_axis_cartesian_tvalid => active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__2\ is
  port (
    clk : in STD_LOGIC;
    active : in STD_LOGIC;
    re : in STD_LOGIC_VECTOR ( 23 downto 0 );
    im : in STD_LOGIC_VECTOR ( 23 downto 0 );
    valid : out STD_LOGIC;
    env : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__2\ : entity is "morlet_to_phase_env";
end \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__2\;

architecture STRUCTURE of \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__2\ is
  component ps_comp_ana_0_1_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_comp_ana_0_1_mult_16_16;
  component ps_comp_ana_0_1_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_comp_ana_0_1_cordic_sqrt_16;
  component ps_comp_ana_0_1_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_comp_ana_0_1_cordic_atan2_16;
  signal amp_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal delay0 : STD_LOGIC;
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
  signal \^valid\ : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/phase_env_i_1/\morlet_to_phase_env.amp_4_reg[9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_2\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.valid_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.valid_i_3\ : label is "soft_lutpair3";
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
  valid <= \^valid\;
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
      I1 => active,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => active,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => active,
      O => delay0
    );
\morlet_to_phase_env.delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => active,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(3),
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
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => active,
      I3 => \morlet_to_phase_env.delay_reg\(2),
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
      INIT => X"55555555D5555554"
    )
        port map (
      I0 => active,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(3),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(1),
      I5 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.env[15]_i_1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(0),
      Q => env(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(10),
      Q => env(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(11),
      Q => env(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(12),
      Q => env(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(13),
      Q => env(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(14),
      Q => env(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(15),
      Q => env(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(1),
      Q => env(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(2),
      Q => env(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(3),
      Q => env(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(4),
      Q => env(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(5),
      Q => env(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(6),
      Q => env(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(7),
      Q => env(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(8),
      Q => env(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(9),
      Q => env(9),
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
      Q => phase(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(10),
      Q => phase(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(11),
      Q => phase(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(12),
      Q => phase(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(13),
      Q => phase(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(14),
      Q => phase(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(15),
      Q => phase(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(16),
      Q => phase(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(17),
      Q => phase(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(18),
      Q => phase(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(19),
      Q => phase(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(1),
      Q => phase(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(2),
      Q => phase(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(3),
      Q => phase(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(4),
      Q => phase(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(5),
      Q => phase(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(6),
      Q => phase(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(7),
      Q => phase(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(8),
      Q => phase(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(9),
      Q => phase(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAA"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2_n_0\,
      I1 => \^valid\,
      I2 => \morlet_to_phase_env.valid_i_3_n_0\,
      I3 => active,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(4),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.valid_i_2_n_0\
    );
\morlet_to_phase_env.valid_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      O => \morlet_to_phase_env.valid_i_3_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => \^valid\,
      R => '0'
    );
mult_im_i: component ps_comp_ana_0_1_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_comp_ana_0_1_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_comp_ana_0_1_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_comp_ana_0_1_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 24) => im(23 downto 0),
      s_axis_cartesian_tdata(23 downto 0) => re(23 downto 0),
      s_axis_cartesian_tvalid => active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__3\ is
  port (
    clk : in STD_LOGIC;
    active : in STD_LOGIC;
    re : in STD_LOGIC_VECTOR ( 23 downto 0 );
    im : in STD_LOGIC_VECTOR ( 23 downto 0 );
    valid : out STD_LOGIC;
    env : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__3\ : entity is "morlet_to_phase_env";
end \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__3\;

architecture STRUCTURE of \ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__3\ is
  component ps_comp_ana_0_1_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_comp_ana_0_1_mult_16_16;
  component ps_comp_ana_0_1_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_comp_ana_0_1_cordic_sqrt_16;
  component ps_comp_ana_0_1_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_comp_ana_0_1_cordic_atan2_16;
  signal amp_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal delay0 : STD_LOGIC;
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
  signal \^valid\ : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/phase_env_i_2/\morlet_to_phase_env.amp_4_reg[9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_2\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.valid_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.valid_i_3\ : label is "soft_lutpair6";
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
  valid <= \^valid\;
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
      I1 => active,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => active,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(2),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => active,
      O => delay0
    );
\morlet_to_phase_env.delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => active,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(3),
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
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => active,
      I3 => \morlet_to_phase_env.delay_reg\(2),
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
      INIT => X"55555555D5555554"
    )
        port map (
      I0 => active,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(3),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(1),
      I5 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.env[15]_i_1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(0),
      Q => env(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(10),
      Q => env(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(11),
      Q => env(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(12),
      Q => env(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(13),
      Q => env(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(14),
      Q => env(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(15),
      Q => env(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(1),
      Q => env(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(2),
      Q => env(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(3),
      Q => env(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(4),
      Q => env(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(5),
      Q => env(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(6),
      Q => env(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(7),
      Q => env(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(8),
      Q => env(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(9),
      Q => env(9),
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
      Q => phase(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(10),
      Q => phase(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(11),
      Q => phase(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(12),
      Q => phase(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(13),
      Q => phase(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(14),
      Q => phase(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(15),
      Q => phase(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(16),
      Q => phase(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(17),
      Q => phase(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(18),
      Q => phase(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(19),
      Q => phase(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(1),
      Q => phase(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(2),
      Q => phase(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(3),
      Q => phase(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(4),
      Q => phase(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(5),
      Q => phase(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(6),
      Q => phase(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(7),
      Q => phase(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(8),
      Q => phase(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(9),
      Q => phase(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAA"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2_n_0\,
      I1 => \^valid\,
      I2 => \morlet_to_phase_env.valid_i_3_n_0\,
      I3 => active,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.delay_reg\(4),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.valid_i_2_n_0\
    );
\morlet_to_phase_env.valid_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      O => \morlet_to_phase_env.valid_i_3_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => \^valid\,
      R => '0'
    );
mult_im_i: component ps_comp_ana_0_1_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_comp_ana_0_1_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_comp_ana_0_1_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_comp_ana_0_1_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 24) => im(23 downto 0),
      s_axis_cartesian_tdata(23 downto 0) => re(23 downto 0),
      s_axis_cartesian_tvalid => active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_ana_0_1_comp_ana is
  port (
    fifo_clk : in STD_LOGIC;
    fifo_active : in STD_LOGIC;
    fifo_re : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_im : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_burst : in STD_LOGIC;
    fifo_sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_size : in STD_LOGIC_VECTOR ( 8 downto 0 );
    fifo_freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    fifo_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_ana_0_1_comp_ana : entity is "comp_ana";
end ps_comp_ana_0_1_comp_ana;

architecture STRUCTURE of ps_comp_ana_0_1_comp_ana is
  component ps_comp_ana_0_1_fifo_comp_ana is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 60 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 60 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_comp_ana_0_1_fifo_comp_ana;
  component ps_comp_ana_0_1_fifo_comp_raw is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_comp_ana_0_1_fifo_comp_raw;
  component ps_comp_ana_0_1_ila_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component ps_comp_ana_0_1_ila_1;
  signal ana_empty : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of ana_empty : signal is std.standard.true;
  signal ana_in_data : STD_LOGIC_VECTOR ( 60 downto 0 );
  signal ana_out_data : STD_LOGIC_VECTOR ( 60 downto 16 );
  signal ana_rd : STD_LOGIC;
  attribute MARK_DEBUG of ana_rd : signal is std.standard.true;
  signal ana_trig : STD_LOGIC;
  attribute MARK_DEBUG of ana_trig : signal is std.standard.true;
  signal ana_wr : STD_LOGIC;
  signal angle : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of angle : signal is std.standard.true;
  signal \comp_ana.ana_rd_reg0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_3_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_4_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_5_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_6_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_7_n_0\ : STD_LOGIC;
  signal \comp_ana.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.count[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[5]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.count[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.count[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_ana.count[8]_i_4_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay_reg0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \comp_ana.raw_out_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[100]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[101]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[102]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[103]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[104]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[105]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[106]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[107]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[108]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[109]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[110]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[111]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[112]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[113]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[114]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[115]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[116]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[117]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[118]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[119]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[120]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[121]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[122]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[123]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[124]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[125]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[126]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[127]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[48]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[49]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[50]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[51]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[52]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[53]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[54]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[55]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[56]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[57]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[58]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[59]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[60]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[61]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[62]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[63]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[80]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[81]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[82]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[83]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[84]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[85]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[86]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[87]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[88]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[89]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[90]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[91]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[92]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[93]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[94]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[95]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[96]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[97]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[98]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[99]\ : STD_LOGIC;
  signal \comp_ana.raw_out_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \comp_ana.raw_rd_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_run_reg0\ : STD_LOGIC;
  signal \comp_ana.raw_sample[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_sample[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_10\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_11\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_12\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_13\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_14\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_15\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_8\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_2_n_9\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \comp_ana.run_i_1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute MARK_DEBUG of count : signal is std.standard.true;
  signal curr_sample : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of curr_sample : signal is std.standard.true;
  signal env_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of env_0 : signal is std.standard.true;
  signal env_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of env_1 : signal is std.standard.true;
  signal env_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of env_2 : signal is std.standard.true;
  signal env_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of env_3 : signal is std.standard.true;
  signal freq : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of freq : signal is std.standard.true;
  signal im_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal im_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal im_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal im_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal phase_0 : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_0 : signal is std.standard.true;
  signal phase_1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_1 : signal is std.standard.true;
  signal phase_2 : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_2 : signal is std.standard.true;
  signal phase_3 : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_3 : signal is std.standard.true;
  signal raw_delay : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of raw_delay : signal is std.standard.true;
  signal raw_empty : STD_LOGIC;
  attribute MARK_DEBUG of raw_empty : signal is std.standard.true;
  signal raw_im : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal raw_in_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal raw_out_1 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal raw_out_2 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal raw_rd : STD_LOGIC;
  attribute MARK_DEBUG of raw_rd : signal is std.standard.true;
  signal raw_run : STD_LOGIC;
  attribute MARK_DEBUG of raw_run : signal is std.standard.true;
  signal raw_sample : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_sample : signal is std.standard.true;
  signal raw_wr : STD_LOGIC;
  signal re_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal re_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal re_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal re_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal run : STD_LOGIC;
  attribute MARK_DEBUG of run : signal is std.standard.true;
  signal sample : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of sample : signal is std.standard.true;
  signal size : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute MARK_DEBUG of size : signal is std.standard.true;
  signal valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal \NLW_comp_ana.raw_sample_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_fifo_ana_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ana_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ana_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \comp_ana.ana_rd_reg\ : label is "yes";
  attribute KEEP of \comp_ana.ana_trig_reg\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \comp_ana.angle_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.angle_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.angle_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.count_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.count_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[16]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[16]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[17]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[17]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[18]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[18]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[19]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[19]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.freq_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.freq_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.raw_delay_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.raw_delay_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.raw_delay_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_delay_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.raw_delay_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_delay_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.raw_delay_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_rd_reg\ : label is "yes";
  attribute KEEP of \comp_ana.raw_run_reg\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \comp_ana.raw_sample_reg[15]_i_2\ : label is 35;
  attribute KEEP of \comp_ana.raw_sample_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_ana.raw_sample_reg[7]_i_1\ : label is 35;
  attribute KEEP of \comp_ana.raw_sample_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.run_reg\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.size_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.size_reg[8]\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_ana_i : label is "fifo_comp_ana,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_ana_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_ana_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_comp_raw,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
  attribute x_core_info of fifo_raw_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_1,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of phase_env_i_0 : label is "soft";
  attribute KEEP_HIERARCHY of phase_env_i_1 : label is "soft";
  attribute KEEP_HIERARCHY of phase_env_i_2 : label is "soft";
  attribute KEEP_HIERARCHY of phase_env_i_3 : label is "soft";
begin
\comp_ana.ana_in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(0),
      Q => ana_in_data(0),
      R => '0'
    );
\comp_ana.ana_in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(10),
      Q => ana_in_data(10),
      R => '0'
    );
\comp_ana.ana_in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(11),
      Q => ana_in_data(11),
      R => '0'
    );
\comp_ana.ana_in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(12),
      Q => ana_in_data(12),
      R => '0'
    );
\comp_ana.ana_in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(13),
      Q => ana_in_data(13),
      R => '0'
    );
\comp_ana.ana_in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(14),
      Q => ana_in_data(14),
      R => '0'
    );
\comp_ana.ana_in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(15),
      Q => ana_in_data(15),
      R => '0'
    );
\comp_ana.ana_in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(0),
      Q => ana_in_data(16),
      R => '0'
    );
\comp_ana.ana_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(1),
      Q => ana_in_data(17),
      R => '0'
    );
\comp_ana.ana_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(2),
      Q => ana_in_data(18),
      R => '0'
    );
\comp_ana.ana_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(3),
      Q => ana_in_data(19),
      R => '0'
    );
\comp_ana.ana_in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(1),
      Q => ana_in_data(1),
      R => '0'
    );
\comp_ana.ana_in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(4),
      Q => ana_in_data(20),
      R => '0'
    );
\comp_ana.ana_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(5),
      Q => ana_in_data(21),
      R => '0'
    );
\comp_ana.ana_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(6),
      Q => ana_in_data(22),
      R => '0'
    );
\comp_ana.ana_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(7),
      Q => ana_in_data(23),
      R => '0'
    );
\comp_ana.ana_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(8),
      Q => ana_in_data(24),
      R => '0'
    );
\comp_ana.ana_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(0),
      Q => ana_in_data(25),
      R => '0'
    );
\comp_ana.ana_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(1),
      Q => ana_in_data(26),
      R => '0'
    );
\comp_ana.ana_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(2),
      Q => ana_in_data(27),
      R => '0'
    );
\comp_ana.ana_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(3),
      Q => ana_in_data(28),
      R => '0'
    );
\comp_ana.ana_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(4),
      Q => ana_in_data(29),
      R => '0'
    );
\comp_ana.ana_in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(2),
      Q => ana_in_data(2),
      R => '0'
    );
\comp_ana.ana_in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(5),
      Q => ana_in_data(30),
      R => '0'
    );
\comp_ana.ana_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(6),
      Q => ana_in_data(31),
      R => '0'
    );
\comp_ana.ana_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(7),
      Q => ana_in_data(32),
      R => '0'
    );
\comp_ana.ana_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(8),
      Q => ana_in_data(33),
      R => '0'
    );
\comp_ana.ana_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(9),
      Q => ana_in_data(34),
      R => '0'
    );
\comp_ana.ana_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(10),
      Q => ana_in_data(35),
      R => '0'
    );
\comp_ana.ana_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(11),
      Q => ana_in_data(36),
      R => '0'
    );
\comp_ana.ana_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(12),
      Q => ana_in_data(37),
      R => '0'
    );
\comp_ana.ana_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(13),
      Q => ana_in_data(38),
      R => '0'
    );
\comp_ana.ana_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(14),
      Q => ana_in_data(39),
      R => '0'
    );
\comp_ana.ana_in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(3),
      Q => ana_in_data(3),
      R => '0'
    );
\comp_ana.ana_in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(15),
      Q => ana_in_data(40),
      R => '0'
    );
\comp_ana.ana_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(16),
      Q => ana_in_data(41),
      R => '0'
    );
\comp_ana.ana_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(17),
      Q => ana_in_data(42),
      R => '0'
    );
\comp_ana.ana_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(18),
      Q => ana_in_data(43),
      R => '0'
    );
\comp_ana.ana_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(19),
      Q => ana_in_data(44),
      R => '0'
    );
\comp_ana.ana_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(0),
      Q => ana_in_data(45),
      R => '0'
    );
\comp_ana.ana_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(1),
      Q => ana_in_data(46),
      R => '0'
    );
\comp_ana.ana_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(2),
      Q => ana_in_data(47),
      R => '0'
    );
\comp_ana.ana_in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(3),
      Q => ana_in_data(48),
      R => '0'
    );
\comp_ana.ana_in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(4),
      Q => ana_in_data(49),
      R => '0'
    );
\comp_ana.ana_in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(4),
      Q => ana_in_data(4),
      R => '0'
    );
\comp_ana.ana_in_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(5),
      Q => ana_in_data(50),
      R => '0'
    );
\comp_ana.ana_in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(6),
      Q => ana_in_data(51),
      R => '0'
    );
\comp_ana.ana_in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(7),
      Q => ana_in_data(52),
      R => '0'
    );
\comp_ana.ana_in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(8),
      Q => ana_in_data(53),
      R => '0'
    );
\comp_ana.ana_in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(9),
      Q => ana_in_data(54),
      R => '0'
    );
\comp_ana.ana_in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(10),
      Q => ana_in_data(55),
      R => '0'
    );
\comp_ana.ana_in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(11),
      Q => ana_in_data(56),
      R => '0'
    );
\comp_ana.ana_in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(12),
      Q => ana_in_data(57),
      R => '0'
    );
\comp_ana.ana_in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(13),
      Q => ana_in_data(58),
      R => '0'
    );
\comp_ana.ana_in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(14),
      Q => ana_in_data(59),
      R => '0'
    );
\comp_ana.ana_in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(5),
      Q => ana_in_data(5),
      R => '0'
    );
\comp_ana.ana_in_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(15),
      Q => ana_in_data(60),
      R => '0'
    );
\comp_ana.ana_in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(6),
      Q => ana_in_data(6),
      R => '0'
    );
\comp_ana.ana_in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(7),
      Q => ana_in_data(7),
      R => '0'
    );
\comp_ana.ana_in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(8),
      Q => ana_in_data(8),
      R => '0'
    );
\comp_ana.ana_in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(9),
      Q => ana_in_data(9),
      R => '0'
    );
\comp_ana.ana_rd_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ana_trig,
      I1 => ana_empty,
      O => \comp_ana.ana_rd_reg0\
    );
\comp_ana.ana_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.ana_rd_reg0\,
      Q => ana_rd,
      R => '0'
    );
\comp_ana.ana_trig_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \comp_ana.ana_trig_i_2_n_0\,
      I1 => \comp_ana.ana_trig_i_3_n_0\,
      I2 => \comp_ana.ana_trig_i_4_n_0\,
      I3 => \comp_ana.ana_trig_i_5_n_0\,
      I4 => \comp_ana.ana_trig_i_6_n_0\,
      I5 => \comp_ana.ana_trig_i_7_n_0\,
      O => \comp_ana.ana_trig_i_1_n_0\
    );
\comp_ana.ana_trig_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(12),
      I1 => raw_sample(12),
      I2 => raw_sample(14),
      I3 => curr_sample(14),
      I4 => raw_sample(13),
      I5 => curr_sample(13),
      O => \comp_ana.ana_trig_i_2_n_0\
    );
\comp_ana.ana_trig_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(3),
      I1 => raw_sample(3),
      I2 => raw_sample(5),
      I3 => curr_sample(5),
      I4 => raw_sample(4),
      I5 => curr_sample(4),
      O => \comp_ana.ana_trig_i_3_n_0\
    );
\comp_ana.ana_trig_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(0),
      I1 => raw_sample(0),
      I2 => raw_sample(2),
      I3 => curr_sample(2),
      I4 => raw_sample(1),
      I5 => curr_sample(1),
      O => \comp_ana.ana_trig_i_4_n_0\
    );
\comp_ana.ana_trig_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(9),
      I1 => raw_sample(9),
      I2 => raw_sample(11),
      I3 => curr_sample(11),
      I4 => raw_sample(10),
      I5 => curr_sample(10),
      O => \comp_ana.ana_trig_i_5_n_0\
    );
\comp_ana.ana_trig_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(6),
      I1 => raw_sample(6),
      I2 => raw_sample(8),
      I3 => curr_sample(8),
      I4 => raw_sample(7),
      I5 => curr_sample(7),
      O => \comp_ana.ana_trig_i_6_n_0\
    );
\comp_ana.ana_trig_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => raw_sample(15),
      I1 => curr_sample(15),
      O => \comp_ana.ana_trig_i_7_n_0\
    );
\comp_ana.ana_trig_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.ana_trig_i_1_n_0\,
      Q => ana_trig,
      R => '0'
    );
\comp_ana.ana_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => '1',
      D => fifo_burst,
      Q => ana_wr,
      R => '0'
    );
\comp_ana.angle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(45),
      Q => angle(0),
      R => '0'
    );
\comp_ana.angle_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(55),
      Q => angle(10),
      R => '0'
    );
\comp_ana.angle_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(56),
      Q => angle(11),
      R => '0'
    );
\comp_ana.angle_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(57),
      Q => angle(12),
      R => '0'
    );
\comp_ana.angle_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(58),
      Q => angle(13),
      R => '0'
    );
\comp_ana.angle_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(59),
      Q => angle(14),
      R => '0'
    );
\comp_ana.angle_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(60),
      Q => angle(15),
      R => '0'
    );
\comp_ana.angle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(46),
      Q => angle(1),
      R => '0'
    );
\comp_ana.angle_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(47),
      Q => angle(2),
      R => '0'
    );
\comp_ana.angle_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(48),
      Q => angle(3),
      R => '0'
    );
\comp_ana.angle_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(49),
      Q => angle(4),
      R => '0'
    );
\comp_ana.angle_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(50),
      Q => angle(5),
      R => '0'
    );
\comp_ana.angle_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(51),
      Q => angle(6),
      R => '0'
    );
\comp_ana.angle_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(52),
      Q => angle(7),
      R => '0'
    );
\comp_ana.angle_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(53),
      Q => angle(8),
      R => '0'
    );
\comp_ana.angle_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(54),
      Q => angle(9),
      R => '0'
    );
\comp_ana.count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7545"
    )
        port map (
      I0 => count(0),
      I1 => ana_empty,
      I2 => ana_trig,
      I3 => ana_out_data(16),
      O => \comp_ana.count[0]_i_1_n_0\
    );
\comp_ana.count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF2020EF"
    )
        port map (
      I0 => ana_out_data(17),
      I1 => ana_empty,
      I2 => ana_trig,
      I3 => count(0),
      I4 => count(1),
      O => \comp_ana.count[1]_i_1_n_0\
    );
\comp_ana.count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEF20202020EF"
    )
        port map (
      I0 => ana_out_data(18),
      I1 => ana_empty,
      I2 => ana_trig,
      I3 => count(1),
      I4 => count(0),
      I5 => count(2),
      O => \comp_ana.count[2]_i_1_n_0\
    );
\comp_ana.count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0003AAAAAAAA"
    )
        port map (
      I0 => ana_out_data(19),
      I1 => count(2),
      I2 => count(0),
      I3 => count(1),
      I4 => count(3),
      I5 => \comp_ana.count[8]_i_4_n_0\,
      O => \comp_ana.count[3]_i_1_n_0\
    );
\comp_ana.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3AAC3C3"
    )
        port map (
      I0 => ana_out_data(20),
      I1 => \comp_ana.count[4]_i_2_n_0\,
      I2 => count(4),
      I3 => ana_empty,
      I4 => ana_trig,
      O => \comp_ana.count[4]_i_1_n_0\
    );
\comp_ana.count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      I3 => count(3),
      O => \comp_ana.count[4]_i_2_n_0\
    );
\comp_ana.count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3AAC3C3"
    )
        port map (
      I0 => ana_out_data(21),
      I1 => \comp_ana.count[5]_i_2_n_0\,
      I2 => count(5),
      I3 => ana_empty,
      I4 => ana_trig,
      O => \comp_ana.count[5]_i_1_n_0\
    );
\comp_ana.count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count(3),
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => count(4),
      O => \comp_ana.count[5]_i_2_n_0\
    );
\comp_ana.count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3AAC3C3"
    )
        port map (
      I0 => ana_out_data(22),
      I1 => \comp_ana.count[8]_i_3_n_0\,
      I2 => count(6),
      I3 => ana_empty,
      I4 => ana_trig,
      O => \comp_ana.count[6]_i_1_n_0\
    );
\comp_ana.count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC03AAAAFC03FC03"
    )
        port map (
      I0 => ana_out_data(23),
      I1 => count(6),
      I2 => \comp_ana.count[8]_i_3_n_0\,
      I3 => count(7),
      I4 => ana_empty,
      I5 => ana_trig,
      O => \comp_ana.count[7]_i_1_n_0\
    );
\comp_ana.count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFFFE"
    )
        port map (
      I0 => count(8),
      I1 => count(6),
      I2 => \comp_ana.count[8]_i_3_n_0\,
      I3 => count(7),
      I4 => ana_trig,
      I5 => ana_empty,
      O => \comp_ana.count[8]_i_1_n_0\
    );
\comp_ana.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0003AAAAAAAA"
    )
        port map (
      I0 => ana_out_data(24),
      I1 => count(7),
      I2 => \comp_ana.count[8]_i_3_n_0\,
      I3 => count(6),
      I4 => count(8),
      I5 => \comp_ana.count[8]_i_4_n_0\,
      O => \comp_ana.count[8]_i_2_n_0\
    );
\comp_ana.count[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count(4),
      I1 => count(2),
      I2 => count(0),
      I3 => count(1),
      I4 => count(3),
      I5 => count(5),
      O => \comp_ana.count[8]_i_3_n_0\
    );
\comp_ana.count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ana_empty,
      I1 => ana_trig,
      O => \comp_ana.count[8]_i_4_n_0\
    );
\comp_ana.count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[0]_i_1_n_0\,
      Q => count(0),
      R => '0'
    );
\comp_ana.count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[1]_i_1_n_0\,
      Q => count(1),
      R => '0'
    );
\comp_ana.count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[2]_i_1_n_0\,
      Q => count(2),
      R => '0'
    );
\comp_ana.count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[3]_i_1_n_0\,
      Q => count(3),
      R => '0'
    );
\comp_ana.count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[4]_i_1_n_0\,
      Q => count(4),
      R => '0'
    );
\comp_ana.count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[5]_i_1_n_0\,
      Q => count(5),
      R => '0'
    );
\comp_ana.count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[6]_i_1_n_0\,
      Q => count(6),
      R => '0'
    );
\comp_ana.count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[7]_i_1_n_0\,
      Q => count(7),
      R => '0'
    );
\comp_ana.count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.count[8]_i_1_n_0\,
      D => \comp_ana.count[8]_i_2_n_0\,
      Q => count(8),
      R => '0'
    );
\comp_ana.freq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(25),
      Q => freq(0),
      R => '0'
    );
\comp_ana.freq_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(35),
      Q => freq(10),
      R => '0'
    );
\comp_ana.freq_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(36),
      Q => freq(11),
      R => '0'
    );
\comp_ana.freq_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(37),
      Q => freq(12),
      R => '0'
    );
\comp_ana.freq_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(38),
      Q => freq(13),
      R => '0'
    );
\comp_ana.freq_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(39),
      Q => freq(14),
      R => '0'
    );
\comp_ana.freq_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(40),
      Q => freq(15),
      R => '0'
    );
\comp_ana.freq_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(41),
      Q => freq(16),
      R => '0'
    );
\comp_ana.freq_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(42),
      Q => freq(17),
      R => '0'
    );
\comp_ana.freq_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(43),
      Q => freq(18),
      R => '0'
    );
\comp_ana.freq_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(44),
      Q => freq(19),
      R => '0'
    );
\comp_ana.freq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(26),
      Q => freq(1),
      R => '0'
    );
\comp_ana.freq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(27),
      Q => freq(2),
      R => '0'
    );
\comp_ana.freq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(28),
      Q => freq(3),
      R => '0'
    );
\comp_ana.freq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(29),
      Q => freq(4),
      R => '0'
    );
\comp_ana.freq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(30),
      Q => freq(5),
      R => '0'
    );
\comp_ana.freq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(31),
      Q => freq(6),
      R => '0'
    );
\comp_ana.freq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(32),
      Q => freq(7),
      R => '0'
    );
\comp_ana.freq_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(33),
      Q => freq(8),
      R => '0'
    );
\comp_ana.freq_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(34),
      Q => freq(9),
      R => '0'
    );
\comp_ana.im_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(0),
      Q => im_0(0),
      R => '0'
    );
\comp_ana.im_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(10),
      Q => im_0(10),
      R => '0'
    );
\comp_ana.im_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(11),
      Q => im_0(11),
      R => '0'
    );
\comp_ana.im_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(12),
      Q => im_0(12),
      R => '0'
    );
\comp_ana.im_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(13),
      Q => im_0(13),
      R => '0'
    );
\comp_ana.im_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(14),
      Q => im_0(14),
      R => '0'
    );
\comp_ana.im_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(15),
      Q => im_0(15),
      R => '0'
    );
\comp_ana.im_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(1),
      Q => im_0(1),
      R => '0'
    );
\comp_ana.im_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(2),
      Q => im_0(2),
      R => '0'
    );
\comp_ana.im_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(3),
      Q => im_0(3),
      R => '0'
    );
\comp_ana.im_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(4),
      Q => im_0(4),
      R => '0'
    );
\comp_ana.im_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(5),
      Q => im_0(5),
      R => '0'
    );
\comp_ana.im_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(6),
      Q => im_0(6),
      R => '0'
    );
\comp_ana.im_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(7),
      Q => im_0(7),
      R => '0'
    );
\comp_ana.im_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(8),
      Q => im_0(8),
      R => '0'
    );
\comp_ana.im_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => raw_im(9),
      Q => im_0(9),
      R => '0'
    );
\comp_ana.im_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[80]\,
      Q => im_1(0),
      R => '0'
    );
\comp_ana.im_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[90]\,
      Q => im_1(10),
      R => '0'
    );
\comp_ana.im_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[91]\,
      Q => im_1(11),
      R => '0'
    );
\comp_ana.im_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[92]\,
      Q => im_1(12),
      R => '0'
    );
\comp_ana.im_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[93]\,
      Q => im_1(13),
      R => '0'
    );
\comp_ana.im_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[94]\,
      Q => im_1(14),
      R => '0'
    );
\comp_ana.im_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[95]\,
      Q => im_1(15),
      R => '0'
    );
\comp_ana.im_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[81]\,
      Q => im_1(1),
      R => '0'
    );
\comp_ana.im_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[82]\,
      Q => im_1(2),
      R => '0'
    );
\comp_ana.im_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[83]\,
      Q => im_1(3),
      R => '0'
    );
\comp_ana.im_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[84]\,
      Q => im_1(4),
      R => '0'
    );
\comp_ana.im_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[85]\,
      Q => im_1(5),
      R => '0'
    );
\comp_ana.im_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[86]\,
      Q => im_1(6),
      R => '0'
    );
\comp_ana.im_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[87]\,
      Q => im_1(7),
      R => '0'
    );
\comp_ana.im_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[88]\,
      Q => im_1(8),
      R => '0'
    );
\comp_ana.im_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[89]\,
      Q => im_1(9),
      R => '0'
    );
\comp_ana.im_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[96]\,
      Q => im_2(0),
      R => '0'
    );
\comp_ana.im_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[106]\,
      Q => im_2(10),
      R => '0'
    );
\comp_ana.im_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[107]\,
      Q => im_2(11),
      R => '0'
    );
\comp_ana.im_2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[108]\,
      Q => im_2(12),
      R => '0'
    );
\comp_ana.im_2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[109]\,
      Q => im_2(13),
      R => '0'
    );
\comp_ana.im_2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[110]\,
      Q => im_2(14),
      R => '0'
    );
\comp_ana.im_2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[111]\,
      Q => im_2(15),
      R => '0'
    );
\comp_ana.im_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[97]\,
      Q => im_2(1),
      R => '0'
    );
\comp_ana.im_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[98]\,
      Q => im_2(2),
      R => '0'
    );
\comp_ana.im_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[99]\,
      Q => im_2(3),
      R => '0'
    );
\comp_ana.im_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[100]\,
      Q => im_2(4),
      R => '0'
    );
\comp_ana.im_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[101]\,
      Q => im_2(5),
      R => '0'
    );
\comp_ana.im_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[102]\,
      Q => im_2(6),
      R => '0'
    );
\comp_ana.im_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[103]\,
      Q => im_2(7),
      R => '0'
    );
\comp_ana.im_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[104]\,
      Q => im_2(8),
      R => '0'
    );
\comp_ana.im_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[105]\,
      Q => im_2(9),
      R => '0'
    );
\comp_ana.im_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[112]\,
      Q => im_3(0),
      R => '0'
    );
\comp_ana.im_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[122]\,
      Q => im_3(10),
      R => '0'
    );
\comp_ana.im_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[123]\,
      Q => im_3(11),
      R => '0'
    );
\comp_ana.im_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[124]\,
      Q => im_3(12),
      R => '0'
    );
\comp_ana.im_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[125]\,
      Q => im_3(13),
      R => '0'
    );
\comp_ana.im_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[126]\,
      Q => im_3(14),
      R => '0'
    );
\comp_ana.im_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[127]\,
      Q => im_3(15),
      R => '0'
    );
\comp_ana.im_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[113]\,
      Q => im_3(1),
      R => '0'
    );
\comp_ana.im_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[114]\,
      Q => im_3(2),
      R => '0'
    );
\comp_ana.im_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[115]\,
      Q => im_3(3),
      R => '0'
    );
\comp_ana.im_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[116]\,
      Q => im_3(4),
      R => '0'
    );
\comp_ana.im_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[117]\,
      Q => im_3(5),
      R => '0'
    );
\comp_ana.im_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[118]\,
      Q => im_3(6),
      R => '0'
    );
\comp_ana.im_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[119]\,
      Q => im_3(7),
      R => '0'
    );
\comp_ana.im_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[120]\,
      Q => im_3(8),
      R => '0'
    );
\comp_ana.im_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[121]\,
      Q => im_3(9),
      R => '0'
    );
\comp_ana.raw_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(0),
      O => \comp_ana.raw_delay_reg0\(0)
    );
\comp_ana.raw_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => raw_delay(0),
      I1 => raw_delay(1),
      O => \comp_ana.raw_delay[1]_i_1_n_0\
    );
\comp_ana.raw_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => raw_delay(1),
      I1 => raw_delay(0),
      I2 => raw_delay(2),
      O => \comp_ana.raw_delay[2]_i_1_n_0\
    );
\comp_ana.raw_delay[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => raw_delay(2),
      I1 => raw_delay(0),
      I2 => raw_delay(1),
      I3 => raw_delay(3),
      O => \comp_ana.raw_delay[3]_i_1_n_0\
    );
\comp_ana.raw_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => raw_delay(0),
      I1 => raw_delay(3),
      I2 => raw_delay(4),
      I3 => raw_delay(1),
      I4 => raw_delay(2),
      O => \comp_ana.raw_delay[4]_i_1_n_0\
    );
\comp_ana.raw_delay[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => raw_delay(3),
      I1 => raw_delay(1),
      I2 => raw_delay(0),
      I3 => raw_delay(2),
      I4 => raw_delay(4),
      O => \comp_ana.raw_delay[4]_i_2_n_0\
    );
\comp_ana.raw_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_ana.raw_delay[4]_i_1_n_0\,
      D => \comp_ana.raw_delay_reg0\(0),
      Q => raw_delay(0),
      S => raw_empty
    );
\comp_ana.raw_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_ana.raw_delay[4]_i_1_n_0\,
      D => \comp_ana.raw_delay[1]_i_1_n_0\,
      Q => raw_delay(1),
      S => raw_empty
    );
\comp_ana.raw_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_ana.raw_delay[4]_i_1_n_0\,
      D => \comp_ana.raw_delay[2]_i_1_n_0\,
      Q => raw_delay(2),
      S => raw_empty
    );
\comp_ana.raw_delay_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_ana.raw_delay[4]_i_1_n_0\,
      D => \comp_ana.raw_delay[3]_i_1_n_0\,
      Q => raw_delay(3),
      S => raw_empty
    );
\comp_ana.raw_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_ana.raw_delay[4]_i_1_n_0\,
      D => \comp_ana.raw_delay[4]_i_2_n_0\,
      Q => raw_delay(4),
      S => raw_empty
    );
\comp_ana.raw_in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(0),
      Q => raw_in_data(0),
      R => '0'
    );
\comp_ana.raw_in_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(36),
      Q => raw_in_data(100),
      R => '0'
    );
\comp_ana.raw_in_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(37),
      Q => raw_in_data(101),
      R => '0'
    );
\comp_ana.raw_in_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(38),
      Q => raw_in_data(102),
      R => '0'
    );
\comp_ana.raw_in_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(39),
      Q => raw_in_data(103),
      R => '0'
    );
\comp_ana.raw_in_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(40),
      Q => raw_in_data(104),
      R => '0'
    );
\comp_ana.raw_in_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(41),
      Q => raw_in_data(105),
      R => '0'
    );
\comp_ana.raw_in_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(42),
      Q => raw_in_data(106),
      R => '0'
    );
\comp_ana.raw_in_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(43),
      Q => raw_in_data(107),
      R => '0'
    );
\comp_ana.raw_in_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(44),
      Q => raw_in_data(108),
      R => '0'
    );
\comp_ana.raw_in_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(45),
      Q => raw_in_data(109),
      R => '0'
    );
\comp_ana.raw_in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(10),
      Q => raw_in_data(10),
      R => '0'
    );
\comp_ana.raw_in_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(46),
      Q => raw_in_data(110),
      R => '0'
    );
\comp_ana.raw_in_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(47),
      Q => raw_in_data(111),
      R => '0'
    );
\comp_ana.raw_in_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(48),
      Q => raw_in_data(112),
      R => '0'
    );
\comp_ana.raw_in_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(49),
      Q => raw_in_data(113),
      R => '0'
    );
\comp_ana.raw_in_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(50),
      Q => raw_in_data(114),
      R => '0'
    );
\comp_ana.raw_in_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(51),
      Q => raw_in_data(115),
      R => '0'
    );
\comp_ana.raw_in_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(52),
      Q => raw_in_data(116),
      R => '0'
    );
\comp_ana.raw_in_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(53),
      Q => raw_in_data(117),
      R => '0'
    );
\comp_ana.raw_in_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(54),
      Q => raw_in_data(118),
      R => '0'
    );
\comp_ana.raw_in_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(55),
      Q => raw_in_data(119),
      R => '0'
    );
\comp_ana.raw_in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(11),
      Q => raw_in_data(11),
      R => '0'
    );
\comp_ana.raw_in_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(56),
      Q => raw_in_data(120),
      R => '0'
    );
\comp_ana.raw_in_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(57),
      Q => raw_in_data(121),
      R => '0'
    );
\comp_ana.raw_in_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(58),
      Q => raw_in_data(122),
      R => '0'
    );
\comp_ana.raw_in_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(59),
      Q => raw_in_data(123),
      R => '0'
    );
\comp_ana.raw_in_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(60),
      Q => raw_in_data(124),
      R => '0'
    );
\comp_ana.raw_in_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(61),
      Q => raw_in_data(125),
      R => '0'
    );
\comp_ana.raw_in_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(62),
      Q => raw_in_data(126),
      R => '0'
    );
\comp_ana.raw_in_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(63),
      Q => raw_in_data(127),
      R => '0'
    );
\comp_ana.raw_in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(12),
      Q => raw_in_data(12),
      R => '0'
    );
\comp_ana.raw_in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(13),
      Q => raw_in_data(13),
      R => '0'
    );
\comp_ana.raw_in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(14),
      Q => raw_in_data(14),
      R => '0'
    );
\comp_ana.raw_in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(15),
      Q => raw_in_data(15),
      R => '0'
    );
\comp_ana.raw_in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(16),
      Q => raw_in_data(16),
      R => '0'
    );
\comp_ana.raw_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(17),
      Q => raw_in_data(17),
      R => '0'
    );
\comp_ana.raw_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(18),
      Q => raw_in_data(18),
      R => '0'
    );
\comp_ana.raw_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(19),
      Q => raw_in_data(19),
      R => '0'
    );
\comp_ana.raw_in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(1),
      Q => raw_in_data(1),
      R => '0'
    );
\comp_ana.raw_in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(20),
      Q => raw_in_data(20),
      R => '0'
    );
\comp_ana.raw_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(21),
      Q => raw_in_data(21),
      R => '0'
    );
\comp_ana.raw_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(22),
      Q => raw_in_data(22),
      R => '0'
    );
\comp_ana.raw_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(23),
      Q => raw_in_data(23),
      R => '0'
    );
\comp_ana.raw_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(24),
      Q => raw_in_data(24),
      R => '0'
    );
\comp_ana.raw_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(25),
      Q => raw_in_data(25),
      R => '0'
    );
\comp_ana.raw_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(26),
      Q => raw_in_data(26),
      R => '0'
    );
\comp_ana.raw_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(27),
      Q => raw_in_data(27),
      R => '0'
    );
\comp_ana.raw_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(28),
      Q => raw_in_data(28),
      R => '0'
    );
\comp_ana.raw_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(29),
      Q => raw_in_data(29),
      R => '0'
    );
\comp_ana.raw_in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(2),
      Q => raw_in_data(2),
      R => '0'
    );
\comp_ana.raw_in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(30),
      Q => raw_in_data(30),
      R => '0'
    );
\comp_ana.raw_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(31),
      Q => raw_in_data(31),
      R => '0'
    );
\comp_ana.raw_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(32),
      Q => raw_in_data(32),
      R => '0'
    );
\comp_ana.raw_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(33),
      Q => raw_in_data(33),
      R => '0'
    );
\comp_ana.raw_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(34),
      Q => raw_in_data(34),
      R => '0'
    );
\comp_ana.raw_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(35),
      Q => raw_in_data(35),
      R => '0'
    );
\comp_ana.raw_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(36),
      Q => raw_in_data(36),
      R => '0'
    );
\comp_ana.raw_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(37),
      Q => raw_in_data(37),
      R => '0'
    );
\comp_ana.raw_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(38),
      Q => raw_in_data(38),
      R => '0'
    );
\comp_ana.raw_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(39),
      Q => raw_in_data(39),
      R => '0'
    );
\comp_ana.raw_in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(3),
      Q => raw_in_data(3),
      R => '0'
    );
\comp_ana.raw_in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(40),
      Q => raw_in_data(40),
      R => '0'
    );
\comp_ana.raw_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(41),
      Q => raw_in_data(41),
      R => '0'
    );
\comp_ana.raw_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(42),
      Q => raw_in_data(42),
      R => '0'
    );
\comp_ana.raw_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(43),
      Q => raw_in_data(43),
      R => '0'
    );
\comp_ana.raw_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(44),
      Q => raw_in_data(44),
      R => '0'
    );
\comp_ana.raw_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(45),
      Q => raw_in_data(45),
      R => '0'
    );
\comp_ana.raw_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(46),
      Q => raw_in_data(46),
      R => '0'
    );
\comp_ana.raw_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(47),
      Q => raw_in_data(47),
      R => '0'
    );
\comp_ana.raw_in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(48),
      Q => raw_in_data(48),
      R => '0'
    );
\comp_ana.raw_in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(49),
      Q => raw_in_data(49),
      R => '0'
    );
\comp_ana.raw_in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(4),
      Q => raw_in_data(4),
      R => '0'
    );
\comp_ana.raw_in_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(50),
      Q => raw_in_data(50),
      R => '0'
    );
\comp_ana.raw_in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(51),
      Q => raw_in_data(51),
      R => '0'
    );
\comp_ana.raw_in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(52),
      Q => raw_in_data(52),
      R => '0'
    );
\comp_ana.raw_in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(53),
      Q => raw_in_data(53),
      R => '0'
    );
\comp_ana.raw_in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(54),
      Q => raw_in_data(54),
      R => '0'
    );
\comp_ana.raw_in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(55),
      Q => raw_in_data(55),
      R => '0'
    );
\comp_ana.raw_in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(56),
      Q => raw_in_data(56),
      R => '0'
    );
\comp_ana.raw_in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(57),
      Q => raw_in_data(57),
      R => '0'
    );
\comp_ana.raw_in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(58),
      Q => raw_in_data(58),
      R => '0'
    );
\comp_ana.raw_in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(59),
      Q => raw_in_data(59),
      R => '0'
    );
\comp_ana.raw_in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(5),
      Q => raw_in_data(5),
      R => '0'
    );
\comp_ana.raw_in_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(60),
      Q => raw_in_data(60),
      R => '0'
    );
\comp_ana.raw_in_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(61),
      Q => raw_in_data(61),
      R => '0'
    );
\comp_ana.raw_in_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(62),
      Q => raw_in_data(62),
      R => '0'
    );
\comp_ana.raw_in_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(63),
      Q => raw_in_data(63),
      R => '0'
    );
\comp_ana.raw_in_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(0),
      Q => raw_in_data(64),
      R => '0'
    );
\comp_ana.raw_in_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(1),
      Q => raw_in_data(65),
      R => '0'
    );
\comp_ana.raw_in_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(2),
      Q => raw_in_data(66),
      R => '0'
    );
\comp_ana.raw_in_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(3),
      Q => raw_in_data(67),
      R => '0'
    );
\comp_ana.raw_in_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(4),
      Q => raw_in_data(68),
      R => '0'
    );
\comp_ana.raw_in_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(5),
      Q => raw_in_data(69),
      R => '0'
    );
\comp_ana.raw_in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(6),
      Q => raw_in_data(6),
      R => '0'
    );
\comp_ana.raw_in_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(6),
      Q => raw_in_data(70),
      R => '0'
    );
\comp_ana.raw_in_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(7),
      Q => raw_in_data(71),
      R => '0'
    );
\comp_ana.raw_in_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(8),
      Q => raw_in_data(72),
      R => '0'
    );
\comp_ana.raw_in_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(9),
      Q => raw_in_data(73),
      R => '0'
    );
\comp_ana.raw_in_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(10),
      Q => raw_in_data(74),
      R => '0'
    );
\comp_ana.raw_in_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(11),
      Q => raw_in_data(75),
      R => '0'
    );
\comp_ana.raw_in_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(12),
      Q => raw_in_data(76),
      R => '0'
    );
\comp_ana.raw_in_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(13),
      Q => raw_in_data(77),
      R => '0'
    );
\comp_ana.raw_in_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(14),
      Q => raw_in_data(78),
      R => '0'
    );
\comp_ana.raw_in_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(15),
      Q => raw_in_data(79),
      R => '0'
    );
\comp_ana.raw_in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(7),
      Q => raw_in_data(7),
      R => '0'
    );
\comp_ana.raw_in_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(16),
      Q => raw_in_data(80),
      R => '0'
    );
\comp_ana.raw_in_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(17),
      Q => raw_in_data(81),
      R => '0'
    );
\comp_ana.raw_in_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(18),
      Q => raw_in_data(82),
      R => '0'
    );
\comp_ana.raw_in_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(19),
      Q => raw_in_data(83),
      R => '0'
    );
\comp_ana.raw_in_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(20),
      Q => raw_in_data(84),
      R => '0'
    );
\comp_ana.raw_in_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(21),
      Q => raw_in_data(85),
      R => '0'
    );
\comp_ana.raw_in_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(22),
      Q => raw_in_data(86),
      R => '0'
    );
\comp_ana.raw_in_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(23),
      Q => raw_in_data(87),
      R => '0'
    );
\comp_ana.raw_in_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(24),
      Q => raw_in_data(88),
      R => '0'
    );
\comp_ana.raw_in_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(25),
      Q => raw_in_data(89),
      R => '0'
    );
\comp_ana.raw_in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(8),
      Q => raw_in_data(8),
      R => '0'
    );
\comp_ana.raw_in_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(26),
      Q => raw_in_data(90),
      R => '0'
    );
\comp_ana.raw_in_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(27),
      Q => raw_in_data(91),
      R => '0'
    );
\comp_ana.raw_in_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(28),
      Q => raw_in_data(92),
      R => '0'
    );
\comp_ana.raw_in_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(29),
      Q => raw_in_data(93),
      R => '0'
    );
\comp_ana.raw_in_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(30),
      Q => raw_in_data(94),
      R => '0'
    );
\comp_ana.raw_in_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(31),
      Q => raw_in_data(95),
      R => '0'
    );
\comp_ana.raw_in_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(32),
      Q => raw_in_data(96),
      R => '0'
    );
\comp_ana.raw_in_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(33),
      Q => raw_in_data(97),
      R => '0'
    );
\comp_ana.raw_in_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(34),
      Q => raw_in_data(98),
      R => '0'
    );
\comp_ana.raw_in_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_im(35),
      Q => raw_in_data(99),
      R => '0'
    );
\comp_ana.raw_in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_active,
      D => fifo_re(9),
      Q => raw_in_data(9),
      R => '0'
    );
\comp_ana.raw_out_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(0),
      Q => raw_out_2(0),
      R => '0'
    );
\comp_ana.raw_out_2_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(100),
      Q => raw_out_2(100),
      R => '0'
    );
\comp_ana.raw_out_2_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(101),
      Q => raw_out_2(101),
      R => '0'
    );
\comp_ana.raw_out_2_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(102),
      Q => raw_out_2(102),
      R => '0'
    );
\comp_ana.raw_out_2_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(103),
      Q => raw_out_2(103),
      R => '0'
    );
\comp_ana.raw_out_2_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(104),
      Q => raw_out_2(104),
      R => '0'
    );
\comp_ana.raw_out_2_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(105),
      Q => raw_out_2(105),
      R => '0'
    );
\comp_ana.raw_out_2_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(106),
      Q => raw_out_2(106),
      R => '0'
    );
\comp_ana.raw_out_2_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(107),
      Q => raw_out_2(107),
      R => '0'
    );
\comp_ana.raw_out_2_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(108),
      Q => raw_out_2(108),
      R => '0'
    );
\comp_ana.raw_out_2_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(109),
      Q => raw_out_2(109),
      R => '0'
    );
\comp_ana.raw_out_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(10),
      Q => raw_out_2(10),
      R => '0'
    );
\comp_ana.raw_out_2_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(110),
      Q => raw_out_2(110),
      R => '0'
    );
\comp_ana.raw_out_2_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(111),
      Q => raw_out_2(111),
      R => '0'
    );
\comp_ana.raw_out_2_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(112),
      Q => raw_out_2(112),
      R => '0'
    );
\comp_ana.raw_out_2_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(113),
      Q => raw_out_2(113),
      R => '0'
    );
\comp_ana.raw_out_2_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(114),
      Q => raw_out_2(114),
      R => '0'
    );
\comp_ana.raw_out_2_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(115),
      Q => raw_out_2(115),
      R => '0'
    );
\comp_ana.raw_out_2_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(116),
      Q => raw_out_2(116),
      R => '0'
    );
\comp_ana.raw_out_2_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(117),
      Q => raw_out_2(117),
      R => '0'
    );
\comp_ana.raw_out_2_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(118),
      Q => raw_out_2(118),
      R => '0'
    );
\comp_ana.raw_out_2_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(119),
      Q => raw_out_2(119),
      R => '0'
    );
\comp_ana.raw_out_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(11),
      Q => raw_out_2(11),
      R => '0'
    );
\comp_ana.raw_out_2_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(120),
      Q => raw_out_2(120),
      R => '0'
    );
\comp_ana.raw_out_2_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(121),
      Q => raw_out_2(121),
      R => '0'
    );
\comp_ana.raw_out_2_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(122),
      Q => raw_out_2(122),
      R => '0'
    );
\comp_ana.raw_out_2_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(123),
      Q => raw_out_2(123),
      R => '0'
    );
\comp_ana.raw_out_2_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(124),
      Q => raw_out_2(124),
      R => '0'
    );
\comp_ana.raw_out_2_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(125),
      Q => raw_out_2(125),
      R => '0'
    );
\comp_ana.raw_out_2_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(126),
      Q => raw_out_2(126),
      R => '0'
    );
\comp_ana.raw_out_2_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(127),
      Q => raw_out_2(127),
      R => '0'
    );
\comp_ana.raw_out_2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(12),
      Q => raw_out_2(12),
      R => '0'
    );
\comp_ana.raw_out_2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(13),
      Q => raw_out_2(13),
      R => '0'
    );
\comp_ana.raw_out_2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(14),
      Q => raw_out_2(14),
      R => '0'
    );
\comp_ana.raw_out_2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(15),
      Q => raw_out_2(15),
      R => '0'
    );
\comp_ana.raw_out_2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(16),
      Q => raw_out_2(16),
      R => '0'
    );
\comp_ana.raw_out_2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(17),
      Q => raw_out_2(17),
      R => '0'
    );
\comp_ana.raw_out_2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(18),
      Q => raw_out_2(18),
      R => '0'
    );
\comp_ana.raw_out_2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(19),
      Q => raw_out_2(19),
      R => '0'
    );
\comp_ana.raw_out_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(1),
      Q => raw_out_2(1),
      R => '0'
    );
\comp_ana.raw_out_2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(20),
      Q => raw_out_2(20),
      R => '0'
    );
\comp_ana.raw_out_2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(21),
      Q => raw_out_2(21),
      R => '0'
    );
\comp_ana.raw_out_2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(22),
      Q => raw_out_2(22),
      R => '0'
    );
\comp_ana.raw_out_2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(23),
      Q => raw_out_2(23),
      R => '0'
    );
\comp_ana.raw_out_2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(24),
      Q => raw_out_2(24),
      R => '0'
    );
\comp_ana.raw_out_2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(25),
      Q => raw_out_2(25),
      R => '0'
    );
\comp_ana.raw_out_2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(26),
      Q => raw_out_2(26),
      R => '0'
    );
\comp_ana.raw_out_2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(27),
      Q => raw_out_2(27),
      R => '0'
    );
\comp_ana.raw_out_2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(28),
      Q => raw_out_2(28),
      R => '0'
    );
\comp_ana.raw_out_2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(29),
      Q => raw_out_2(29),
      R => '0'
    );
\comp_ana.raw_out_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(2),
      Q => raw_out_2(2),
      R => '0'
    );
\comp_ana.raw_out_2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(30),
      Q => raw_out_2(30),
      R => '0'
    );
\comp_ana.raw_out_2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(31),
      Q => raw_out_2(31),
      R => '0'
    );
\comp_ana.raw_out_2_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(32),
      Q => raw_out_2(32),
      R => '0'
    );
\comp_ana.raw_out_2_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(33),
      Q => raw_out_2(33),
      R => '0'
    );
\comp_ana.raw_out_2_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(34),
      Q => raw_out_2(34),
      R => '0'
    );
\comp_ana.raw_out_2_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(35),
      Q => raw_out_2(35),
      R => '0'
    );
\comp_ana.raw_out_2_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(36),
      Q => raw_out_2(36),
      R => '0'
    );
\comp_ana.raw_out_2_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(37),
      Q => raw_out_2(37),
      R => '0'
    );
\comp_ana.raw_out_2_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(38),
      Q => raw_out_2(38),
      R => '0'
    );
\comp_ana.raw_out_2_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(39),
      Q => raw_out_2(39),
      R => '0'
    );
\comp_ana.raw_out_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(3),
      Q => raw_out_2(3),
      R => '0'
    );
\comp_ana.raw_out_2_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(40),
      Q => raw_out_2(40),
      R => '0'
    );
\comp_ana.raw_out_2_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(41),
      Q => raw_out_2(41),
      R => '0'
    );
\comp_ana.raw_out_2_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(42),
      Q => raw_out_2(42),
      R => '0'
    );
\comp_ana.raw_out_2_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(43),
      Q => raw_out_2(43),
      R => '0'
    );
\comp_ana.raw_out_2_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(44),
      Q => raw_out_2(44),
      R => '0'
    );
\comp_ana.raw_out_2_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(45),
      Q => raw_out_2(45),
      R => '0'
    );
\comp_ana.raw_out_2_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(46),
      Q => raw_out_2(46),
      R => '0'
    );
\comp_ana.raw_out_2_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(47),
      Q => raw_out_2(47),
      R => '0'
    );
\comp_ana.raw_out_2_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(48),
      Q => raw_out_2(48),
      R => '0'
    );
\comp_ana.raw_out_2_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(49),
      Q => raw_out_2(49),
      R => '0'
    );
\comp_ana.raw_out_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(4),
      Q => raw_out_2(4),
      R => '0'
    );
\comp_ana.raw_out_2_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(50),
      Q => raw_out_2(50),
      R => '0'
    );
\comp_ana.raw_out_2_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(51),
      Q => raw_out_2(51),
      R => '0'
    );
\comp_ana.raw_out_2_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(52),
      Q => raw_out_2(52),
      R => '0'
    );
\comp_ana.raw_out_2_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(53),
      Q => raw_out_2(53),
      R => '0'
    );
\comp_ana.raw_out_2_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(54),
      Q => raw_out_2(54),
      R => '0'
    );
\comp_ana.raw_out_2_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(55),
      Q => raw_out_2(55),
      R => '0'
    );
\comp_ana.raw_out_2_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(56),
      Q => raw_out_2(56),
      R => '0'
    );
\comp_ana.raw_out_2_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(57),
      Q => raw_out_2(57),
      R => '0'
    );
\comp_ana.raw_out_2_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(58),
      Q => raw_out_2(58),
      R => '0'
    );
\comp_ana.raw_out_2_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(59),
      Q => raw_out_2(59),
      R => '0'
    );
\comp_ana.raw_out_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(5),
      Q => raw_out_2(5),
      R => '0'
    );
\comp_ana.raw_out_2_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(60),
      Q => raw_out_2(60),
      R => '0'
    );
\comp_ana.raw_out_2_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(61),
      Q => raw_out_2(61),
      R => '0'
    );
\comp_ana.raw_out_2_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(62),
      Q => raw_out_2(62),
      R => '0'
    );
\comp_ana.raw_out_2_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(63),
      Q => raw_out_2(63),
      R => '0'
    );
\comp_ana.raw_out_2_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(64),
      Q => raw_out_2(64),
      R => '0'
    );
\comp_ana.raw_out_2_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(65),
      Q => raw_out_2(65),
      R => '0'
    );
\comp_ana.raw_out_2_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(66),
      Q => raw_out_2(66),
      R => '0'
    );
\comp_ana.raw_out_2_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(67),
      Q => raw_out_2(67),
      R => '0'
    );
\comp_ana.raw_out_2_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(68),
      Q => raw_out_2(68),
      R => '0'
    );
\comp_ana.raw_out_2_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(69),
      Q => raw_out_2(69),
      R => '0'
    );
\comp_ana.raw_out_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(6),
      Q => raw_out_2(6),
      R => '0'
    );
\comp_ana.raw_out_2_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(70),
      Q => raw_out_2(70),
      R => '0'
    );
\comp_ana.raw_out_2_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(71),
      Q => raw_out_2(71),
      R => '0'
    );
\comp_ana.raw_out_2_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(72),
      Q => raw_out_2(72),
      R => '0'
    );
\comp_ana.raw_out_2_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(73),
      Q => raw_out_2(73),
      R => '0'
    );
\comp_ana.raw_out_2_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(74),
      Q => raw_out_2(74),
      R => '0'
    );
\comp_ana.raw_out_2_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(75),
      Q => raw_out_2(75),
      R => '0'
    );
\comp_ana.raw_out_2_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(76),
      Q => raw_out_2(76),
      R => '0'
    );
\comp_ana.raw_out_2_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(77),
      Q => raw_out_2(77),
      R => '0'
    );
\comp_ana.raw_out_2_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(78),
      Q => raw_out_2(78),
      R => '0'
    );
\comp_ana.raw_out_2_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(79),
      Q => raw_out_2(79),
      R => '0'
    );
\comp_ana.raw_out_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(7),
      Q => raw_out_2(7),
      R => '0'
    );
\comp_ana.raw_out_2_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(80),
      Q => raw_out_2(80),
      R => '0'
    );
\comp_ana.raw_out_2_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(81),
      Q => raw_out_2(81),
      R => '0'
    );
\comp_ana.raw_out_2_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(82),
      Q => raw_out_2(82),
      R => '0'
    );
\comp_ana.raw_out_2_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(83),
      Q => raw_out_2(83),
      R => '0'
    );
\comp_ana.raw_out_2_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(84),
      Q => raw_out_2(84),
      R => '0'
    );
\comp_ana.raw_out_2_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(85),
      Q => raw_out_2(85),
      R => '0'
    );
\comp_ana.raw_out_2_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(86),
      Q => raw_out_2(86),
      R => '0'
    );
\comp_ana.raw_out_2_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(87),
      Q => raw_out_2(87),
      R => '0'
    );
\comp_ana.raw_out_2_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(88),
      Q => raw_out_2(88),
      R => '0'
    );
\comp_ana.raw_out_2_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(89),
      Q => raw_out_2(89),
      R => '0'
    );
\comp_ana.raw_out_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(8),
      Q => raw_out_2(8),
      R => '0'
    );
\comp_ana.raw_out_2_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(90),
      Q => raw_out_2(90),
      R => '0'
    );
\comp_ana.raw_out_2_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(91),
      Q => raw_out_2(91),
      R => '0'
    );
\comp_ana.raw_out_2_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(92),
      Q => raw_out_2(92),
      R => '0'
    );
\comp_ana.raw_out_2_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(93),
      Q => raw_out_2(93),
      R => '0'
    );
\comp_ana.raw_out_2_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(94),
      Q => raw_out_2(94),
      R => '0'
    );
\comp_ana.raw_out_2_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(95),
      Q => raw_out_2(95),
      R => '0'
    );
\comp_ana.raw_out_2_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(96),
      Q => raw_out_2(96),
      R => '0'
    );
\comp_ana.raw_out_2_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(97),
      Q => raw_out_2(97),
      R => '0'
    );
\comp_ana.raw_out_2_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(98),
      Q => raw_out_2(98),
      R => '0'
    );
\comp_ana.raw_out_2_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(99),
      Q => raw_out_2(99),
      R => '0'
    );
\comp_ana.raw_out_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_1(9),
      Q => raw_out_2(9),
      R => '0'
    );
\comp_ana.raw_out_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(0),
      Q => \comp_ana.raw_out_data_reg_n_0_[0]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(100),
      Q => \comp_ana.raw_out_data_reg_n_0_[100]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(101),
      Q => \comp_ana.raw_out_data_reg_n_0_[101]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(102),
      Q => \comp_ana.raw_out_data_reg_n_0_[102]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(103),
      Q => \comp_ana.raw_out_data_reg_n_0_[103]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(104),
      Q => \comp_ana.raw_out_data_reg_n_0_[104]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(105),
      Q => \comp_ana.raw_out_data_reg_n_0_[105]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(106),
      Q => \comp_ana.raw_out_data_reg_n_0_[106]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(107),
      Q => \comp_ana.raw_out_data_reg_n_0_[107]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(108),
      Q => \comp_ana.raw_out_data_reg_n_0_[108]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(109),
      Q => \comp_ana.raw_out_data_reg_n_0_[109]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(10),
      Q => \comp_ana.raw_out_data_reg_n_0_[10]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(110),
      Q => \comp_ana.raw_out_data_reg_n_0_[110]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(111),
      Q => \comp_ana.raw_out_data_reg_n_0_[111]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(112),
      Q => \comp_ana.raw_out_data_reg_n_0_[112]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(113),
      Q => \comp_ana.raw_out_data_reg_n_0_[113]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(114),
      Q => \comp_ana.raw_out_data_reg_n_0_[114]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(115),
      Q => \comp_ana.raw_out_data_reg_n_0_[115]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(116),
      Q => \comp_ana.raw_out_data_reg_n_0_[116]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(117),
      Q => \comp_ana.raw_out_data_reg_n_0_[117]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(118),
      Q => \comp_ana.raw_out_data_reg_n_0_[118]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(119),
      Q => \comp_ana.raw_out_data_reg_n_0_[119]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(11),
      Q => \comp_ana.raw_out_data_reg_n_0_[11]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(120),
      Q => \comp_ana.raw_out_data_reg_n_0_[120]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(121),
      Q => \comp_ana.raw_out_data_reg_n_0_[121]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(122),
      Q => \comp_ana.raw_out_data_reg_n_0_[122]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(123),
      Q => \comp_ana.raw_out_data_reg_n_0_[123]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(124),
      Q => \comp_ana.raw_out_data_reg_n_0_[124]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(125),
      Q => \comp_ana.raw_out_data_reg_n_0_[125]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(126),
      Q => \comp_ana.raw_out_data_reg_n_0_[126]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(127),
      Q => \comp_ana.raw_out_data_reg_n_0_[127]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(12),
      Q => \comp_ana.raw_out_data_reg_n_0_[12]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(13),
      Q => \comp_ana.raw_out_data_reg_n_0_[13]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(14),
      Q => \comp_ana.raw_out_data_reg_n_0_[14]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(15),
      Q => \comp_ana.raw_out_data_reg_n_0_[15]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(16),
      Q => \p_0_in__0\(0),
      R => '0'
    );
\comp_ana.raw_out_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(17),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\comp_ana.raw_out_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(18),
      Q => \p_0_in__0\(2),
      R => '0'
    );
\comp_ana.raw_out_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(19),
      Q => \p_0_in__0\(3),
      R => '0'
    );
\comp_ana.raw_out_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(1),
      Q => \comp_ana.raw_out_data_reg_n_0_[1]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(20),
      Q => \p_0_in__0\(4),
      R => '0'
    );
\comp_ana.raw_out_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(21),
      Q => \p_0_in__0\(5),
      R => '0'
    );
\comp_ana.raw_out_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(22),
      Q => \p_0_in__0\(6),
      R => '0'
    );
\comp_ana.raw_out_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(23),
      Q => \p_0_in__0\(7),
      R => '0'
    );
\comp_ana.raw_out_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(24),
      Q => \p_0_in__0\(8),
      R => '0'
    );
\comp_ana.raw_out_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(25),
      Q => \p_0_in__0\(9),
      R => '0'
    );
\comp_ana.raw_out_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(26),
      Q => \p_0_in__0\(10),
      R => '0'
    );
\comp_ana.raw_out_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(27),
      Q => \p_0_in__0\(11),
      R => '0'
    );
\comp_ana.raw_out_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(28),
      Q => \p_0_in__0\(12),
      R => '0'
    );
\comp_ana.raw_out_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(29),
      Q => \p_0_in__0\(13),
      R => '0'
    );
\comp_ana.raw_out_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(2),
      Q => \comp_ana.raw_out_data_reg_n_0_[2]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(30),
      Q => \p_0_in__0\(14),
      R => '0'
    );
\comp_ana.raw_out_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(31),
      Q => \p_0_in__0\(15),
      R => '0'
    );
\comp_ana.raw_out_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(32),
      Q => \comp_ana.raw_out_data_reg_n_0_[32]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(33),
      Q => \comp_ana.raw_out_data_reg_n_0_[33]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(34),
      Q => \comp_ana.raw_out_data_reg_n_0_[34]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(35),
      Q => \comp_ana.raw_out_data_reg_n_0_[35]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(36),
      Q => \comp_ana.raw_out_data_reg_n_0_[36]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(37),
      Q => \comp_ana.raw_out_data_reg_n_0_[37]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(38),
      Q => \comp_ana.raw_out_data_reg_n_0_[38]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(39),
      Q => \comp_ana.raw_out_data_reg_n_0_[39]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(3),
      Q => \comp_ana.raw_out_data_reg_n_0_[3]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(40),
      Q => \comp_ana.raw_out_data_reg_n_0_[40]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(41),
      Q => \comp_ana.raw_out_data_reg_n_0_[41]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(42),
      Q => \comp_ana.raw_out_data_reg_n_0_[42]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(43),
      Q => \comp_ana.raw_out_data_reg_n_0_[43]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(44),
      Q => \comp_ana.raw_out_data_reg_n_0_[44]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(45),
      Q => \comp_ana.raw_out_data_reg_n_0_[45]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(46),
      Q => \comp_ana.raw_out_data_reg_n_0_[46]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(47),
      Q => \comp_ana.raw_out_data_reg_n_0_[47]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(48),
      Q => \comp_ana.raw_out_data_reg_n_0_[48]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(49),
      Q => \comp_ana.raw_out_data_reg_n_0_[49]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(4),
      Q => \comp_ana.raw_out_data_reg_n_0_[4]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(50),
      Q => \comp_ana.raw_out_data_reg_n_0_[50]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(51),
      Q => \comp_ana.raw_out_data_reg_n_0_[51]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(52),
      Q => \comp_ana.raw_out_data_reg_n_0_[52]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(53),
      Q => \comp_ana.raw_out_data_reg_n_0_[53]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(54),
      Q => \comp_ana.raw_out_data_reg_n_0_[54]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(55),
      Q => \comp_ana.raw_out_data_reg_n_0_[55]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(56),
      Q => \comp_ana.raw_out_data_reg_n_0_[56]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(57),
      Q => \comp_ana.raw_out_data_reg_n_0_[57]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(58),
      Q => \comp_ana.raw_out_data_reg_n_0_[58]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(59),
      Q => \comp_ana.raw_out_data_reg_n_0_[59]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(5),
      Q => \comp_ana.raw_out_data_reg_n_0_[5]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(60),
      Q => \comp_ana.raw_out_data_reg_n_0_[60]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(61),
      Q => \comp_ana.raw_out_data_reg_n_0_[61]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(62),
      Q => \comp_ana.raw_out_data_reg_n_0_[62]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(63),
      Q => \comp_ana.raw_out_data_reg_n_0_[63]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(64),
      Q => raw_im(0),
      R => '0'
    );
\comp_ana.raw_out_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(65),
      Q => raw_im(1),
      R => '0'
    );
\comp_ana.raw_out_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(66),
      Q => raw_im(2),
      R => '0'
    );
\comp_ana.raw_out_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(67),
      Q => raw_im(3),
      R => '0'
    );
\comp_ana.raw_out_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(68),
      Q => raw_im(4),
      R => '0'
    );
\comp_ana.raw_out_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(69),
      Q => raw_im(5),
      R => '0'
    );
\comp_ana.raw_out_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(6),
      Q => \comp_ana.raw_out_data_reg_n_0_[6]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(70),
      Q => raw_im(6),
      R => '0'
    );
\comp_ana.raw_out_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(71),
      Q => raw_im(7),
      R => '0'
    );
\comp_ana.raw_out_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(72),
      Q => raw_im(8),
      R => '0'
    );
\comp_ana.raw_out_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(73),
      Q => raw_im(9),
      R => '0'
    );
\comp_ana.raw_out_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(74),
      Q => raw_im(10),
      R => '0'
    );
\comp_ana.raw_out_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(75),
      Q => raw_im(11),
      R => '0'
    );
\comp_ana.raw_out_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(76),
      Q => raw_im(12),
      R => '0'
    );
\comp_ana.raw_out_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(77),
      Q => raw_im(13),
      R => '0'
    );
\comp_ana.raw_out_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(78),
      Q => raw_im(14),
      R => '0'
    );
\comp_ana.raw_out_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(79),
      Q => raw_im(15),
      R => '0'
    );
\comp_ana.raw_out_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(7),
      Q => \comp_ana.raw_out_data_reg_n_0_[7]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(80),
      Q => \comp_ana.raw_out_data_reg_n_0_[80]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(81),
      Q => \comp_ana.raw_out_data_reg_n_0_[81]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(82),
      Q => \comp_ana.raw_out_data_reg_n_0_[82]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(83),
      Q => \comp_ana.raw_out_data_reg_n_0_[83]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(84),
      Q => \comp_ana.raw_out_data_reg_n_0_[84]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(85),
      Q => \comp_ana.raw_out_data_reg_n_0_[85]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(86),
      Q => \comp_ana.raw_out_data_reg_n_0_[86]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(87),
      Q => \comp_ana.raw_out_data_reg_n_0_[87]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(88),
      Q => \comp_ana.raw_out_data_reg_n_0_[88]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(89),
      Q => \comp_ana.raw_out_data_reg_n_0_[89]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(8),
      Q => \comp_ana.raw_out_data_reg_n_0_[8]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(90),
      Q => \comp_ana.raw_out_data_reg_n_0_[90]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(91),
      Q => \comp_ana.raw_out_data_reg_n_0_[91]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(92),
      Q => \comp_ana.raw_out_data_reg_n_0_[92]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(93),
      Q => \comp_ana.raw_out_data_reg_n_0_[93]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(94),
      Q => \comp_ana.raw_out_data_reg_n_0_[94]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(95),
      Q => \comp_ana.raw_out_data_reg_n_0_[95]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(96),
      Q => \comp_ana.raw_out_data_reg_n_0_[96]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(97),
      Q => \comp_ana.raw_out_data_reg_n_0_[97]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(98),
      Q => \comp_ana.raw_out_data_reg_n_0_[98]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(99),
      Q => \comp_ana.raw_out_data_reg_n_0_[99]\,
      R => '0'
    );
\comp_ana.raw_out_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_out_2(9),
      Q => \comp_ana.raw_out_data_reg_n_0_[9]\,
      R => '0'
    );
\comp_ana.raw_rd_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => raw_empty,
      I1 => raw_delay(2),
      I2 => raw_delay(1),
      I3 => raw_delay(4),
      I4 => raw_delay(3),
      I5 => raw_delay(0),
      O => \comp_ana.raw_rd_i_1_n_0\
    );
\comp_ana.raw_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_rd_i_1_n_0\,
      Q => raw_rd,
      R => '0'
    );
\comp_ana.raw_run_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => raw_rd,
      I1 => raw_empty,
      O => \comp_ana.raw_run_reg0\
    );
\comp_ana.raw_run_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_run_reg0\,
      Q => raw_run,
      R => '0'
    );
\comp_ana.raw_sample[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => valid(1),
      I1 => valid(0),
      I2 => valid(3),
      I3 => valid(2),
      O => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_sample(0),
      O => \comp_ana.raw_sample[7]_i_2_n_0\
    );
\comp_ana.raw_sample_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_15\,
      Q => raw_sample(0),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_2_n_13\,
      Q => raw_sample(10),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_2_n_12\,
      Q => raw_sample(11),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_2_n_11\,
      Q => raw_sample(12),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_2_n_10\,
      Q => raw_sample(13),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_2_n_9\,
      Q => raw_sample(14),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_2_n_8\,
      Q => raw_sample(15),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_ana.raw_sample_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_comp_ana.raw_sample_reg[15]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \comp_ana.raw_sample_reg[15]_i_2_n_1\,
      CO(5) => \comp_ana.raw_sample_reg[15]_i_2_n_2\,
      CO(4) => \comp_ana.raw_sample_reg[15]_i_2_n_3\,
      CO(3) => \comp_ana.raw_sample_reg[15]_i_2_n_4\,
      CO(2) => \comp_ana.raw_sample_reg[15]_i_2_n_5\,
      CO(1) => \comp_ana.raw_sample_reg[15]_i_2_n_6\,
      CO(0) => \comp_ana.raw_sample_reg[15]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \comp_ana.raw_sample_reg[15]_i_2_n_8\,
      O(6) => \comp_ana.raw_sample_reg[15]_i_2_n_9\,
      O(5) => \comp_ana.raw_sample_reg[15]_i_2_n_10\,
      O(4) => \comp_ana.raw_sample_reg[15]_i_2_n_11\,
      O(3) => \comp_ana.raw_sample_reg[15]_i_2_n_12\,
      O(2) => \comp_ana.raw_sample_reg[15]_i_2_n_13\,
      O(1) => \comp_ana.raw_sample_reg[15]_i_2_n_14\,
      O(0) => \comp_ana.raw_sample_reg[15]_i_2_n_15\,
      S(7 downto 0) => raw_sample(15 downto 8)
    );
\comp_ana.raw_sample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_14\,
      Q => raw_sample(1),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_13\,
      Q => raw_sample(2),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_12\,
      Q => raw_sample(3),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_11\,
      Q => raw_sample(4),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_10\,
      Q => raw_sample(5),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_9\,
      Q => raw_sample(6),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_8\,
      Q => raw_sample(7),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_ana.raw_sample_reg[7]_i_1_n_0\,
      CO(6) => \comp_ana.raw_sample_reg[7]_i_1_n_1\,
      CO(5) => \comp_ana.raw_sample_reg[7]_i_1_n_2\,
      CO(4) => \comp_ana.raw_sample_reg[7]_i_1_n_3\,
      CO(3) => \comp_ana.raw_sample_reg[7]_i_1_n_4\,
      CO(2) => \comp_ana.raw_sample_reg[7]_i_1_n_5\,
      CO(1) => \comp_ana.raw_sample_reg[7]_i_1_n_6\,
      CO(0) => \comp_ana.raw_sample_reg[7]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => raw_sample(0),
      O(7) => \comp_ana.raw_sample_reg[7]_i_1_n_8\,
      O(6) => \comp_ana.raw_sample_reg[7]_i_1_n_9\,
      O(5) => \comp_ana.raw_sample_reg[7]_i_1_n_10\,
      O(4) => \comp_ana.raw_sample_reg[7]_i_1_n_11\,
      O(3) => \comp_ana.raw_sample_reg[7]_i_1_n_12\,
      O(2) => \comp_ana.raw_sample_reg[7]_i_1_n_13\,
      O(1) => \comp_ana.raw_sample_reg[7]_i_1_n_14\,
      O(0) => \comp_ana.raw_sample_reg[7]_i_1_n_15\,
      S(7 downto 1) => raw_sample(7 downto 1),
      S(0) => \comp_ana.raw_sample[7]_i_2_n_0\
    );
\comp_ana.raw_sample_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_2_n_15\,
      Q => raw_sample(8),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_sample_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_2_n_14\,
      Q => raw_sample(9),
      R => \comp_ana.raw_sample[15]_i_1_n_0\
    );
\comp_ana.raw_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => '1',
      D => fifo_active,
      Q => raw_wr,
      R => '0'
    );
\comp_ana.re_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[0]\,
      Q => re_0(0),
      R => '0'
    );
\comp_ana.re_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[10]\,
      Q => re_0(10),
      R => '0'
    );
\comp_ana.re_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[11]\,
      Q => re_0(11),
      R => '0'
    );
\comp_ana.re_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[12]\,
      Q => re_0(12),
      R => '0'
    );
\comp_ana.re_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[13]\,
      Q => re_0(13),
      R => '0'
    );
\comp_ana.re_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[14]\,
      Q => re_0(14),
      R => '0'
    );
\comp_ana.re_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[15]\,
      Q => re_0(15),
      R => '0'
    );
\comp_ana.re_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[1]\,
      Q => re_0(1),
      R => '0'
    );
\comp_ana.re_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[2]\,
      Q => re_0(2),
      R => '0'
    );
\comp_ana.re_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[3]\,
      Q => re_0(3),
      R => '0'
    );
\comp_ana.re_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[4]\,
      Q => re_0(4),
      R => '0'
    );
\comp_ana.re_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[5]\,
      Q => re_0(5),
      R => '0'
    );
\comp_ana.re_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[6]\,
      Q => re_0(6),
      R => '0'
    );
\comp_ana.re_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[7]\,
      Q => re_0(7),
      R => '0'
    );
\comp_ana.re_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[8]\,
      Q => re_0(8),
      R => '0'
    );
\comp_ana.re_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[9]\,
      Q => re_0(9),
      R => '0'
    );
\comp_ana.re_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(0),
      Q => re_1(0),
      R => '0'
    );
\comp_ana.re_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(10),
      Q => re_1(10),
      R => '0'
    );
\comp_ana.re_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(11),
      Q => re_1(11),
      R => '0'
    );
\comp_ana.re_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(12),
      Q => re_1(12),
      R => '0'
    );
\comp_ana.re_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(13),
      Q => re_1(13),
      R => '0'
    );
\comp_ana.re_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(14),
      Q => re_1(14),
      R => '0'
    );
\comp_ana.re_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(15),
      Q => re_1(15),
      R => '0'
    );
\comp_ana.re_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(1),
      Q => re_1(1),
      R => '0'
    );
\comp_ana.re_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(2),
      Q => re_1(2),
      R => '0'
    );
\comp_ana.re_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(3),
      Q => re_1(3),
      R => '0'
    );
\comp_ana.re_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(4),
      Q => re_1(4),
      R => '0'
    );
\comp_ana.re_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(5),
      Q => re_1(5),
      R => '0'
    );
\comp_ana.re_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(6),
      Q => re_1(6),
      R => '0'
    );
\comp_ana.re_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(7),
      Q => re_1(7),
      R => '0'
    );
\comp_ana.re_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(8),
      Q => re_1(8),
      R => '0'
    );
\comp_ana.re_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \p_0_in__0\(9),
      Q => re_1(9),
      R => '0'
    );
\comp_ana.re_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[32]\,
      Q => re_2(0),
      R => '0'
    );
\comp_ana.re_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[42]\,
      Q => re_2(10),
      R => '0'
    );
\comp_ana.re_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[43]\,
      Q => re_2(11),
      R => '0'
    );
\comp_ana.re_2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[44]\,
      Q => re_2(12),
      R => '0'
    );
\comp_ana.re_2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[45]\,
      Q => re_2(13),
      R => '0'
    );
\comp_ana.re_2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[46]\,
      Q => re_2(14),
      R => '0'
    );
\comp_ana.re_2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[47]\,
      Q => re_2(15),
      R => '0'
    );
\comp_ana.re_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[33]\,
      Q => re_2(1),
      R => '0'
    );
\comp_ana.re_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[34]\,
      Q => re_2(2),
      R => '0'
    );
\comp_ana.re_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[35]\,
      Q => re_2(3),
      R => '0'
    );
\comp_ana.re_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[36]\,
      Q => re_2(4),
      R => '0'
    );
\comp_ana.re_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[37]\,
      Q => re_2(5),
      R => '0'
    );
\comp_ana.re_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[38]\,
      Q => re_2(6),
      R => '0'
    );
\comp_ana.re_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[39]\,
      Q => re_2(7),
      R => '0'
    );
\comp_ana.re_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[40]\,
      Q => re_2(8),
      R => '0'
    );
\comp_ana.re_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[41]\,
      Q => re_2(9),
      R => '0'
    );
\comp_ana.re_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[48]\,
      Q => re_3(0),
      R => '0'
    );
\comp_ana.re_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[58]\,
      Q => re_3(10),
      R => '0'
    );
\comp_ana.re_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[59]\,
      Q => re_3(11),
      R => '0'
    );
\comp_ana.re_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[60]\,
      Q => re_3(12),
      R => '0'
    );
\comp_ana.re_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[61]\,
      Q => re_3(13),
      R => '0'
    );
\comp_ana.re_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[62]\,
      Q => re_3(14),
      R => '0'
    );
\comp_ana.re_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[63]\,
      Q => re_3(15),
      R => '0'
    );
\comp_ana.re_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[49]\,
      Q => re_3(1),
      R => '0'
    );
\comp_ana.re_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[50]\,
      Q => re_3(2),
      R => '0'
    );
\comp_ana.re_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[51]\,
      Q => re_3(3),
      R => '0'
    );
\comp_ana.re_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[52]\,
      Q => re_3(4),
      R => '0'
    );
\comp_ana.re_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[53]\,
      Q => re_3(5),
      R => '0'
    );
\comp_ana.re_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[54]\,
      Q => re_3(6),
      R => '0'
    );
\comp_ana.re_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[55]\,
      Q => re_3(7),
      R => '0'
    );
\comp_ana.re_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[56]\,
      Q => re_3(8),
      R => '0'
    );
\comp_ana.re_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_run_reg0\,
      D => \comp_ana.raw_out_data_reg_n_0_[57]\,
      Q => re_3(9),
      R => '0'
    );
\comp_ana.run_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => run,
      I1 => count(7),
      I2 => \comp_ana.count[8]_i_3_n_0\,
      I3 => count(6),
      I4 => count(8),
      I5 => \comp_ana.ana_rd_reg0\,
      O => \comp_ana.run_i_1_n_0\
    );
\comp_ana.run_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.run_i_1_n_0\,
      Q => run,
      R => '0'
    );
\comp_ana.sample_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(0),
      Q => sample(0),
      R => '0'
    );
\comp_ana.sample_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(10),
      Q => sample(10),
      R => '0'
    );
\comp_ana.sample_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(11),
      Q => sample(11),
      R => '0'
    );
\comp_ana.sample_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(12),
      Q => sample(12),
      R => '0'
    );
\comp_ana.sample_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(13),
      Q => sample(13),
      R => '0'
    );
\comp_ana.sample_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(14),
      Q => sample(14),
      R => '0'
    );
\comp_ana.sample_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(15),
      Q => sample(15),
      R => '0'
    );
\comp_ana.sample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(1),
      Q => sample(1),
      R => '0'
    );
\comp_ana.sample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(2),
      Q => sample(2),
      R => '0'
    );
\comp_ana.sample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(3),
      Q => sample(3),
      R => '0'
    );
\comp_ana.sample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(4),
      Q => sample(4),
      R => '0'
    );
\comp_ana.sample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(5),
      Q => sample(5),
      R => '0'
    );
\comp_ana.sample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(6),
      Q => sample(6),
      R => '0'
    );
\comp_ana.sample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(7),
      Q => sample(7),
      R => '0'
    );
\comp_ana.sample_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(8),
      Q => sample(8),
      R => '0'
    );
\comp_ana.sample_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(9),
      Q => sample(9),
      R => '0'
    );
\comp_ana.size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(16),
      Q => size(0),
      R => '0'
    );
\comp_ana.size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(17),
      Q => size(1),
      R => '0'
    );
\comp_ana.size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(18),
      Q => size(2),
      R => '0'
    );
\comp_ana.size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(19),
      Q => size(3),
      R => '0'
    );
\comp_ana.size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(20),
      Q => size(4),
      R => '0'
    );
\comp_ana.size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(21),
      Q => size(5),
      R => '0'
    );
\comp_ana.size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(22),
      Q => size(6),
      R => '0'
    );
\comp_ana.size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(23),
      Q => size(7),
      R => '0'
    );
\comp_ana.size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(24),
      Q => size(8),
      R => '0'
    );
fifo_ana_i: component ps_comp_ana_0_1_fifo_comp_ana
     port map (
      din(60 downto 0) => ana_in_data(60 downto 0),
      dout(60 downto 16) => ana_out_data(60 downto 16),
      dout(15 downto 0) => curr_sample(15 downto 0),
      empty => ana_empty,
      full => NLW_fifo_ana_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => ana_rd,
      rd_rst_busy => NLW_fifo_ana_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => fifo_clk,
      wr_en => ana_wr,
      wr_rst_busy => NLW_fifo_ana_i_wr_rst_busy_UNCONNECTED
    );
fifo_raw_i: component ps_comp_ana_0_1_fifo_comp_raw
     port map (
      din(127 downto 0) => raw_in_data(127 downto 0),
      dout(127 downto 0) => raw_out_1(127 downto 0),
      empty => raw_empty,
      full => NLW_fifo_raw_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => raw_rd,
      rd_rst_busy => NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => fifo_clk,
      wr_en => raw_wr,
      wr_rst_busy => NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED
    );
ila_i: component ps_comp_ana_0_1_ila_1
     port map (
      clk => clk,
      probe0(0) => raw_rd,
      probe1(0) => raw_empty,
      probe10(15 downto 0) => sample(15 downto 0),
      probe11(8 downto 0) => size(8 downto 0),
      probe12(8 downto 0) => count(8 downto 0),
      probe13(19 downto 0) => freq(19 downto 0),
      probe14(15 downto 0) => angle(15 downto 0),
      probe15(3 downto 0) => valid(3 downto 0),
      probe16(15 downto 0) => env_0(15 downto 0),
      probe17(15 downto 0) => env_1(15 downto 0),
      probe18(15 downto 0) => env_2(15 downto 0),
      probe19(15 downto 0) => env_3(15 downto 0),
      probe2(4 downto 0) => raw_delay(4 downto 0),
      probe20(19 downto 0) => phase_0(19 downto 0),
      probe21(19 downto 0) => phase_1(19 downto 0),
      probe22(19 downto 0) => phase_2(19 downto 0),
      probe23(19 downto 0) => phase_3(19 downto 0),
      probe3(15 downto 0) => raw_sample(15 downto 0),
      probe4(0) => raw_run,
      probe5(0) => ana_rd,
      probe6(0) => ana_empty,
      probe7(15 downto 0) => curr_sample(15 downto 0),
      probe8(0) => ana_trig,
      probe9(0) => run
    );
phase_env_i_0: entity work.\ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__1\
     port map (
      active => raw_run,
      clk => clk,
      env(15 downto 0) => env_0(15 downto 0),
      im(23 downto 8) => im_0(15 downto 0),
      im(7 downto 0) => B"00000000",
      phase(19 downto 0) => phase_0(19 downto 0),
      re(23 downto 8) => re_0(15 downto 0),
      re(7 downto 0) => B"00000000",
      valid => valid(0)
    );
phase_env_i_1: entity work.\ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__2\
     port map (
      active => raw_run,
      clk => clk,
      env(15 downto 0) => env_1(15 downto 0),
      im(23 downto 8) => im_1(15 downto 0),
      im(7 downto 0) => B"00000000",
      phase(19 downto 0) => phase_1(19 downto 0),
      re(23 downto 8) => re_1(15 downto 0),
      re(7 downto 0) => B"00000000",
      valid => valid(1)
    );
phase_env_i_2: entity work.\ps_comp_ana_0_1_morlet_to_phase_env__xdcDup__3\
     port map (
      active => raw_run,
      clk => clk,
      env(15 downto 0) => env_2(15 downto 0),
      im(23 downto 8) => im_2(15 downto 0),
      im(7 downto 0) => B"00000000",
      phase(19 downto 0) => phase_2(19 downto 0),
      re(23 downto 8) => re_2(15 downto 0),
      re(7 downto 0) => B"00000000",
      valid => valid(2)
    );
phase_env_i_3: entity work.ps_comp_ana_0_1_morlet_to_phase_env
     port map (
      active => raw_run,
      clk => clk,
      env(15 downto 0) => env_3(15 downto 0),
      im(23 downto 8) => im_3(15 downto 0),
      im(7 downto 0) => B"00000000",
      phase(19 downto 0) => phase_3(19 downto 0),
      re(23 downto 8) => re_3(15 downto 0),
      re(7 downto 0) => B"00000000",
      valid => valid(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_ana_0_1 is
  port (
    fifo_clk : in STD_LOGIC;
    fifo_active : in STD_LOGIC;
    fifo_re : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_im : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_burst : in STD_LOGIC;
    fifo_sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_size : in STD_LOGIC_VECTOR ( 8 downto 0 );
    fifo_freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    fifo_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_comp_ana_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_comp_ana_0_1 : entity is "ps_comp_ana_0_1,comp_ana,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_comp_ana_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_comp_ana_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_comp_ana_0_1 : entity is "comp_ana,Vivado 2025.1";
end ps_comp_ana_0_1;

architecture STRUCTURE of ps_comp_ana_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_clk : signal is "xilinx.com:signal:clock:1.0 fifo_clk CLK";
  attribute X_INTERFACE_MODE of fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of fifo_clk : signal is "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_comp_ana_0_1_comp_ana
     port map (
      clk => clk,
      fifo_active => fifo_active,
      fifo_angle(15 downto 0) => fifo_angle(15 downto 0),
      fifo_burst => fifo_burst,
      fifo_clk => fifo_clk,
      fifo_freq(19 downto 0) => fifo_freq(19 downto 0),
      fifo_im(63 downto 0) => fifo_im(63 downto 0),
      fifo_re(63 downto 0) => fifo_re(63 downto 0),
      fifo_sample(15 downto 0) => fifo_sample(15 downto 0),
      fifo_size(8 downto 0) => fifo_size(8 downto 0),
      reset => reset
    );
end STRUCTURE;
