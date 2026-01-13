-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Jan 13 21:21:15 2026
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_ana_0_0/ps_comp_ana_0_0_sim_netlist.vhdl
-- Design      : ps_comp_ana_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_ana_0_0_morlet_to_phase_env is
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
  attribute ORIG_REF_NAME of ps_comp_ana_0_0_morlet_to_phase_env : entity is "morlet_to_phase_env";
end ps_comp_ana_0_0_morlet_to_phase_env;

architecture STRUCTURE of ps_comp_ana_0_0_morlet_to_phase_env is
  component mult_16_16_HD4 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mult_16_16_HD4;
  component ps_comp_ana_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_comp_ana_0_0_mult_16_16;
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
mult_re_i: component ps_comp_ana_0_0_mult_16_16
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
entity \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__1\ is
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
  attribute ORIG_REF_NAME of \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__1\ : entity is "morlet_to_phase_env";
end \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__1\;

architecture STRUCTURE of \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__1\ is
  component ps_comp_ana_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_comp_ana_0_0_mult_16_16;
  component ps_comp_ana_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_comp_ana_0_0_cordic_sqrt_16;
  component ps_comp_ana_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_comp_ana_0_0_cordic_atan2_16;
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
mult_im_i: component ps_comp_ana_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_comp_ana_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_comp_ana_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_comp_ana_0_0_cordic_atan2_16
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
entity \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__2\ is
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
  attribute ORIG_REF_NAME of \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__2\ : entity is "morlet_to_phase_env";
end \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__2\;

architecture STRUCTURE of \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__2\ is
  component ps_comp_ana_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_comp_ana_0_0_mult_16_16;
  component ps_comp_ana_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_comp_ana_0_0_cordic_sqrt_16;
  component ps_comp_ana_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_comp_ana_0_0_cordic_atan2_16;
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
mult_im_i: component ps_comp_ana_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_comp_ana_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_comp_ana_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_comp_ana_0_0_cordic_atan2_16
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
entity \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__3\ is
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
  attribute ORIG_REF_NAME of \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__3\ : entity is "morlet_to_phase_env";
end \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__3\;

architecture STRUCTURE of \ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__3\ is
  component ps_comp_ana_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_comp_ana_0_0_mult_16_16;
  component ps_comp_ana_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_comp_ana_0_0_cordic_sqrt_16;
  component ps_comp_ana_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_comp_ana_0_0_cordic_atan2_16;
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
mult_im_i: component ps_comp_ana_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_comp_ana_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_comp_ana_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_comp_ana_0_0_cordic_atan2_16
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
entity ps_comp_ana_0_0_comp_ana is
  port (
    fifo_clk : in STD_LOGIC;
    fifo_active : in STD_LOGIC;
    fifo_re : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_im : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_burst : in STD_LOGIC;
    fifo_sample : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_size : in STD_LOGIC_VECTOR ( 8 downto 0 );
    fifo_freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    fifo_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_ana_0_0_comp_ana : entity is "comp_ana";
end ps_comp_ana_0_0_comp_ana;

architecture STRUCTURE of ps_comp_ana_0_0_comp_ana is
  component ps_comp_ana_0_0_fifo_comp_ana is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 76 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 76 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_comp_ana_0_0_fifo_comp_ana;
  component ps_comp_ana_0_0_fifo_comp_raw is
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
  end component ps_comp_ana_0_0_fifo_comp_raw;
  component ps_comp_ana_0_0_ila_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component ps_comp_ana_0_0_ila_1;
  signal ana_empty : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of ana_empty : signal is std.standard.true;
  signal ana_in_data : STD_LOGIC_VECTOR ( 76 downto 0 );
  signal ana_out_data : STD_LOGIC_VECTOR ( 76 downto 32 );
  signal ana_rd : STD_LOGIC;
  attribute MARK_DEBUG of ana_rd : signal is std.standard.true;
  signal ana_trig : STD_LOGIC;
  attribute MARK_DEBUG of ana_trig : signal is std.standard.true;
  signal ana_wr : STD_LOGIC;
  signal angle : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of angle : signal is std.standard.true;
  signal \comp_ana.ana_rd_reg0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_10_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_11_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_12_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_13_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_3_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_4_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_5_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_6_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_7_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_8_n_0\ : STD_LOGIC;
  signal \comp_ana.ana_trig_i_9_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_delay_reg0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \comp_ana.raw_rd_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_sample[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_10\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_11\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_12\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_13\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_14\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_15\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_8\ : STD_LOGIC;
  signal \comp_ana.raw_sample_reg[31]_i_2_n_9\ : STD_LOGIC;
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
  signal \comp_ana.raw_valid_reg0\ : STD_LOGIC;
  signal \comp_ana.run_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.size[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[5]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.size[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_ana.size[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_ana.size[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_ana.size[8]_i_4_n_0\ : STD_LOGIC;
  signal curr_sample : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute MARK_DEBUG of im_0 : signal is std.standard.true;
  signal im_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of im_1 : signal is std.standard.true;
  signal im_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of im_2 : signal is std.standard.true;
  signal im_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of im_3 : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC;
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
  signal raw_in_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal raw_out_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal raw_rd : STD_LOGIC;
  attribute MARK_DEBUG of raw_rd : signal is std.standard.true;
  signal raw_sample : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of raw_sample : signal is std.standard.true;
  signal \raw_sample__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal raw_valid : STD_LOGIC;
  attribute MARK_DEBUG of raw_valid : signal is std.standard.true;
  signal raw_wr : STD_LOGIC;
  signal re_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of re_0 : signal is std.standard.true;
  signal re_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of re_1 : signal is std.standard.true;
  signal re_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of re_2 : signal is std.standard.true;
  signal re_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of re_3 : signal is std.standard.true;
  signal run : STD_LOGIC;
  attribute MARK_DEBUG of run : signal is std.standard.true;
  signal sample : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of sample : signal is std.standard.true;
  signal size : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute MARK_DEBUG of size : signal is std.standard.true;
  signal valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal \NLW_comp_ana.raw_sample_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
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
  attribute KEEP of \comp_ana.im_0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.im_0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_0_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.im_1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_1_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.im_2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_2_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.im_3_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.im_3_reg[9]\ : label is "yes";
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
  attribute KEEP of \comp_ana.raw_sample_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \comp_ana.raw_sample_reg[15]_i_1\ : label is 35;
  attribute KEEP of \comp_ana.raw_sample_reg[16]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[17]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[18]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[19]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[20]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[21]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[22]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_ana.raw_sample_reg[23]_i_1\ : label is 35;
  attribute KEEP of \comp_ana.raw_sample_reg[24]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[25]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[26]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[27]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[28]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[29]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[30]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[31]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_ana.raw_sample_reg[31]_i_2\ : label is 35;
  attribute KEEP of \comp_ana.raw_sample_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_ana.raw_sample_reg[7]_i_1\ : label is 35;
  attribute KEEP of \comp_ana.raw_sample_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_sample_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.raw_valid_reg\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.re_0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_0_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.re_1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_1_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.re_2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_2_reg[9]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[0]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[10]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[11]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[12]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[13]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[14]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[15]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[3]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[4]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[5]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[6]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[7]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[8]\ : label is "yes";
  attribute KEEP of \comp_ana.re_3_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.re_3_reg[9]\ : label is "yes";
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
  attribute KEEP of \comp_ana.sample_reg[16]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[16]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[17]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[17]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[18]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[18]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[19]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[19]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[1]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[20]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[20]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[21]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[21]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[22]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[22]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[23]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[23]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[24]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[24]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[25]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[25]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[26]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[26]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[27]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[27]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[28]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[28]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[29]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[29]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[2]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[30]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[30]\ : label is "yes";
  attribute KEEP of \comp_ana.sample_reg[31]\ : label is "yes";
  attribute mark_debug_string of \comp_ana.sample_reg[31]\ : label is "yes";
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
      D => fifo_sample(16),
      Q => ana_in_data(16),
      R => '0'
    );
\comp_ana.ana_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(17),
      Q => ana_in_data(17),
      R => '0'
    );
\comp_ana.ana_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(18),
      Q => ana_in_data(18),
      R => '0'
    );
\comp_ana.ana_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(19),
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
      D => fifo_sample(20),
      Q => ana_in_data(20),
      R => '0'
    );
\comp_ana.ana_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(21),
      Q => ana_in_data(21),
      R => '0'
    );
\comp_ana.ana_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(22),
      Q => ana_in_data(22),
      R => '0'
    );
\comp_ana.ana_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(23),
      Q => ana_in_data(23),
      R => '0'
    );
\comp_ana.ana_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(24),
      Q => ana_in_data(24),
      R => '0'
    );
\comp_ana.ana_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(25),
      Q => ana_in_data(25),
      R => '0'
    );
\comp_ana.ana_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(26),
      Q => ana_in_data(26),
      R => '0'
    );
\comp_ana.ana_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(27),
      Q => ana_in_data(27),
      R => '0'
    );
\comp_ana.ana_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(28),
      Q => ana_in_data(28),
      R => '0'
    );
\comp_ana.ana_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(29),
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
      D => fifo_sample(30),
      Q => ana_in_data(30),
      R => '0'
    );
\comp_ana.ana_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_sample(31),
      Q => ana_in_data(31),
      R => '0'
    );
\comp_ana.ana_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(0),
      Q => ana_in_data(32),
      R => '0'
    );
\comp_ana.ana_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(1),
      Q => ana_in_data(33),
      R => '0'
    );
\comp_ana.ana_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(2),
      Q => ana_in_data(34),
      R => '0'
    );
\comp_ana.ana_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(3),
      Q => ana_in_data(35),
      R => '0'
    );
\comp_ana.ana_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(4),
      Q => ana_in_data(36),
      R => '0'
    );
\comp_ana.ana_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(5),
      Q => ana_in_data(37),
      R => '0'
    );
\comp_ana.ana_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(6),
      Q => ana_in_data(38),
      R => '0'
    );
\comp_ana.ana_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_size(7),
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
      D => fifo_size(8),
      Q => ana_in_data(40),
      R => '0'
    );
\comp_ana.ana_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(0),
      Q => ana_in_data(41),
      R => '0'
    );
\comp_ana.ana_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(1),
      Q => ana_in_data(42),
      R => '0'
    );
\comp_ana.ana_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(2),
      Q => ana_in_data(43),
      R => '0'
    );
\comp_ana.ana_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(3),
      Q => ana_in_data(44),
      R => '0'
    );
\comp_ana.ana_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(4),
      Q => ana_in_data(45),
      R => '0'
    );
\comp_ana.ana_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(5),
      Q => ana_in_data(46),
      R => '0'
    );
\comp_ana.ana_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(6),
      Q => ana_in_data(47),
      R => '0'
    );
\comp_ana.ana_in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(7),
      Q => ana_in_data(48),
      R => '0'
    );
\comp_ana.ana_in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(8),
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
      D => fifo_freq(9),
      Q => ana_in_data(50),
      R => '0'
    );
\comp_ana.ana_in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(10),
      Q => ana_in_data(51),
      R => '0'
    );
\comp_ana.ana_in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(11),
      Q => ana_in_data(52),
      R => '0'
    );
\comp_ana.ana_in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(12),
      Q => ana_in_data(53),
      R => '0'
    );
\comp_ana.ana_in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(13),
      Q => ana_in_data(54),
      R => '0'
    );
\comp_ana.ana_in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(14),
      Q => ana_in_data(55),
      R => '0'
    );
\comp_ana.ana_in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(15),
      Q => ana_in_data(56),
      R => '0'
    );
\comp_ana.ana_in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(16),
      Q => ana_in_data(57),
      R => '0'
    );
\comp_ana.ana_in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(17),
      Q => ana_in_data(58),
      R => '0'
    );
\comp_ana.ana_in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_freq(18),
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
      D => fifo_freq(19),
      Q => ana_in_data(60),
      R => '0'
    );
\comp_ana.ana_in_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(0),
      Q => ana_in_data(61),
      R => '0'
    );
\comp_ana.ana_in_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(1),
      Q => ana_in_data(62),
      R => '0'
    );
\comp_ana.ana_in_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(2),
      Q => ana_in_data(63),
      R => '0'
    );
\comp_ana.ana_in_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(3),
      Q => ana_in_data(64),
      R => '0'
    );
\comp_ana.ana_in_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(4),
      Q => ana_in_data(65),
      R => '0'
    );
\comp_ana.ana_in_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(5),
      Q => ana_in_data(66),
      R => '0'
    );
\comp_ana.ana_in_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(6),
      Q => ana_in_data(67),
      R => '0'
    );
\comp_ana.ana_in_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(7),
      Q => ana_in_data(68),
      R => '0'
    );
\comp_ana.ana_in_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(8),
      Q => ana_in_data(69),
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
\comp_ana.ana_in_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(9),
      Q => ana_in_data(70),
      R => '0'
    );
\comp_ana.ana_in_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(10),
      Q => ana_in_data(71),
      R => '0'
    );
\comp_ana.ana_in_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(11),
      Q => ana_in_data(72),
      R => '0'
    );
\comp_ana.ana_in_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(12),
      Q => ana_in_data(73),
      R => '0'
    );
\comp_ana.ana_in_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(13),
      Q => ana_in_data(74),
      R => '0'
    );
\comp_ana.ana_in_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(14),
      Q => ana_in_data(75),
      R => '0'
    );
\comp_ana.ana_in_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_clk,
      CE => fifo_burst,
      D => fifo_angle(15),
      Q => ana_in_data(76),
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
\comp_ana.ana_trig_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \comp_ana.ana_trig_i_2_n_0\,
      I1 => \comp_ana.ana_trig_i_3_n_0\,
      I2 => \comp_ana.ana_trig_i_4_n_0\,
      I3 => \comp_ana.ana_trig_i_5_n_0\,
      O => \p_0_in__0\
    );
\comp_ana.ana_trig_i_10\: unisim.vcomponents.LUT6
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
      O => \comp_ana.ana_trig_i_10_n_0\
    );
\comp_ana.ana_trig_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(15),
      I1 => raw_sample(15),
      I2 => raw_sample(17),
      I3 => curr_sample(17),
      I4 => raw_sample(16),
      I5 => curr_sample(16),
      O => \comp_ana.ana_trig_i_11_n_0\
    );
\comp_ana.ana_trig_i_12\: unisim.vcomponents.LUT6
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
      O => \comp_ana.ana_trig_i_12_n_0\
    );
\comp_ana.ana_trig_i_13\: unisim.vcomponents.LUT6
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
      O => \comp_ana.ana_trig_i_13_n_0\
    );
\comp_ana.ana_trig_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(27),
      I1 => raw_sample(27),
      I2 => raw_sample(29),
      I3 => curr_sample(29),
      I4 => raw_sample(28),
      I5 => curr_sample(28),
      O => \comp_ana.ana_trig_i_2_n_0\
    );
\comp_ana.ana_trig_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(24),
      I1 => raw_sample(24),
      I2 => raw_sample(26),
      I3 => curr_sample(26),
      I4 => raw_sample(25),
      I5 => curr_sample(25),
      O => \comp_ana.ana_trig_i_3_n_0\
    );
\comp_ana.ana_trig_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \comp_ana.ana_trig_i_6_n_0\,
      I1 => \comp_ana.ana_trig_i_7_n_0\,
      I2 => \comp_ana.ana_trig_i_8_n_0\,
      I3 => \comp_ana.ana_trig_i_9_n_0\,
      I4 => \comp_ana.ana_trig_i_10_n_0\,
      I5 => \comp_ana.ana_trig_i_11_n_0\,
      O => \comp_ana.ana_trig_i_4_n_0\
    );
\comp_ana.ana_trig_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => raw_sample(31),
      I1 => curr_sample(31),
      I2 => raw_sample(30),
      I3 => curr_sample(30),
      I4 => \comp_ana.ana_trig_i_12_n_0\,
      I5 => \comp_ana.ana_trig_i_13_n_0\,
      O => \comp_ana.ana_trig_i_5_n_0\
    );
\comp_ana.ana_trig_i_6\: unisim.vcomponents.LUT6
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
      O => \comp_ana.ana_trig_i_6_n_0\
    );
\comp_ana.ana_trig_i_7\: unisim.vcomponents.LUT6
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
      O => \comp_ana.ana_trig_i_7_n_0\
    );
\comp_ana.ana_trig_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(18),
      I1 => raw_sample(18),
      I2 => raw_sample(20),
      I3 => curr_sample(20),
      I4 => raw_sample(19),
      I5 => curr_sample(19),
      O => \comp_ana.ana_trig_i_8_n_0\
    );
\comp_ana.ana_trig_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => curr_sample(21),
      I1 => raw_sample(21),
      I2 => raw_sample(23),
      I3 => curr_sample(23),
      I4 => raw_sample(22),
      I5 => curr_sample(22),
      O => \comp_ana.ana_trig_i_9_n_0\
    );
\comp_ana.ana_trig_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\,
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
      D => ana_out_data(61),
      Q => angle(0),
      R => '0'
    );
\comp_ana.angle_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(71),
      Q => angle(10),
      R => '0'
    );
\comp_ana.angle_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(72),
      Q => angle(11),
      R => '0'
    );
\comp_ana.angle_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(73),
      Q => angle(12),
      R => '0'
    );
\comp_ana.angle_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(74),
      Q => angle(13),
      R => '0'
    );
\comp_ana.angle_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(75),
      Q => angle(14),
      R => '0'
    );
\comp_ana.angle_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(76),
      Q => angle(15),
      R => '0'
    );
\comp_ana.angle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(62),
      Q => angle(1),
      R => '0'
    );
\comp_ana.angle_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(63),
      Q => angle(2),
      R => '0'
    );
\comp_ana.angle_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(64),
      Q => angle(3),
      R => '0'
    );
\comp_ana.angle_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(65),
      Q => angle(4),
      R => '0'
    );
\comp_ana.angle_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(66),
      Q => angle(5),
      R => '0'
    );
\comp_ana.angle_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(67),
      Q => angle(6),
      R => '0'
    );
\comp_ana.angle_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(68),
      Q => angle(7),
      R => '0'
    );
\comp_ana.angle_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(69),
      Q => angle(8),
      R => '0'
    );
\comp_ana.angle_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(70),
      Q => angle(9),
      R => '0'
    );
\comp_ana.freq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(41),
      Q => freq(0),
      R => '0'
    );
\comp_ana.freq_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(51),
      Q => freq(10),
      R => '0'
    );
\comp_ana.freq_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(52),
      Q => freq(11),
      R => '0'
    );
\comp_ana.freq_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(53),
      Q => freq(12),
      R => '0'
    );
\comp_ana.freq_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(54),
      Q => freq(13),
      R => '0'
    );
\comp_ana.freq_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(55),
      Q => freq(14),
      R => '0'
    );
\comp_ana.freq_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(56),
      Q => freq(15),
      R => '0'
    );
\comp_ana.freq_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(57),
      Q => freq(16),
      R => '0'
    );
\comp_ana.freq_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(58),
      Q => freq(17),
      R => '0'
    );
\comp_ana.freq_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(59),
      Q => freq(18),
      R => '0'
    );
\comp_ana.freq_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(60),
      Q => freq(19),
      R => '0'
    );
\comp_ana.freq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(42),
      Q => freq(1),
      R => '0'
    );
\comp_ana.freq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(43),
      Q => freq(2),
      R => '0'
    );
\comp_ana.freq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(44),
      Q => freq(3),
      R => '0'
    );
\comp_ana.freq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(45),
      Q => freq(4),
      R => '0'
    );
\comp_ana.freq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(46),
      Q => freq(5),
      R => '0'
    );
\comp_ana.freq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(47),
      Q => freq(6),
      R => '0'
    );
\comp_ana.freq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(48),
      Q => freq(7),
      R => '0'
    );
\comp_ana.freq_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(49),
      Q => freq(8),
      R => '0'
    );
\comp_ana.freq_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => ana_out_data(50),
      Q => freq(9),
      R => '0'
    );
\comp_ana.im_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(64),
      Q => im_0(0),
      R => '0'
    );
\comp_ana.im_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(74),
      Q => im_0(10),
      R => '0'
    );
\comp_ana.im_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(75),
      Q => im_0(11),
      R => '0'
    );
\comp_ana.im_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(76),
      Q => im_0(12),
      R => '0'
    );
\comp_ana.im_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(77),
      Q => im_0(13),
      R => '0'
    );
\comp_ana.im_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(78),
      Q => im_0(14),
      R => '0'
    );
\comp_ana.im_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(79),
      Q => im_0(15),
      R => '0'
    );
\comp_ana.im_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(65),
      Q => im_0(1),
      R => '0'
    );
\comp_ana.im_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(66),
      Q => im_0(2),
      R => '0'
    );
\comp_ana.im_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(67),
      Q => im_0(3),
      R => '0'
    );
\comp_ana.im_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(68),
      Q => im_0(4),
      R => '0'
    );
\comp_ana.im_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(69),
      Q => im_0(5),
      R => '0'
    );
\comp_ana.im_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(70),
      Q => im_0(6),
      R => '0'
    );
\comp_ana.im_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(71),
      Q => im_0(7),
      R => '0'
    );
\comp_ana.im_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(72),
      Q => im_0(8),
      R => '0'
    );
\comp_ana.im_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(73),
      Q => im_0(9),
      R => '0'
    );
\comp_ana.im_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(80),
      Q => im_1(0),
      R => '0'
    );
\comp_ana.im_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(90),
      Q => im_1(10),
      R => '0'
    );
\comp_ana.im_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(91),
      Q => im_1(11),
      R => '0'
    );
\comp_ana.im_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(92),
      Q => im_1(12),
      R => '0'
    );
\comp_ana.im_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(93),
      Q => im_1(13),
      R => '0'
    );
\comp_ana.im_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(94),
      Q => im_1(14),
      R => '0'
    );
\comp_ana.im_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(95),
      Q => im_1(15),
      R => '0'
    );
\comp_ana.im_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(81),
      Q => im_1(1),
      R => '0'
    );
\comp_ana.im_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(82),
      Q => im_1(2),
      R => '0'
    );
\comp_ana.im_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(83),
      Q => im_1(3),
      R => '0'
    );
\comp_ana.im_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(84),
      Q => im_1(4),
      R => '0'
    );
\comp_ana.im_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(85),
      Q => im_1(5),
      R => '0'
    );
\comp_ana.im_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(86),
      Q => im_1(6),
      R => '0'
    );
\comp_ana.im_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(87),
      Q => im_1(7),
      R => '0'
    );
\comp_ana.im_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(88),
      Q => im_1(8),
      R => '0'
    );
\comp_ana.im_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(89),
      Q => im_1(9),
      R => '0'
    );
\comp_ana.im_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(96),
      Q => im_2(0),
      R => '0'
    );
\comp_ana.im_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(106),
      Q => im_2(10),
      R => '0'
    );
\comp_ana.im_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(107),
      Q => im_2(11),
      R => '0'
    );
\comp_ana.im_2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(108),
      Q => im_2(12),
      R => '0'
    );
\comp_ana.im_2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(109),
      Q => im_2(13),
      R => '0'
    );
\comp_ana.im_2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(110),
      Q => im_2(14),
      R => '0'
    );
\comp_ana.im_2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(111),
      Q => im_2(15),
      R => '0'
    );
\comp_ana.im_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(97),
      Q => im_2(1),
      R => '0'
    );
\comp_ana.im_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(98),
      Q => im_2(2),
      R => '0'
    );
\comp_ana.im_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(99),
      Q => im_2(3),
      R => '0'
    );
\comp_ana.im_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(100),
      Q => im_2(4),
      R => '0'
    );
\comp_ana.im_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(101),
      Q => im_2(5),
      R => '0'
    );
\comp_ana.im_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(102),
      Q => im_2(6),
      R => '0'
    );
\comp_ana.im_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(103),
      Q => im_2(7),
      R => '0'
    );
\comp_ana.im_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(104),
      Q => im_2(8),
      R => '0'
    );
\comp_ana.im_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(105),
      Q => im_2(9),
      R => '0'
    );
\comp_ana.im_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(112),
      Q => im_3(0),
      R => '0'
    );
\comp_ana.im_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(122),
      Q => im_3(10),
      R => '0'
    );
\comp_ana.im_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(123),
      Q => im_3(11),
      R => '0'
    );
\comp_ana.im_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(124),
      Q => im_3(12),
      R => '0'
    );
\comp_ana.im_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(125),
      Q => im_3(13),
      R => '0'
    );
\comp_ana.im_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(126),
      Q => im_3(14),
      R => '0'
    );
\comp_ana.im_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(127),
      Q => im_3(15),
      R => '0'
    );
\comp_ana.im_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(113),
      Q => im_3(1),
      R => '0'
    );
\comp_ana.im_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(114),
      Q => im_3(2),
      R => '0'
    );
\comp_ana.im_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(115),
      Q => im_3(3),
      R => '0'
    );
\comp_ana.im_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(116),
      Q => im_3(4),
      R => '0'
    );
\comp_ana.im_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(117),
      Q => im_3(5),
      R => '0'
    );
\comp_ana.im_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(118),
      Q => im_3(6),
      R => '0'
    );
\comp_ana.im_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(119),
      Q => im_3(7),
      R => '0'
    );
\comp_ana.im_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(120),
      Q => im_3(8),
      R => '0'
    );
\comp_ana.im_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(121),
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
\comp_ana.raw_sample[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_valid,
      O => \raw_sample__0\(0)
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
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_1_n_13\,
      Q => raw_sample(10),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_1_n_12\,
      Q => raw_sample(11),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_1_n_11\,
      Q => raw_sample(12),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_1_n_10\,
      Q => raw_sample(13),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_1_n_9\,
      Q => raw_sample(14),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_1_n_8\,
      Q => raw_sample(15),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_ana.raw_sample_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_ana.raw_sample_reg[15]_i_1_n_0\,
      CO(6) => \comp_ana.raw_sample_reg[15]_i_1_n_1\,
      CO(5) => \comp_ana.raw_sample_reg[15]_i_1_n_2\,
      CO(4) => \comp_ana.raw_sample_reg[15]_i_1_n_3\,
      CO(3) => \comp_ana.raw_sample_reg[15]_i_1_n_4\,
      CO(2) => \comp_ana.raw_sample_reg[15]_i_1_n_5\,
      CO(1) => \comp_ana.raw_sample_reg[15]_i_1_n_6\,
      CO(0) => \comp_ana.raw_sample_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \comp_ana.raw_sample_reg[15]_i_1_n_8\,
      O(6) => \comp_ana.raw_sample_reg[15]_i_1_n_9\,
      O(5) => \comp_ana.raw_sample_reg[15]_i_1_n_10\,
      O(4) => \comp_ana.raw_sample_reg[15]_i_1_n_11\,
      O(3) => \comp_ana.raw_sample_reg[15]_i_1_n_12\,
      O(2) => \comp_ana.raw_sample_reg[15]_i_1_n_13\,
      O(1) => \comp_ana.raw_sample_reg[15]_i_1_n_14\,
      O(0) => \comp_ana.raw_sample_reg[15]_i_1_n_15\,
      S(7 downto 0) => raw_sample(15 downto 8)
    );
\comp_ana.raw_sample_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[23]_i_1_n_15\,
      Q => raw_sample(16),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[23]_i_1_n_14\,
      Q => raw_sample(17),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[23]_i_1_n_13\,
      Q => raw_sample(18),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[23]_i_1_n_12\,
      Q => raw_sample(19),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_14\,
      Q => raw_sample(1),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[23]_i_1_n_11\,
      Q => raw_sample(20),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[23]_i_1_n_10\,
      Q => raw_sample(21),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[23]_i_1_n_9\,
      Q => raw_sample(22),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[23]_i_1_n_8\,
      Q => raw_sample(23),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_ana.raw_sample_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_ana.raw_sample_reg[23]_i_1_n_0\,
      CO(6) => \comp_ana.raw_sample_reg[23]_i_1_n_1\,
      CO(5) => \comp_ana.raw_sample_reg[23]_i_1_n_2\,
      CO(4) => \comp_ana.raw_sample_reg[23]_i_1_n_3\,
      CO(3) => \comp_ana.raw_sample_reg[23]_i_1_n_4\,
      CO(2) => \comp_ana.raw_sample_reg[23]_i_1_n_5\,
      CO(1) => \comp_ana.raw_sample_reg[23]_i_1_n_6\,
      CO(0) => \comp_ana.raw_sample_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \comp_ana.raw_sample_reg[23]_i_1_n_8\,
      O(6) => \comp_ana.raw_sample_reg[23]_i_1_n_9\,
      O(5) => \comp_ana.raw_sample_reg[23]_i_1_n_10\,
      O(4) => \comp_ana.raw_sample_reg[23]_i_1_n_11\,
      O(3) => \comp_ana.raw_sample_reg[23]_i_1_n_12\,
      O(2) => \comp_ana.raw_sample_reg[23]_i_1_n_13\,
      O(1) => \comp_ana.raw_sample_reg[23]_i_1_n_14\,
      O(0) => \comp_ana.raw_sample_reg[23]_i_1_n_15\,
      S(7 downto 0) => raw_sample(23 downto 16)
    );
\comp_ana.raw_sample_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[31]_i_2_n_15\,
      Q => raw_sample(24),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[31]_i_2_n_14\,
      Q => raw_sample(25),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[31]_i_2_n_13\,
      Q => raw_sample(26),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[31]_i_2_n_12\,
      Q => raw_sample(27),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[31]_i_2_n_11\,
      Q => raw_sample(28),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[31]_i_2_n_10\,
      Q => raw_sample(29),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_13\,
      Q => raw_sample(2),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[31]_i_2_n_9\,
      Q => raw_sample(30),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[31]_i_2_n_8\,
      Q => raw_sample(31),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_ana.raw_sample_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_comp_ana.raw_sample_reg[31]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \comp_ana.raw_sample_reg[31]_i_2_n_1\,
      CO(5) => \comp_ana.raw_sample_reg[31]_i_2_n_2\,
      CO(4) => \comp_ana.raw_sample_reg[31]_i_2_n_3\,
      CO(3) => \comp_ana.raw_sample_reg[31]_i_2_n_4\,
      CO(2) => \comp_ana.raw_sample_reg[31]_i_2_n_5\,
      CO(1) => \comp_ana.raw_sample_reg[31]_i_2_n_6\,
      CO(0) => \comp_ana.raw_sample_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \comp_ana.raw_sample_reg[31]_i_2_n_8\,
      O(6) => \comp_ana.raw_sample_reg[31]_i_2_n_9\,
      O(5) => \comp_ana.raw_sample_reg[31]_i_2_n_10\,
      O(4) => \comp_ana.raw_sample_reg[31]_i_2_n_11\,
      O(3) => \comp_ana.raw_sample_reg[31]_i_2_n_12\,
      O(2) => \comp_ana.raw_sample_reg[31]_i_2_n_13\,
      O(1) => \comp_ana.raw_sample_reg[31]_i_2_n_14\,
      O(0) => \comp_ana.raw_sample_reg[31]_i_2_n_15\,
      S(7 downto 0) => raw_sample(31 downto 24)
    );
\comp_ana.raw_sample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_12\,
      Q => raw_sample(3),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_11\,
      Q => raw_sample(4),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_10\,
      Q => raw_sample(5),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_9\,
      Q => raw_sample(6),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[7]_i_1_n_8\,
      Q => raw_sample(7),
      R => \raw_sample__0\(0)
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
      D => \comp_ana.raw_sample_reg[15]_i_1_n_15\,
      Q => raw_sample(8),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_sample_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_sample_reg[15]_i_1_n_14\,
      Q => raw_sample(9),
      R => \raw_sample__0\(0)
    );
\comp_ana.raw_valid_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => raw_rd,
      I1 => raw_empty,
      O => \comp_ana.raw_valid_reg0\
    );
\comp_ana.raw_valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_ana.raw_valid_reg0\,
      Q => raw_valid,
      R => '0'
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
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(0),
      Q => re_0(0),
      R => '0'
    );
\comp_ana.re_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(10),
      Q => re_0(10),
      R => '0'
    );
\comp_ana.re_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(11),
      Q => re_0(11),
      R => '0'
    );
\comp_ana.re_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(12),
      Q => re_0(12),
      R => '0'
    );
\comp_ana.re_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(13),
      Q => re_0(13),
      R => '0'
    );
\comp_ana.re_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(14),
      Q => re_0(14),
      R => '0'
    );
\comp_ana.re_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(15),
      Q => re_0(15),
      R => '0'
    );
\comp_ana.re_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(1),
      Q => re_0(1),
      R => '0'
    );
\comp_ana.re_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(2),
      Q => re_0(2),
      R => '0'
    );
\comp_ana.re_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(3),
      Q => re_0(3),
      R => '0'
    );
\comp_ana.re_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(4),
      Q => re_0(4),
      R => '0'
    );
\comp_ana.re_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(5),
      Q => re_0(5),
      R => '0'
    );
\comp_ana.re_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(6),
      Q => re_0(6),
      R => '0'
    );
\comp_ana.re_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(7),
      Q => re_0(7),
      R => '0'
    );
\comp_ana.re_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(8),
      Q => re_0(8),
      R => '0'
    );
\comp_ana.re_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(9),
      Q => re_0(9),
      R => '0'
    );
\comp_ana.re_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(16),
      Q => re_1(0),
      R => '0'
    );
\comp_ana.re_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(26),
      Q => re_1(10),
      R => '0'
    );
\comp_ana.re_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(27),
      Q => re_1(11),
      R => '0'
    );
\comp_ana.re_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(28),
      Q => re_1(12),
      R => '0'
    );
\comp_ana.re_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(29),
      Q => re_1(13),
      R => '0'
    );
\comp_ana.re_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(30),
      Q => re_1(14),
      R => '0'
    );
\comp_ana.re_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(31),
      Q => re_1(15),
      R => '0'
    );
\comp_ana.re_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(17),
      Q => re_1(1),
      R => '0'
    );
\comp_ana.re_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(18),
      Q => re_1(2),
      R => '0'
    );
\comp_ana.re_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(19),
      Q => re_1(3),
      R => '0'
    );
\comp_ana.re_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(20),
      Q => re_1(4),
      R => '0'
    );
\comp_ana.re_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(21),
      Q => re_1(5),
      R => '0'
    );
\comp_ana.re_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(22),
      Q => re_1(6),
      R => '0'
    );
\comp_ana.re_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(23),
      Q => re_1(7),
      R => '0'
    );
\comp_ana.re_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(24),
      Q => re_1(8),
      R => '0'
    );
\comp_ana.re_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(25),
      Q => re_1(9),
      R => '0'
    );
\comp_ana.re_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(32),
      Q => re_2(0),
      R => '0'
    );
\comp_ana.re_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(42),
      Q => re_2(10),
      R => '0'
    );
\comp_ana.re_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(43),
      Q => re_2(11),
      R => '0'
    );
\comp_ana.re_2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(44),
      Q => re_2(12),
      R => '0'
    );
\comp_ana.re_2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(45),
      Q => re_2(13),
      R => '0'
    );
\comp_ana.re_2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(46),
      Q => re_2(14),
      R => '0'
    );
\comp_ana.re_2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(47),
      Q => re_2(15),
      R => '0'
    );
\comp_ana.re_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(33),
      Q => re_2(1),
      R => '0'
    );
\comp_ana.re_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(34),
      Q => re_2(2),
      R => '0'
    );
\comp_ana.re_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(35),
      Q => re_2(3),
      R => '0'
    );
\comp_ana.re_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(36),
      Q => re_2(4),
      R => '0'
    );
\comp_ana.re_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(37),
      Q => re_2(5),
      R => '0'
    );
\comp_ana.re_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(38),
      Q => re_2(6),
      R => '0'
    );
\comp_ana.re_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(39),
      Q => re_2(7),
      R => '0'
    );
\comp_ana.re_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(40),
      Q => re_2(8),
      R => '0'
    );
\comp_ana.re_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(41),
      Q => re_2(9),
      R => '0'
    );
\comp_ana.re_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(48),
      Q => re_3(0),
      R => '0'
    );
\comp_ana.re_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(58),
      Q => re_3(10),
      R => '0'
    );
\comp_ana.re_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(59),
      Q => re_3(11),
      R => '0'
    );
\comp_ana.re_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(60),
      Q => re_3(12),
      R => '0'
    );
\comp_ana.re_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(61),
      Q => re_3(13),
      R => '0'
    );
\comp_ana.re_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(62),
      Q => re_3(14),
      R => '0'
    );
\comp_ana.re_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(63),
      Q => re_3(15),
      R => '0'
    );
\comp_ana.re_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(49),
      Q => re_3(1),
      R => '0'
    );
\comp_ana.re_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(50),
      Q => re_3(2),
      R => '0'
    );
\comp_ana.re_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(51),
      Q => re_3(3),
      R => '0'
    );
\comp_ana.re_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(52),
      Q => re_3(4),
      R => '0'
    );
\comp_ana.re_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(53),
      Q => re_3(5),
      R => '0'
    );
\comp_ana.re_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(54),
      Q => re_3(6),
      R => '0'
    );
\comp_ana.re_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(55),
      Q => re_3(7),
      R => '0'
    );
\comp_ana.re_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(56),
      Q => re_3(8),
      R => '0'
    );
\comp_ana.re_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.raw_valid_reg0\,
      D => raw_out_data(57),
      Q => re_3(9),
      R => '0'
    );
\comp_ana.run_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => run,
      I1 => size(7),
      I2 => \comp_ana.size[8]_i_3_n_0\,
      I3 => size(6),
      I4 => size(8),
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
\comp_ana.sample_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(16),
      Q => sample(16),
      R => '0'
    );
\comp_ana.sample_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(17),
      Q => sample(17),
      R => '0'
    );
\comp_ana.sample_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(18),
      Q => sample(18),
      R => '0'
    );
\comp_ana.sample_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(19),
      Q => sample(19),
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
\comp_ana.sample_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(20),
      Q => sample(20),
      R => '0'
    );
\comp_ana.sample_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(21),
      Q => sample(21),
      R => '0'
    );
\comp_ana.sample_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(22),
      Q => sample(22),
      R => '0'
    );
\comp_ana.sample_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(23),
      Q => sample(23),
      R => '0'
    );
\comp_ana.sample_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(24),
      Q => sample(24),
      R => '0'
    );
\comp_ana.sample_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(25),
      Q => sample(25),
      R => '0'
    );
\comp_ana.sample_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(26),
      Q => sample(26),
      R => '0'
    );
\comp_ana.sample_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(27),
      Q => sample(27),
      R => '0'
    );
\comp_ana.sample_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(28),
      Q => sample(28),
      R => '0'
    );
\comp_ana.sample_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(29),
      Q => sample(29),
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
\comp_ana.sample_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(30),
      Q => sample(30),
      R => '0'
    );
\comp_ana.sample_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.ana_rd_reg0\,
      D => curr_sample(31),
      Q => sample(31),
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
\comp_ana.size[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7545"
    )
        port map (
      I0 => size(0),
      I1 => ana_empty,
      I2 => ana_trig,
      I3 => ana_out_data(32),
      O => \comp_ana.size[0]_i_1_n_0\
    );
\comp_ana.size[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF2020EF"
    )
        port map (
      I0 => ana_out_data(33),
      I1 => ana_empty,
      I2 => ana_trig,
      I3 => size(0),
      I4 => size(1),
      O => \comp_ana.size[1]_i_1_n_0\
    );
\comp_ana.size[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEF20202020EF"
    )
        port map (
      I0 => ana_out_data(34),
      I1 => ana_empty,
      I2 => ana_trig,
      I3 => size(1),
      I4 => size(0),
      I5 => size(2),
      O => \comp_ana.size[2]_i_1_n_0\
    );
\comp_ana.size[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0003AAAAAAAA"
    )
        port map (
      I0 => ana_out_data(35),
      I1 => size(2),
      I2 => size(0),
      I3 => size(1),
      I4 => size(3),
      I5 => \comp_ana.size[8]_i_4_n_0\,
      O => \comp_ana.size[3]_i_1_n_0\
    );
\comp_ana.size[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3AAC3C3"
    )
        port map (
      I0 => ana_out_data(36),
      I1 => \comp_ana.size[4]_i_2_n_0\,
      I2 => size(4),
      I3 => ana_empty,
      I4 => ana_trig,
      O => \comp_ana.size[4]_i_1_n_0\
    );
\comp_ana.size[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => size(2),
      I1 => size(0),
      I2 => size(1),
      I3 => size(3),
      O => \comp_ana.size[4]_i_2_n_0\
    );
\comp_ana.size[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3AAC3C3"
    )
        port map (
      I0 => ana_out_data(37),
      I1 => \comp_ana.size[5]_i_2_n_0\,
      I2 => size(5),
      I3 => ana_empty,
      I4 => ana_trig,
      O => \comp_ana.size[5]_i_1_n_0\
    );
\comp_ana.size[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => size(3),
      I1 => size(1),
      I2 => size(0),
      I3 => size(2),
      I4 => size(4),
      O => \comp_ana.size[5]_i_2_n_0\
    );
\comp_ana.size[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3AAC3C3"
    )
        port map (
      I0 => ana_out_data(38),
      I1 => \comp_ana.size[8]_i_3_n_0\,
      I2 => size(6),
      I3 => ana_empty,
      I4 => ana_trig,
      O => \comp_ana.size[6]_i_1_n_0\
    );
\comp_ana.size[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC03AAAAFC03FC03"
    )
        port map (
      I0 => ana_out_data(39),
      I1 => size(6),
      I2 => \comp_ana.size[8]_i_3_n_0\,
      I3 => size(7),
      I4 => ana_empty,
      I5 => ana_trig,
      O => \comp_ana.size[7]_i_1_n_0\
    );
\comp_ana.size[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFFFE"
    )
        port map (
      I0 => size(8),
      I1 => size(6),
      I2 => \comp_ana.size[8]_i_3_n_0\,
      I3 => size(7),
      I4 => ana_trig,
      I5 => ana_empty,
      O => \comp_ana.size[8]_i_1_n_0\
    );
\comp_ana.size[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0003AAAAAAAA"
    )
        port map (
      I0 => ana_out_data(40),
      I1 => size(7),
      I2 => \comp_ana.size[8]_i_3_n_0\,
      I3 => size(6),
      I4 => size(8),
      I5 => \comp_ana.size[8]_i_4_n_0\,
      O => \comp_ana.size[8]_i_2_n_0\
    );
\comp_ana.size[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => size(4),
      I1 => size(2),
      I2 => size(0),
      I3 => size(1),
      I4 => size(3),
      I5 => size(5),
      O => \comp_ana.size[8]_i_3_n_0\
    );
\comp_ana.size[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ana_empty,
      I1 => ana_trig,
      O => \comp_ana.size[8]_i_4_n_0\
    );
\comp_ana.size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[0]_i_1_n_0\,
      Q => size(0),
      R => '0'
    );
\comp_ana.size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[1]_i_1_n_0\,
      Q => size(1),
      R => '0'
    );
\comp_ana.size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[2]_i_1_n_0\,
      Q => size(2),
      R => '0'
    );
\comp_ana.size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[3]_i_1_n_0\,
      Q => size(3),
      R => '0'
    );
\comp_ana.size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[4]_i_1_n_0\,
      Q => size(4),
      R => '0'
    );
\comp_ana.size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[5]_i_1_n_0\,
      Q => size(5),
      R => '0'
    );
\comp_ana.size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[6]_i_1_n_0\,
      Q => size(6),
      R => '0'
    );
\comp_ana.size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[7]_i_1_n_0\,
      Q => size(7),
      R => '0'
    );
\comp_ana.size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_ana.size[8]_i_1_n_0\,
      D => \comp_ana.size[8]_i_2_n_0\,
      Q => size(8),
      R => '0'
    );
fifo_ana_i: component ps_comp_ana_0_0_fifo_comp_ana
     port map (
      din(76 downto 0) => ana_in_data(76 downto 0),
      dout(76 downto 32) => ana_out_data(76 downto 32),
      dout(31 downto 0) => curr_sample(31 downto 0),
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
fifo_raw_i: component ps_comp_ana_0_0_fifo_comp_raw
     port map (
      din(127 downto 0) => raw_in_data(127 downto 0),
      dout(127 downto 0) => raw_out_data(127 downto 0),
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
ila_i: component ps_comp_ana_0_0_ila_1
     port map (
      clk => clk,
      probe0(0) => raw_rd,
      probe1(0) => raw_empty,
      probe10(31 downto 0) => sample(31 downto 0),
      probe11(8 downto 0) => size(8 downto 0),
      probe12(19 downto 0) => freq(19 downto 0),
      probe13(15 downto 0) => angle(15 downto 0),
      probe14(15 downto 0) => re_0(15 downto 0),
      probe15(15 downto 0) => re_1(15 downto 0),
      probe16(15 downto 0) => re_2(15 downto 0),
      probe17(15 downto 0) => re_3(15 downto 0),
      probe18(15 downto 0) => im_0(15 downto 0),
      probe19(15 downto 0) => im_1(15 downto 0),
      probe2(4 downto 0) => raw_delay(4 downto 0),
      probe20(15 downto 0) => im_2(15 downto 0),
      probe21(15 downto 0) => im_3(15 downto 0),
      probe22(3 downto 0) => valid(3 downto 0),
      probe23(15 downto 0) => env_0(15 downto 0),
      probe24(15 downto 0) => env_1(15 downto 0),
      probe25(15 downto 0) => env_2(15 downto 0),
      probe26(15 downto 0) => env_3(15 downto 0),
      probe27(19 downto 0) => phase_0(19 downto 0),
      probe28(19 downto 0) => phase_1(19 downto 0),
      probe29(19 downto 0) => phase_2(19 downto 0),
      probe3(31 downto 0) => raw_sample(31 downto 0),
      probe30(19 downto 0) => phase_3(19 downto 0),
      probe4(0) => raw_valid,
      probe5(0) => ana_rd,
      probe6(0) => ana_empty,
      probe7(31 downto 0) => curr_sample(31 downto 0),
      probe8(0) => ana_trig,
      probe9(0) => run
    );
phase_env_i_0: entity work.\ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__1\
     port map (
      active => raw_valid,
      clk => clk,
      env(15 downto 0) => env_0(15 downto 0),
      im(23 downto 8) => im_0(15 downto 0),
      im(7 downto 0) => B"00000000",
      phase(19 downto 0) => phase_0(19 downto 0),
      re(23 downto 8) => re_0(15 downto 0),
      re(7 downto 0) => B"00000000",
      valid => valid(0)
    );
phase_env_i_1: entity work.\ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__2\
     port map (
      active => raw_valid,
      clk => clk,
      env(15 downto 0) => env_1(15 downto 0),
      im(23 downto 8) => im_1(15 downto 0),
      im(7 downto 0) => B"00000000",
      phase(19 downto 0) => phase_1(19 downto 0),
      re(23 downto 8) => re_1(15 downto 0),
      re(7 downto 0) => B"00000000",
      valid => valid(1)
    );
phase_env_i_2: entity work.\ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__3\
     port map (
      active => raw_valid,
      clk => clk,
      env(15 downto 0) => env_2(15 downto 0),
      im(23 downto 8) => im_2(15 downto 0),
      im(7 downto 0) => B"00000000",
      phase(19 downto 0) => phase_2(19 downto 0),
      re(23 downto 8) => re_2(15 downto 0),
      re(7 downto 0) => B"00000000",
      valid => valid(2)
    );
phase_env_i_3: entity work.ps_comp_ana_0_0_morlet_to_phase_env
     port map (
      active => raw_valid,
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
entity ps_comp_ana_0_0 is
  port (
    fifo_clk : in STD_LOGIC;
    fifo_active : in STD_LOGIC;
    fifo_re : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_im : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_burst : in STD_LOGIC;
    fifo_sample : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_size : in STD_LOGIC_VECTOR ( 8 downto 0 );
    fifo_freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    fifo_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_comp_ana_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_comp_ana_0_0 : entity is "ps_comp_ana_0_0,comp_ana,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_comp_ana_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_comp_ana_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_comp_ana_0_0 : entity is "comp_ana,Vivado 2025.1";
end ps_comp_ana_0_0;

architecture STRUCTURE of ps_comp_ana_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_clk : signal is "xilinx.com:signal:clock:1.0 fifo_clk CLK";
  attribute X_INTERFACE_MODE of fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of fifo_clk : signal is "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_comp_ana_0_0_comp_ana
     port map (
      clk => clk,
      fifo_active => fifo_active,
      fifo_angle(15 downto 0) => fifo_angle(15 downto 0),
      fifo_burst => fifo_burst,
      fifo_clk => fifo_clk,
      fifo_freq(19 downto 0) => fifo_freq(19 downto 0),
      fifo_im(63 downto 0) => fifo_im(63 downto 0),
      fifo_re(63 downto 0) => fifo_re(63 downto 0),
      fifo_sample(31 downto 0) => fifo_sample(31 downto 0),
      fifo_size(8 downto 0) => fifo_size(8 downto 0),
      reset => reset
    );
end STRUCTURE;
