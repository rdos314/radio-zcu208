-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Nov 28 21:17:50 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_low_0_0/ps_doa_low_0_0_sim_netlist.vhdl
-- Design      : ps_doa_low_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_low_0_0_morlet_to_phase_env is
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
  attribute ORIG_REF_NAME of ps_doa_low_0_0_morlet_to_phase_env : entity is "morlet_to_phase_env";
end ps_doa_low_0_0_morlet_to_phase_env;

architecture STRUCTURE of ps_doa_low_0_0_morlet_to_phase_env is
  component mult_16_16_HD5 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mult_16_16_HD5;
  component ps_doa_low_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_doa_low_0_0_mult_16_16;
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
  signal atan2_valid : STD_LOGIC;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lphase : STD_LOGIC_VECTOR ( 19 downto 0 );
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
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sqrt_valid : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
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
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(0),
      Q => env(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(10),
      Q => env(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(11),
      Q => env(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(12),
      Q => env(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(13),
      Q => env(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(14),
      Q => env(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(15),
      Q => env(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(1),
      Q => env(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(2),
      Q => env(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(3),
      Q => env(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(4),
      Q => env(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(5),
      Q => env(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(6),
      Q => env(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(7),
      Q => env(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(8),
      Q => env(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(9),
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(0),
      Q => phase(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(10),
      Q => phase(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(11),
      Q => phase(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(12),
      Q => phase(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(13),
      Q => phase(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(14),
      Q => phase(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(15),
      Q => phase(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(16),
      Q => phase(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(17),
      Q => phase(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(18),
      Q => phase(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(19),
      Q => phase(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(1),
      Q => phase(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(2),
      Q => phase(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(3),
      Q => phase(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(4),
      Q => phase(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(5),
      Q => phase(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(6),
      Q => phase(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(7),
      Q => phase(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(8),
      Q => phase(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(9),
      Q => phase(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => active,
      I1 => atan2_valid,
      I2 => sqrt_valid,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => valid,
      R => '0'
    );
mult_im_i: component mult_16_16_HD5
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_doa_low_0_0_mult_16_16
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
      m_axis_dout_tvalid => sqrt_valid,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component cordic_atan2_16_HD7
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => atan2_valid,
      s_axis_cartesian_tdata(47 downto 24) => im(23 downto 0),
      s_axis_cartesian_tdata(23 downto 0) => re(23 downto 0),
      s_axis_cartesian_tvalid => active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_doa_low_0_0_morlet_to_phase_env__xdcDup__1\ is
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
  attribute ORIG_REF_NAME of \ps_doa_low_0_0_morlet_to_phase_env__xdcDup__1\ : entity is "morlet_to_phase_env";
end \ps_doa_low_0_0_morlet_to_phase_env__xdcDup__1\;

architecture STRUCTURE of \ps_doa_low_0_0_morlet_to_phase_env__xdcDup__1\ is
  component ps_doa_low_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_doa_low_0_0_mult_16_16;
  component ps_doa_low_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_doa_low_0_0_cordic_sqrt_16;
  component ps_doa_low_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_doa_low_0_0_cordic_atan2_16;
  signal atan2_valid : STD_LOGIC;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lphase : STD_LOGIC_VECTOR ( 19 downto 0 );
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
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sqrt_valid : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
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
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(0),
      Q => env(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(10),
      Q => env(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(11),
      Q => env(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(12),
      Q => env(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(13),
      Q => env(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(14),
      Q => env(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(15),
      Q => env(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(1),
      Q => env(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(2),
      Q => env(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(3),
      Q => env(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(4),
      Q => env(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(5),
      Q => env(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(6),
      Q => env(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(7),
      Q => env(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(8),
      Q => env(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(9),
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(0),
      Q => phase(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(10),
      Q => phase(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(11),
      Q => phase(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(12),
      Q => phase(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(13),
      Q => phase(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(14),
      Q => phase(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(15),
      Q => phase(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(16),
      Q => phase(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(17),
      Q => phase(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(18),
      Q => phase(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(19),
      Q => phase(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(1),
      Q => phase(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(2),
      Q => phase(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(3),
      Q => phase(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(4),
      Q => phase(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(5),
      Q => phase(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(6),
      Q => phase(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(7),
      Q => phase(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(8),
      Q => phase(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(9),
      Q => phase(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => active,
      I1 => atan2_valid,
      I2 => sqrt_valid,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => valid,
      R => '0'
    );
mult_im_i: component ps_doa_low_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_doa_low_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_doa_low_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => sqrt_valid,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_doa_low_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => atan2_valid,
      s_axis_cartesian_tdata(47 downto 24) => im(23 downto 0),
      s_axis_cartesian_tdata(23 downto 0) => re(23 downto 0),
      s_axis_cartesian_tvalid => active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_doa_low_0_0_morlet_to_phase_env__xdcDup__2\ is
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
  attribute ORIG_REF_NAME of \ps_doa_low_0_0_morlet_to_phase_env__xdcDup__2\ : entity is "morlet_to_phase_env";
end \ps_doa_low_0_0_morlet_to_phase_env__xdcDup__2\;

architecture STRUCTURE of \ps_doa_low_0_0_morlet_to_phase_env__xdcDup__2\ is
  component ps_doa_low_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_doa_low_0_0_mult_16_16;
  component ps_doa_low_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_doa_low_0_0_cordic_sqrt_16;
  component ps_doa_low_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_doa_low_0_0_cordic_atan2_16;
  signal atan2_valid : STD_LOGIC;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lphase : STD_LOGIC_VECTOR ( 19 downto 0 );
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
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sqrt_valid : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
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
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(0),
      Q => env(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(10),
      Q => env(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(11),
      Q => env(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(12),
      Q => env(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(13),
      Q => env(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(14),
      Q => env(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(15),
      Q => env(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(1),
      Q => env(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(2),
      Q => env(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(3),
      Q => env(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(4),
      Q => env(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(5),
      Q => env(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(6),
      Q => env(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(7),
      Q => env(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(8),
      Q => env(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(9),
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
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
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(0),
      Q => phase(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(10),
      Q => phase(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(11),
      Q => phase(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(12),
      Q => phase(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(13),
      Q => phase(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(14),
      Q => phase(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(15),
      Q => phase(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(16),
      Q => phase(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(17),
      Q => phase(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(18),
      Q => phase(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(19),
      Q => phase(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(1),
      Q => phase(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(2),
      Q => phase(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(3),
      Q => phase(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(4),
      Q => phase(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(5),
      Q => phase(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(6),
      Q => phase(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(7),
      Q => phase(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(8),
      Q => phase(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(9),
      Q => phase(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => active,
      I1 => atan2_valid,
      I2 => sqrt_valid,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => valid,
      R => '0'
    );
mult_im_i: component ps_doa_low_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_doa_low_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_doa_low_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => sqrt_valid,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_doa_low_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => atan2_valid,
      s_axis_cartesian_tdata(47 downto 24) => im(23 downto 0),
      s_axis_cartesian_tdata(23 downto 0) => re(23 downto 0),
      s_axis_cartesian_tvalid => active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_low_0_0_doa_low is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_valid : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    valid : out STD_LOGIC;
    freq : out STD_LOGIC_VECTOR ( 31 downto 0 );
    env_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_W : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_doa_low_0_0_doa_low : entity is "doa_low";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_doa_low_0_0_doa_low : entity is "soft";
end ps_doa_low_0_0_doa_low;

architecture STRUCTURE of ps_doa_low_0_0_doa_low is
  component ps_doa_low_0_0_mult_s500 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 21 downto 0 );
    P : out STD_LOGIC_VECTOR ( 49 downto 0 )
  );
  end component ps_doa_low_0_0_mult_s500;
  component ps_doa_low_0_0_fir_doa_low_im is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component ps_doa_low_0_0_fir_doa_low_im;
  component ps_doa_low_0_0_fir_doa_low_im_HD3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_doa_low_0_0_fir_doa_low_im_HD3;
  component ps_doa_low_0_0_fir_doa_low_re is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component ps_doa_low_0_0_fir_doa_low_re;
  component ps_doa_low_0_0_fir_doa_low_re_HD4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_doa_low_0_0_fir_doa_low_re_HD4;
  component ps_doa_low_0_0_ila_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component ps_doa_low_0_0_ila_0;
  signal E : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of E : signal is std.standard.true;
  signal N : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of N : signal is std.standard.true;
  signal W : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of W : signal is std.standard.true;
  signal counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of counter : signal is std.standard.true;
  signal \counter__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \deci_low.counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.counter_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.counter_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.counter_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.counter_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.counter_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.counter_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.counter_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffE[15]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[15]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[15]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[15]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[15]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[15]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[15]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[15]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[19]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[19]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[19]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[19]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[7]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[7]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[7]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[7]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[7]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[7]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[7]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.diffE[7]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.diffE_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.diffE_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.diffE_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.diffE_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.diffE_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.diffE_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffE_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffE_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffE_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffE_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffE_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffE_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.diffE_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.diffE_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.diffE_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.diffE_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.diffE_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffE_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffE_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffN[15]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[15]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[15]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[15]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[15]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[15]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[15]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[15]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[19]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[19]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[19]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[19]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[7]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[7]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[7]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[7]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[7]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[7]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[7]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.diffN[7]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.diffN_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.diffN_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.diffN_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.diffN_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.diffN_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.diffN_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffN_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffN_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffN_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffN_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffN_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffN_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.diffN_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.diffN_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.diffN_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.diffN_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.diffN_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffN_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffN_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffW[15]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[15]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[15]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[15]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[15]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[15]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[15]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[15]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[19]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[19]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[19]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[19]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[7]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[7]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[7]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[7]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[7]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[7]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[7]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.diffW[7]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.diffW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.diffW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.diffW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.diffW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.diffW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.diffW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffW_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffW_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffW_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.diffW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.diffW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.diffW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.diffW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.diffW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.diffW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.diffW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.diffW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.freq[27]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mul_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_10_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_11_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_12_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_13_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_14_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_15_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_16_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_17_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[15]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_10_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_11_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[21]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_10_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_11_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_12_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_13_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_14_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_15_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_16_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum[7]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[21]_i_2_n_3\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[21]_i_2_n_4\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[21]_i_2_n_5\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[21]_i_2_n_6\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[21]_i_2_n_7\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.phase_sum_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal diffE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffE02_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffN : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffN04_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffW00_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal envE : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal envN : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal envW : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^env_e\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env_e\ : signal is std.standard.true;
  signal \^env_n\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env_n\ : signal is std.standard.true;
  signal \^env_w\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env_w\ : signal is std.standard.true;
  signal fir_doa_low_re_N_i_i_1_n_0 : STD_LOGIC;
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
  signal fp : STD_LOGIC_VECTOR ( 47 downto 20 );
  signal \^freq\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of \^freq\ : signal is std.standard.true;
  signal mul : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal phaseE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phaseN : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phaseW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^phase_e\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_e\ : signal is std.standard.true;
  signal \^phase_n\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_n\ : signal is std.standard.true;
  signal \^phase_w\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_w\ : signal is std.standard.true;
  signal phase_sum : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal phase_sum0 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal prevE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prevN : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prevW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^valid\ : STD_LOGIC;
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal validE : STD_LOGIC;
  signal validN : STD_LOGIC;
  signal validW : STD_LOGIC;
  signal \NLW_deci_low.counter_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_deci_low.diffE_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_deci_low.diffE_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_deci_low.diffN_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_deci_low.diffN_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_deci_low.diffW_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_deci_low.diffW_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_deci_low.phase_sum_reg[21]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_deci_low.phase_sum_reg[21]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_doa_freq_P_UNCONNECTED : STD_LOGIC_VECTOR ( 49 downto 0 );
  signal NLW_fir_doa_low_im_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_im_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_im_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_re_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_re_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_re_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_re_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \deci_low.E_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \deci_low.E_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.E_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.N_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.W_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deci_low.counter_reg[15]_i_1\ : label is 35;
  attribute KEEP of \deci_low.counter_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \deci_low.counter_reg[7]_i_1\ : label is 35;
  attribute KEEP of \deci_low.counter_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.counter_reg[9]\ : label is "yes";
  attribute ADDER_THRESHOLD of \deci_low.diffE_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffE_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffE_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffN_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffN_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffN_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffW_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \deci_low.env_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.env_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_E_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.env_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_N_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.env_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.env_W_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[16]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[17]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[18]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[19]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[20]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[21]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[22]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[23]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[24]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[25]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[26]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[27]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.freq_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[16]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[16]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[17]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[17]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[18]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[18]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[19]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[19]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.phase_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_E_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[16]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[16]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[17]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[17]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[18]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[18]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[19]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[19]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.phase_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_N_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[16]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[16]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[17]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[17]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[18]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[18]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[19]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[19]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.phase_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.phase_W_reg[9]\ : label is "yes";
  attribute ADDER_THRESHOLD of \deci_low.phase_sum_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.phase_sum_reg[21]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.phase_sum_reg[7]_i_1\ : label is 35;
  attribute KEEP of \deci_low.valid_reg\ : label is "yes";
  attribute KEEP_HIERARCHY of doa_E_i : label is "soft";
  attribute KEEP_HIERARCHY of doa_N_i : label is "soft";
  attribute KEEP_HIERARCHY of doa_W_i : label is "soft";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of doa_freq : label is "mult_s500,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of doa_freq : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of doa_freq : label is "mult_gen_v12_0_23,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_im_E_i : label is "fir_doa_low_im,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_im_E_i : label is "yes";
  attribute x_core_info of fir_doa_low_im_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_im_N_i : label is "fir_doa_low_im,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_im_N_i : label is "yes";
  attribute x_core_info of fir_doa_low_im_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_im_W_i : label is "fir_doa_low_im,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_im_W_i : label is "yes";
  attribute x_core_info of fir_doa_low_im_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_re_E_i : label is "fir_doa_low_re,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_re_E_i : label is "yes";
  attribute x_core_info of fir_doa_low_re_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_re_N_i : label is "fir_doa_low_re,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_re_N_i : label is "yes";
  attribute x_core_info of fir_doa_low_re_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_re_W_i : label is "fir_doa_low_re,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_re_W_i : label is "yes";
  attribute x_core_info of fir_doa_low_re_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_0_i : label is "ila_0,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_0_i : label is "yes";
  attribute x_core_info of ila_0_i : label is "ila,Vivado 2025.1";
begin
  env_E(15 downto 0) <= \^env_e\(15 downto 0);
  env_N(15 downto 0) <= \^env_n\(15 downto 0);
  env_W(15 downto 0) <= \^env_w\(15 downto 0);
  freq(31 downto 0) <= \^freq\(31 downto 0);
  phase_E(19 downto 0) <= \^phase_e\(19 downto 0);
  phase_N(19 downto 0) <= \^phase_n\(19 downto 0);
  phase_W(19 downto 0) <= \^phase_w\(19 downto 0);
  valid <= \^valid\;
\deci_low.E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(16),
      Q => E(0),
      R => '0'
    );
\deci_low.E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(26),
      Q => E(10),
      R => '0'
    );
\deci_low.E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(27),
      Q => E(11),
      R => '0'
    );
\deci_low.E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(28),
      Q => E(12),
      R => '0'
    );
\deci_low.E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(29),
      Q => E(13),
      R => '0'
    );
\deci_low.E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(30),
      Q => E(14),
      R => '0'
    );
\deci_low.E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(31),
      Q => E(15),
      R => '0'
    );
\deci_low.E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(17),
      Q => E(1),
      R => '0'
    );
\deci_low.E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(18),
      Q => E(2),
      R => '0'
    );
\deci_low.E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(19),
      Q => E(3),
      R => '0'
    );
\deci_low.E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(20),
      Q => E(4),
      R => '0'
    );
\deci_low.E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(21),
      Q => E(5),
      R => '0'
    );
\deci_low.E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(22),
      Q => E(6),
      R => '0'
    );
\deci_low.E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(23),
      Q => E(7),
      R => '0'
    );
\deci_low.E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(24),
      Q => E(8),
      R => '0'
    );
\deci_low.E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(25),
      Q => E(9),
      R => '0'
    );
\deci_low.N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(0),
      Q => N(0),
      R => '0'
    );
\deci_low.N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(10),
      Q => N(10),
      R => '0'
    );
\deci_low.N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(11),
      Q => N(11),
      R => '0'
    );
\deci_low.N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(12),
      Q => N(12),
      R => '0'
    );
\deci_low.N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(13),
      Q => N(13),
      R => '0'
    );
\deci_low.N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(14),
      Q => N(14),
      R => '0'
    );
\deci_low.N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(15),
      Q => N(15),
      R => '0'
    );
\deci_low.N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(1),
      Q => N(1),
      R => '0'
    );
\deci_low.N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(2),
      Q => N(2),
      R => '0'
    );
\deci_low.N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(3),
      Q => N(3),
      R => '0'
    );
\deci_low.N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(4),
      Q => N(4),
      R => '0'
    );
\deci_low.N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(5),
      Q => N(5),
      R => '0'
    );
\deci_low.N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(6),
      Q => N(6),
      R => '0'
    );
\deci_low.N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(7),
      Q => N(7),
      R => '0'
    );
\deci_low.N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(8),
      Q => N(8),
      R => '0'
    );
\deci_low.N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(9),
      Q => N(9),
      R => '0'
    );
\deci_low.W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(32),
      Q => W(0),
      R => '0'
    );
\deci_low.W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(42),
      Q => W(10),
      R => '0'
    );
\deci_low.W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(43),
      Q => W(11),
      R => '0'
    );
\deci_low.W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(44),
      Q => W(12),
      R => '0'
    );
\deci_low.W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(45),
      Q => W(13),
      R => '0'
    );
\deci_low.W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(46),
      Q => W(14),
      R => '0'
    );
\deci_low.W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(47),
      Q => W(15),
      R => '0'
    );
\deci_low.W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(33),
      Q => W(1),
      R => '0'
    );
\deci_low.W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(34),
      Q => W(2),
      R => '0'
    );
\deci_low.W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(35),
      Q => W(3),
      R => '0'
    );
\deci_low.W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(36),
      Q => W(4),
      R => '0'
    );
\deci_low.W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(37),
      Q => W(5),
      R => '0'
    );
\deci_low.W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(38),
      Q => W(6),
      R => '0'
    );
\deci_low.W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(39),
      Q => W(7),
      R => '0'
    );
\deci_low.W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(40),
      Q => W(8),
      R => '0'
    );
\deci_low.W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(41),
      Q => W(9),
      R => '0'
    );
\deci_low.counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \deci_low.counter[7]_i_2_n_0\
    );
\deci_low.counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => counter(0),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => counter(10),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(11),
      Q => counter(11),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(12),
      Q => counter(12),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(13),
      Q => counter(13),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(14),
      Q => counter(14),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(15),
      Q => counter(15),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.counter_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_deci_low.counter_reg[15]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \deci_low.counter_reg[15]_i_1_n_1\,
      CO(5) => \deci_low.counter_reg[15]_i_1_n_2\,
      CO(4) => \deci_low.counter_reg[15]_i_1_n_3\,
      CO(3) => \deci_low.counter_reg[15]_i_1_n_4\,
      CO(2) => \deci_low.counter_reg[15]_i_1_n_5\,
      CO(1) => \deci_low.counter_reg[15]_i_1_n_6\,
      CO(0) => \deci_low.counter_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_1_in(15 downto 8),
      S(7 downto 0) => counter(15 downto 8)
    );
\deci_low.counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => counter(1),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => counter(2),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => counter(3),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => counter(4),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => counter(5),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => counter(6),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => counter(7),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \deci_low.counter_reg[7]_i_1_n_0\,
      CO(6) => \deci_low.counter_reg[7]_i_1_n_1\,
      CO(5) => \deci_low.counter_reg[7]_i_1_n_2\,
      CO(4) => \deci_low.counter_reg[7]_i_1_n_3\,
      CO(3) => \deci_low.counter_reg[7]_i_1_n_4\,
      CO(2) => \deci_low.counter_reg[7]_i_1_n_5\,
      CO(1) => \deci_low.counter_reg[7]_i_1_n_6\,
      CO(0) => \deci_low.counter_reg[7]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => counter(0),
      O(7 downto 0) => p_1_in(7 downto 0),
      S(7 downto 1) => counter(7 downto 1),
      S(0) => \deci_low.counter[7]_i_2_n_0\
    );
\deci_low.counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => counter(8),
      R => \counter__0\(0)
    );
\deci_low.counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => counter(9),
      R => \counter__0\(0)
    );
\deci_low.diffE[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(15),
      I1 => prevE(15),
      O => \deci_low.diffE[15]_i_2_n_0\
    );
\deci_low.diffE[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(14),
      I1 => prevE(14),
      O => \deci_low.diffE[15]_i_3_n_0\
    );
\deci_low.diffE[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(13),
      I1 => prevE(13),
      O => \deci_low.diffE[15]_i_4_n_0\
    );
\deci_low.diffE[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(12),
      I1 => prevE(12),
      O => \deci_low.diffE[15]_i_5_n_0\
    );
\deci_low.diffE[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(11),
      I1 => prevE(11),
      O => \deci_low.diffE[15]_i_6_n_0\
    );
\deci_low.diffE[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(10),
      I1 => prevE(10),
      O => \deci_low.diffE[15]_i_7_n_0\
    );
\deci_low.diffE[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(9),
      I1 => prevE(9),
      O => \deci_low.diffE[15]_i_8_n_0\
    );
\deci_low.diffE[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(8),
      I1 => prevE(8),
      O => \deci_low.diffE[15]_i_9_n_0\
    );
\deci_low.diffE[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(19),
      I1 => prevE(19),
      O => \deci_low.diffE[19]_i_2_n_0\
    );
\deci_low.diffE[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(18),
      I1 => prevE(18),
      O => \deci_low.diffE[19]_i_3_n_0\
    );
\deci_low.diffE[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(17),
      I1 => prevE(17),
      O => \deci_low.diffE[19]_i_4_n_0\
    );
\deci_low.diffE[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(16),
      I1 => prevE(16),
      O => \deci_low.diffE[19]_i_5_n_0\
    );
\deci_low.diffE[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(7),
      I1 => prevE(7),
      O => \deci_low.diffE[7]_i_2_n_0\
    );
\deci_low.diffE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(6),
      I1 => prevE(6),
      O => \deci_low.diffE[7]_i_3_n_0\
    );
\deci_low.diffE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(5),
      I1 => prevE(5),
      O => \deci_low.diffE[7]_i_4_n_0\
    );
\deci_low.diffE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(4),
      I1 => prevE(4),
      O => \deci_low.diffE[7]_i_5_n_0\
    );
\deci_low.diffE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(3),
      I1 => prevE(3),
      O => \deci_low.diffE[7]_i_6_n_0\
    );
\deci_low.diffE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(2),
      I1 => prevE(2),
      O => \deci_low.diffE[7]_i_7_n_0\
    );
\deci_low.diffE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(1),
      I1 => prevE(1),
      O => \deci_low.diffE[7]_i_8_n_0\
    );
\deci_low.diffE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_e\(0),
      I1 => prevE(0),
      O => \deci_low.diffE[7]_i_9_n_0\
    );
\deci_low.diffE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(0),
      Q => diffE(0),
      R => '0'
    );
\deci_low.diffE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(10),
      Q => diffE(10),
      R => '0'
    );
\deci_low.diffE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(11),
      Q => diffE(11),
      R => '0'
    );
\deci_low.diffE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(12),
      Q => diffE(12),
      R => '0'
    );
\deci_low.diffE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(13),
      Q => diffE(13),
      R => '0'
    );
\deci_low.diffE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(14),
      Q => diffE(14),
      R => '0'
    );
\deci_low.diffE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(15),
      Q => diffE(15),
      R => '0'
    );
\deci_low.diffE_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.diffE_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \deci_low.diffE_reg[15]_i_1_n_0\,
      CO(6) => \deci_low.diffE_reg[15]_i_1_n_1\,
      CO(5) => \deci_low.diffE_reg[15]_i_1_n_2\,
      CO(4) => \deci_low.diffE_reg[15]_i_1_n_3\,
      CO(3) => \deci_low.diffE_reg[15]_i_1_n_4\,
      CO(2) => \deci_low.diffE_reg[15]_i_1_n_5\,
      CO(1) => \deci_low.diffE_reg[15]_i_1_n_6\,
      CO(0) => \deci_low.diffE_reg[15]_i_1_n_7\,
      DI(7 downto 0) => \^phase_e\(15 downto 8),
      O(7 downto 0) => diffE02_out(15 downto 8),
      S(7) => \deci_low.diffE[15]_i_2_n_0\,
      S(6) => \deci_low.diffE[15]_i_3_n_0\,
      S(5) => \deci_low.diffE[15]_i_4_n_0\,
      S(4) => \deci_low.diffE[15]_i_5_n_0\,
      S(3) => \deci_low.diffE[15]_i_6_n_0\,
      S(2) => \deci_low.diffE[15]_i_7_n_0\,
      S(1) => \deci_low.diffE[15]_i_8_n_0\,
      S(0) => \deci_low.diffE[15]_i_9_n_0\
    );
\deci_low.diffE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(16),
      Q => diffE(16),
      R => '0'
    );
\deci_low.diffE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(17),
      Q => diffE(17),
      R => '0'
    );
\deci_low.diffE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(18),
      Q => diffE(18),
      R => '0'
    );
\deci_low.diffE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(19),
      Q => diffE(19),
      R => '0'
    );
\deci_low.diffE_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.diffE_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_deci_low.diffE_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \deci_low.diffE_reg[19]_i_1_n_5\,
      CO(1) => \deci_low.diffE_reg[19]_i_1_n_6\,
      CO(0) => \deci_low.diffE_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => \^phase_e\(18 downto 16),
      O(7 downto 4) => \NLW_deci_low.diffE_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => diffE02_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \deci_low.diffE[19]_i_2_n_0\,
      S(2) => \deci_low.diffE[19]_i_3_n_0\,
      S(1) => \deci_low.diffE[19]_i_4_n_0\,
      S(0) => \deci_low.diffE[19]_i_5_n_0\
    );
\deci_low.diffE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(1),
      Q => diffE(1),
      R => '0'
    );
\deci_low.diffE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(2),
      Q => diffE(2),
      R => '0'
    );
\deci_low.diffE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(3),
      Q => diffE(3),
      R => '0'
    );
\deci_low.diffE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(4),
      Q => diffE(4),
      R => '0'
    );
\deci_low.diffE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(5),
      Q => diffE(5),
      R => '0'
    );
\deci_low.diffE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(6),
      Q => diffE(6),
      R => '0'
    );
\deci_low.diffE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(7),
      Q => diffE(7),
      R => '0'
    );
\deci_low.diffE_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \deci_low.diffE_reg[7]_i_1_n_0\,
      CO(6) => \deci_low.diffE_reg[7]_i_1_n_1\,
      CO(5) => \deci_low.diffE_reg[7]_i_1_n_2\,
      CO(4) => \deci_low.diffE_reg[7]_i_1_n_3\,
      CO(3) => \deci_low.diffE_reg[7]_i_1_n_4\,
      CO(2) => \deci_low.diffE_reg[7]_i_1_n_5\,
      CO(1) => \deci_low.diffE_reg[7]_i_1_n_6\,
      CO(0) => \deci_low.diffE_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \^phase_e\(7 downto 0),
      O(7 downto 0) => diffE02_out(7 downto 0),
      S(7) => \deci_low.diffE[7]_i_2_n_0\,
      S(6) => \deci_low.diffE[7]_i_3_n_0\,
      S(5) => \deci_low.diffE[7]_i_4_n_0\,
      S(4) => \deci_low.diffE[7]_i_5_n_0\,
      S(3) => \deci_low.diffE[7]_i_6_n_0\,
      S(2) => \deci_low.diffE[7]_i_7_n_0\,
      S(1) => \deci_low.diffE[7]_i_8_n_0\,
      S(0) => \deci_low.diffE[7]_i_9_n_0\
    );
\deci_low.diffE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(8),
      Q => diffE(8),
      R => '0'
    );
\deci_low.diffE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffE02_out(9),
      Q => diffE(9),
      R => '0'
    );
\deci_low.diffN[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(15),
      I1 => prevN(15),
      O => \deci_low.diffN[15]_i_2_n_0\
    );
\deci_low.diffN[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(14),
      I1 => prevN(14),
      O => \deci_low.diffN[15]_i_3_n_0\
    );
\deci_low.diffN[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(13),
      I1 => prevN(13),
      O => \deci_low.diffN[15]_i_4_n_0\
    );
\deci_low.diffN[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(12),
      I1 => prevN(12),
      O => \deci_low.diffN[15]_i_5_n_0\
    );
\deci_low.diffN[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(11),
      I1 => prevN(11),
      O => \deci_low.diffN[15]_i_6_n_0\
    );
\deci_low.diffN[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(10),
      I1 => prevN(10),
      O => \deci_low.diffN[15]_i_7_n_0\
    );
\deci_low.diffN[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(9),
      I1 => prevN(9),
      O => \deci_low.diffN[15]_i_8_n_0\
    );
\deci_low.diffN[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(8),
      I1 => prevN(8),
      O => \deci_low.diffN[15]_i_9_n_0\
    );
\deci_low.diffN[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(19),
      I1 => prevN(19),
      O => \deci_low.diffN[19]_i_2_n_0\
    );
\deci_low.diffN[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(18),
      I1 => prevN(18),
      O => \deci_low.diffN[19]_i_3_n_0\
    );
\deci_low.diffN[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(17),
      I1 => prevN(17),
      O => \deci_low.diffN[19]_i_4_n_0\
    );
\deci_low.diffN[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(16),
      I1 => prevN(16),
      O => \deci_low.diffN[19]_i_5_n_0\
    );
\deci_low.diffN[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(7),
      I1 => prevN(7),
      O => \deci_low.diffN[7]_i_2_n_0\
    );
\deci_low.diffN[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(6),
      I1 => prevN(6),
      O => \deci_low.diffN[7]_i_3_n_0\
    );
\deci_low.diffN[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(5),
      I1 => prevN(5),
      O => \deci_low.diffN[7]_i_4_n_0\
    );
\deci_low.diffN[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(4),
      I1 => prevN(4),
      O => \deci_low.diffN[7]_i_5_n_0\
    );
\deci_low.diffN[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(3),
      I1 => prevN(3),
      O => \deci_low.diffN[7]_i_6_n_0\
    );
\deci_low.diffN[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(2),
      I1 => prevN(2),
      O => \deci_low.diffN[7]_i_7_n_0\
    );
\deci_low.diffN[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(1),
      I1 => prevN(1),
      O => \deci_low.diffN[7]_i_8_n_0\
    );
\deci_low.diffN[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_n\(0),
      I1 => prevN(0),
      O => \deci_low.diffN[7]_i_9_n_0\
    );
\deci_low.diffN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(0),
      Q => diffN(0),
      R => '0'
    );
\deci_low.diffN_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(10),
      Q => diffN(10),
      R => '0'
    );
\deci_low.diffN_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(11),
      Q => diffN(11),
      R => '0'
    );
\deci_low.diffN_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(12),
      Q => diffN(12),
      R => '0'
    );
\deci_low.diffN_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(13),
      Q => diffN(13),
      R => '0'
    );
\deci_low.diffN_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(14),
      Q => diffN(14),
      R => '0'
    );
\deci_low.diffN_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(15),
      Q => diffN(15),
      R => '0'
    );
\deci_low.diffN_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.diffN_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \deci_low.diffN_reg[15]_i_1_n_0\,
      CO(6) => \deci_low.diffN_reg[15]_i_1_n_1\,
      CO(5) => \deci_low.diffN_reg[15]_i_1_n_2\,
      CO(4) => \deci_low.diffN_reg[15]_i_1_n_3\,
      CO(3) => \deci_low.diffN_reg[15]_i_1_n_4\,
      CO(2) => \deci_low.diffN_reg[15]_i_1_n_5\,
      CO(1) => \deci_low.diffN_reg[15]_i_1_n_6\,
      CO(0) => \deci_low.diffN_reg[15]_i_1_n_7\,
      DI(7 downto 0) => \^phase_n\(15 downto 8),
      O(7 downto 0) => diffN04_out(15 downto 8),
      S(7) => \deci_low.diffN[15]_i_2_n_0\,
      S(6) => \deci_low.diffN[15]_i_3_n_0\,
      S(5) => \deci_low.diffN[15]_i_4_n_0\,
      S(4) => \deci_low.diffN[15]_i_5_n_0\,
      S(3) => \deci_low.diffN[15]_i_6_n_0\,
      S(2) => \deci_low.diffN[15]_i_7_n_0\,
      S(1) => \deci_low.diffN[15]_i_8_n_0\,
      S(0) => \deci_low.diffN[15]_i_9_n_0\
    );
\deci_low.diffN_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(16),
      Q => diffN(16),
      R => '0'
    );
\deci_low.diffN_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(17),
      Q => diffN(17),
      R => '0'
    );
\deci_low.diffN_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(18),
      Q => diffN(18),
      R => '0'
    );
\deci_low.diffN_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(19),
      Q => diffN(19),
      R => '0'
    );
\deci_low.diffN_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.diffN_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_deci_low.diffN_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \deci_low.diffN_reg[19]_i_1_n_5\,
      CO(1) => \deci_low.diffN_reg[19]_i_1_n_6\,
      CO(0) => \deci_low.diffN_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => \^phase_n\(18 downto 16),
      O(7 downto 4) => \NLW_deci_low.diffN_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => diffN04_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \deci_low.diffN[19]_i_2_n_0\,
      S(2) => \deci_low.diffN[19]_i_3_n_0\,
      S(1) => \deci_low.diffN[19]_i_4_n_0\,
      S(0) => \deci_low.diffN[19]_i_5_n_0\
    );
\deci_low.diffN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(1),
      Q => diffN(1),
      R => '0'
    );
\deci_low.diffN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(2),
      Q => diffN(2),
      R => '0'
    );
\deci_low.diffN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(3),
      Q => diffN(3),
      R => '0'
    );
\deci_low.diffN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(4),
      Q => diffN(4),
      R => '0'
    );
\deci_low.diffN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(5),
      Q => diffN(5),
      R => '0'
    );
\deci_low.diffN_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(6),
      Q => diffN(6),
      R => '0'
    );
\deci_low.diffN_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(7),
      Q => diffN(7),
      R => '0'
    );
\deci_low.diffN_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \deci_low.diffN_reg[7]_i_1_n_0\,
      CO(6) => \deci_low.diffN_reg[7]_i_1_n_1\,
      CO(5) => \deci_low.diffN_reg[7]_i_1_n_2\,
      CO(4) => \deci_low.diffN_reg[7]_i_1_n_3\,
      CO(3) => \deci_low.diffN_reg[7]_i_1_n_4\,
      CO(2) => \deci_low.diffN_reg[7]_i_1_n_5\,
      CO(1) => \deci_low.diffN_reg[7]_i_1_n_6\,
      CO(0) => \deci_low.diffN_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \^phase_n\(7 downto 0),
      O(7 downto 0) => diffN04_out(7 downto 0),
      S(7) => \deci_low.diffN[7]_i_2_n_0\,
      S(6) => \deci_low.diffN[7]_i_3_n_0\,
      S(5) => \deci_low.diffN[7]_i_4_n_0\,
      S(4) => \deci_low.diffN[7]_i_5_n_0\,
      S(3) => \deci_low.diffN[7]_i_6_n_0\,
      S(2) => \deci_low.diffN[7]_i_7_n_0\,
      S(1) => \deci_low.diffN[7]_i_8_n_0\,
      S(0) => \deci_low.diffN[7]_i_9_n_0\
    );
\deci_low.diffN_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(8),
      Q => diffN(8),
      R => '0'
    );
\deci_low.diffN_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffN04_out(9),
      Q => diffN(9),
      R => '0'
    );
\deci_low.diffW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(15),
      I1 => prevW(15),
      O => \deci_low.diffW[15]_i_2_n_0\
    );
\deci_low.diffW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(14),
      I1 => prevW(14),
      O => \deci_low.diffW[15]_i_3_n_0\
    );
\deci_low.diffW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(13),
      I1 => prevW(13),
      O => \deci_low.diffW[15]_i_4_n_0\
    );
\deci_low.diffW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(12),
      I1 => prevW(12),
      O => \deci_low.diffW[15]_i_5_n_0\
    );
\deci_low.diffW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(11),
      I1 => prevW(11),
      O => \deci_low.diffW[15]_i_6_n_0\
    );
\deci_low.diffW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(10),
      I1 => prevW(10),
      O => \deci_low.diffW[15]_i_7_n_0\
    );
\deci_low.diffW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(9),
      I1 => prevW(9),
      O => \deci_low.diffW[15]_i_8_n_0\
    );
\deci_low.diffW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(8),
      I1 => prevW(8),
      O => \deci_low.diffW[15]_i_9_n_0\
    );
\deci_low.diffW[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(19),
      I1 => prevW(19),
      O => \deci_low.diffW[19]_i_2_n_0\
    );
\deci_low.diffW[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(18),
      I1 => prevW(18),
      O => \deci_low.diffW[19]_i_3_n_0\
    );
\deci_low.diffW[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(17),
      I1 => prevW(17),
      O => \deci_low.diffW[19]_i_4_n_0\
    );
\deci_low.diffW[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(16),
      I1 => prevW(16),
      O => \deci_low.diffW[19]_i_5_n_0\
    );
\deci_low.diffW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(7),
      I1 => prevW(7),
      O => \deci_low.diffW[7]_i_2_n_0\
    );
\deci_low.diffW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(6),
      I1 => prevW(6),
      O => \deci_low.diffW[7]_i_3_n_0\
    );
\deci_low.diffW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(5),
      I1 => prevW(5),
      O => \deci_low.diffW[7]_i_4_n_0\
    );
\deci_low.diffW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(4),
      I1 => prevW(4),
      O => \deci_low.diffW[7]_i_5_n_0\
    );
\deci_low.diffW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(3),
      I1 => prevW(3),
      O => \deci_low.diffW[7]_i_6_n_0\
    );
\deci_low.diffW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(2),
      I1 => prevW(2),
      O => \deci_low.diffW[7]_i_7_n_0\
    );
\deci_low.diffW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(1),
      I1 => prevW(1),
      O => \deci_low.diffW[7]_i_8_n_0\
    );
\deci_low.diffW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^phase_w\(0),
      I1 => prevW(0),
      O => \deci_low.diffW[7]_i_9_n_0\
    );
\deci_low.diffW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(0),
      Q => diffW(0),
      R => '0'
    );
\deci_low.diffW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(10),
      Q => diffW(10),
      R => '0'
    );
\deci_low.diffW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(11),
      Q => diffW(11),
      R => '0'
    );
\deci_low.diffW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(12),
      Q => diffW(12),
      R => '0'
    );
\deci_low.diffW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(13),
      Q => diffW(13),
      R => '0'
    );
\deci_low.diffW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(14),
      Q => diffW(14),
      R => '0'
    );
\deci_low.diffW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(15),
      Q => diffW(15),
      R => '0'
    );
\deci_low.diffW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.diffW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \deci_low.diffW_reg[15]_i_1_n_0\,
      CO(6) => \deci_low.diffW_reg[15]_i_1_n_1\,
      CO(5) => \deci_low.diffW_reg[15]_i_1_n_2\,
      CO(4) => \deci_low.diffW_reg[15]_i_1_n_3\,
      CO(3) => \deci_low.diffW_reg[15]_i_1_n_4\,
      CO(2) => \deci_low.diffW_reg[15]_i_1_n_5\,
      CO(1) => \deci_low.diffW_reg[15]_i_1_n_6\,
      CO(0) => \deci_low.diffW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => \^phase_w\(15 downto 8),
      O(7 downto 0) => diffW00_out(15 downto 8),
      S(7) => \deci_low.diffW[15]_i_2_n_0\,
      S(6) => \deci_low.diffW[15]_i_3_n_0\,
      S(5) => \deci_low.diffW[15]_i_4_n_0\,
      S(4) => \deci_low.diffW[15]_i_5_n_0\,
      S(3) => \deci_low.diffW[15]_i_6_n_0\,
      S(2) => \deci_low.diffW[15]_i_7_n_0\,
      S(1) => \deci_low.diffW[15]_i_8_n_0\,
      S(0) => \deci_low.diffW[15]_i_9_n_0\
    );
\deci_low.diffW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(16),
      Q => diffW(16),
      R => '0'
    );
\deci_low.diffW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(17),
      Q => diffW(17),
      R => '0'
    );
\deci_low.diffW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(18),
      Q => diffW(18),
      R => '0'
    );
\deci_low.diffW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(19),
      Q => diffW(19),
      R => '0'
    );
\deci_low.diffW_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.diffW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_deci_low.diffW_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \deci_low.diffW_reg[19]_i_1_n_5\,
      CO(1) => \deci_low.diffW_reg[19]_i_1_n_6\,
      CO(0) => \deci_low.diffW_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => \^phase_w\(18 downto 16),
      O(7 downto 4) => \NLW_deci_low.diffW_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => diffW00_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \deci_low.diffW[19]_i_2_n_0\,
      S(2) => \deci_low.diffW[19]_i_3_n_0\,
      S(1) => \deci_low.diffW[19]_i_4_n_0\,
      S(0) => \deci_low.diffW[19]_i_5_n_0\
    );
\deci_low.diffW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(1),
      Q => diffW(1),
      R => '0'
    );
\deci_low.diffW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(2),
      Q => diffW(2),
      R => '0'
    );
\deci_low.diffW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(3),
      Q => diffW(3),
      R => '0'
    );
\deci_low.diffW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(4),
      Q => diffW(4),
      R => '0'
    );
\deci_low.diffW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(5),
      Q => diffW(5),
      R => '0'
    );
\deci_low.diffW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(6),
      Q => diffW(6),
      R => '0'
    );
\deci_low.diffW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(7),
      Q => diffW(7),
      R => '0'
    );
\deci_low.diffW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \deci_low.diffW_reg[7]_i_1_n_0\,
      CO(6) => \deci_low.diffW_reg[7]_i_1_n_1\,
      CO(5) => \deci_low.diffW_reg[7]_i_1_n_2\,
      CO(4) => \deci_low.diffW_reg[7]_i_1_n_3\,
      CO(3) => \deci_low.diffW_reg[7]_i_1_n_4\,
      CO(2) => \deci_low.diffW_reg[7]_i_1_n_5\,
      CO(1) => \deci_low.diffW_reg[7]_i_1_n_6\,
      CO(0) => \deci_low.diffW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \^phase_w\(7 downto 0),
      O(7 downto 0) => diffW00_out(7 downto 0),
      S(7) => \deci_low.diffW[7]_i_2_n_0\,
      S(6) => \deci_low.diffW[7]_i_3_n_0\,
      S(5) => \deci_low.diffW[7]_i_4_n_0\,
      S(4) => \deci_low.diffW[7]_i_5_n_0\,
      S(3) => \deci_low.diffW[7]_i_6_n_0\,
      S(2) => \deci_low.diffW[7]_i_7_n_0\,
      S(1) => \deci_low.diffW[7]_i_8_n_0\,
      S(0) => \deci_low.diffW[7]_i_9_n_0\
    );
\deci_low.diffW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(8),
      Q => diffW(8),
      R => '0'
    );
\deci_low.diffW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => diffW00_out(9),
      Q => diffW(9),
      R => '0'
    );
\deci_low.env_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(0),
      Q => \^env_e\(0),
      R => '0'
    );
\deci_low.env_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(10),
      Q => \^env_e\(10),
      R => '0'
    );
\deci_low.env_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(11),
      Q => \^env_e\(11),
      R => '0'
    );
\deci_low.env_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(12),
      Q => \^env_e\(12),
      R => '0'
    );
\deci_low.env_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(13),
      Q => \^env_e\(13),
      R => '0'
    );
\deci_low.env_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(14),
      Q => \^env_e\(14),
      R => '0'
    );
\deci_low.env_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(15),
      Q => \^env_e\(15),
      R => '0'
    );
\deci_low.env_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(1),
      Q => \^env_e\(1),
      R => '0'
    );
\deci_low.env_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(2),
      Q => \^env_e\(2),
      R => '0'
    );
\deci_low.env_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(3),
      Q => \^env_e\(3),
      R => '0'
    );
\deci_low.env_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(4),
      Q => \^env_e\(4),
      R => '0'
    );
\deci_low.env_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(5),
      Q => \^env_e\(5),
      R => '0'
    );
\deci_low.env_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(6),
      Q => \^env_e\(6),
      R => '0'
    );
\deci_low.env_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(7),
      Q => \^env_e\(7),
      R => '0'
    );
\deci_low.env_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(8),
      Q => \^env_e\(8),
      R => '0'
    );
\deci_low.env_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envE(9),
      Q => \^env_e\(9),
      R => '0'
    );
\deci_low.env_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(0),
      Q => \^env_n\(0),
      R => '0'
    );
\deci_low.env_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(10),
      Q => \^env_n\(10),
      R => '0'
    );
\deci_low.env_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(11),
      Q => \^env_n\(11),
      R => '0'
    );
\deci_low.env_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(12),
      Q => \^env_n\(12),
      R => '0'
    );
\deci_low.env_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(13),
      Q => \^env_n\(13),
      R => '0'
    );
\deci_low.env_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(14),
      Q => \^env_n\(14),
      R => '0'
    );
\deci_low.env_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(15),
      Q => \^env_n\(15),
      R => '0'
    );
\deci_low.env_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(1),
      Q => \^env_n\(1),
      R => '0'
    );
\deci_low.env_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(2),
      Q => \^env_n\(2),
      R => '0'
    );
\deci_low.env_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(3),
      Q => \^env_n\(3),
      R => '0'
    );
\deci_low.env_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(4),
      Q => \^env_n\(4),
      R => '0'
    );
\deci_low.env_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(5),
      Q => \^env_n\(5),
      R => '0'
    );
\deci_low.env_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(6),
      Q => \^env_n\(6),
      R => '0'
    );
\deci_low.env_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(7),
      Q => \^env_n\(7),
      R => '0'
    );
\deci_low.env_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(8),
      Q => \^env_n\(8),
      R => '0'
    );
\deci_low.env_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envN(9),
      Q => \^env_n\(9),
      R => '0'
    );
\deci_low.env_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(0),
      Q => \^env_w\(0),
      R => '0'
    );
\deci_low.env_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(10),
      Q => \^env_w\(10),
      R => '0'
    );
\deci_low.env_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(11),
      Q => \^env_w\(11),
      R => '0'
    );
\deci_low.env_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(12),
      Q => \^env_w\(12),
      R => '0'
    );
\deci_low.env_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(13),
      Q => \^env_w\(13),
      R => '0'
    );
\deci_low.env_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(14),
      Q => \^env_w\(14),
      R => '0'
    );
\deci_low.env_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(15),
      Q => \^env_w\(15),
      R => '0'
    );
\deci_low.env_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(1),
      Q => \^env_w\(1),
      R => '0'
    );
\deci_low.env_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(2),
      Q => \^env_w\(2),
      R => '0'
    );
\deci_low.env_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(3),
      Q => \^env_w\(3),
      R => '0'
    );
\deci_low.env_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(4),
      Q => \^env_w\(4),
      R => '0'
    );
\deci_low.env_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(5),
      Q => \^env_w\(5),
      R => '0'
    );
\deci_low.env_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(6),
      Q => \^env_w\(6),
      R => '0'
    );
\deci_low.env_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(7),
      Q => \^env_w\(7),
      R => '0'
    );
\deci_low.env_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(8),
      Q => \^env_w\(8),
      R => '0'
    );
\deci_low.env_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => envW(9),
      Q => \^env_w\(9),
      R => '0'
    );
\deci_low.freq[27]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mul,
      O => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(20),
      Q => \^freq\(0),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(30),
      Q => \^freq\(10),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(31),
      Q => \^freq\(11),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(32),
      Q => \^freq\(12),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(33),
      Q => \^freq\(13),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(34),
      Q => \^freq\(14),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(35),
      Q => \^freq\(15),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(36),
      Q => \^freq\(16),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(37),
      Q => \^freq\(17),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(38),
      Q => \^freq\(18),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(39),
      Q => \^freq\(19),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(21),
      Q => \^freq\(1),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(40),
      Q => \^freq\(20),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(41),
      Q => \^freq\(21),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(42),
      Q => \^freq\(22),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(43),
      Q => \^freq\(23),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(44),
      Q => \^freq\(24),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(45),
      Q => \^freq\(25),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(46),
      Q => \^freq\(26),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(47),
      Q => \^freq\(27),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(22),
      Q => \^freq\(2),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(23),
      Q => \^freq\(3),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(24),
      Q => \^freq\(4),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(25),
      Q => \^freq\(5),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(26),
      Q => \^freq\(6),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(27),
      Q => \^freq\(7),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(28),
      Q => \^freq\(8),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.freq_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp(29),
      Q => \^freq\(9),
      R => \deci_low.freq[27]_i_1_n_0\
    );
\deci_low.mul_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => validN,
      I1 => validE,
      I2 => validW,
      O => \deci_low.mul_i_1_n_0\
    );
\deci_low.mul_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mul_i_1_n_0\,
      Q => mul,
      R => '0'
    );
\deci_low.phase_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(0),
      Q => \^phase_e\(0),
      R => '0'
    );
\deci_low.phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(10),
      Q => \^phase_e\(10),
      R => '0'
    );
\deci_low.phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(11),
      Q => \^phase_e\(11),
      R => '0'
    );
\deci_low.phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(12),
      Q => \^phase_e\(12),
      R => '0'
    );
\deci_low.phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(13),
      Q => \^phase_e\(13),
      R => '0'
    );
\deci_low.phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(14),
      Q => \^phase_e\(14),
      R => '0'
    );
\deci_low.phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(15),
      Q => \^phase_e\(15),
      R => '0'
    );
\deci_low.phase_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(16),
      Q => \^phase_e\(16),
      R => '0'
    );
\deci_low.phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(17),
      Q => \^phase_e\(17),
      R => '0'
    );
\deci_low.phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(18),
      Q => \^phase_e\(18),
      R => '0'
    );
\deci_low.phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(19),
      Q => \^phase_e\(19),
      R => '0'
    );
\deci_low.phase_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(1),
      Q => \^phase_e\(1),
      R => '0'
    );
\deci_low.phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(2),
      Q => \^phase_e\(2),
      R => '0'
    );
\deci_low.phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(3),
      Q => \^phase_e\(3),
      R => '0'
    );
\deci_low.phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(4),
      Q => \^phase_e\(4),
      R => '0'
    );
\deci_low.phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(5),
      Q => \^phase_e\(5),
      R => '0'
    );
\deci_low.phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(6),
      Q => \^phase_e\(6),
      R => '0'
    );
\deci_low.phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(7),
      Q => \^phase_e\(7),
      R => '0'
    );
\deci_low.phase_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(8),
      Q => \^phase_e\(8),
      R => '0'
    );
\deci_low.phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseE(9),
      Q => \^phase_e\(9),
      R => '0'
    );
\deci_low.phase_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(0),
      Q => \^phase_n\(0),
      R => '0'
    );
\deci_low.phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(10),
      Q => \^phase_n\(10),
      R => '0'
    );
\deci_low.phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(11),
      Q => \^phase_n\(11),
      R => '0'
    );
\deci_low.phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(12),
      Q => \^phase_n\(12),
      R => '0'
    );
\deci_low.phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(13),
      Q => \^phase_n\(13),
      R => '0'
    );
\deci_low.phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(14),
      Q => \^phase_n\(14),
      R => '0'
    );
\deci_low.phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(15),
      Q => \^phase_n\(15),
      R => '0'
    );
\deci_low.phase_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(16),
      Q => \^phase_n\(16),
      R => '0'
    );
\deci_low.phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(17),
      Q => \^phase_n\(17),
      R => '0'
    );
\deci_low.phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(18),
      Q => \^phase_n\(18),
      R => '0'
    );
\deci_low.phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(19),
      Q => \^phase_n\(19),
      R => '0'
    );
\deci_low.phase_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(1),
      Q => \^phase_n\(1),
      R => '0'
    );
\deci_low.phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(2),
      Q => \^phase_n\(2),
      R => '0'
    );
\deci_low.phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(3),
      Q => \^phase_n\(3),
      R => '0'
    );
\deci_low.phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(4),
      Q => \^phase_n\(4),
      R => '0'
    );
\deci_low.phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(5),
      Q => \^phase_n\(5),
      R => '0'
    );
\deci_low.phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(6),
      Q => \^phase_n\(6),
      R => '0'
    );
\deci_low.phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(7),
      Q => \^phase_n\(7),
      R => '0'
    );
\deci_low.phase_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(8),
      Q => \^phase_n\(8),
      R => '0'
    );
\deci_low.phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseN(9),
      Q => \^phase_n\(9),
      R => '0'
    );
\deci_low.phase_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(0),
      Q => \^phase_w\(0),
      R => '0'
    );
\deci_low.phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(10),
      Q => \^phase_w\(10),
      R => '0'
    );
\deci_low.phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(11),
      Q => \^phase_w\(11),
      R => '0'
    );
\deci_low.phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(12),
      Q => \^phase_w\(12),
      R => '0'
    );
\deci_low.phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(13),
      Q => \^phase_w\(13),
      R => '0'
    );
\deci_low.phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(14),
      Q => \^phase_w\(14),
      R => '0'
    );
\deci_low.phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(15),
      Q => \^phase_w\(15),
      R => '0'
    );
\deci_low.phase_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(16),
      Q => \^phase_w\(16),
      R => '0'
    );
\deci_low.phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(17),
      Q => \^phase_w\(17),
      R => '0'
    );
\deci_low.phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(18),
      Q => \^phase_w\(18),
      R => '0'
    );
\deci_low.phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(19),
      Q => \^phase_w\(19),
      R => '0'
    );
\deci_low.phase_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(1),
      Q => \^phase_w\(1),
      R => '0'
    );
\deci_low.phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(2),
      Q => \^phase_w\(2),
      R => '0'
    );
\deci_low.phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(3),
      Q => \^phase_w\(3),
      R => '0'
    );
\deci_low.phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(4),
      Q => \^phase_w\(4),
      R => '0'
    );
\deci_low.phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(5),
      Q => \^phase_w\(5),
      R => '0'
    );
\deci_low.phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(6),
      Q => \^phase_w\(6),
      R => '0'
    );
\deci_low.phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(7),
      Q => \^phase_w\(7),
      R => '0'
    );
\deci_low.phase_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(8),
      Q => \^phase_w\(8),
      R => '0'
    );
\deci_low.phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mul,
      D => phaseW(9),
      Q => \^phase_w\(9),
      R => '0'
    );
\deci_low.phase_sum[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(14),
      I1 => diffW(14),
      I2 => diffE(14),
      I3 => diffW(15),
      I4 => diffE(15),
      I5 => diffN(15),
      O => \deci_low.phase_sum[15]_i_10_n_0\
    );
\deci_low.phase_sum[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(13),
      I1 => diffW(13),
      I2 => diffE(13),
      I3 => diffW(14),
      I4 => diffE(14),
      I5 => diffN(14),
      O => \deci_low.phase_sum[15]_i_11_n_0\
    );
\deci_low.phase_sum[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(12),
      I1 => diffW(12),
      I2 => diffE(12),
      I3 => diffW(13),
      I4 => diffE(13),
      I5 => diffN(13),
      O => \deci_low.phase_sum[15]_i_12_n_0\
    );
\deci_low.phase_sum[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(11),
      I1 => diffW(11),
      I2 => diffE(11),
      I3 => diffW(12),
      I4 => diffE(12),
      I5 => diffN(12),
      O => \deci_low.phase_sum[15]_i_13_n_0\
    );
\deci_low.phase_sum[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(10),
      I1 => diffW(10),
      I2 => diffE(10),
      I3 => diffW(11),
      I4 => diffE(11),
      I5 => diffN(11),
      O => \deci_low.phase_sum[15]_i_14_n_0\
    );
\deci_low.phase_sum[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(9),
      I1 => diffW(9),
      I2 => diffE(9),
      I3 => diffW(10),
      I4 => diffE(10),
      I5 => diffN(10),
      O => \deci_low.phase_sum[15]_i_15_n_0\
    );
\deci_low.phase_sum[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(8),
      I1 => diffW(8),
      I2 => diffE(8),
      I3 => diffW(9),
      I4 => diffE(9),
      I5 => diffN(9),
      O => \deci_low.phase_sum[15]_i_16_n_0\
    );
\deci_low.phase_sum[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(7),
      I1 => diffW(7),
      I2 => diffE(7),
      I3 => diffW(8),
      I4 => diffE(8),
      I5 => diffN(8),
      O => \deci_low.phase_sum[15]_i_17_n_0\
    );
\deci_low.phase_sum[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(14),
      I1 => diffW(14),
      I2 => diffN(14),
      O => \deci_low.phase_sum[15]_i_2_n_0\
    );
\deci_low.phase_sum[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(13),
      I1 => diffW(13),
      I2 => diffN(13),
      O => \deci_low.phase_sum[15]_i_3_n_0\
    );
\deci_low.phase_sum[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(12),
      I1 => diffW(12),
      I2 => diffN(12),
      O => \deci_low.phase_sum[15]_i_4_n_0\
    );
\deci_low.phase_sum[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(11),
      I1 => diffW(11),
      I2 => diffN(11),
      O => \deci_low.phase_sum[15]_i_5_n_0\
    );
\deci_low.phase_sum[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(10),
      I1 => diffW(10),
      I2 => diffN(10),
      O => \deci_low.phase_sum[15]_i_6_n_0\
    );
\deci_low.phase_sum[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(9),
      I1 => diffW(9),
      I2 => diffN(9),
      O => \deci_low.phase_sum[15]_i_7_n_0\
    );
\deci_low.phase_sum[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(8),
      I1 => diffW(8),
      I2 => diffN(8),
      O => \deci_low.phase_sum[15]_i_8_n_0\
    );
\deci_low.phase_sum[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(7),
      I1 => diffW(7),
      I2 => diffN(7),
      O => \deci_low.phase_sum[15]_i_9_n_0\
    );
\deci_low.phase_sum[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => validW,
      I1 => validE,
      I2 => validN,
      O => \p_0_in__0\
    );
\deci_low.phase_sum[21]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(16),
      I1 => diffW(16),
      I2 => diffE(16),
      I3 => diffW(17),
      I4 => diffE(17),
      I5 => diffN(17),
      O => \deci_low.phase_sum[21]_i_10_n_0\
    );
\deci_low.phase_sum[21]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(15),
      I1 => diffW(15),
      I2 => diffE(15),
      I3 => diffW(16),
      I4 => diffE(16),
      I5 => diffN(16),
      O => \deci_low.phase_sum[21]_i_11_n_0\
    );
\deci_low.phase_sum[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(18),
      I1 => diffW(18),
      I2 => diffN(18),
      O => \deci_low.phase_sum[21]_i_3_n_0\
    );
\deci_low.phase_sum[21]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(17),
      I1 => diffW(17),
      I2 => diffN(17),
      O => \deci_low.phase_sum[21]_i_4_n_0\
    );
\deci_low.phase_sum[21]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(16),
      I1 => diffW(16),
      I2 => diffN(16),
      O => \deci_low.phase_sum[21]_i_5_n_0\
    );
\deci_low.phase_sum[21]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(15),
      I1 => diffW(15),
      I2 => diffN(15),
      O => \deci_low.phase_sum[21]_i_6_n_0\
    );
\deci_low.phase_sum[21]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(19),
      I1 => diffW(19),
      I2 => diffN(19),
      O => \deci_low.phase_sum[21]_i_7_n_0\
    );
\deci_low.phase_sum[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(18),
      I1 => diffW(18),
      I2 => diffE(18),
      I3 => diffW(19),
      I4 => diffE(19),
      I5 => diffN(19),
      O => \deci_low.phase_sum[21]_i_8_n_0\
    );
\deci_low.phase_sum[21]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(17),
      I1 => diffW(17),
      I2 => diffE(17),
      I3 => diffW(18),
      I4 => diffE(18),
      I5 => diffN(18),
      O => \deci_low.phase_sum[21]_i_9_n_0\
    );
\deci_low.phase_sum[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(5),
      I1 => diffW(5),
      I2 => diffE(5),
      I3 => diffW(6),
      I4 => diffE(6),
      I5 => diffN(6),
      O => \deci_low.phase_sum[7]_i_10_n_0\
    );
\deci_low.phase_sum[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(4),
      I1 => diffW(4),
      I2 => diffE(4),
      I3 => diffW(5),
      I4 => diffE(5),
      I5 => diffN(5),
      O => \deci_low.phase_sum[7]_i_11_n_0\
    );
\deci_low.phase_sum[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(3),
      I1 => diffW(3),
      I2 => diffE(3),
      I3 => diffW(4),
      I4 => diffE(4),
      I5 => diffN(4),
      O => \deci_low.phase_sum[7]_i_12_n_0\
    );
\deci_low.phase_sum[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(2),
      I1 => diffW(2),
      I2 => diffE(2),
      I3 => diffW(3),
      I4 => diffE(3),
      I5 => diffN(3),
      O => \deci_low.phase_sum[7]_i_13_n_0\
    );
\deci_low.phase_sum[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(1),
      I1 => diffW(1),
      I2 => diffE(1),
      I3 => diffW(2),
      I4 => diffE(2),
      I5 => diffN(2),
      O => \deci_low.phase_sum[7]_i_14_n_0\
    );
\deci_low.phase_sum[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(0),
      I1 => diffW(0),
      I2 => diffE(0),
      I3 => diffW(1),
      I4 => diffE(1),
      I5 => diffN(1),
      O => \deci_low.phase_sum[7]_i_15_n_0\
    );
\deci_low.phase_sum[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => diffN(0),
      I1 => diffE(0),
      I2 => diffW(0),
      O => \deci_low.phase_sum[7]_i_16_n_0\
    );
\deci_low.phase_sum[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(6),
      I1 => diffW(6),
      I2 => diffN(6),
      O => \deci_low.phase_sum[7]_i_2_n_0\
    );
\deci_low.phase_sum[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(5),
      I1 => diffW(5),
      I2 => diffN(5),
      O => \deci_low.phase_sum[7]_i_3_n_0\
    );
\deci_low.phase_sum[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(4),
      I1 => diffW(4),
      I2 => diffN(4),
      O => \deci_low.phase_sum[7]_i_4_n_0\
    );
\deci_low.phase_sum[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(3),
      I1 => diffW(3),
      I2 => diffN(3),
      O => \deci_low.phase_sum[7]_i_5_n_0\
    );
\deci_low.phase_sum[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(2),
      I1 => diffW(2),
      I2 => diffN(2),
      O => \deci_low.phase_sum[7]_i_6_n_0\
    );
\deci_low.phase_sum[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(1),
      I1 => diffW(1),
      I2 => diffN(1),
      O => \deci_low.phase_sum[7]_i_7_n_0\
    );
\deci_low.phase_sum[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => diffE(0),
      I1 => diffW(0),
      I2 => diffN(0),
      O => \deci_low.phase_sum[7]_i_8_n_0\
    );
\deci_low.phase_sum[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => diffN(6),
      I1 => diffW(6),
      I2 => diffE(6),
      I3 => diffW(7),
      I4 => diffE(7),
      I5 => diffN(7),
      O => \deci_low.phase_sum[7]_i_9_n_0\
    );
\deci_low.phase_sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(0),
      Q => phase_sum(0),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(10),
      Q => phase_sum(10),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(11),
      Q => phase_sum(11),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(12),
      Q => phase_sum(12),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(13),
      Q => phase_sum(13),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(14),
      Q => phase_sum(14),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(15),
      Q => phase_sum(15),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.phase_sum_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \deci_low.phase_sum_reg[15]_i_1_n_0\,
      CO(6) => \deci_low.phase_sum_reg[15]_i_1_n_1\,
      CO(5) => \deci_low.phase_sum_reg[15]_i_1_n_2\,
      CO(4) => \deci_low.phase_sum_reg[15]_i_1_n_3\,
      CO(3) => \deci_low.phase_sum_reg[15]_i_1_n_4\,
      CO(2) => \deci_low.phase_sum_reg[15]_i_1_n_5\,
      CO(1) => \deci_low.phase_sum_reg[15]_i_1_n_6\,
      CO(0) => \deci_low.phase_sum_reg[15]_i_1_n_7\,
      DI(7) => \deci_low.phase_sum[15]_i_2_n_0\,
      DI(6) => \deci_low.phase_sum[15]_i_3_n_0\,
      DI(5) => \deci_low.phase_sum[15]_i_4_n_0\,
      DI(4) => \deci_low.phase_sum[15]_i_5_n_0\,
      DI(3) => \deci_low.phase_sum[15]_i_6_n_0\,
      DI(2) => \deci_low.phase_sum[15]_i_7_n_0\,
      DI(1) => \deci_low.phase_sum[15]_i_8_n_0\,
      DI(0) => \deci_low.phase_sum[15]_i_9_n_0\,
      O(7 downto 0) => phase_sum0(15 downto 8),
      S(7) => \deci_low.phase_sum[15]_i_10_n_0\,
      S(6) => \deci_low.phase_sum[15]_i_11_n_0\,
      S(5) => \deci_low.phase_sum[15]_i_12_n_0\,
      S(4) => \deci_low.phase_sum[15]_i_13_n_0\,
      S(3) => \deci_low.phase_sum[15]_i_14_n_0\,
      S(2) => \deci_low.phase_sum[15]_i_15_n_0\,
      S(1) => \deci_low.phase_sum[15]_i_16_n_0\,
      S(0) => \deci_low.phase_sum[15]_i_17_n_0\
    );
\deci_low.phase_sum_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(16),
      Q => phase_sum(16),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(17),
      Q => phase_sum(17),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(18),
      Q => phase_sum(18),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(19),
      Q => phase_sum(19),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(1),
      Q => phase_sum(1),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(20),
      Q => phase_sum(20),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(21),
      Q => phase_sum(21),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[21]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.phase_sum_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_deci_low.phase_sum_reg[21]_i_2_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \deci_low.phase_sum_reg[21]_i_2_n_3\,
      CO(3) => \deci_low.phase_sum_reg[21]_i_2_n_4\,
      CO(2) => \deci_low.phase_sum_reg[21]_i_2_n_5\,
      CO(1) => \deci_low.phase_sum_reg[21]_i_2_n_6\,
      CO(0) => \deci_low.phase_sum_reg[21]_i_2_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \deci_low.phase_sum[21]_i_3_n_0\,
      DI(2) => \deci_low.phase_sum[21]_i_4_n_0\,
      DI(1) => \deci_low.phase_sum[21]_i_5_n_0\,
      DI(0) => \deci_low.phase_sum[21]_i_6_n_0\,
      O(7 downto 6) => \NLW_deci_low.phase_sum_reg[21]_i_2_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => phase_sum0(21 downto 16),
      S(7 downto 5) => B"000",
      S(4) => \deci_low.phase_sum[21]_i_7_n_0\,
      S(3) => \deci_low.phase_sum[21]_i_8_n_0\,
      S(2) => \deci_low.phase_sum[21]_i_9_n_0\,
      S(1) => \deci_low.phase_sum[21]_i_10_n_0\,
      S(0) => \deci_low.phase_sum[21]_i_11_n_0\
    );
\deci_low.phase_sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(2),
      Q => phase_sum(2),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(3),
      Q => phase_sum(3),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(4),
      Q => phase_sum(4),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(5),
      Q => phase_sum(5),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(6),
      Q => phase_sum(6),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(7),
      Q => phase_sum(7),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \deci_low.phase_sum_reg[7]_i_1_n_0\,
      CO(6) => \deci_low.phase_sum_reg[7]_i_1_n_1\,
      CO(5) => \deci_low.phase_sum_reg[7]_i_1_n_2\,
      CO(4) => \deci_low.phase_sum_reg[7]_i_1_n_3\,
      CO(3) => \deci_low.phase_sum_reg[7]_i_1_n_4\,
      CO(2) => \deci_low.phase_sum_reg[7]_i_1_n_5\,
      CO(1) => \deci_low.phase_sum_reg[7]_i_1_n_6\,
      CO(0) => \deci_low.phase_sum_reg[7]_i_1_n_7\,
      DI(7) => \deci_low.phase_sum[7]_i_2_n_0\,
      DI(6) => \deci_low.phase_sum[7]_i_3_n_0\,
      DI(5) => \deci_low.phase_sum[7]_i_4_n_0\,
      DI(4) => \deci_low.phase_sum[7]_i_5_n_0\,
      DI(3) => \deci_low.phase_sum[7]_i_6_n_0\,
      DI(2) => \deci_low.phase_sum[7]_i_7_n_0\,
      DI(1) => \deci_low.phase_sum[7]_i_8_n_0\,
      DI(0) => '0',
      O(7 downto 0) => phase_sum0(7 downto 0),
      S(7) => \deci_low.phase_sum[7]_i_9_n_0\,
      S(6) => \deci_low.phase_sum[7]_i_10_n_0\,
      S(5) => \deci_low.phase_sum[7]_i_11_n_0\,
      S(4) => \deci_low.phase_sum[7]_i_12_n_0\,
      S(3) => \deci_low.phase_sum[7]_i_13_n_0\,
      S(2) => \deci_low.phase_sum[7]_i_14_n_0\,
      S(1) => \deci_low.phase_sum[7]_i_15_n_0\,
      S(0) => \deci_low.phase_sum[7]_i_16_n_0\
    );
\deci_low.phase_sum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(8),
      Q => phase_sum(8),
      R => \p_0_in__0\
    );
\deci_low.phase_sum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_sum0(9),
      Q => phase_sum(9),
      R => \p_0_in__0\
    );
\deci_low.prevE[19]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_valid,
      O => \counter__0\(0)
    );
\deci_low.prevE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(0),
      Q => prevE(0),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(10),
      Q => prevE(10),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(11),
      Q => prevE(11),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(12),
      Q => prevE(12),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(13),
      Q => prevE(13),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(14),
      Q => prevE(14),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(15),
      Q => prevE(15),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(16),
      Q => prevE(16),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(17),
      Q => prevE(17),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(18),
      Q => prevE(18),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(19),
      Q => prevE(19),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(1),
      Q => prevE(1),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(2),
      Q => prevE(2),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(3),
      Q => prevE(3),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(4),
      Q => prevE(4),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(5),
      Q => prevE(5),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(6),
      Q => prevE(6),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(7),
      Q => prevE(7),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(8),
      Q => prevE(8),
      R => \counter__0\(0)
    );
\deci_low.prevE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_e\(9),
      Q => prevE(9),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(0),
      Q => prevN(0),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(10),
      Q => prevN(10),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(11),
      Q => prevN(11),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(12),
      Q => prevN(12),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(13),
      Q => prevN(13),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(14),
      Q => prevN(14),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(15),
      Q => prevN(15),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(16),
      Q => prevN(16),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(17),
      Q => prevN(17),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(18),
      Q => prevN(18),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(19),
      Q => prevN(19),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(1),
      Q => prevN(1),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(2),
      Q => prevN(2),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(3),
      Q => prevN(3),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(4),
      Q => prevN(4),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(5),
      Q => prevN(5),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(6),
      Q => prevN(6),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(7),
      Q => prevN(7),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(8),
      Q => prevN(8),
      R => \counter__0\(0)
    );
\deci_low.prevN_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_n\(9),
      Q => prevN(9),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(0),
      Q => prevW(0),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(10),
      Q => prevW(10),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(11),
      Q => prevW(11),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(12),
      Q => prevW(12),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(13),
      Q => prevW(13),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(14),
      Q => prevW(14),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(15),
      Q => prevW(15),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(16),
      Q => prevW(16),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(17),
      Q => prevW(17),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(18),
      Q => prevW(18),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(19),
      Q => prevW(19),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(1),
      Q => prevW(1),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(2),
      Q => prevW(2),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(3),
      Q => prevW(3),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(4),
      Q => prevW(4),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(5),
      Q => prevW(5),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(6),
      Q => prevW(6),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(7),
      Q => prevW(7),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(8),
      Q => prevW(8),
      R => \counter__0\(0)
    );
\deci_low.prevW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^phase_w\(9),
      Q => prevW(9),
      R => \counter__0\(0)
    );
\deci_low.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mul,
      Q => \^valid\,
      R => '0'
    );
doa_E_i: entity work.\ps_doa_low_0_0_morlet_to_phase_env__xdcDup__2\
     port map (
      active => fifo_valid,
      clk => clk,
      env(15 downto 0) => envE(15 downto 0),
      im(23 downto 0) => fir_im_E(38 downto 15),
      phase(19 downto 0) => phaseE(19 downto 0),
      re(23 downto 0) => fir_re_E(38 downto 15),
      valid => validE
    );
doa_N_i: entity work.\ps_doa_low_0_0_morlet_to_phase_env__xdcDup__1\
     port map (
      active => fifo_valid,
      clk => clk,
      env(15 downto 0) => envN(15 downto 0),
      im(23 downto 0) => fir_im_N(38 downto 15),
      phase(19 downto 0) => phaseN(19 downto 0),
      re(23 downto 0) => fir_re_N(38 downto 15),
      valid => validN
    );
doa_W_i: entity work.ps_doa_low_0_0_morlet_to_phase_env
     port map (
      active => fifo_valid,
      clk => clk,
      env(15 downto 0) => envW(15 downto 0),
      im(23 downto 0) => fir_im_W(38 downto 15),
      phase(19 downto 0) => phaseW(19 downto 0),
      re(23 downto 0) => fir_re_W(38 downto 15),
      valid => validW
    );
doa_freq: component ps_doa_low_0_0_mult_s500
     port map (
      A(21 downto 0) => phase_sum(21 downto 0),
      CLK => clk,
      P(49 downto 48) => NLW_doa_freq_P_UNCONNECTED(49 downto 48),
      P(47 downto 20) => fp(47 downto 20),
      P(19 downto 0) => NLW_doa_freq_P_UNCONNECTED(19 downto 0)
    );
fir_doa_low_im_E_i: component ps_doa_low_0_0_fir_doa_low_im
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_E(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_low_im_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => E(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_im_N_i: component ps_doa_low_0_0_fir_doa_low_im
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_N(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_low_im_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => N(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_im_W_i: component ps_doa_low_0_0_fir_doa_low_im_HD3
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_W(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_low_im_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => W(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_re_E_i: component ps_doa_low_0_0_fir_doa_low_re
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_E(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_low_re_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => E(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_re_N_i: component ps_doa_low_0_0_fir_doa_low_re
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_N(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_low_re_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => N(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_re_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_re_N_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => fir_doa_low_re_N_i_i_1_n_0
    );
fir_doa_low_re_W_i: component ps_doa_low_0_0_fir_doa_low_re_HD4
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_W(39 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_low_re_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => W(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^freq\(31)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^freq\(30)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^freq\(29)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^freq\(28)
    );
ila_0_i: component ps_doa_low_0_0_ila_0
     port map (
      clk => clk,
      probe0(0) => fifo_valid,
      probe1(0) => \^valid\,
      probe10(15 downto 0) => fir_re_E(38 downto 23),
      probe11(15 downto 0) => fir_im_E(38 downto 23),
      probe12(15 downto 0) => \^env_e\(15 downto 0),
      probe13(19 downto 0) => \^phase_e\(19 downto 0),
      probe14(15 downto 0) => W(15 downto 0),
      probe15(15 downto 0) => fir_re_W(38 downto 23),
      probe16(15 downto 0) => fir_im_W(38 downto 23),
      probe17(15 downto 0) => \^env_w\(15 downto 0),
      probe18(19 downto 0) => \^phase_w\(19 downto 0),
      probe2(15 downto 0) => counter(15 downto 0),
      probe3(31 downto 0) => \^freq\(31 downto 0),
      probe4(15 downto 0) => N(15 downto 0),
      probe5(15 downto 0) => fir_re_N(38 downto 23),
      probe6(15 downto 0) => fir_im_N(38 downto 23),
      probe7(15 downto 0) => \^env_n\(15 downto 0),
      probe8(19 downto 0) => \^phase_n\(19 downto 0),
      probe9(15 downto 0) => E(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_low_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_valid : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    valid : out STD_LOGIC;
    freq : out STD_LOGIC_VECTOR ( 31 downto 0 );
    env_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_W : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_doa_low_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_doa_low_0_0 : entity is "ps_doa_low_0_0,doa_low,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_doa_low_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_doa_low_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_doa_low_0_0 : entity is "doa_low,Vivado 2025.1";
end ps_doa_low_0_0;

architecture STRUCTURE of ps_doa_low_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_doa_low_0_0_doa_low
     port map (
      clk => clk,
      env_E(15 downto 0) => env_E(15 downto 0),
      env_N(15 downto 0) => env_N(15 downto 0),
      env_W(15 downto 0) => env_W(15 downto 0),
      fifo_data(47 downto 0) => fifo_data(47 downto 0),
      fifo_valid => fifo_valid,
      freq(31 downto 0) => freq(31 downto 0),
      phase_E(19 downto 0) => phase_E(19 downto 0),
      phase_N(19 downto 0) => phase_N(19 downto 0),
      phase_W(19 downto 0) => phase_W(19 downto 0),
      reset => reset,
      valid => valid
    );
end STRUCTURE;
