-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Dec 13 00:58:47 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_freq_high_189_0_0/ps_freq_high_189_0_0_sim_netlist.vhdl
-- Design      : ps_freq_high_189_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_high_189_0_0_morlet_to_phase_env is
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
  attribute ORIG_REF_NAME of ps_freq_high_189_0_0_morlet_to_phase_env : entity is "morlet_to_phase_env";
end ps_freq_high_189_0_0_morlet_to_phase_env;

architecture STRUCTURE of ps_freq_high_189_0_0_morlet_to_phase_env is
  component mult_16_16_HD5 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mult_16_16_HD5;
  component ps_freq_high_189_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_high_189_0_0_mult_16_16;
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
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/freq_W_i/\morlet_to_phase_env.amp_4_reg[9]_srl4 ";
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
mult_im_i: component mult_16_16_HD5
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_high_189_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component cordic_sqrt_16_HD6
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component cordic_atan2_16_HD7
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
entity \ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__1\ is
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
  attribute ORIG_REF_NAME of \ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__1\ : entity is "morlet_to_phase_env";
end \ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__1\;

architecture STRUCTURE of \ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__1\ is
  component ps_freq_high_189_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_high_189_0_0_mult_16_16;
  component ps_freq_high_189_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_freq_high_189_0_0_cordic_sqrt_16;
  component ps_freq_high_189_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_freq_high_189_0_0_cordic_atan2_16;
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
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/freq_N_i/\morlet_to_phase_env.amp_4_reg[9]_srl4 ";
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
mult_im_i: component ps_freq_high_189_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_high_189_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_freq_high_189_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_freq_high_189_0_0_cordic_atan2_16
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
entity \ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__2\ is
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
  attribute ORIG_REF_NAME of \ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__2\ : entity is "morlet_to_phase_env";
end \ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__2\;

architecture STRUCTURE of \ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__2\ is
  component ps_freq_high_189_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_high_189_0_0_mult_16_16;
  component ps_freq_high_189_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_freq_high_189_0_0_cordic_sqrt_16;
  component ps_freq_high_189_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_freq_high_189_0_0_cordic_atan2_16;
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
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/freq_E_i/\morlet_to_phase_env.amp_4_reg[9]_srl4 ";
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
mult_im_i: component ps_freq_high_189_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_high_189_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_freq_high_189_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_freq_high_189_0_0_cordic_atan2_16
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
entity ps_freq_high_189_0_0_freq_high_189 is
  port (
    fifo_clk : in STD_LOGIC;
    raw_wr : in STD_LOGIC;
    raw_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    freq_wr : in STD_LOGIC;
    freq_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doa_wr : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 491 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_freq_high_189_0_0_freq_high_189 : entity is "freq_high_189";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_freq_high_189_0_0_freq_high_189 : entity is "soft";
end ps_freq_high_189_0_0_freq_high_189;

architecture STRUCTURE of ps_freq_high_189_0_0_freq_high_189 is
  component ps_freq_high_189_0_0_fifo_doa_high is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 95 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 95 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_freq_high_189_0_0_fifo_doa_high;
  component ps_freq_high_189_0_0_fifo_raw_high is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 383 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 383 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_freq_high_189_0_0_fifo_raw_high;
  component ps_freq_high_189_0_0_fir_doa_high_im_189 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component ps_freq_high_189_0_0_fir_doa_high_im_189;
  component ps_freq_high_189_0_0_fir_doa_high_im_189_HD3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_high_189_0_0_fir_doa_high_im_189_HD3;
  component ps_freq_high_189_0_0_fir_doa_high_re_189 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component ps_freq_high_189_0_0_fir_doa_high_re_189;
  component ps_freq_high_189_0_0_fir_doa_high_re_189_HD4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_high_189_0_0_fir_doa_high_re_189_HD4;
  component ps_freq_high_189_0_0_ila_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_freq_high_189_0_0_ila_1;
  signal E : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal E0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of E0 : signal is std.standard.true;
  signal N : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal N0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of N0 : signal is std.standard.true;
  signal W : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal W0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of W0 : signal is std.standard.true;
  signal curr_delay : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of curr_delay : signal is std.standard.true;
  signal \curr_delay__0\ : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal data0 : STD_LOGIC;
  signal doa_data0 : STD_LOGIC;
  signal \^doa_wr\ : STD_LOGIC;
  attribute MARK_DEBUG of doa_wr : signal is std.standard.true;
  signal envE : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envE : signal is std.standard.true;
  signal envN : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envN : signal is std.standard.true;
  signal envW : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envW : signal is std.standard.true;
  signal fir_doa_high_re_N_i_i_1_n_0 : STD_LOGIC;
  signal fir_im_E : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute MARK_DEBUG of fir_im_E : signal is std.standard.true;
  signal fir_im_N : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute MARK_DEBUG of fir_im_N : signal is std.standard.true;
  signal fir_im_W : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute MARK_DEBUG of fir_im_W : signal is std.standard.true;
  signal fir_re_E : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute MARK_DEBUG of fir_re_E : signal is std.standard.true;
  signal fir_re_N : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute MARK_DEBUG of fir_re_N : signal is std.standard.true;
  signal fir_re_W : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute MARK_DEBUG of fir_re_W : signal is std.standard.true;
  signal freq_fifo_data : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal freq_fifo_empty : STD_LOGIC;
  attribute MARK_DEBUG of freq_fifo_empty : signal is std.standard.true;
  signal freq_fifo_rd : STD_LOGIC;
  attribute MARK_DEBUG of freq_fifo_rd : signal is std.standard.true;
  signal freq_fifo_valid : STD_LOGIC;
  signal freq_fifo_valid0 : STD_LOGIC;
  signal \freq_high_189.curr_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[2]_i_3_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[3]_i_2_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[3]_i_3_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[3]_i_4_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[3]_i_5_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[5]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[5]_i_3_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[6]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[6]_i_2_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[6]_i_3_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[6]_i_4_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[7]_i_3_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_high_189.curr_delay[7]_i_5_n_0\ : STD_LOGIC;
  signal \freq_high_189.freq_fifo_rd_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.freq_rd_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.freq_rd_delay[1]_i_2_n_0\ : STD_LOGIC;
  signal \freq_high_189.freq_rd_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.morlet_active_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[5]_i_2_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[6]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[6]_i_2_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[7]_i_3_n_0\ : STD_LOGIC;
  signal \freq_high_189.start_delay[7]_i_4_n_0\ : STD_LOGIC;
  signal freq_rd_delay : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal freq_rd_delay0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal morlet_active : STD_LOGIC;
  attribute MARK_DEBUG of morlet_active : signal is std.standard.true;
  signal \morlet_active__0\ : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal phaseE : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phaseE : signal is std.standard.true;
  signal phaseN : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phaseN : signal is std.standard.true;
  signal phaseW : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phaseW : signal is std.standard.true;
  signal raw_E0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_E0 : signal is std.standard.true;
  signal raw_N0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_N0 : signal is std.standard.true;
  signal raw_W0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_W0 : signal is std.standard.true;
  signal raw_fifo_data : STD_LOGIC_VECTOR ( 383 downto 16 );
  signal raw_fifo_empty : STD_LOGIC;
  attribute MARK_DEBUG of raw_fifo_empty : signal is std.standard.true;
  signal start_delay : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of start_delay : signal is std.standard.true;
  signal validE : STD_LOGIC;
  signal validN : STD_LOGIC;
  signal validW : STD_LOGIC;
  signal NLW_fifo_freq_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_freq_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_freq_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_im_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_im_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_im_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_im_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_im_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_im_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_re_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_re_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_re_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_re_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_re_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_high_re_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_freq_i : label is "fifo_doa_high,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_freq_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_freq_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_raw_high,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
  attribute x_core_info of fifo_raw_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_high_im_E_i : label is "fir_doa_high_im_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_high_im_E_i : label is "yes";
  attribute x_core_info of fir_doa_high_im_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_high_im_N_i : label is "fir_doa_high_im_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_high_im_N_i : label is "yes";
  attribute x_core_info of fir_doa_high_im_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_high_im_W_i : label is "fir_doa_high_im_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_high_im_W_i : label is "yes";
  attribute x_core_info of fir_doa_high_im_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_high_re_E_i : label is "fir_doa_high_re_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_high_re_E_i : label is "yes";
  attribute x_core_info of fir_doa_high_re_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_high_re_N_i : label is "fir_doa_high_re_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_high_re_N_i : label is "yes";
  attribute x_core_info of fir_doa_high_re_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_high_re_W_i : label is "fir_doa_high_re_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_high_re_W_i : label is "yes";
  attribute x_core_info of fir_doa_high_re_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute KEEP_HIERARCHY of freq_E_i : label is "soft";
  attribute KEEP_HIERARCHY of freq_N_i : label is "soft";
  attribute KEEP_HIERARCHY of freq_W_i : label is "soft";
  attribute KEEP : string;
  attribute KEEP of \freq_high_189.E0_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \freq_high_189.E0_reg[0]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[10]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[11]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[12]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[13]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[14]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[15]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[1]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[2]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[3]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[4]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[5]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[6]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[7]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[8]\ : label is "yes";
  attribute KEEP of \freq_high_189.E0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.E0_reg[9]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[0]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[10]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[11]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[12]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[13]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[14]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[15]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[1]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[2]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[3]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[4]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[5]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[6]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[7]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[8]\ : label is "yes";
  attribute KEEP of \freq_high_189.N0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.N0_reg[9]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[0]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[10]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[11]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[12]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[13]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[14]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[15]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[1]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[2]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[3]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[4]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[5]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[6]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[7]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[8]\ : label is "yes";
  attribute KEEP of \freq_high_189.W0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.W0_reg[9]\ : label is "yes";
  attribute KEEP of \freq_high_189.curr_delay_reg[0]\ : label is "yes";
  attribute KEEP of \freq_high_189.curr_delay_reg[1]\ : label is "yes";
  attribute KEEP of \freq_high_189.curr_delay_reg[2]\ : label is "yes";
  attribute KEEP of \freq_high_189.curr_delay_reg[3]\ : label is "yes";
  attribute KEEP of \freq_high_189.curr_delay_reg[4]\ : label is "yes";
  attribute KEEP of \freq_high_189.curr_delay_reg[5]\ : label is "yes";
  attribute KEEP of \freq_high_189.curr_delay_reg[6]\ : label is "yes";
  attribute KEEP of \freq_high_189.curr_delay_reg[7]\ : label is "yes";
  attribute KEEP of \freq_high_189.doa_wr_reg\ : label is "yes";
  attribute KEEP of \freq_high_189.freq_fifo_rd_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \freq_high_189.freq_rd_delay[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \freq_high_189.freq_rd_delay[1]_i_2\ : label is "soft_lutpair9";
  attribute KEEP of \freq_high_189.morlet_active_reg\ : label is "yes";
  attribute KEEP of \freq_high_189.start_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.start_delay_reg[0]\ : label is "yes";
  attribute KEEP of \freq_high_189.start_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.start_delay_reg[1]\ : label is "yes";
  attribute KEEP of \freq_high_189.start_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.start_delay_reg[2]\ : label is "yes";
  attribute KEEP of \freq_high_189.start_delay_reg[3]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.start_delay_reg[3]\ : label is "yes";
  attribute KEEP of \freq_high_189.start_delay_reg[4]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.start_delay_reg[4]\ : label is "yes";
  attribute KEEP of \freq_high_189.start_delay_reg[5]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.start_delay_reg[5]\ : label is "yes";
  attribute KEEP of \freq_high_189.start_delay_reg[6]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.start_delay_reg[6]\ : label is "yes";
  attribute KEEP of \freq_high_189.start_delay_reg[7]\ : label is "yes";
  attribute mark_debug_string of \freq_high_189.start_delay_reg[7]\ : label is "yes";
  attribute CHECK_LICENSE_TYPE of ila_1_i : label is "ila_1,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_1_i : label is "yes";
  attribute x_core_info of ila_1_i : label is "ila,Vivado 2025.1";
begin
  doa_wr <= \^doa_wr\;
fifo_freq_i: component ps_freq_high_189_0_0_fifo_doa_high
     port map (
      din(95 downto 0) => freq_data(95 downto 0),
      dout(95 downto 0) => freq_fifo_data(95 downto 0),
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
fifo_raw_i: component ps_freq_high_189_0_0_fifo_raw_high
     port map (
      din(383 downto 0) => raw_data(383 downto 0),
      dout(383 downto 272) => raw_fifo_data(383 downto 272),
      dout(271 downto 256) => raw_W0(15 downto 0),
      dout(255 downto 144) => raw_fifo_data(255 downto 144),
      dout(143 downto 128) => raw_E0(15 downto 0),
      dout(127 downto 16) => raw_fifo_data(127 downto 16),
      dout(15 downto 0) => raw_N0(15 downto 0),
      empty => raw_fifo_empty,
      full => NLW_fifo_raw_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => \^doa_wr\,
      rd_rst_busy => NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => fifo_clk,
      wr_en => raw_wr,
      wr_rst_busy => NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED
    );
fir_doa_high_im_E_i: component ps_freq_high_189_0_0_fir_doa_high_im_189
     port map (
      aclk => clk,
      aresetn => fir_doa_high_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_E(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_high_im_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(31 downto 16) => E(31 downto 16),
      s_axis_data_tdata(15 downto 0) => E0(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_high_im_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_doa_high_im_N_i: component ps_freq_high_189_0_0_fir_doa_high_im_189
     port map (
      aclk => clk,
      aresetn => fir_doa_high_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_N(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_high_im_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(31 downto 16) => N(31 downto 16),
      s_axis_data_tdata(15 downto 0) => N0(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_high_im_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_doa_high_im_W_i: component ps_freq_high_189_0_0_fir_doa_high_im_189_HD3
     port map (
      aclk => clk,
      aresetn => fir_doa_high_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_W(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_high_im_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(31 downto 16) => W(31 downto 16),
      s_axis_data_tdata(15 downto 0) => W0(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_high_im_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_doa_high_re_E_i: component ps_freq_high_189_0_0_fir_doa_high_re_189
     port map (
      aclk => clk,
      aresetn => fir_doa_high_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_E(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_high_re_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(31 downto 16) => E(31 downto 16),
      s_axis_data_tdata(15 downto 0) => E0(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_high_re_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_doa_high_re_N_i: component ps_freq_high_189_0_0_fir_doa_high_re_189
     port map (
      aclk => clk,
      aresetn => fir_doa_high_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_N(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_high_re_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(31 downto 16) => N(31 downto 16),
      s_axis_data_tdata(15 downto 0) => N0(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_high_re_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_doa_high_re_N_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => fir_doa_high_re_N_i_i_1_n_0
    );
fir_doa_high_re_W_i: component ps_freq_high_189_0_0_fir_doa_high_re_189_HD4
     port map (
      aclk => clk,
      aresetn => fir_doa_high_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_W(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_high_re_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(31 downto 16) => W(31 downto 16),
      s_axis_data_tdata(15 downto 0) => W0(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_high_re_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
freq_E_i: entity work.\ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__2\
     port map (
      active => morlet_active,
      clk => clk,
      env(15 downto 0) => envE(15 downto 0),
      im(23 downto 0) => fir_im_E(34 downto 11),
      phase(19 downto 0) => phaseE(19 downto 0),
      re(23 downto 0) => fir_re_E(34 downto 11),
      valid => validE
    );
freq_N_i: entity work.\ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__1\
     port map (
      active => morlet_active,
      clk => clk,
      env(15 downto 0) => envN(15 downto 0),
      im(23 downto 0) => fir_im_N(34 downto 11),
      phase(19 downto 0) => phaseN(19 downto 0),
      re(23 downto 0) => fir_re_N(34 downto 11),
      valid => validN
    );
freq_W_i: entity work.ps_freq_high_189_0_0_morlet_to_phase_env
     port map (
      active => morlet_active,
      clk => clk,
      env(15 downto 0) => envW(15 downto 0),
      im(23 downto 0) => fir_im_W(34 downto 11),
      phase(19 downto 0) => phaseW(19 downto 0),
      re(23 downto 0) => fir_re_W(34 downto 11),
      valid => validW
    );
\freq_high_189.E0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(32),
      Q => E0(0),
      R => '0'
    );
\freq_high_189.E0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(42),
      Q => E0(10),
      R => '0'
    );
\freq_high_189.E0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(43),
      Q => E0(11),
      R => '0'
    );
\freq_high_189.E0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(44),
      Q => E0(12),
      R => '0'
    );
\freq_high_189.E0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(45),
      Q => E0(13),
      R => '0'
    );
\freq_high_189.E0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(46),
      Q => E0(14),
      R => '0'
    );
\freq_high_189.E0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(47),
      Q => E0(15),
      R => '0'
    );
\freq_high_189.E0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(33),
      Q => E0(1),
      R => '0'
    );
\freq_high_189.E0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(34),
      Q => E0(2),
      R => '0'
    );
\freq_high_189.E0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(35),
      Q => E0(3),
      R => '0'
    );
\freq_high_189.E0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(36),
      Q => E0(4),
      R => '0'
    );
\freq_high_189.E0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(37),
      Q => E0(5),
      R => '0'
    );
\freq_high_189.E0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(38),
      Q => E0(6),
      R => '0'
    );
\freq_high_189.E0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(39),
      Q => E0(7),
      R => '0'
    );
\freq_high_189.E0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(40),
      Q => E0(8),
      R => '0'
    );
\freq_high_189.E0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(41),
      Q => E0(9),
      R => '0'
    );
\freq_high_189.E1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(48),
      Q => E(16),
      R => '0'
    );
\freq_high_189.E1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(58),
      Q => E(26),
      R => '0'
    );
\freq_high_189.E1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(59),
      Q => E(27),
      R => '0'
    );
\freq_high_189.E1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(60),
      Q => E(28),
      R => '0'
    );
\freq_high_189.E1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(61),
      Q => E(29),
      R => '0'
    );
\freq_high_189.E1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(62),
      Q => E(30),
      R => '0'
    );
\freq_high_189.E1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(63),
      Q => E(31),
      R => '0'
    );
\freq_high_189.E1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(49),
      Q => E(17),
      R => '0'
    );
\freq_high_189.E1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(50),
      Q => E(18),
      R => '0'
    );
\freq_high_189.E1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(51),
      Q => E(19),
      R => '0'
    );
\freq_high_189.E1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(52),
      Q => E(20),
      R => '0'
    );
\freq_high_189.E1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(53),
      Q => E(21),
      R => '0'
    );
\freq_high_189.E1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(54),
      Q => E(22),
      R => '0'
    );
\freq_high_189.E1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(55),
      Q => E(23),
      R => '0'
    );
\freq_high_189.E1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(56),
      Q => E(24),
      R => '0'
    );
\freq_high_189.E1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(57),
      Q => E(25),
      R => '0'
    );
\freq_high_189.N0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(0),
      Q => N0(0),
      R => '0'
    );
\freq_high_189.N0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(10),
      Q => N0(10),
      R => '0'
    );
\freq_high_189.N0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(11),
      Q => N0(11),
      R => '0'
    );
\freq_high_189.N0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(12),
      Q => N0(12),
      R => '0'
    );
\freq_high_189.N0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(13),
      Q => N0(13),
      R => '0'
    );
\freq_high_189.N0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(14),
      Q => N0(14),
      R => '0'
    );
\freq_high_189.N0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(15),
      Q => N0(15),
      R => '0'
    );
\freq_high_189.N0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(1),
      Q => N0(1),
      R => '0'
    );
\freq_high_189.N0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(2),
      Q => N0(2),
      R => '0'
    );
\freq_high_189.N0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(3),
      Q => N0(3),
      R => '0'
    );
\freq_high_189.N0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(4),
      Q => N0(4),
      R => '0'
    );
\freq_high_189.N0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(5),
      Q => N0(5),
      R => '0'
    );
\freq_high_189.N0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(6),
      Q => N0(6),
      R => '0'
    );
\freq_high_189.N0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(7),
      Q => N0(7),
      R => '0'
    );
\freq_high_189.N0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(8),
      Q => N0(8),
      R => '0'
    );
\freq_high_189.N0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(9),
      Q => N0(9),
      R => '0'
    );
\freq_high_189.N1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(16),
      Q => N(16),
      R => '0'
    );
\freq_high_189.N1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(26),
      Q => N(26),
      R => '0'
    );
\freq_high_189.N1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(27),
      Q => N(27),
      R => '0'
    );
\freq_high_189.N1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(28),
      Q => N(28),
      R => '0'
    );
\freq_high_189.N1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(29),
      Q => N(29),
      R => '0'
    );
\freq_high_189.N1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(30),
      Q => N(30),
      R => '0'
    );
\freq_high_189.N1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(31),
      Q => N(31),
      R => '0'
    );
\freq_high_189.N1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(17),
      Q => N(17),
      R => '0'
    );
\freq_high_189.N1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(18),
      Q => N(18),
      R => '0'
    );
\freq_high_189.N1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(19),
      Q => N(19),
      R => '0'
    );
\freq_high_189.N1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(20),
      Q => N(20),
      R => '0'
    );
\freq_high_189.N1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(21),
      Q => N(21),
      R => '0'
    );
\freq_high_189.N1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(22),
      Q => N(22),
      R => '0'
    );
\freq_high_189.N1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(23),
      Q => N(23),
      R => '0'
    );
\freq_high_189.N1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(24),
      Q => N(24),
      R => '0'
    );
\freq_high_189.N1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(25),
      Q => N(25),
      R => '0'
    );
\freq_high_189.W0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(64),
      Q => W0(0),
      R => '0'
    );
\freq_high_189.W0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(74),
      Q => W0(10),
      R => '0'
    );
\freq_high_189.W0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(75),
      Q => W0(11),
      R => '0'
    );
\freq_high_189.W0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(76),
      Q => W0(12),
      R => '0'
    );
\freq_high_189.W0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(77),
      Q => W0(13),
      R => '0'
    );
\freq_high_189.W0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(78),
      Q => W0(14),
      R => '0'
    );
\freq_high_189.W0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(79),
      Q => W0(15),
      R => '0'
    );
\freq_high_189.W0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(65),
      Q => W0(1),
      R => '0'
    );
\freq_high_189.W0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(66),
      Q => W0(2),
      R => '0'
    );
\freq_high_189.W0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(67),
      Q => W0(3),
      R => '0'
    );
\freq_high_189.W0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(68),
      Q => W0(4),
      R => '0'
    );
\freq_high_189.W0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(69),
      Q => W0(5),
      R => '0'
    );
\freq_high_189.W0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(70),
      Q => W0(6),
      R => '0'
    );
\freq_high_189.W0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(71),
      Q => W0(7),
      R => '0'
    );
\freq_high_189.W0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(72),
      Q => W0(8),
      R => '0'
    );
\freq_high_189.W0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(73),
      Q => W0(9),
      R => '0'
    );
\freq_high_189.W1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(80),
      Q => W(16),
      R => '0'
    );
\freq_high_189.W1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(90),
      Q => W(26),
      R => '0'
    );
\freq_high_189.W1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(91),
      Q => W(27),
      R => '0'
    );
\freq_high_189.W1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(92),
      Q => W(28),
      R => '0'
    );
\freq_high_189.W1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(93),
      Q => W(29),
      R => '0'
    );
\freq_high_189.W1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(94),
      Q => W(30),
      R => '0'
    );
\freq_high_189.W1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(95),
      Q => W(31),
      R => '0'
    );
\freq_high_189.W1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(81),
      Q => W(17),
      R => '0'
    );
\freq_high_189.W1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(82),
      Q => W(18),
      R => '0'
    );
\freq_high_189.W1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(83),
      Q => W(19),
      R => '0'
    );
\freq_high_189.W1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(84),
      Q => W(20),
      R => '0'
    );
\freq_high_189.W1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(85),
      Q => W(21),
      R => '0'
    );
\freq_high_189.W1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(86),
      Q => W(22),
      R => '0'
    );
\freq_high_189.W1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(87),
      Q => W(23),
      R => '0'
    );
\freq_high_189.W1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(88),
      Q => W(24),
      R => '0'
    );
\freq_high_189.W1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(89),
      Q => W(25),
      R => '0'
    );
\freq_high_189.curr_delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEBC2288"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => curr_delay(0),
      I2 => data0,
      I3 => \morlet_active__0\,
      I4 => \freq_high_189.curr_delay[5]_i_3_n_0\,
      O => \freq_high_189.curr_delay[0]_i_1_n_0\
    );
\freq_high_189.curr_delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E3F8BC28A028A0"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => curr_delay(0),
      I2 => curr_delay(1),
      I3 => \morlet_active__0\,
      I4 => data0,
      I5 => \freq_high_189.curr_delay[5]_i_3_n_0\,
      O => \freq_high_189.curr_delay[1]_i_1_n_0\
    );
\freq_high_189.curr_delay[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => curr_delay(1),
      I1 => curr_delay(0),
      I2 => curr_delay(2),
      I3 => \freq_high_189.curr_delay[3]_i_5_n_0\,
      I4 => curr_delay(7),
      I5 => curr_delay(6),
      O => data0
    );
\freq_high_189.curr_delay[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2AAA8000"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => curr_delay(1),
      I2 => \morlet_active__0\,
      I3 => curr_delay(0),
      I4 => curr_delay(2),
      I5 => \freq_high_189.curr_delay[2]_i_3_n_0\,
      O => \freq_high_189.curr_delay[2]_i_1_n_0\
    );
\freq_high_189.curr_delay[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \freq_high_189.start_delay[7]_i_4_n_0\,
      I1 => start_delay(0),
      I2 => start_delay(7),
      I3 => start_delay(5),
      I4 => start_delay(3),
      O => \morlet_active__0\
    );
\freq_high_189.curr_delay[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A802A802A802A208"
    )
        port map (
      I0 => \freq_high_189.curr_delay[5]_i_3_n_0\,
      I1 => data0,
      I2 => \morlet_active__0\,
      I3 => curr_delay(2),
      I4 => curr_delay(1),
      I5 => curr_delay(0),
      O => \freq_high_189.curr_delay[2]_i_3_n_0\
    );
\freq_high_189.curr_delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF8F28F22882288"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_high_189.curr_delay[3]_i_2_n_0\,
      I2 => \freq_high_189.curr_delay[3]_i_3_n_0\,
      I3 => curr_delay(3),
      I4 => curr_delay(2),
      I5 => \freq_high_189.curr_delay[5]_i_3_n_0\,
      O => \freq_high_189.curr_delay[3]_i_1_n_0\
    );
\freq_high_189.curr_delay[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => curr_delay(1),
      I1 => \morlet_active__0\,
      I2 => curr_delay(0),
      I3 => curr_delay(2),
      O => \freq_high_189.curr_delay[3]_i_2_n_0\
    );
\freq_high_189.curr_delay[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00FF00AB"
    )
        port map (
      I0 => \morlet_active__0\,
      I1 => \freq_high_189.curr_delay[3]_i_4_n_0\,
      I2 => \freq_high_189.curr_delay[3]_i_5_n_0\,
      I3 => curr_delay(2),
      I4 => curr_delay(0),
      I5 => curr_delay(1),
      O => \freq_high_189.curr_delay[3]_i_3_n_0\
    );
\freq_high_189.curr_delay[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => curr_delay(6),
      I1 => curr_delay(7),
      O => \freq_high_189.curr_delay[3]_i_4_n_0\
    );
\freq_high_189.curr_delay[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => curr_delay(4),
      I1 => curr_delay(3),
      I2 => curr_delay(5),
      O => \freq_high_189.curr_delay[3]_i_5_n_0\
    );
\freq_high_189.curr_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF282828"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_high_189.curr_delay[7]_i_2_n_0\,
      I2 => curr_delay(4),
      I3 => \curr_delay__0\(4),
      I4 => \freq_high_189.curr_delay[5]_i_3_n_0\,
      O => \freq_high_189.curr_delay[4]_i_1_n_0\
    );
\freq_high_189.curr_delay[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAAA5554"
    )
        port map (
      I0 => \freq_high_189.curr_delay[6]_i_3_n_0\,
      I1 => curr_delay(5),
      I2 => curr_delay(7),
      I3 => curr_delay(6),
      I4 => curr_delay(4),
      I5 => curr_delay(3),
      O => \curr_delay__0\(4)
    );
\freq_high_189.curr_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2A802A802A80"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => curr_delay(4),
      I2 => \freq_high_189.curr_delay[7]_i_2_n_0\,
      I3 => curr_delay(5),
      I4 => \curr_delay__0\(5),
      I5 => \freq_high_189.curr_delay[5]_i_3_n_0\,
      O => \freq_high_189.curr_delay[5]_i_1_n_0\
    );
\freq_high_189.curr_delay[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFAA0054"
    )
        port map (
      I0 => curr_delay(3),
      I1 => curr_delay(6),
      I2 => curr_delay(7),
      I3 => \freq_high_189.curr_delay[6]_i_3_n_0\,
      I4 => curr_delay(5),
      I5 => curr_delay(4),
      O => \curr_delay__0\(5)
    );
\freq_high_189.curr_delay[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \freq_high_189.start_delay[7]_i_3_n_0\,
      I1 => start_delay(2),
      I2 => start_delay(1),
      I3 => start_delay(6),
      I4 => start_delay(4),
      I5 => freq_fifo_valid,
      O => \freq_high_189.curr_delay[5]_i_3_n_0\
    );
\freq_high_189.curr_delay[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2AAA8000"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_high_189.curr_delay[7]_i_2_n_0\,
      I2 => curr_delay(4),
      I3 => curr_delay(5),
      I4 => curr_delay(6),
      I5 => \freq_high_189.curr_delay[6]_i_2_n_0\,
      O => \freq_high_189.curr_delay[6]_i_1_n_0\
    );
\freq_high_189.curr_delay[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A082A080"
    )
        port map (
      I0 => \freq_high_189.curr_delay[5]_i_3_n_0\,
      I1 => curr_delay(5),
      I2 => curr_delay(6),
      I3 => \freq_high_189.curr_delay[6]_i_3_n_0\,
      I4 => curr_delay(7),
      I5 => \freq_high_189.curr_delay[6]_i_4_n_0\,
      O => \freq_high_189.curr_delay[6]_i_2_n_0\
    );
\freq_high_189.curr_delay[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => curr_delay(2),
      I1 => curr_delay(0),
      I2 => curr_delay(1),
      I3 => \freq_high_189.start_delay[7]_i_3_n_0\,
      I4 => \freq_high_189.start_delay[7]_i_4_n_0\,
      O => \freq_high_189.curr_delay[6]_i_3_n_0\
    );
\freq_high_189.curr_delay[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => curr_delay(3),
      I1 => curr_delay(4),
      O => \freq_high_189.curr_delay[6]_i_4_n_0\
    );
\freq_high_189.curr_delay[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2A80"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_high_189.curr_delay[7]_i_2_n_0\,
      I2 => \freq_high_189.curr_delay[7]_i_3_n_0\,
      I3 => curr_delay(7),
      I4 => \freq_high_189.curr_delay[7]_i_4_n_0\,
      O => \freq_high_189.curr_delay[7]_i_1_n_0\
    );
\freq_high_189.curr_delay[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr_delay(2),
      I1 => curr_delay(0),
      I2 => \morlet_active__0\,
      I3 => curr_delay(1),
      I4 => curr_delay(3),
      O => \freq_high_189.curr_delay[7]_i_2_n_0\
    );
\freq_high_189.curr_delay[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => curr_delay(6),
      I1 => curr_delay(5),
      I2 => curr_delay(4),
      O => \freq_high_189.curr_delay[7]_i_3_n_0\
    );
\freq_high_189.curr_delay[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A080"
    )
        port map (
      I0 => \freq_high_189.curr_delay[5]_i_3_n_0\,
      I1 => curr_delay(6),
      I2 => curr_delay(7),
      I3 => \freq_high_189.curr_delay[7]_i_5_n_0\,
      I4 => \morlet_active__0\,
      O => \freq_high_189.curr_delay[7]_i_4_n_0\
    );
\freq_high_189.curr_delay[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => curr_delay(5),
      I1 => curr_delay(3),
      I2 => curr_delay(4),
      I3 => curr_delay(2),
      I4 => curr_delay(0),
      I5 => curr_delay(1),
      O => \freq_high_189.curr_delay[7]_i_5_n_0\
    );
\freq_high_189.curr_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.curr_delay[0]_i_1_n_0\,
      Q => curr_delay(0),
      R => '0'
    );
\freq_high_189.curr_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.curr_delay[1]_i_1_n_0\,
      Q => curr_delay(1),
      R => '0'
    );
\freq_high_189.curr_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.curr_delay[2]_i_1_n_0\,
      Q => curr_delay(2),
      R => '0'
    );
\freq_high_189.curr_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.curr_delay[3]_i_1_n_0\,
      Q => curr_delay(3),
      R => '0'
    );
\freq_high_189.curr_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.curr_delay[4]_i_1_n_0\,
      Q => curr_delay(4),
      R => '0'
    );
\freq_high_189.curr_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.curr_delay[5]_i_1_n_0\,
      Q => curr_delay(5),
      R => '0'
    );
\freq_high_189.curr_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.curr_delay[6]_i_1_n_0\,
      Q => curr_delay(6),
      R => '0'
    );
\freq_high_189.curr_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.curr_delay[7]_i_1_n_0\,
      Q => curr_delay(7),
      R => '0'
    );
\freq_high_189.doa_data[491]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => validN,
      I1 => validE,
      I2 => validW,
      O => doa_data0
    );
\freq_high_189.doa_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(0),
      Q => doa_data(0),
      R => '0'
    );
\freq_high_189.doa_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(64),
      Q => doa_data(100),
      R => '0'
    );
\freq_high_189.doa_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(65),
      Q => doa_data(101),
      R => '0'
    );
\freq_high_189.doa_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(66),
      Q => doa_data(102),
      R => '0'
    );
\freq_high_189.doa_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(67),
      Q => doa_data(103),
      R => '0'
    );
\freq_high_189.doa_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(68),
      Q => doa_data(104),
      R => '0'
    );
\freq_high_189.doa_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(69),
      Q => doa_data(105),
      R => '0'
    );
\freq_high_189.doa_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(70),
      Q => doa_data(106),
      R => '0'
    );
\freq_high_189.doa_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(71),
      Q => doa_data(107),
      R => '0'
    );
\freq_high_189.doa_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(72),
      Q => doa_data(108),
      R => '0'
    );
\freq_high_189.doa_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(73),
      Q => doa_data(109),
      R => '0'
    );
\freq_high_189.doa_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(10),
      Q => doa_data(10),
      R => '0'
    );
\freq_high_189.doa_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(74),
      Q => doa_data(110),
      R => '0'
    );
\freq_high_189.doa_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(75),
      Q => doa_data(111),
      R => '0'
    );
\freq_high_189.doa_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(76),
      Q => doa_data(112),
      R => '0'
    );
\freq_high_189.doa_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(77),
      Q => doa_data(113),
      R => '0'
    );
\freq_high_189.doa_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(78),
      Q => doa_data(114),
      R => '0'
    );
\freq_high_189.doa_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(79),
      Q => doa_data(115),
      R => '0'
    );
\freq_high_189.doa_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(80),
      Q => doa_data(116),
      R => '0'
    );
\freq_high_189.doa_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(81),
      Q => doa_data(117),
      R => '0'
    );
\freq_high_189.doa_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(82),
      Q => doa_data(118),
      R => '0'
    );
\freq_high_189.doa_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(83),
      Q => doa_data(119),
      R => '0'
    );
\freq_high_189.doa_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(11),
      Q => doa_data(11),
      R => '0'
    );
\freq_high_189.doa_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(84),
      Q => doa_data(120),
      R => '0'
    );
\freq_high_189.doa_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(85),
      Q => doa_data(121),
      R => '0'
    );
\freq_high_189.doa_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(86),
      Q => doa_data(122),
      R => '0'
    );
\freq_high_189.doa_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(87),
      Q => doa_data(123),
      R => '0'
    );
\freq_high_189.doa_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(88),
      Q => doa_data(124),
      R => '0'
    );
\freq_high_189.doa_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(89),
      Q => doa_data(125),
      R => '0'
    );
\freq_high_189.doa_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(90),
      Q => doa_data(126),
      R => '0'
    );
\freq_high_189.doa_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(91),
      Q => doa_data(127),
      R => '0'
    );
\freq_high_189.doa_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(92),
      Q => doa_data(128),
      R => '0'
    );
\freq_high_189.doa_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(93),
      Q => doa_data(129),
      R => '0'
    );
\freq_high_189.doa_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(12),
      Q => doa_data(12),
      R => '0'
    );
\freq_high_189.doa_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(94),
      Q => doa_data(130),
      R => '0'
    );
\freq_high_189.doa_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(95),
      Q => doa_data(131),
      R => '0'
    );
\freq_high_189.doa_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(96),
      Q => doa_data(132),
      R => '0'
    );
\freq_high_189.doa_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(97),
      Q => doa_data(133),
      R => '0'
    );
\freq_high_189.doa_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(98),
      Q => doa_data(134),
      R => '0'
    );
\freq_high_189.doa_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(99),
      Q => doa_data(135),
      R => '0'
    );
\freq_high_189.doa_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(100),
      Q => doa_data(136),
      R => '0'
    );
\freq_high_189.doa_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(101),
      Q => doa_data(137),
      R => '0'
    );
\freq_high_189.doa_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(102),
      Q => doa_data(138),
      R => '0'
    );
\freq_high_189.doa_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(103),
      Q => doa_data(139),
      R => '0'
    );
\freq_high_189.doa_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(13),
      Q => doa_data(13),
      R => '0'
    );
\freq_high_189.doa_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(104),
      Q => doa_data(140),
      R => '0'
    );
\freq_high_189.doa_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(105),
      Q => doa_data(141),
      R => '0'
    );
\freq_high_189.doa_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(106),
      Q => doa_data(142),
      R => '0'
    );
\freq_high_189.doa_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(107),
      Q => doa_data(143),
      R => '0'
    );
\freq_high_189.doa_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(108),
      Q => doa_data(144),
      R => '0'
    );
\freq_high_189.doa_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(109),
      Q => doa_data(145),
      R => '0'
    );
\freq_high_189.doa_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(110),
      Q => doa_data(146),
      R => '0'
    );
\freq_high_189.doa_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(111),
      Q => doa_data(147),
      R => '0'
    );
\freq_high_189.doa_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(112),
      Q => doa_data(148),
      R => '0'
    );
\freq_high_189.doa_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(113),
      Q => doa_data(149),
      R => '0'
    );
\freq_high_189.doa_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(14),
      Q => doa_data(14),
      R => '0'
    );
\freq_high_189.doa_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(114),
      Q => doa_data(150),
      R => '0'
    );
\freq_high_189.doa_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(115),
      Q => doa_data(151),
      R => '0'
    );
\freq_high_189.doa_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(116),
      Q => doa_data(152),
      R => '0'
    );
\freq_high_189.doa_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(117),
      Q => doa_data(153),
      R => '0'
    );
\freq_high_189.doa_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(118),
      Q => doa_data(154),
      R => '0'
    );
\freq_high_189.doa_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(119),
      Q => doa_data(155),
      R => '0'
    );
\freq_high_189.doa_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(120),
      Q => doa_data(156),
      R => '0'
    );
\freq_high_189.doa_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(121),
      Q => doa_data(157),
      R => '0'
    );
\freq_high_189.doa_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(122),
      Q => doa_data(158),
      R => '0'
    );
\freq_high_189.doa_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(123),
      Q => doa_data(159),
      R => '0'
    );
\freq_high_189.doa_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(15),
      Q => doa_data(15),
      R => '0'
    );
\freq_high_189.doa_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(124),
      Q => doa_data(160),
      R => '0'
    );
\freq_high_189.doa_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(125),
      Q => doa_data(161),
      R => '0'
    );
\freq_high_189.doa_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(126),
      Q => doa_data(162),
      R => '0'
    );
\freq_high_189.doa_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(127),
      Q => doa_data(163),
      R => '0'
    );
\freq_high_189.doa_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(0),
      Q => doa_data(164),
      R => '0'
    );
\freq_high_189.doa_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(1),
      Q => doa_data(165),
      R => '0'
    );
\freq_high_189.doa_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(2),
      Q => doa_data(166),
      R => '0'
    );
\freq_high_189.doa_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(3),
      Q => doa_data(167),
      R => '0'
    );
\freq_high_189.doa_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(4),
      Q => doa_data(168),
      R => '0'
    );
\freq_high_189.doa_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(5),
      Q => doa_data(169),
      R => '0'
    );
\freq_high_189.doa_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(0),
      Q => doa_data(16),
      R => '0'
    );
\freq_high_189.doa_data_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(6),
      Q => doa_data(170),
      R => '0'
    );
\freq_high_189.doa_data_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(7),
      Q => doa_data(171),
      R => '0'
    );
\freq_high_189.doa_data_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(8),
      Q => doa_data(172),
      R => '0'
    );
\freq_high_189.doa_data_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(9),
      Q => doa_data(173),
      R => '0'
    );
\freq_high_189.doa_data_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(10),
      Q => doa_data(174),
      R => '0'
    );
\freq_high_189.doa_data_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(11),
      Q => doa_data(175),
      R => '0'
    );
\freq_high_189.doa_data_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(12),
      Q => doa_data(176),
      R => '0'
    );
\freq_high_189.doa_data_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(13),
      Q => doa_data(177),
      R => '0'
    );
\freq_high_189.doa_data_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(14),
      Q => doa_data(178),
      R => '0'
    );
\freq_high_189.doa_data_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envE(15),
      Q => doa_data(179),
      R => '0'
    );
\freq_high_189.doa_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(1),
      Q => doa_data(17),
      R => '0'
    );
\freq_high_189.doa_data_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(0),
      Q => doa_data(180),
      R => '0'
    );
\freq_high_189.doa_data_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(1),
      Q => doa_data(181),
      R => '0'
    );
\freq_high_189.doa_data_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(2),
      Q => doa_data(182),
      R => '0'
    );
\freq_high_189.doa_data_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(3),
      Q => doa_data(183),
      R => '0'
    );
\freq_high_189.doa_data_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(4),
      Q => doa_data(184),
      R => '0'
    );
\freq_high_189.doa_data_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(5),
      Q => doa_data(185),
      R => '0'
    );
\freq_high_189.doa_data_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(6),
      Q => doa_data(186),
      R => '0'
    );
\freq_high_189.doa_data_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(7),
      Q => doa_data(187),
      R => '0'
    );
\freq_high_189.doa_data_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(8),
      Q => doa_data(188),
      R => '0'
    );
\freq_high_189.doa_data_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(9),
      Q => doa_data(189),
      R => '0'
    );
\freq_high_189.doa_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(2),
      Q => doa_data(18),
      R => '0'
    );
\freq_high_189.doa_data_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(10),
      Q => doa_data(190),
      R => '0'
    );
\freq_high_189.doa_data_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(11),
      Q => doa_data(191),
      R => '0'
    );
\freq_high_189.doa_data_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(12),
      Q => doa_data(192),
      R => '0'
    );
\freq_high_189.doa_data_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(13),
      Q => doa_data(193),
      R => '0'
    );
\freq_high_189.doa_data_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(14),
      Q => doa_data(194),
      R => '0'
    );
\freq_high_189.doa_data_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(15),
      Q => doa_data(195),
      R => '0'
    );
\freq_high_189.doa_data_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(16),
      Q => doa_data(196),
      R => '0'
    );
\freq_high_189.doa_data_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(17),
      Q => doa_data(197),
      R => '0'
    );
\freq_high_189.doa_data_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(18),
      Q => doa_data(198),
      R => '0'
    );
\freq_high_189.doa_data_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseE(19),
      Q => doa_data(199),
      R => '0'
    );
\freq_high_189.doa_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(3),
      Q => doa_data(19),
      R => '0'
    );
\freq_high_189.doa_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(1),
      Q => doa_data(1),
      R => '0'
    );
\freq_high_189.doa_data_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(0),
      Q => doa_data(200),
      R => '0'
    );
\freq_high_189.doa_data_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(1),
      Q => doa_data(201),
      R => '0'
    );
\freq_high_189.doa_data_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(2),
      Q => doa_data(202),
      R => '0'
    );
\freq_high_189.doa_data_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(3),
      Q => doa_data(203),
      R => '0'
    );
\freq_high_189.doa_data_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(4),
      Q => doa_data(204),
      R => '0'
    );
\freq_high_189.doa_data_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(5),
      Q => doa_data(205),
      R => '0'
    );
\freq_high_189.doa_data_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(6),
      Q => doa_data(206),
      R => '0'
    );
\freq_high_189.doa_data_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(7),
      Q => doa_data(207),
      R => '0'
    );
\freq_high_189.doa_data_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(8),
      Q => doa_data(208),
      R => '0'
    );
\freq_high_189.doa_data_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(9),
      Q => doa_data(209),
      R => '0'
    );
\freq_high_189.doa_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(4),
      Q => doa_data(20),
      R => '0'
    );
\freq_high_189.doa_data_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(10),
      Q => doa_data(210),
      R => '0'
    );
\freq_high_189.doa_data_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(11),
      Q => doa_data(211),
      R => '0'
    );
\freq_high_189.doa_data_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(12),
      Q => doa_data(212),
      R => '0'
    );
\freq_high_189.doa_data_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(13),
      Q => doa_data(213),
      R => '0'
    );
\freq_high_189.doa_data_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(14),
      Q => doa_data(214),
      R => '0'
    );
\freq_high_189.doa_data_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_E0(15),
      Q => doa_data(215),
      R => '0'
    );
\freq_high_189.doa_data_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(144),
      Q => doa_data(216),
      R => '0'
    );
\freq_high_189.doa_data_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(145),
      Q => doa_data(217),
      R => '0'
    );
\freq_high_189.doa_data_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(146),
      Q => doa_data(218),
      R => '0'
    );
\freq_high_189.doa_data_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(147),
      Q => doa_data(219),
      R => '0'
    );
\freq_high_189.doa_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(5),
      Q => doa_data(21),
      R => '0'
    );
\freq_high_189.doa_data_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(148),
      Q => doa_data(220),
      R => '0'
    );
\freq_high_189.doa_data_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(149),
      Q => doa_data(221),
      R => '0'
    );
\freq_high_189.doa_data_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(150),
      Q => doa_data(222),
      R => '0'
    );
\freq_high_189.doa_data_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(151),
      Q => doa_data(223),
      R => '0'
    );
\freq_high_189.doa_data_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(152),
      Q => doa_data(224),
      R => '0'
    );
\freq_high_189.doa_data_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(153),
      Q => doa_data(225),
      R => '0'
    );
\freq_high_189.doa_data_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(154),
      Q => doa_data(226),
      R => '0'
    );
\freq_high_189.doa_data_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(155),
      Q => doa_data(227),
      R => '0'
    );
\freq_high_189.doa_data_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(156),
      Q => doa_data(228),
      R => '0'
    );
\freq_high_189.doa_data_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(157),
      Q => doa_data(229),
      R => '0'
    );
\freq_high_189.doa_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(6),
      Q => doa_data(22),
      R => '0'
    );
\freq_high_189.doa_data_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(158),
      Q => doa_data(230),
      R => '0'
    );
\freq_high_189.doa_data_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(159),
      Q => doa_data(231),
      R => '0'
    );
\freq_high_189.doa_data_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(160),
      Q => doa_data(232),
      R => '0'
    );
\freq_high_189.doa_data_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(161),
      Q => doa_data(233),
      R => '0'
    );
\freq_high_189.doa_data_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(162),
      Q => doa_data(234),
      R => '0'
    );
\freq_high_189.doa_data_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(163),
      Q => doa_data(235),
      R => '0'
    );
\freq_high_189.doa_data_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(164),
      Q => doa_data(236),
      R => '0'
    );
\freq_high_189.doa_data_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(165),
      Q => doa_data(237),
      R => '0'
    );
\freq_high_189.doa_data_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(166),
      Q => doa_data(238),
      R => '0'
    );
\freq_high_189.doa_data_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(167),
      Q => doa_data(239),
      R => '0'
    );
\freq_high_189.doa_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(7),
      Q => doa_data(23),
      R => '0'
    );
\freq_high_189.doa_data_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(168),
      Q => doa_data(240),
      R => '0'
    );
\freq_high_189.doa_data_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(169),
      Q => doa_data(241),
      R => '0'
    );
\freq_high_189.doa_data_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(170),
      Q => doa_data(242),
      R => '0'
    );
\freq_high_189.doa_data_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(171),
      Q => doa_data(243),
      R => '0'
    );
\freq_high_189.doa_data_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(172),
      Q => doa_data(244),
      R => '0'
    );
\freq_high_189.doa_data_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(173),
      Q => doa_data(245),
      R => '0'
    );
\freq_high_189.doa_data_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(174),
      Q => doa_data(246),
      R => '0'
    );
\freq_high_189.doa_data_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(175),
      Q => doa_data(247),
      R => '0'
    );
\freq_high_189.doa_data_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(176),
      Q => doa_data(248),
      R => '0'
    );
\freq_high_189.doa_data_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(177),
      Q => doa_data(249),
      R => '0'
    );
\freq_high_189.doa_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(8),
      Q => doa_data(24),
      R => '0'
    );
\freq_high_189.doa_data_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(178),
      Q => doa_data(250),
      R => '0'
    );
\freq_high_189.doa_data_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(179),
      Q => doa_data(251),
      R => '0'
    );
\freq_high_189.doa_data_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(180),
      Q => doa_data(252),
      R => '0'
    );
\freq_high_189.doa_data_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(181),
      Q => doa_data(253),
      R => '0'
    );
\freq_high_189.doa_data_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(182),
      Q => doa_data(254),
      R => '0'
    );
\freq_high_189.doa_data_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(183),
      Q => doa_data(255),
      R => '0'
    );
\freq_high_189.doa_data_reg[256]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(184),
      Q => doa_data(256),
      R => '0'
    );
\freq_high_189.doa_data_reg[257]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(185),
      Q => doa_data(257),
      R => '0'
    );
\freq_high_189.doa_data_reg[258]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(186),
      Q => doa_data(258),
      R => '0'
    );
\freq_high_189.doa_data_reg[259]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(187),
      Q => doa_data(259),
      R => '0'
    );
\freq_high_189.doa_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(9),
      Q => doa_data(25),
      R => '0'
    );
\freq_high_189.doa_data_reg[260]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(188),
      Q => doa_data(260),
      R => '0'
    );
\freq_high_189.doa_data_reg[261]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(189),
      Q => doa_data(261),
      R => '0'
    );
\freq_high_189.doa_data_reg[262]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(190),
      Q => doa_data(262),
      R => '0'
    );
\freq_high_189.doa_data_reg[263]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(191),
      Q => doa_data(263),
      R => '0'
    );
\freq_high_189.doa_data_reg[264]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(192),
      Q => doa_data(264),
      R => '0'
    );
\freq_high_189.doa_data_reg[265]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(193),
      Q => doa_data(265),
      R => '0'
    );
\freq_high_189.doa_data_reg[266]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(194),
      Q => doa_data(266),
      R => '0'
    );
\freq_high_189.doa_data_reg[267]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(195),
      Q => doa_data(267),
      R => '0'
    );
\freq_high_189.doa_data_reg[268]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(196),
      Q => doa_data(268),
      R => '0'
    );
\freq_high_189.doa_data_reg[269]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(197),
      Q => doa_data(269),
      R => '0'
    );
\freq_high_189.doa_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(10),
      Q => doa_data(26),
      R => '0'
    );
\freq_high_189.doa_data_reg[270]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(198),
      Q => doa_data(270),
      R => '0'
    );
\freq_high_189.doa_data_reg[271]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(199),
      Q => doa_data(271),
      R => '0'
    );
\freq_high_189.doa_data_reg[272]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(200),
      Q => doa_data(272),
      R => '0'
    );
\freq_high_189.doa_data_reg[273]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(201),
      Q => doa_data(273),
      R => '0'
    );
\freq_high_189.doa_data_reg[274]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(202),
      Q => doa_data(274),
      R => '0'
    );
\freq_high_189.doa_data_reg[275]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(203),
      Q => doa_data(275),
      R => '0'
    );
\freq_high_189.doa_data_reg[276]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(204),
      Q => doa_data(276),
      R => '0'
    );
\freq_high_189.doa_data_reg[277]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(205),
      Q => doa_data(277),
      R => '0'
    );
\freq_high_189.doa_data_reg[278]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(206),
      Q => doa_data(278),
      R => '0'
    );
\freq_high_189.doa_data_reg[279]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(207),
      Q => doa_data(279),
      R => '0'
    );
\freq_high_189.doa_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(11),
      Q => doa_data(27),
      R => '0'
    );
\freq_high_189.doa_data_reg[280]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(208),
      Q => doa_data(280),
      R => '0'
    );
\freq_high_189.doa_data_reg[281]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(209),
      Q => doa_data(281),
      R => '0'
    );
\freq_high_189.doa_data_reg[282]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(210),
      Q => doa_data(282),
      R => '0'
    );
\freq_high_189.doa_data_reg[283]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(211),
      Q => doa_data(283),
      R => '0'
    );
\freq_high_189.doa_data_reg[284]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(212),
      Q => doa_data(284),
      R => '0'
    );
\freq_high_189.doa_data_reg[285]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(213),
      Q => doa_data(285),
      R => '0'
    );
\freq_high_189.doa_data_reg[286]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(214),
      Q => doa_data(286),
      R => '0'
    );
\freq_high_189.doa_data_reg[287]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(215),
      Q => doa_data(287),
      R => '0'
    );
\freq_high_189.doa_data_reg[288]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(216),
      Q => doa_data(288),
      R => '0'
    );
\freq_high_189.doa_data_reg[289]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(217),
      Q => doa_data(289),
      R => '0'
    );
\freq_high_189.doa_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(12),
      Q => doa_data(28),
      R => '0'
    );
\freq_high_189.doa_data_reg[290]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(218),
      Q => doa_data(290),
      R => '0'
    );
\freq_high_189.doa_data_reg[291]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(219),
      Q => doa_data(291),
      R => '0'
    );
\freq_high_189.doa_data_reg[292]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(220),
      Q => doa_data(292),
      R => '0'
    );
\freq_high_189.doa_data_reg[293]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(221),
      Q => doa_data(293),
      R => '0'
    );
\freq_high_189.doa_data_reg[294]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(222),
      Q => doa_data(294),
      R => '0'
    );
\freq_high_189.doa_data_reg[295]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(223),
      Q => doa_data(295),
      R => '0'
    );
\freq_high_189.doa_data_reg[296]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(224),
      Q => doa_data(296),
      R => '0'
    );
\freq_high_189.doa_data_reg[297]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(225),
      Q => doa_data(297),
      R => '0'
    );
\freq_high_189.doa_data_reg[298]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(226),
      Q => doa_data(298),
      R => '0'
    );
\freq_high_189.doa_data_reg[299]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(227),
      Q => doa_data(299),
      R => '0'
    );
\freq_high_189.doa_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(13),
      Q => doa_data(29),
      R => '0'
    );
\freq_high_189.doa_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(2),
      Q => doa_data(2),
      R => '0'
    );
\freq_high_189.doa_data_reg[300]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(228),
      Q => doa_data(300),
      R => '0'
    );
\freq_high_189.doa_data_reg[301]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(229),
      Q => doa_data(301),
      R => '0'
    );
\freq_high_189.doa_data_reg[302]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(230),
      Q => doa_data(302),
      R => '0'
    );
\freq_high_189.doa_data_reg[303]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(231),
      Q => doa_data(303),
      R => '0'
    );
\freq_high_189.doa_data_reg[304]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(232),
      Q => doa_data(304),
      R => '0'
    );
\freq_high_189.doa_data_reg[305]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(233),
      Q => doa_data(305),
      R => '0'
    );
\freq_high_189.doa_data_reg[306]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(234),
      Q => doa_data(306),
      R => '0'
    );
\freq_high_189.doa_data_reg[307]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(235),
      Q => doa_data(307),
      R => '0'
    );
\freq_high_189.doa_data_reg[308]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(236),
      Q => doa_data(308),
      R => '0'
    );
\freq_high_189.doa_data_reg[309]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(237),
      Q => doa_data(309),
      R => '0'
    );
\freq_high_189.doa_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(14),
      Q => doa_data(30),
      R => '0'
    );
\freq_high_189.doa_data_reg[310]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(238),
      Q => doa_data(310),
      R => '0'
    );
\freq_high_189.doa_data_reg[311]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(239),
      Q => doa_data(311),
      R => '0'
    );
\freq_high_189.doa_data_reg[312]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(240),
      Q => doa_data(312),
      R => '0'
    );
\freq_high_189.doa_data_reg[313]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(241),
      Q => doa_data(313),
      R => '0'
    );
\freq_high_189.doa_data_reg[314]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(242),
      Q => doa_data(314),
      R => '0'
    );
\freq_high_189.doa_data_reg[315]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(243),
      Q => doa_data(315),
      R => '0'
    );
\freq_high_189.doa_data_reg[316]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(244),
      Q => doa_data(316),
      R => '0'
    );
\freq_high_189.doa_data_reg[317]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(245),
      Q => doa_data(317),
      R => '0'
    );
\freq_high_189.doa_data_reg[318]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(246),
      Q => doa_data(318),
      R => '0'
    );
\freq_high_189.doa_data_reg[319]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(247),
      Q => doa_data(319),
      R => '0'
    );
\freq_high_189.doa_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(15),
      Q => doa_data(31),
      R => '0'
    );
\freq_high_189.doa_data_reg[320]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(248),
      Q => doa_data(320),
      R => '0'
    );
\freq_high_189.doa_data_reg[321]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(249),
      Q => doa_data(321),
      R => '0'
    );
\freq_high_189.doa_data_reg[322]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(250),
      Q => doa_data(322),
      R => '0'
    );
\freq_high_189.doa_data_reg[323]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(251),
      Q => doa_data(323),
      R => '0'
    );
\freq_high_189.doa_data_reg[324]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(252),
      Q => doa_data(324),
      R => '0'
    );
\freq_high_189.doa_data_reg[325]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(253),
      Q => doa_data(325),
      R => '0'
    );
\freq_high_189.doa_data_reg[326]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(254),
      Q => doa_data(326),
      R => '0'
    );
\freq_high_189.doa_data_reg[327]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(255),
      Q => doa_data(327),
      R => '0'
    );
\freq_high_189.doa_data_reg[328]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(0),
      Q => doa_data(328),
      R => '0'
    );
\freq_high_189.doa_data_reg[329]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(1),
      Q => doa_data(329),
      R => '0'
    );
\freq_high_189.doa_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(16),
      Q => doa_data(32),
      R => '0'
    );
\freq_high_189.doa_data_reg[330]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(2),
      Q => doa_data(330),
      R => '0'
    );
\freq_high_189.doa_data_reg[331]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(3),
      Q => doa_data(331),
      R => '0'
    );
\freq_high_189.doa_data_reg[332]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(4),
      Q => doa_data(332),
      R => '0'
    );
\freq_high_189.doa_data_reg[333]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(5),
      Q => doa_data(333),
      R => '0'
    );
\freq_high_189.doa_data_reg[334]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(6),
      Q => doa_data(334),
      R => '0'
    );
\freq_high_189.doa_data_reg[335]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(7),
      Q => doa_data(335),
      R => '0'
    );
\freq_high_189.doa_data_reg[336]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(8),
      Q => doa_data(336),
      R => '0'
    );
\freq_high_189.doa_data_reg[337]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(9),
      Q => doa_data(337),
      R => '0'
    );
\freq_high_189.doa_data_reg[338]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(10),
      Q => doa_data(338),
      R => '0'
    );
\freq_high_189.doa_data_reg[339]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(11),
      Q => doa_data(339),
      R => '0'
    );
\freq_high_189.doa_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(17),
      Q => doa_data(33),
      R => '0'
    );
\freq_high_189.doa_data_reg[340]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(12),
      Q => doa_data(340),
      R => '0'
    );
\freq_high_189.doa_data_reg[341]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(13),
      Q => doa_data(341),
      R => '0'
    );
\freq_high_189.doa_data_reg[342]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(14),
      Q => doa_data(342),
      R => '0'
    );
\freq_high_189.doa_data_reg[343]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envW(15),
      Q => doa_data(343),
      R => '0'
    );
\freq_high_189.doa_data_reg[344]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(0),
      Q => doa_data(344),
      R => '0'
    );
\freq_high_189.doa_data_reg[345]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(1),
      Q => doa_data(345),
      R => '0'
    );
\freq_high_189.doa_data_reg[346]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(2),
      Q => doa_data(346),
      R => '0'
    );
\freq_high_189.doa_data_reg[347]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(3),
      Q => doa_data(347),
      R => '0'
    );
\freq_high_189.doa_data_reg[348]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(4),
      Q => doa_data(348),
      R => '0'
    );
\freq_high_189.doa_data_reg[349]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(5),
      Q => doa_data(349),
      R => '0'
    );
\freq_high_189.doa_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(18),
      Q => doa_data(34),
      R => '0'
    );
\freq_high_189.doa_data_reg[350]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(6),
      Q => doa_data(350),
      R => '0'
    );
\freq_high_189.doa_data_reg[351]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(7),
      Q => doa_data(351),
      R => '0'
    );
\freq_high_189.doa_data_reg[352]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(8),
      Q => doa_data(352),
      R => '0'
    );
\freq_high_189.doa_data_reg[353]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(9),
      Q => doa_data(353),
      R => '0'
    );
\freq_high_189.doa_data_reg[354]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(10),
      Q => doa_data(354),
      R => '0'
    );
\freq_high_189.doa_data_reg[355]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(11),
      Q => doa_data(355),
      R => '0'
    );
\freq_high_189.doa_data_reg[356]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(12),
      Q => doa_data(356),
      R => '0'
    );
\freq_high_189.doa_data_reg[357]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(13),
      Q => doa_data(357),
      R => '0'
    );
\freq_high_189.doa_data_reg[358]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(14),
      Q => doa_data(358),
      R => '0'
    );
\freq_high_189.doa_data_reg[359]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(15),
      Q => doa_data(359),
      R => '0'
    );
\freq_high_189.doa_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseN(19),
      Q => doa_data(35),
      R => '0'
    );
\freq_high_189.doa_data_reg[360]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(16),
      Q => doa_data(360),
      R => '0'
    );
\freq_high_189.doa_data_reg[361]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(17),
      Q => doa_data(361),
      R => '0'
    );
\freq_high_189.doa_data_reg[362]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(18),
      Q => doa_data(362),
      R => '0'
    );
\freq_high_189.doa_data_reg[363]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => phaseW(19),
      Q => doa_data(363),
      R => '0'
    );
\freq_high_189.doa_data_reg[364]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(0),
      Q => doa_data(364),
      R => '0'
    );
\freq_high_189.doa_data_reg[365]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(1),
      Q => doa_data(365),
      R => '0'
    );
\freq_high_189.doa_data_reg[366]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(2),
      Q => doa_data(366),
      R => '0'
    );
\freq_high_189.doa_data_reg[367]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(3),
      Q => doa_data(367),
      R => '0'
    );
\freq_high_189.doa_data_reg[368]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(4),
      Q => doa_data(368),
      R => '0'
    );
\freq_high_189.doa_data_reg[369]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(5),
      Q => doa_data(369),
      R => '0'
    );
\freq_high_189.doa_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(0),
      Q => doa_data(36),
      R => '0'
    );
\freq_high_189.doa_data_reg[370]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(6),
      Q => doa_data(370),
      R => '0'
    );
\freq_high_189.doa_data_reg[371]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(7),
      Q => doa_data(371),
      R => '0'
    );
\freq_high_189.doa_data_reg[372]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(8),
      Q => doa_data(372),
      R => '0'
    );
\freq_high_189.doa_data_reg[373]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(9),
      Q => doa_data(373),
      R => '0'
    );
\freq_high_189.doa_data_reg[374]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(10),
      Q => doa_data(374),
      R => '0'
    );
\freq_high_189.doa_data_reg[375]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(11),
      Q => doa_data(375),
      R => '0'
    );
\freq_high_189.doa_data_reg[376]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(12),
      Q => doa_data(376),
      R => '0'
    );
\freq_high_189.doa_data_reg[377]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(13),
      Q => doa_data(377),
      R => '0'
    );
\freq_high_189.doa_data_reg[378]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(14),
      Q => doa_data(378),
      R => '0'
    );
\freq_high_189.doa_data_reg[379]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_W0(15),
      Q => doa_data(379),
      R => '0'
    );
\freq_high_189.doa_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(1),
      Q => doa_data(37),
      R => '0'
    );
\freq_high_189.doa_data_reg[380]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(272),
      Q => doa_data(380),
      R => '0'
    );
\freq_high_189.doa_data_reg[381]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(273),
      Q => doa_data(381),
      R => '0'
    );
\freq_high_189.doa_data_reg[382]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(274),
      Q => doa_data(382),
      R => '0'
    );
\freq_high_189.doa_data_reg[383]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(275),
      Q => doa_data(383),
      R => '0'
    );
\freq_high_189.doa_data_reg[384]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(276),
      Q => doa_data(384),
      R => '0'
    );
\freq_high_189.doa_data_reg[385]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(277),
      Q => doa_data(385),
      R => '0'
    );
\freq_high_189.doa_data_reg[386]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(278),
      Q => doa_data(386),
      R => '0'
    );
\freq_high_189.doa_data_reg[387]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(279),
      Q => doa_data(387),
      R => '0'
    );
\freq_high_189.doa_data_reg[388]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(280),
      Q => doa_data(388),
      R => '0'
    );
\freq_high_189.doa_data_reg[389]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(281),
      Q => doa_data(389),
      R => '0'
    );
\freq_high_189.doa_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(2),
      Q => doa_data(38),
      R => '0'
    );
\freq_high_189.doa_data_reg[390]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(282),
      Q => doa_data(390),
      R => '0'
    );
\freq_high_189.doa_data_reg[391]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(283),
      Q => doa_data(391),
      R => '0'
    );
\freq_high_189.doa_data_reg[392]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(284),
      Q => doa_data(392),
      R => '0'
    );
\freq_high_189.doa_data_reg[393]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(285),
      Q => doa_data(393),
      R => '0'
    );
\freq_high_189.doa_data_reg[394]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(286),
      Q => doa_data(394),
      R => '0'
    );
\freq_high_189.doa_data_reg[395]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(287),
      Q => doa_data(395),
      R => '0'
    );
\freq_high_189.doa_data_reg[396]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(288),
      Q => doa_data(396),
      R => '0'
    );
\freq_high_189.doa_data_reg[397]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(289),
      Q => doa_data(397),
      R => '0'
    );
\freq_high_189.doa_data_reg[398]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(290),
      Q => doa_data(398),
      R => '0'
    );
\freq_high_189.doa_data_reg[399]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(291),
      Q => doa_data(399),
      R => '0'
    );
\freq_high_189.doa_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(3),
      Q => doa_data(39),
      R => '0'
    );
\freq_high_189.doa_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(3),
      Q => doa_data(3),
      R => '0'
    );
\freq_high_189.doa_data_reg[400]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(292),
      Q => doa_data(400),
      R => '0'
    );
\freq_high_189.doa_data_reg[401]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(293),
      Q => doa_data(401),
      R => '0'
    );
\freq_high_189.doa_data_reg[402]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(294),
      Q => doa_data(402),
      R => '0'
    );
\freq_high_189.doa_data_reg[403]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(295),
      Q => doa_data(403),
      R => '0'
    );
\freq_high_189.doa_data_reg[404]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(296),
      Q => doa_data(404),
      R => '0'
    );
\freq_high_189.doa_data_reg[405]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(297),
      Q => doa_data(405),
      R => '0'
    );
\freq_high_189.doa_data_reg[406]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(298),
      Q => doa_data(406),
      R => '0'
    );
\freq_high_189.doa_data_reg[407]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(299),
      Q => doa_data(407),
      R => '0'
    );
\freq_high_189.doa_data_reg[408]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(300),
      Q => doa_data(408),
      R => '0'
    );
\freq_high_189.doa_data_reg[409]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(301),
      Q => doa_data(409),
      R => '0'
    );
\freq_high_189.doa_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(4),
      Q => doa_data(40),
      R => '0'
    );
\freq_high_189.doa_data_reg[410]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(302),
      Q => doa_data(410),
      R => '0'
    );
\freq_high_189.doa_data_reg[411]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(303),
      Q => doa_data(411),
      R => '0'
    );
\freq_high_189.doa_data_reg[412]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(304),
      Q => doa_data(412),
      R => '0'
    );
\freq_high_189.doa_data_reg[413]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(305),
      Q => doa_data(413),
      R => '0'
    );
\freq_high_189.doa_data_reg[414]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(306),
      Q => doa_data(414),
      R => '0'
    );
\freq_high_189.doa_data_reg[415]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(307),
      Q => doa_data(415),
      R => '0'
    );
\freq_high_189.doa_data_reg[416]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(308),
      Q => doa_data(416),
      R => '0'
    );
\freq_high_189.doa_data_reg[417]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(309),
      Q => doa_data(417),
      R => '0'
    );
\freq_high_189.doa_data_reg[418]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(310),
      Q => doa_data(418),
      R => '0'
    );
\freq_high_189.doa_data_reg[419]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(311),
      Q => doa_data(419),
      R => '0'
    );
\freq_high_189.doa_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(5),
      Q => doa_data(41),
      R => '0'
    );
\freq_high_189.doa_data_reg[420]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(312),
      Q => doa_data(420),
      R => '0'
    );
\freq_high_189.doa_data_reg[421]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(313),
      Q => doa_data(421),
      R => '0'
    );
\freq_high_189.doa_data_reg[422]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(314),
      Q => doa_data(422),
      R => '0'
    );
\freq_high_189.doa_data_reg[423]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(315),
      Q => doa_data(423),
      R => '0'
    );
\freq_high_189.doa_data_reg[424]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(316),
      Q => doa_data(424),
      R => '0'
    );
\freq_high_189.doa_data_reg[425]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(317),
      Q => doa_data(425),
      R => '0'
    );
\freq_high_189.doa_data_reg[426]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(318),
      Q => doa_data(426),
      R => '0'
    );
\freq_high_189.doa_data_reg[427]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(319),
      Q => doa_data(427),
      R => '0'
    );
\freq_high_189.doa_data_reg[428]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(320),
      Q => doa_data(428),
      R => '0'
    );
\freq_high_189.doa_data_reg[429]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(321),
      Q => doa_data(429),
      R => '0'
    );
\freq_high_189.doa_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(6),
      Q => doa_data(42),
      R => '0'
    );
\freq_high_189.doa_data_reg[430]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(322),
      Q => doa_data(430),
      R => '0'
    );
\freq_high_189.doa_data_reg[431]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(323),
      Q => doa_data(431),
      R => '0'
    );
\freq_high_189.doa_data_reg[432]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(324),
      Q => doa_data(432),
      R => '0'
    );
\freq_high_189.doa_data_reg[433]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(325),
      Q => doa_data(433),
      R => '0'
    );
\freq_high_189.doa_data_reg[434]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(326),
      Q => doa_data(434),
      R => '0'
    );
\freq_high_189.doa_data_reg[435]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(327),
      Q => doa_data(435),
      R => '0'
    );
\freq_high_189.doa_data_reg[436]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(328),
      Q => doa_data(436),
      R => '0'
    );
\freq_high_189.doa_data_reg[437]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(329),
      Q => doa_data(437),
      R => '0'
    );
\freq_high_189.doa_data_reg[438]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(330),
      Q => doa_data(438),
      R => '0'
    );
\freq_high_189.doa_data_reg[439]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(331),
      Q => doa_data(439),
      R => '0'
    );
\freq_high_189.doa_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(7),
      Q => doa_data(43),
      R => '0'
    );
\freq_high_189.doa_data_reg[440]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(332),
      Q => doa_data(440),
      R => '0'
    );
\freq_high_189.doa_data_reg[441]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(333),
      Q => doa_data(441),
      R => '0'
    );
\freq_high_189.doa_data_reg[442]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(334),
      Q => doa_data(442),
      R => '0'
    );
\freq_high_189.doa_data_reg[443]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(335),
      Q => doa_data(443),
      R => '0'
    );
\freq_high_189.doa_data_reg[444]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(336),
      Q => doa_data(444),
      R => '0'
    );
\freq_high_189.doa_data_reg[445]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(337),
      Q => doa_data(445),
      R => '0'
    );
\freq_high_189.doa_data_reg[446]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(338),
      Q => doa_data(446),
      R => '0'
    );
\freq_high_189.doa_data_reg[447]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(339),
      Q => doa_data(447),
      R => '0'
    );
\freq_high_189.doa_data_reg[448]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(340),
      Q => doa_data(448),
      R => '0'
    );
\freq_high_189.doa_data_reg[449]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(341),
      Q => doa_data(449),
      R => '0'
    );
\freq_high_189.doa_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(8),
      Q => doa_data(44),
      R => '0'
    );
\freq_high_189.doa_data_reg[450]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(342),
      Q => doa_data(450),
      R => '0'
    );
\freq_high_189.doa_data_reg[451]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(343),
      Q => doa_data(451),
      R => '0'
    );
\freq_high_189.doa_data_reg[452]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(344),
      Q => doa_data(452),
      R => '0'
    );
\freq_high_189.doa_data_reg[453]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(345),
      Q => doa_data(453),
      R => '0'
    );
\freq_high_189.doa_data_reg[454]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(346),
      Q => doa_data(454),
      R => '0'
    );
\freq_high_189.doa_data_reg[455]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(347),
      Q => doa_data(455),
      R => '0'
    );
\freq_high_189.doa_data_reg[456]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(348),
      Q => doa_data(456),
      R => '0'
    );
\freq_high_189.doa_data_reg[457]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(349),
      Q => doa_data(457),
      R => '0'
    );
\freq_high_189.doa_data_reg[458]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(350),
      Q => doa_data(458),
      R => '0'
    );
\freq_high_189.doa_data_reg[459]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(351),
      Q => doa_data(459),
      R => '0'
    );
\freq_high_189.doa_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(9),
      Q => doa_data(45),
      R => '0'
    );
\freq_high_189.doa_data_reg[460]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(352),
      Q => doa_data(460),
      R => '0'
    );
\freq_high_189.doa_data_reg[461]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(353),
      Q => doa_data(461),
      R => '0'
    );
\freq_high_189.doa_data_reg[462]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(354),
      Q => doa_data(462),
      R => '0'
    );
\freq_high_189.doa_data_reg[463]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(355),
      Q => doa_data(463),
      R => '0'
    );
\freq_high_189.doa_data_reg[464]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(356),
      Q => doa_data(464),
      R => '0'
    );
\freq_high_189.doa_data_reg[465]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(357),
      Q => doa_data(465),
      R => '0'
    );
\freq_high_189.doa_data_reg[466]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(358),
      Q => doa_data(466),
      R => '0'
    );
\freq_high_189.doa_data_reg[467]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(359),
      Q => doa_data(467),
      R => '0'
    );
\freq_high_189.doa_data_reg[468]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(360),
      Q => doa_data(468),
      R => '0'
    );
\freq_high_189.doa_data_reg[469]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(361),
      Q => doa_data(469),
      R => '0'
    );
\freq_high_189.doa_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(10),
      Q => doa_data(46),
      R => '0'
    );
\freq_high_189.doa_data_reg[470]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(362),
      Q => doa_data(470),
      R => '0'
    );
\freq_high_189.doa_data_reg[471]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(363),
      Q => doa_data(471),
      R => '0'
    );
\freq_high_189.doa_data_reg[472]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(364),
      Q => doa_data(472),
      R => '0'
    );
\freq_high_189.doa_data_reg[473]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(365),
      Q => doa_data(473),
      R => '0'
    );
\freq_high_189.doa_data_reg[474]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(366),
      Q => doa_data(474),
      R => '0'
    );
\freq_high_189.doa_data_reg[475]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(367),
      Q => doa_data(475),
      R => '0'
    );
\freq_high_189.doa_data_reg[476]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(368),
      Q => doa_data(476),
      R => '0'
    );
\freq_high_189.doa_data_reg[477]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(369),
      Q => doa_data(477),
      R => '0'
    );
\freq_high_189.doa_data_reg[478]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(370),
      Q => doa_data(478),
      R => '0'
    );
\freq_high_189.doa_data_reg[479]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(371),
      Q => doa_data(479),
      R => '0'
    );
\freq_high_189.doa_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(11),
      Q => doa_data(47),
      R => '0'
    );
\freq_high_189.doa_data_reg[480]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(372),
      Q => doa_data(480),
      R => '0'
    );
\freq_high_189.doa_data_reg[481]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(373),
      Q => doa_data(481),
      R => '0'
    );
\freq_high_189.doa_data_reg[482]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(374),
      Q => doa_data(482),
      R => '0'
    );
\freq_high_189.doa_data_reg[483]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(375),
      Q => doa_data(483),
      R => '0'
    );
\freq_high_189.doa_data_reg[484]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(376),
      Q => doa_data(484),
      R => '0'
    );
\freq_high_189.doa_data_reg[485]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(377),
      Q => doa_data(485),
      R => '0'
    );
\freq_high_189.doa_data_reg[486]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(378),
      Q => doa_data(486),
      R => '0'
    );
\freq_high_189.doa_data_reg[487]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(379),
      Q => doa_data(487),
      R => '0'
    );
\freq_high_189.doa_data_reg[488]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(380),
      Q => doa_data(488),
      R => '0'
    );
\freq_high_189.doa_data_reg[489]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(381),
      Q => doa_data(489),
      R => '0'
    );
\freq_high_189.doa_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(12),
      Q => doa_data(48),
      R => '0'
    );
\freq_high_189.doa_data_reg[490]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(382),
      Q => doa_data(490),
      R => '0'
    );
\freq_high_189.doa_data_reg[491]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(383),
      Q => doa_data(491),
      R => '0'
    );
\freq_high_189.doa_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(13),
      Q => doa_data(49),
      R => '0'
    );
\freq_high_189.doa_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(4),
      Q => doa_data(4),
      R => '0'
    );
\freq_high_189.doa_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(14),
      Q => doa_data(50),
      R => '0'
    );
\freq_high_189.doa_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_N0(15),
      Q => doa_data(51),
      R => '0'
    );
\freq_high_189.doa_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(16),
      Q => doa_data(52),
      R => '0'
    );
\freq_high_189.doa_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(17),
      Q => doa_data(53),
      R => '0'
    );
\freq_high_189.doa_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(18),
      Q => doa_data(54),
      R => '0'
    );
\freq_high_189.doa_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(19),
      Q => doa_data(55),
      R => '0'
    );
\freq_high_189.doa_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(20),
      Q => doa_data(56),
      R => '0'
    );
\freq_high_189.doa_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(21),
      Q => doa_data(57),
      R => '0'
    );
\freq_high_189.doa_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(22),
      Q => doa_data(58),
      R => '0'
    );
\freq_high_189.doa_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(23),
      Q => doa_data(59),
      R => '0'
    );
\freq_high_189.doa_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(5),
      Q => doa_data(5),
      R => '0'
    );
\freq_high_189.doa_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(24),
      Q => doa_data(60),
      R => '0'
    );
\freq_high_189.doa_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(25),
      Q => doa_data(61),
      R => '0'
    );
\freq_high_189.doa_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(26),
      Q => doa_data(62),
      R => '0'
    );
\freq_high_189.doa_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(27),
      Q => doa_data(63),
      R => '0'
    );
\freq_high_189.doa_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(28),
      Q => doa_data(64),
      R => '0'
    );
\freq_high_189.doa_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(29),
      Q => doa_data(65),
      R => '0'
    );
\freq_high_189.doa_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(30),
      Q => doa_data(66),
      R => '0'
    );
\freq_high_189.doa_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(31),
      Q => doa_data(67),
      R => '0'
    );
\freq_high_189.doa_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(32),
      Q => doa_data(68),
      R => '0'
    );
\freq_high_189.doa_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(33),
      Q => doa_data(69),
      R => '0'
    );
\freq_high_189.doa_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(6),
      Q => doa_data(6),
      R => '0'
    );
\freq_high_189.doa_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(34),
      Q => doa_data(70),
      R => '0'
    );
\freq_high_189.doa_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(35),
      Q => doa_data(71),
      R => '0'
    );
\freq_high_189.doa_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(36),
      Q => doa_data(72),
      R => '0'
    );
\freq_high_189.doa_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(37),
      Q => doa_data(73),
      R => '0'
    );
\freq_high_189.doa_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(38),
      Q => doa_data(74),
      R => '0'
    );
\freq_high_189.doa_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(39),
      Q => doa_data(75),
      R => '0'
    );
\freq_high_189.doa_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(40),
      Q => doa_data(76),
      R => '0'
    );
\freq_high_189.doa_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(41),
      Q => doa_data(77),
      R => '0'
    );
\freq_high_189.doa_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(42),
      Q => doa_data(78),
      R => '0'
    );
\freq_high_189.doa_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(43),
      Q => doa_data(79),
      R => '0'
    );
\freq_high_189.doa_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(7),
      Q => doa_data(7),
      R => '0'
    );
\freq_high_189.doa_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(44),
      Q => doa_data(80),
      R => '0'
    );
\freq_high_189.doa_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(45),
      Q => doa_data(81),
      R => '0'
    );
\freq_high_189.doa_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(46),
      Q => doa_data(82),
      R => '0'
    );
\freq_high_189.doa_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(47),
      Q => doa_data(83),
      R => '0'
    );
\freq_high_189.doa_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(48),
      Q => doa_data(84),
      R => '0'
    );
\freq_high_189.doa_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(49),
      Q => doa_data(85),
      R => '0'
    );
\freq_high_189.doa_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(50),
      Q => doa_data(86),
      R => '0'
    );
\freq_high_189.doa_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(51),
      Q => doa_data(87),
      R => '0'
    );
\freq_high_189.doa_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(52),
      Q => doa_data(88),
      R => '0'
    );
\freq_high_189.doa_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(53),
      Q => doa_data(89),
      R => '0'
    );
\freq_high_189.doa_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(8),
      Q => doa_data(8),
      R => '0'
    );
\freq_high_189.doa_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(54),
      Q => doa_data(90),
      R => '0'
    );
\freq_high_189.doa_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(55),
      Q => doa_data(91),
      R => '0'
    );
\freq_high_189.doa_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(56),
      Q => doa_data(92),
      R => '0'
    );
\freq_high_189.doa_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(57),
      Q => doa_data(93),
      R => '0'
    );
\freq_high_189.doa_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(58),
      Q => doa_data(94),
      R => '0'
    );
\freq_high_189.doa_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(59),
      Q => doa_data(95),
      R => '0'
    );
\freq_high_189.doa_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(60),
      Q => doa_data(96),
      R => '0'
    );
\freq_high_189.doa_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(61),
      Q => doa_data(97),
      R => '0'
    );
\freq_high_189.doa_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(62),
      Q => doa_data(98),
      R => '0'
    );
\freq_high_189.doa_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => raw_fifo_data(63),
      Q => doa_data(99),
      R => '0'
    );
\freq_high_189.doa_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_data0,
      D => envN(9),
      Q => doa_data(9),
      R => '0'
    );
\freq_high_189.doa_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => doa_data0,
      Q => \^doa_wr\,
      R => '0'
    );
\freq_high_189.freq_fifo_rd_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => freq_fifo_empty,
      I1 => freq_rd_delay(1),
      I2 => freq_rd_delay(2),
      I3 => freq_rd_delay(0),
      O => \freq_high_189.freq_fifo_rd_i_1_n_0\
    );
\freq_high_189.freq_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.freq_fifo_rd_i_1_n_0\,
      Q => freq_fifo_rd,
      R => '0'
    );
\freq_high_189.freq_fifo_valid_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => freq_fifo_rd,
      I1 => freq_fifo_empty,
      O => freq_fifo_valid0
    );
\freq_high_189.freq_fifo_valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => freq_fifo_valid0,
      Q => freq_fifo_valid,
      R => '0'
    );
\freq_high_189.freq_rd_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_rd_delay(0),
      O => freq_rd_delay0(0)
    );
\freq_high_189.freq_rd_delay[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => freq_rd_delay(0),
      I1 => freq_rd_delay(2),
      I2 => freq_rd_delay(1),
      O => \freq_high_189.freq_rd_delay[1]_i_1_n_0\
    );
\freq_high_189.freq_rd_delay[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => freq_rd_delay(0),
      I1 => freq_rd_delay(1),
      O => \freq_high_189.freq_rd_delay[1]_i_2_n_0\
    );
\freq_high_189.freq_rd_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => freq_rd_delay(0),
      I1 => freq_rd_delay(2),
      I2 => freq_rd_delay(1),
      O => \freq_high_189.freq_rd_delay[2]_i_1_n_0\
    );
\freq_high_189.freq_rd_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_high_189.freq_rd_delay[1]_i_1_n_0\,
      D => freq_rd_delay0(0),
      Q => freq_rd_delay(0),
      S => freq_fifo_empty
    );
\freq_high_189.freq_rd_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_high_189.freq_rd_delay[1]_i_1_n_0\,
      D => \freq_high_189.freq_rd_delay[1]_i_2_n_0\,
      Q => freq_rd_delay(1),
      S => freq_fifo_empty
    );
\freq_high_189.freq_rd_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.freq_rd_delay[2]_i_1_n_0\,
      Q => freq_rd_delay(2),
      S => freq_fifo_empty
    );
\freq_high_189.morlet_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \morlet_active__0\,
      I1 => freq_fifo_valid,
      I2 => data0,
      O => \freq_high_189.morlet_active_i_1_n_0\
    );
\freq_high_189.morlet_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_high_189.morlet_active_i_1_n_0\,
      Q => morlet_active,
      R => '0'
    );
\freq_high_189.start_delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => start_delay(7),
      I1 => start_delay(5),
      I2 => start_delay(3),
      I3 => start_delay(0),
      I4 => \freq_high_189.start_delay[7]_i_4_n_0\,
      O => \p_1_in__0\(0)
    );
\freq_high_189.start_delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333332CCCCCCCC"
    )
        port map (
      I0 => \freq_high_189.start_delay[7]_i_4_n_0\,
      I1 => start_delay(0),
      I2 => start_delay(7),
      I3 => start_delay(5),
      I4 => start_delay(3),
      I5 => start_delay(1),
      O => \freq_high_189.start_delay[1]_i_1_n_0\
    );
\freq_high_189.start_delay[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54FEFE54FE54FE54"
    )
        port map (
      I0 => \morlet_active__0\,
      I1 => data0,
      I2 => freq_fifo_valid,
      I3 => start_delay(2),
      I4 => start_delay(0),
      I5 => start_delay(1),
      O => \freq_high_189.start_delay[2]_i_1_n_0\
    );
\freq_high_189.start_delay[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \morlet_active__0\,
      I1 => start_delay(3),
      I2 => start_delay(0),
      I3 => start_delay(2),
      I4 => start_delay(1),
      O => \p_1_in__0\(3)
    );
\freq_high_189.start_delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \morlet_active__0\,
      I1 => start_delay(4),
      I2 => start_delay(3),
      I3 => start_delay(0),
      I4 => start_delay(2),
      I5 => start_delay(1),
      O => \freq_high_189.start_delay[4]_i_1_n_0\
    );
\freq_high_189.start_delay[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => start_delay(5),
      I1 => start_delay(3),
      I2 => start_delay(0),
      I3 => \freq_high_189.start_delay[5]_i_2_n_0\,
      O => \p_1_in__0\(5)
    );
\freq_high_189.start_delay[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => start_delay(2),
      I1 => start_delay(1),
      I2 => start_delay(4),
      O => \freq_high_189.start_delay[5]_i_2_n_0\
    );
\freq_high_189.start_delay[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => \morlet_active__0\,
      I1 => data0,
      I2 => freq_fifo_valid,
      I3 => \freq_high_189.start_delay[7]_i_1_n_0\,
      O => \freq_high_189.start_delay[6]_i_1_n_0\
    );
\freq_high_189.start_delay[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC3CCCCCC8"
    )
        port map (
      I0 => start_delay(7),
      I1 => start_delay(6),
      I2 => start_delay(5),
      I3 => start_delay(0),
      I4 => start_delay(3),
      I5 => \freq_high_189.start_delay[5]_i_2_n_0\,
      O => \freq_high_189.start_delay[6]_i_2_n_0\
    );
\freq_high_189.start_delay[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \freq_high_189.start_delay[7]_i_3_n_0\,
      I1 => start_delay(2),
      I2 => start_delay(1),
      I3 => start_delay(6),
      I4 => start_delay(4),
      I5 => freq_fifo_valid,
      O => \freq_high_189.start_delay[7]_i_1_n_0\
    );
\freq_high_189.start_delay[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => start_delay(7),
      I1 => start_delay(5),
      I2 => start_delay(0),
      I3 => start_delay(3),
      I4 => \freq_high_189.start_delay[7]_i_4_n_0\,
      O => \p_1_in__0\(7)
    );
\freq_high_189.start_delay[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => start_delay(3),
      I1 => start_delay(5),
      I2 => start_delay(7),
      I3 => start_delay(0),
      O => \freq_high_189.start_delay[7]_i_3_n_0\
    );
\freq_high_189.start_delay[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => start_delay(4),
      I1 => start_delay(1),
      I2 => start_delay(2),
      I3 => start_delay(6),
      O => \freq_high_189.start_delay[7]_i_4_n_0\
    );
\freq_high_189.start_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_high_189.start_delay[7]_i_1_n_0\,
      D => \p_1_in__0\(0),
      Q => start_delay(0),
      R => '0'
    );
\freq_high_189.start_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_high_189.start_delay[7]_i_1_n_0\,
      D => \freq_high_189.start_delay[1]_i_1_n_0\,
      Q => start_delay(1),
      S => \freq_high_189.start_delay[6]_i_1_n_0\
    );
\freq_high_189.start_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_high_189.start_delay[7]_i_1_n_0\,
      D => \freq_high_189.start_delay[2]_i_1_n_0\,
      Q => start_delay(2),
      S => '0'
    );
\freq_high_189.start_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_high_189.start_delay[7]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => start_delay(3),
      R => '0'
    );
\freq_high_189.start_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_high_189.start_delay[7]_i_1_n_0\,
      D => \freq_high_189.start_delay[4]_i_1_n_0\,
      Q => start_delay(4),
      S => \freq_high_189.start_delay[6]_i_1_n_0\
    );
\freq_high_189.start_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_high_189.start_delay[7]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => start_delay(5),
      R => '0'
    );
\freq_high_189.start_delay_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_high_189.start_delay[7]_i_1_n_0\,
      D => \freq_high_189.start_delay[6]_i_2_n_0\,
      Q => start_delay(6),
      S => \freq_high_189.start_delay[6]_i_1_n_0\
    );
\freq_high_189.start_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_high_189.start_delay[7]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => start_delay(7),
      R => '0'
    );
ila_1_i: component ps_freq_high_189_0_0_ila_1
     port map (
      clk => clk,
      probe0(0) => \^doa_wr\,
      probe1(0) => raw_fifo_empty,
      probe10(15 downto 0) => envN(15 downto 0),
      probe11(19 downto 0) => phaseN(19 downto 0),
      probe12(15 downto 0) => raw_N0(15 downto 0),
      probe13(15 downto 0) => E0(15 downto 0),
      probe14(39 downto 0) => fir_re_E(39 downto 0),
      probe15(39 downto 0) => fir_im_E(39 downto 0),
      probe16(15 downto 0) => envE(15 downto 0),
      probe17(19 downto 0) => phaseE(19 downto 0),
      probe18(15 downto 0) => raw_E0(15 downto 0),
      probe19(15 downto 0) => W0(15 downto 0),
      probe2(0) => freq_fifo_empty,
      probe20(39 downto 0) => fir_re_W(39 downto 0),
      probe21(39 downto 0) => fir_im_W(39 downto 0),
      probe22(19 downto 16) => B"0000",
      probe22(15 downto 0) => envW(15 downto 0),
      probe23(15 downto 0) => phaseW(15 downto 0),
      probe24(15 downto 0) => raw_W0(15 downto 0),
      probe3(0) => freq_fifo_rd,
      probe4(7 downto 0) => start_delay(7 downto 0),
      probe5(7 downto 0) => curr_delay(7 downto 0),
      probe6(0) => morlet_active,
      probe7(15 downto 0) => N0(15 downto 0),
      probe8(39 downto 0) => fir_re_N(39 downto 0),
      probe9(39 downto 0) => fir_im_N(39 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_high_189_0_0 is
  port (
    fifo_clk : in STD_LOGIC;
    raw_wr : in STD_LOGIC;
    raw_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    freq_wr : in STD_LOGIC;
    freq_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doa_wr : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 491 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_freq_high_189_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_freq_high_189_0_0 : entity is "ps_freq_high_189_0_0,freq_high_189,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_freq_high_189_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_freq_high_189_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_freq_high_189_0_0 : entity is "freq_high_189,Vivado 2025.1";
end ps_freq_high_189_0_0;

architecture STRUCTURE of ps_freq_high_189_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_clk : signal is "xilinx.com:signal:clock:1.0 fifo_clk CLK";
  attribute X_INTERFACE_MODE of fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of fifo_clk : signal is "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_freq_high_189_0_0_freq_high_189
     port map (
      clk => clk,
      doa_data(491 downto 0) => doa_data(491 downto 0),
      doa_wr => doa_wr,
      fifo_clk => fifo_clk,
      freq_data(95 downto 0) => freq_data(95 downto 0),
      freq_wr => freq_wr,
      raw_data(383 downto 0) => raw_data(383 downto 0),
      raw_wr => raw_wr,
      reset => reset
    );
end STRUCTURE;
