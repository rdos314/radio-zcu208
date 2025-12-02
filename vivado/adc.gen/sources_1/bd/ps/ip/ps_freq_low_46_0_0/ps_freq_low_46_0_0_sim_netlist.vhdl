-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Dec  1 23:26:52 2025
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
    clk : in STD_LOGIC;
    active : in STD_LOGIC;
    re : in STD_LOGIC_VECTOR ( 23 downto 0 );
    im : in STD_LOGIC_VECTOR ( 23 downto 0 );
    valid : out STD_LOGIC;
    env : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_freq_low_46_0_0_morlet_to_phase_env : entity is "morlet_to_phase_env";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_freq_low_46_0_0_morlet_to_phase_env : entity is "soft";
end ps_freq_low_46_0_0_morlet_to_phase_env;

architecture STRUCTURE of ps_freq_low_46_0_0_morlet_to_phase_env is
  component ila_1_HD5 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ila_1_HD5;
  component mult_16_16_HD6 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mult_16_16_HD6;
  component ps_freq_low_46_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_low_46_0_0_mult_16_16;
  component cordic_sqrt_16_HD7 is
  port (
    aclk : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component cordic_sqrt_16_HD7;
  component cordic_atan2_16_HD8 is
  port (
    aclk : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component cordic_atan2_16_HD8;
  signal atan2_valid : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of atan2_valid : signal is std.standard.true;
  signal \^env\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env\ : signal is std.standard.true;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of im2 : signal is std.standard.true;
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of lenv : signal is std.standard.true;
  signal lphase : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of lphase : signal is std.standard.true;
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
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_1_n_0\ : STD_LOGIC;
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of p2 : signal is std.standard.true;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^phase\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase\ : signal is std.standard.true;
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of re2 : signal is std.standard.true;
  signal sqrt_valid : STD_LOGIC;
  attribute MARK_DEBUG of sqrt_valid : signal is std.standard.true;
  signal \^valid\ : STD_LOGIC;
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_1_i : label is "ila_1,ila,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ila_1_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ila_1_i : label is "ila,Vivado 2025.1";
  attribute KEEP : string;
  attribute KEEP of \morlet_to_phase_env.env_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[15]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[7]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[16]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[16]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[17]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[17]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[18]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[18]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[19]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[19]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[20]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[20]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[21]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[21]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[22]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[22]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[23]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[24]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[24]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[25]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[25]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[26]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[26]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[27]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[27]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[28]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[28]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[29]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[29]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[30]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[30]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[31]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[31]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[0]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[15]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[16]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[16]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[17]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[17]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[18]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[18]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[19]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[19]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[7]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.valid_reg\ : label is "yes";
  attribute CHECK_LICENSE_TYPE of mult_im_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings of mult_im_i : label is "yes";
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
  env(15 downto 0) <= \^env\(15 downto 0);
  phase(19 downto 0) <= \^phase\(19 downto 0);
  valid <= \^valid\;
ila_1_i: component ila_1_HD5
     port map (
      clk => clk,
      probe0(0) => active,
      probe1(23 downto 0) => re(23 downto 0),
      probe10(15 downto 0) => \^env\(15 downto 0),
      probe11(19 downto 0) => \^phase\(19 downto 0),
      probe12(0) => \^valid\,
      probe2(23 downto 0) => im(23 downto 0),
      probe3(31 downto 0) => re2(31 downto 0),
      probe4(31 downto 0) => im2(31 downto 0),
      probe5(31 downto 0) => p2(31 downto 0),
      probe6(0) => sqrt_valid,
      probe7(15 downto 0) => lenv(15 downto 0),
      probe8(23 downto 0) => lphase(23 downto 0),
      probe9(0) => atan2_valid
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(0),
      Q => \^env\(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(10),
      Q => \^env\(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(11),
      Q => \^env\(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(12),
      Q => \^env\(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(13),
      Q => \^env\(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(14),
      Q => \^env\(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(15),
      Q => \^env\(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(1),
      Q => \^env\(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(2),
      Q => \^env\(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(3),
      Q => \^env\(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(4),
      Q => \^env\(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(5),
      Q => \^env\(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(6),
      Q => \^env\(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(7),
      Q => \^env\(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(8),
      Q => \^env\(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(9),
      Q => \^env\(9),
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
      D => p_0_in1_in(0),
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(10),
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(11),
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(12),
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(13),
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(14),
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(15),
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
      O(7 downto 0) => p_0_in1_in(15 downto 8),
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
      D => p_0_in1_in(16),
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(17),
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(18),
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(19),
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(1),
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(20),
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(21),
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(22),
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(23),
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
      O(7 downto 0) => p_0_in1_in(23 downto 16),
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
      D => p_0_in1_in(24),
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(25),
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(26),
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(27),
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(28),
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(29),
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(2),
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(30),
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(31),
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
      O(7 downto 0) => p_0_in1_in(31 downto 24),
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
      D => p_0_in1_in(3),
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(4),
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(5),
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(6),
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(7),
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
      O(7 downto 0) => p_0_in1_in(7 downto 0),
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
      D => p_0_in1_in(8),
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(9),
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(0),
      Q => \^phase\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(10),
      Q => \^phase\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(11),
      Q => \^phase\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(12),
      Q => \^phase\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(13),
      Q => \^phase\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(14),
      Q => \^phase\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(15),
      Q => \^phase\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(16),
      Q => \^phase\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(17),
      Q => \^phase\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(18),
      Q => \^phase\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(19),
      Q => \^phase\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(1),
      Q => \^phase\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(2),
      Q => \^phase\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(3),
      Q => \^phase\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(4),
      Q => \^phase\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(5),
      Q => \^phase\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(6),
      Q => \^phase\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(7),
      Q => \^phase\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(8),
      Q => \^phase\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(9),
      Q => \^phase\(9),
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
      Q => \^valid\,
      R => '0'
    );
mult_im_i: component mult_16_16_HD6
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component cordic_sqrt_16_HD7
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => sqrt_valid,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component cordic_atan2_16_HD8
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 0) => lphase(23 downto 0),
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
entity \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ is
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
  attribute ORIG_REF_NAME of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ : entity is "morlet_to_phase_env";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ : entity is "soft";
end \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\;

architecture STRUCTURE of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ is
  component ps_freq_low_46_0_0_ila_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_freq_low_46_0_0_ila_1;
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
  signal atan2_valid : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of atan2_valid : signal is std.standard.true;
  signal \^env\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env\ : signal is std.standard.true;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of im2 : signal is std.standard.true;
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of lenv : signal is std.standard.true;
  signal lphase : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of lphase : signal is std.standard.true;
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
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_1_n_0\ : STD_LOGIC;
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of p2 : signal is std.standard.true;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^phase\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase\ : signal is std.standard.true;
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of re2 : signal is std.standard.true;
  signal sqrt_valid : STD_LOGIC;
  attribute MARK_DEBUG of sqrt_valid : signal is std.standard.true;
  signal \^valid\ : STD_LOGIC;
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_1_i : label is "ila_1,ila,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ila_1_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ila_1_i : label is "ila,Vivado 2025.1";
  attribute KEEP : string;
  attribute KEEP of \morlet_to_phase_env.env_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[15]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[7]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[16]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[16]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[17]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[17]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[18]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[18]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[19]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[19]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[20]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[20]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[21]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[21]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[22]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[22]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[23]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[24]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[24]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[25]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[25]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[26]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[26]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[27]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[27]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[28]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[28]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[29]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[29]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[30]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[30]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[31]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[31]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[0]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[15]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[16]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[16]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[17]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[17]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[18]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[18]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[19]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[19]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[7]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.valid_reg\ : label is "yes";
  attribute CHECK_LICENSE_TYPE of mult_im_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings of mult_im_i : label is "yes";
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
  env(15 downto 0) <= \^env\(15 downto 0);
  phase(19 downto 0) <= \^phase\(19 downto 0);
  valid <= \^valid\;
ila_1_i: component ps_freq_low_46_0_0_ila_1
     port map (
      clk => clk,
      probe0(0) => active,
      probe1(23 downto 0) => re(23 downto 0),
      probe10(15 downto 0) => \^env\(15 downto 0),
      probe11(19 downto 0) => \^phase\(19 downto 0),
      probe12(0) => \^valid\,
      probe2(23 downto 0) => im(23 downto 0),
      probe3(31 downto 0) => re2(31 downto 0),
      probe4(31 downto 0) => im2(31 downto 0),
      probe5(31 downto 0) => p2(31 downto 0),
      probe6(0) => sqrt_valid,
      probe7(15 downto 0) => lenv(15 downto 0),
      probe8(23 downto 0) => lphase(23 downto 0),
      probe9(0) => atan2_valid
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(0),
      Q => \^env\(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(10),
      Q => \^env\(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(11),
      Q => \^env\(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(12),
      Q => \^env\(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(13),
      Q => \^env\(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(14),
      Q => \^env\(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(15),
      Q => \^env\(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(1),
      Q => \^env\(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(2),
      Q => \^env\(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(3),
      Q => \^env\(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(4),
      Q => \^env\(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(5),
      Q => \^env\(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(6),
      Q => \^env\(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(7),
      Q => \^env\(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(8),
      Q => \^env\(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(9),
      Q => \^env\(9),
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
      D => p_0_in1_in(0),
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(10),
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(11),
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(12),
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(13),
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(14),
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(15),
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
      O(7 downto 0) => p_0_in1_in(15 downto 8),
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
      D => p_0_in1_in(16),
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(17),
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(18),
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(19),
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(1),
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(20),
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(21),
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(22),
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(23),
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
      O(7 downto 0) => p_0_in1_in(23 downto 16),
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
      D => p_0_in1_in(24),
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(25),
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(26),
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(27),
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(28),
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(29),
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(2),
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(30),
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(31),
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
      O(7 downto 0) => p_0_in1_in(31 downto 24),
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
      D => p_0_in1_in(3),
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(4),
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(5),
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(6),
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(7),
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
      O(7 downto 0) => p_0_in1_in(7 downto 0),
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
      D => p_0_in1_in(8),
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(9),
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(0),
      Q => \^phase\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(10),
      Q => \^phase\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(11),
      Q => \^phase\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(12),
      Q => \^phase\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(13),
      Q => \^phase\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(14),
      Q => \^phase\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(15),
      Q => \^phase\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(16),
      Q => \^phase\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(17),
      Q => \^phase\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(18),
      Q => \^phase\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(19),
      Q => \^phase\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(1),
      Q => \^phase\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(2),
      Q => \^phase\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(3),
      Q => \^phase\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(4),
      Q => \^phase\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(5),
      Q => \^phase\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(6),
      Q => \^phase\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(7),
      Q => \^phase\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(8),
      Q => \^phase\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(9),
      Q => \^phase\(9),
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
      Q => \^valid\,
      R => '0'
    );
mult_im_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_freq_low_46_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => sqrt_valid,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_freq_low_46_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 0) => lphase(23 downto 0),
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
entity \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ is
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
  attribute ORIG_REF_NAME of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ : entity is "morlet_to_phase_env";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ : entity is "soft";
end \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\;

architecture STRUCTURE of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ is
  component ps_freq_low_46_0_0_ila_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_freq_low_46_0_0_ila_1;
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
  signal atan2_valid : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of atan2_valid : signal is std.standard.true;
  signal \^env\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env\ : signal is std.standard.true;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of im2 : signal is std.standard.true;
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of lenv : signal is std.standard.true;
  signal lphase : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of lphase : signal is std.standard.true;
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
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_1_n_0\ : STD_LOGIC;
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of p2 : signal is std.standard.true;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^phase\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase\ : signal is std.standard.true;
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of re2 : signal is std.standard.true;
  signal sqrt_valid : STD_LOGIC;
  attribute MARK_DEBUG of sqrt_valid : signal is std.standard.true;
  signal \^valid\ : STD_LOGIC;
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_1_i : label is "ila_1,ila,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ila_1_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ila_1_i : label is "ila,Vivado 2025.1";
  attribute KEEP : string;
  attribute KEEP of \morlet_to_phase_env.env_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[15]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[7]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.env_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.env_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[16]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[16]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[17]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[17]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[18]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[18]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[19]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[19]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[20]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[20]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[21]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[21]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[22]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[22]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[23]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[24]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[24]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[25]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[25]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[26]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[26]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[27]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[27]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[28]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[28]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[29]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[29]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[30]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[30]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[31]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[31]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute KEEP of \morlet_to_phase_env.p2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.p2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.p2_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[0]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[0]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[10]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[10]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[11]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[11]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[12]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[12]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[13]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[13]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[14]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[14]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[15]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[15]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[16]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[16]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[17]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[17]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[18]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[18]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[19]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[19]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[1]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[1]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[2]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[2]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[3]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[3]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[4]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[4]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[5]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[5]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[6]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[6]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[7]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[7]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[8]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[8]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.phase_reg[9]\ : label is "yes";
  attribute mark_debug_string of \morlet_to_phase_env.phase_reg[9]\ : label is "yes";
  attribute KEEP of \morlet_to_phase_env.valid_reg\ : label is "yes";
  attribute CHECK_LICENSE_TYPE of mult_im_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings of mult_im_i : label is "yes";
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
  env(15 downto 0) <= \^env\(15 downto 0);
  phase(19 downto 0) <= \^phase\(19 downto 0);
  valid <= \^valid\;
ila_1_i: component ps_freq_low_46_0_0_ila_1
     port map (
      clk => clk,
      probe0(0) => active,
      probe1(23 downto 0) => re(23 downto 0),
      probe10(15 downto 0) => \^env\(15 downto 0),
      probe11(19 downto 0) => \^phase\(19 downto 0),
      probe12(0) => \^valid\,
      probe2(23 downto 0) => im(23 downto 0),
      probe3(31 downto 0) => re2(31 downto 0),
      probe4(31 downto 0) => im2(31 downto 0),
      probe5(31 downto 0) => p2(31 downto 0),
      probe6(0) => sqrt_valid,
      probe7(15 downto 0) => lenv(15 downto 0),
      probe8(23 downto 0) => lphase(23 downto 0),
      probe9(0) => atan2_valid
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(0),
      Q => \^env\(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(10),
      Q => \^env\(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(11),
      Q => \^env\(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(12),
      Q => \^env\(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(13),
      Q => \^env\(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(14),
      Q => \^env\(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(15),
      Q => \^env\(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(1),
      Q => \^env\(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(2),
      Q => \^env\(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(3),
      Q => \^env\(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(4),
      Q => \^env\(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(5),
      Q => \^env\(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(6),
      Q => \^env\(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(7),
      Q => \^env\(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(8),
      Q => \^env\(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lenv(9),
      Q => \^env\(9),
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
      D => p_0_in1_in(0),
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(10),
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(11),
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(12),
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(13),
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(14),
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(15),
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
      O(7 downto 0) => p_0_in1_in(15 downto 8),
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
      D => p_0_in1_in(16),
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(17),
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(18),
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(19),
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(1),
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(20),
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(21),
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(22),
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(23),
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
      O(7 downto 0) => p_0_in1_in(23 downto 16),
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
      D => p_0_in1_in(24),
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(25),
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(26),
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(27),
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(28),
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(29),
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(2),
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(30),
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(31),
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
      O(7 downto 0) => p_0_in1_in(31 downto 24),
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
      D => p_0_in1_in(3),
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(4),
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(5),
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(6),
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(7),
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
      O(7 downto 0) => p_0_in1_in(7 downto 0),
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
      D => p_0_in1_in(8),
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => p_0_in1_in(9),
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(0),
      Q => \^phase\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(10),
      Q => \^phase\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(11),
      Q => \^phase\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(12),
      Q => \^phase\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(13),
      Q => \^phase\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(14),
      Q => \^phase\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(15),
      Q => \^phase\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(16),
      Q => \^phase\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(17),
      Q => \^phase\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(18),
      Q => \^phase\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(19),
      Q => \^phase\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(1),
      Q => \^phase\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(2),
      Q => \^phase\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(3),
      Q => \^phase\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(4),
      Q => \^phase\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(5),
      Q => \^phase\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(6),
      Q => \^phase\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(7),
      Q => \^phase\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(8),
      Q => \^phase\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => lphase(9),
      Q => \^phase\(9),
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
      Q => \^valid\,
      R => '0'
    );
mult_im_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => im(23 downto 8),
      B(15 downto 0) => im(23 downto 8),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => re(23 downto 8),
      B(15 downto 0) => re(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_freq_low_46_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => sqrt_valid,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => active
    );
tan2_i: component ps_freq_low_46_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 0) => lphase(23 downto 0),
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
entity ps_freq_low_46_0_0_freq_low_46 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_valid : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
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
    probe1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component ps_freq_low_46_0_0_ila_0;
  signal E : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of E : signal is std.standard.true;
  signal N : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of N : signal is std.standard.true;
  signal W : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of W : signal is std.standard.true;
  signal curr_delay : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute MARK_DEBUG of curr_delay : signal is std.standard.true;
  signal \deci_low.curr_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[1]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[1]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[2]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[2]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[4]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[5]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[5]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[5]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[5]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[6]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[6]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[6]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[6]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[6]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[6]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[6]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.curr_delay[6]_i_8_n_0\ : STD_LOGIC;
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
  signal \deci_low.morlet_active_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[5]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[5]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[6]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[6]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[6]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[6]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.start_delay[6]_i_5_n_0\ : STD_LOGIC;
  signal diffE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffE01_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffN : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffN0 : STD_LOGIC;
  signal diffN02_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diffW00_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal envE : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envE : signal is std.standard.true;
  signal envN : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envN : signal is std.standard.true;
  signal envW : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envW : signal is std.standard.true;
  signal fir_freq_low_re_N_i_i_1_n_0 : STD_LOGIC;
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
  signal morlet_active : STD_LOGIC;
  attribute MARK_DEBUG of morlet_active : signal is std.standard.true;
  signal phaseE : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phaseE : signal is std.standard.true;
  signal phaseN : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phaseN : signal is std.standard.true;
  signal phaseW : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phaseW : signal is std.standard.true;
  signal \^phase_e\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^phase_n\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^phase_w\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prevE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prevN : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prevW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal start_delay : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute MARK_DEBUG of start_delay : signal is std.standard.true;
  signal \^valid\ : STD_LOGIC;
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal validE : STD_LOGIC;
  attribute MARK_DEBUG of validE : signal is std.standard.true;
  signal validN : STD_LOGIC;
  attribute MARK_DEBUG of validN : signal is std.standard.true;
  signal validW : STD_LOGIC;
  attribute MARK_DEBUG of validW : signal is std.standard.true;
  signal \NLW_deci_low.diffE_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_deci_low.diffE_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_deci_low.diffN_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_deci_low.diffN_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_deci_low.diffW_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_deci_low.diffW_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_fir_freq_low_im_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
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
  attribute KEEP of \deci_low.curr_delay_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.curr_delay_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.curr_delay_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.curr_delay_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.curr_delay_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.curr_delay_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.curr_delay_reg[6]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deci_low.diffE_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffE_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffE_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffN_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffN_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffN_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffW_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.diffW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \deci_low.morlet_active_reg\ : label is "yes";
  attribute KEEP of \deci_low.start_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.start_delay_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.start_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.start_delay_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.start_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.start_delay_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.start_delay_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.start_delay_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.start_delay_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.start_delay_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.start_delay_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.start_delay_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.start_delay_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.start_delay_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.valid_reg\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fir_freq_low_im_E_i : label is "fir_doa_low_im,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fir_freq_low_im_E_i : label is "yes";
  attribute x_core_info : string;
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
  attribute KEEP_HIERARCHY of freq_E_i : label is "soft";
  attribute KEEP_HIERARCHY of freq_N_i : label is "soft";
  attribute KEEP_HIERARCHY of freq_W_i : label is "soft";
  attribute CHECK_LICENSE_TYPE of ila_0_i : label is "ila_0,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_0_i : label is "yes";
  attribute x_core_info of ila_0_i : label is "ila,Vivado 2025.1";
begin
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
\deci_low.curr_delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8822CBEE"
    )
        port map (
      I0 => fifo_valid,
      I1 => curr_delay(0),
      I2 => \deci_low.curr_delay[1]_i_3_n_0\,
      I3 => \deci_low.curr_delay[1]_i_2_n_0\,
      I4 => \deci_low.curr_delay[6]_i_4_n_0\,
      O => \deci_low.curr_delay[0]_i_1_n_0\
    );
\deci_low.curr_delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A20808BFEFC838"
    )
        port map (
      I0 => fifo_valid,
      I1 => curr_delay(0),
      I2 => \deci_low.curr_delay[1]_i_2_n_0\,
      I3 => \deci_low.curr_delay[1]_i_3_n_0\,
      I4 => curr_delay(1),
      I5 => \deci_low.curr_delay[6]_i_4_n_0\,
      O => \deci_low.curr_delay[1]_i_1_n_0\
    );
\deci_low.curr_delay[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => start_delay(0),
      I1 => start_delay(2),
      I2 => \deci_low.start_delay[5]_i_2_n_0\,
      O => \deci_low.curr_delay[1]_i_2_n_0\
    );
\deci_low.curr_delay[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => curr_delay(6),
      I1 => curr_delay(5),
      I2 => \deci_low.curr_delay[6]_i_8_n_0\,
      I3 => curr_delay(1),
      I4 => curr_delay(0),
      I5 => curr_delay(2),
      O => \deci_low.curr_delay[1]_i_3_n_0\
    );
\deci_low.curr_delay[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90909090FFFFFF90"
    )
        port map (
      I0 => curr_delay(2),
      I1 => \deci_low.curr_delay[2]_i_2_n_0\,
      I2 => fifo_valid,
      I3 => \deci_low.curr_delay[4]_i_2_n_0\,
      I4 => \deci_low.curr_delay[2]_i_3_n_0\,
      I5 => \deci_low.curr_delay[6]_i_4_n_0\,
      O => \deci_low.curr_delay[2]_i_1_n_0\
    );
\deci_low.curr_delay[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557FFFF"
    )
        port map (
      I0 => curr_delay(0),
      I1 => start_delay(0),
      I2 => start_delay(2),
      I3 => \deci_low.start_delay[5]_i_2_n_0\,
      I4 => curr_delay(1),
      O => \deci_low.curr_delay[2]_i_2_n_0\
    );
\deci_low.curr_delay[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => curr_delay(2),
      I1 => curr_delay(1),
      I2 => curr_delay(0),
      I3 => start_delay(0),
      I4 => start_delay(2),
      I5 => \deci_low.start_delay[5]_i_2_n_0\,
      O => \deci_low.curr_delay[2]_i_3_n_0\
    );
\deci_low.curr_delay[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FF21212"
    )
        port map (
      I0 => \deci_low.curr_delay[4]_i_2_n_0\,
      I1 => \deci_low.curr_delay[6]_i_4_n_0\,
      I2 => curr_delay(3),
      I3 => \deci_low.curr_delay[6]_i_2_n_0\,
      I4 => fifo_valid,
      O => \deci_low.curr_delay[3]_i_1_n_0\
    );
\deci_low.curr_delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FF2F0F230123012"
    )
        port map (
      I0 => \deci_low.curr_delay[4]_i_2_n_0\,
      I1 => \deci_low.curr_delay[6]_i_4_n_0\,
      I2 => curr_delay(4),
      I3 => curr_delay(3),
      I4 => \deci_low.curr_delay[6]_i_2_n_0\,
      I5 => fifo_valid,
      O => \deci_low.curr_delay[4]_i_1_n_0\
    );
\deci_low.curr_delay[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \deci_low.curr_delay[6]_i_7_n_0\,
      I1 => start_delay(0),
      I2 => start_delay(2),
      I3 => \deci_low.start_delay[5]_i_2_n_0\,
      I4 => \deci_low.curr_delay[4]_i_3_n_0\,
      O => \deci_low.curr_delay[4]_i_2_n_0\
    );
\deci_low.curr_delay[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => curr_delay(3),
      I1 => curr_delay(4),
      I2 => curr_delay(5),
      I3 => curr_delay(6),
      O => \deci_low.curr_delay[4]_i_3_n_0\
    );
\deci_low.curr_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F11FF1F111111111"
    )
        port map (
      I0 => \deci_low.curr_delay[5]_i_2_n_0\,
      I1 => \deci_low.curr_delay[6]_i_4_n_0\,
      I2 => curr_delay(5),
      I3 => \deci_low.curr_delay[5]_i_3_n_0\,
      I4 => \deci_low.curr_delay[6]_i_2_n_0\,
      I5 => fifo_valid,
      O => \deci_low.curr_delay[5]_i_1_n_0\
    );
\deci_low.curr_delay[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FE01FF00FF00FF"
    )
        port map (
      I0 => \deci_low.curr_delay[6]_i_7_n_0\,
      I1 => \deci_low.curr_delay[5]_i_4_n_0\,
      I2 => \deci_low.start_delay[5]_i_2_n_0\,
      I3 => curr_delay(5),
      I4 => curr_delay(6),
      I5 => \deci_low.curr_delay[6]_i_8_n_0\,
      O => \deci_low.curr_delay[5]_i_2_n_0\
    );
\deci_low.curr_delay[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => curr_delay(4),
      I1 => curr_delay(3),
      O => \deci_low.curr_delay[5]_i_3_n_0\
    );
\deci_low.curr_delay[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start_delay(2),
      I1 => start_delay(0),
      O => \deci_low.curr_delay[5]_i_4_n_0\
    );
\deci_low.curr_delay[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0FF20202020"
    )
        port map (
      I0 => \deci_low.curr_delay[6]_i_2_n_0\,
      I1 => \deci_low.curr_delay[6]_i_3_n_0\,
      I2 => fifo_valid,
      I3 => \deci_low.curr_delay[6]_i_4_n_0\,
      I4 => \deci_low.curr_delay[6]_i_5_n_0\,
      I5 => curr_delay(6),
      O => \deci_low.curr_delay[6]_i_1_n_0\
    );
\deci_low.curr_delay[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888000000000"
    )
        port map (
      I0 => curr_delay(2),
      I1 => curr_delay(1),
      I2 => \deci_low.start_delay[5]_i_2_n_0\,
      I3 => start_delay(2),
      I4 => start_delay(0),
      I5 => curr_delay(0),
      O => \deci_low.curr_delay[6]_i_2_n_0\
    );
\deci_low.curr_delay[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => curr_delay(3),
      I1 => curr_delay(4),
      I2 => curr_delay(5),
      O => \deci_low.curr_delay[6]_i_3_n_0\
    );
\deci_low.curr_delay[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => fifo_valid,
      I1 => \deci_low.curr_delay[6]_i_6_n_0\,
      I2 => start_delay(3),
      I3 => start_delay(6),
      I4 => start_delay(1),
      O => \deci_low.curr_delay[6]_i_4_n_0\
    );
\deci_low.curr_delay[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \deci_low.curr_delay[6]_i_7_n_0\,
      I1 => start_delay(0),
      I2 => start_delay(2),
      I3 => \deci_low.start_delay[5]_i_2_n_0\,
      I4 => \deci_low.curr_delay[6]_i_8_n_0\,
      I5 => curr_delay(5),
      O => \deci_low.curr_delay[6]_i_5_n_0\
    );
\deci_low.curr_delay[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => start_delay(0),
      I1 => start_delay(2),
      I2 => start_delay(4),
      I3 => start_delay(5),
      O => \deci_low.curr_delay[6]_i_6_n_0\
    );
\deci_low.curr_delay[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => curr_delay(2),
      I1 => curr_delay(0),
      I2 => curr_delay(1),
      O => \deci_low.curr_delay[6]_i_7_n_0\
    );
\deci_low.curr_delay[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_delay(4),
      I1 => curr_delay(3),
      O => \deci_low.curr_delay[6]_i_8_n_0\
    );
\deci_low.curr_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.curr_delay[0]_i_1_n_0\,
      Q => curr_delay(0),
      R => '0'
    );
\deci_low.curr_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.curr_delay[1]_i_1_n_0\,
      Q => curr_delay(1),
      R => '0'
    );
\deci_low.curr_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.curr_delay[2]_i_1_n_0\,
      Q => curr_delay(2),
      R => '0'
    );
\deci_low.curr_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.curr_delay[3]_i_1_n_0\,
      Q => curr_delay(3),
      R => '0'
    );
\deci_low.curr_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.curr_delay[4]_i_1_n_0\,
      Q => curr_delay(4),
      R => '0'
    );
\deci_low.curr_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.curr_delay[5]_i_1_n_0\,
      Q => curr_delay(5),
      R => '0'
    );
\deci_low.curr_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.curr_delay[6]_i_1_n_0\,
      Q => curr_delay(6),
      R => '0'
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
      CE => diffN0,
      D => diffE01_out(0),
      Q => diffE(0),
      R => '0'
    );
\deci_low.diffE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(10),
      Q => diffE(10),
      R => '0'
    );
\deci_low.diffE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(11),
      Q => diffE(11),
      R => '0'
    );
\deci_low.diffE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(12),
      Q => diffE(12),
      R => '0'
    );
\deci_low.diffE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(13),
      Q => diffE(13),
      R => '0'
    );
\deci_low.diffE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(14),
      Q => diffE(14),
      R => '0'
    );
\deci_low.diffE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(15),
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
      O(7 downto 0) => diffE01_out(15 downto 8),
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
      CE => diffN0,
      D => diffE01_out(16),
      Q => diffE(16),
      R => '0'
    );
\deci_low.diffE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(17),
      Q => diffE(17),
      R => '0'
    );
\deci_low.diffE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(18),
      Q => diffE(18),
      R => '0'
    );
\deci_low.diffE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(19),
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
      O(3 downto 0) => diffE01_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \deci_low.diffE[19]_i_2_n_0\,
      S(2) => \deci_low.diffE[19]_i_3_n_0\,
      S(1) => \deci_low.diffE[19]_i_4_n_0\,
      S(0) => \deci_low.diffE[19]_i_5_n_0\
    );
\deci_low.diffE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(1),
      Q => diffE(1),
      R => '0'
    );
\deci_low.diffE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(2),
      Q => diffE(2),
      R => '0'
    );
\deci_low.diffE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(3),
      Q => diffE(3),
      R => '0'
    );
\deci_low.diffE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(4),
      Q => diffE(4),
      R => '0'
    );
\deci_low.diffE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(5),
      Q => diffE(5),
      R => '0'
    );
\deci_low.diffE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(6),
      Q => diffE(6),
      R => '0'
    );
\deci_low.diffE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(7),
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
      O(7 downto 0) => diffE01_out(7 downto 0),
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
      CE => diffN0,
      D => diffE01_out(8),
      Q => diffE(8),
      R => '0'
    );
\deci_low.diffE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE01_out(9),
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
      CE => diffN0,
      D => diffN02_out(0),
      Q => diffN(0),
      R => '0'
    );
\deci_low.diffN_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(10),
      Q => diffN(10),
      R => '0'
    );
\deci_low.diffN_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(11),
      Q => diffN(11),
      R => '0'
    );
\deci_low.diffN_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(12),
      Q => diffN(12),
      R => '0'
    );
\deci_low.diffN_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(13),
      Q => diffN(13),
      R => '0'
    );
\deci_low.diffN_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(14),
      Q => diffN(14),
      R => '0'
    );
\deci_low.diffN_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(15),
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
      O(7 downto 0) => diffN02_out(15 downto 8),
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
      CE => diffN0,
      D => diffN02_out(16),
      Q => diffN(16),
      R => '0'
    );
\deci_low.diffN_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(17),
      Q => diffN(17),
      R => '0'
    );
\deci_low.diffN_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(18),
      Q => diffN(18),
      R => '0'
    );
\deci_low.diffN_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(19),
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
      O(3 downto 0) => diffN02_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \deci_low.diffN[19]_i_2_n_0\,
      S(2) => \deci_low.diffN[19]_i_3_n_0\,
      S(1) => \deci_low.diffN[19]_i_4_n_0\,
      S(0) => \deci_low.diffN[19]_i_5_n_0\
    );
\deci_low.diffN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(1),
      Q => diffN(1),
      R => '0'
    );
\deci_low.diffN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(2),
      Q => diffN(2),
      R => '0'
    );
\deci_low.diffN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(3),
      Q => diffN(3),
      R => '0'
    );
\deci_low.diffN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(4),
      Q => diffN(4),
      R => '0'
    );
\deci_low.diffN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(5),
      Q => diffN(5),
      R => '0'
    );
\deci_low.diffN_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(6),
      Q => diffN(6),
      R => '0'
    );
\deci_low.diffN_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(7),
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
      O(7 downto 0) => diffN02_out(7 downto 0),
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
      CE => diffN0,
      D => diffN02_out(8),
      Q => diffN(8),
      R => '0'
    );
\deci_low.diffN_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN02_out(9),
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
      CE => diffN0,
      D => diffW00_out(0),
      Q => diffW(0),
      R => '0'
    );
\deci_low.diffW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(10),
      Q => diffW(10),
      R => '0'
    );
\deci_low.diffW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(11),
      Q => diffW(11),
      R => '0'
    );
\deci_low.diffW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(12),
      Q => diffW(12),
      R => '0'
    );
\deci_low.diffW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(13),
      Q => diffW(13),
      R => '0'
    );
\deci_low.diffW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(14),
      Q => diffW(14),
      R => '0'
    );
\deci_low.diffW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
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
      CE => diffN0,
      D => diffW00_out(16),
      Q => diffW(16),
      R => '0'
    );
\deci_low.diffW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(17),
      Q => diffW(17),
      R => '0'
    );
\deci_low.diffW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(18),
      Q => diffW(18),
      R => '0'
    );
\deci_low.diffW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
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
      CE => diffN0,
      D => diffW00_out(1),
      Q => diffW(1),
      R => '0'
    );
\deci_low.diffW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(2),
      Q => diffW(2),
      R => '0'
    );
\deci_low.diffW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(3),
      Q => diffW(3),
      R => '0'
    );
\deci_low.diffW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(4),
      Q => diffW(4),
      R => '0'
    );
\deci_low.diffW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(5),
      Q => diffW(5),
      R => '0'
    );
\deci_low.diffW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(6),
      Q => diffW(6),
      R => '0'
    );
\deci_low.diffW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
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
      CE => diffN0,
      D => diffW00_out(8),
      Q => diffW(8),
      R => '0'
    );
\deci_low.diffW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW00_out(9),
      Q => diffW(9),
      R => '0'
    );
\deci_low.diff_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(0),
      Q => diff_E(0),
      R => '0'
    );
\deci_low.diff_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(10),
      Q => diff_E(10),
      R => '0'
    );
\deci_low.diff_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(11),
      Q => diff_E(11),
      R => '0'
    );
\deci_low.diff_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(12),
      Q => diff_E(12),
      R => '0'
    );
\deci_low.diff_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(13),
      Q => diff_E(13),
      R => '0'
    );
\deci_low.diff_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(14),
      Q => diff_E(14),
      R => '0'
    );
\deci_low.diff_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(15),
      Q => diff_E(15),
      R => '0'
    );
\deci_low.diff_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(16),
      Q => diff_E(16),
      R => '0'
    );
\deci_low.diff_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(17),
      Q => diff_E(17),
      R => '0'
    );
\deci_low.diff_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(18),
      Q => diff_E(18),
      R => '0'
    );
\deci_low.diff_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(19),
      Q => diff_E(19),
      R => '0'
    );
\deci_low.diff_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(1),
      Q => diff_E(1),
      R => '0'
    );
\deci_low.diff_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(2),
      Q => diff_E(2),
      R => '0'
    );
\deci_low.diff_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(3),
      Q => diff_E(3),
      R => '0'
    );
\deci_low.diff_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(4),
      Q => diff_E(4),
      R => '0'
    );
\deci_low.diff_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(5),
      Q => diff_E(5),
      R => '0'
    );
\deci_low.diff_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(6),
      Q => diff_E(6),
      R => '0'
    );
\deci_low.diff_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(7),
      Q => diff_E(7),
      R => '0'
    );
\deci_low.diff_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(8),
      Q => diff_E(8),
      R => '0'
    );
\deci_low.diff_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffE(9),
      Q => diff_E(9),
      R => '0'
    );
\deci_low.diff_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(0),
      Q => diff_N(0),
      R => '0'
    );
\deci_low.diff_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(10),
      Q => diff_N(10),
      R => '0'
    );
\deci_low.diff_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(11),
      Q => diff_N(11),
      R => '0'
    );
\deci_low.diff_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(12),
      Q => diff_N(12),
      R => '0'
    );
\deci_low.diff_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(13),
      Q => diff_N(13),
      R => '0'
    );
\deci_low.diff_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(14),
      Q => diff_N(14),
      R => '0'
    );
\deci_low.diff_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(15),
      Q => diff_N(15),
      R => '0'
    );
\deci_low.diff_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(16),
      Q => diff_N(16),
      R => '0'
    );
\deci_low.diff_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(17),
      Q => diff_N(17),
      R => '0'
    );
\deci_low.diff_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(18),
      Q => diff_N(18),
      R => '0'
    );
\deci_low.diff_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(19),
      Q => diff_N(19),
      R => '0'
    );
\deci_low.diff_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(1),
      Q => diff_N(1),
      R => '0'
    );
\deci_low.diff_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(2),
      Q => diff_N(2),
      R => '0'
    );
\deci_low.diff_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(3),
      Q => diff_N(3),
      R => '0'
    );
\deci_low.diff_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(4),
      Q => diff_N(4),
      R => '0'
    );
\deci_low.diff_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(5),
      Q => diff_N(5),
      R => '0'
    );
\deci_low.diff_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(6),
      Q => diff_N(6),
      R => '0'
    );
\deci_low.diff_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(7),
      Q => diff_N(7),
      R => '0'
    );
\deci_low.diff_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(8),
      Q => diff_N(8),
      R => '0'
    );
\deci_low.diff_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffN(9),
      Q => diff_N(9),
      R => '0'
    );
\deci_low.diff_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(0),
      Q => diff_W(0),
      R => '0'
    );
\deci_low.diff_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(10),
      Q => diff_W(10),
      R => '0'
    );
\deci_low.diff_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(11),
      Q => diff_W(11),
      R => '0'
    );
\deci_low.diff_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(12),
      Q => diff_W(12),
      R => '0'
    );
\deci_low.diff_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(13),
      Q => diff_W(13),
      R => '0'
    );
\deci_low.diff_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(14),
      Q => diff_W(14),
      R => '0'
    );
\deci_low.diff_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(15),
      Q => diff_W(15),
      R => '0'
    );
\deci_low.diff_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(16),
      Q => diff_W(16),
      R => '0'
    );
\deci_low.diff_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(17),
      Q => diff_W(17),
      R => '0'
    );
\deci_low.diff_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(18),
      Q => diff_W(18),
      R => '0'
    );
\deci_low.diff_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(19),
      Q => diff_W(19),
      R => '0'
    );
\deci_low.diff_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(1),
      Q => diff_W(1),
      R => '0'
    );
\deci_low.diff_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(2),
      Q => diff_W(2),
      R => '0'
    );
\deci_low.diff_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(3),
      Q => diff_W(3),
      R => '0'
    );
\deci_low.diff_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(4),
      Q => diff_W(4),
      R => '0'
    );
\deci_low.diff_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(5),
      Q => diff_W(5),
      R => '0'
    );
\deci_low.diff_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(6),
      Q => diff_W(6),
      R => '0'
    );
\deci_low.diff_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(7),
      Q => diff_W(7),
      R => '0'
    );
\deci_low.diff_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(8),
      Q => diff_W(8),
      R => '0'
    );
\deci_low.diff_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => diffW(9),
      Q => diff_W(9),
      R => '0'
    );
\deci_low.env_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(0),
      Q => env_E(0),
      R => '0'
    );
\deci_low.env_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(10),
      Q => env_E(10),
      R => '0'
    );
\deci_low.env_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(11),
      Q => env_E(11),
      R => '0'
    );
\deci_low.env_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(12),
      Q => env_E(12),
      R => '0'
    );
\deci_low.env_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(13),
      Q => env_E(13),
      R => '0'
    );
\deci_low.env_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(14),
      Q => env_E(14),
      R => '0'
    );
\deci_low.env_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(15),
      Q => env_E(15),
      R => '0'
    );
\deci_low.env_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(1),
      Q => env_E(1),
      R => '0'
    );
\deci_low.env_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(2),
      Q => env_E(2),
      R => '0'
    );
\deci_low.env_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(3),
      Q => env_E(3),
      R => '0'
    );
\deci_low.env_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(4),
      Q => env_E(4),
      R => '0'
    );
\deci_low.env_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(5),
      Q => env_E(5),
      R => '0'
    );
\deci_low.env_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(6),
      Q => env_E(6),
      R => '0'
    );
\deci_low.env_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(7),
      Q => env_E(7),
      R => '0'
    );
\deci_low.env_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(8),
      Q => env_E(8),
      R => '0'
    );
\deci_low.env_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envE(9),
      Q => env_E(9),
      R => '0'
    );
\deci_low.env_N[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => validN,
      I1 => validE,
      I2 => validW,
      O => diffN0
    );
\deci_low.env_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(0),
      Q => env_N(0),
      R => '0'
    );
\deci_low.env_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(10),
      Q => env_N(10),
      R => '0'
    );
\deci_low.env_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(11),
      Q => env_N(11),
      R => '0'
    );
\deci_low.env_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(12),
      Q => env_N(12),
      R => '0'
    );
\deci_low.env_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(13),
      Q => env_N(13),
      R => '0'
    );
\deci_low.env_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(14),
      Q => env_N(14),
      R => '0'
    );
\deci_low.env_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(15),
      Q => env_N(15),
      R => '0'
    );
\deci_low.env_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(1),
      Q => env_N(1),
      R => '0'
    );
\deci_low.env_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(2),
      Q => env_N(2),
      R => '0'
    );
\deci_low.env_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(3),
      Q => env_N(3),
      R => '0'
    );
\deci_low.env_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(4),
      Q => env_N(4),
      R => '0'
    );
\deci_low.env_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(5),
      Q => env_N(5),
      R => '0'
    );
\deci_low.env_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(6),
      Q => env_N(6),
      R => '0'
    );
\deci_low.env_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(7),
      Q => env_N(7),
      R => '0'
    );
\deci_low.env_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(8),
      Q => env_N(8),
      R => '0'
    );
\deci_low.env_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envN(9),
      Q => env_N(9),
      R => '0'
    );
\deci_low.env_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(0),
      Q => env_W(0),
      R => '0'
    );
\deci_low.env_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(10),
      Q => env_W(10),
      R => '0'
    );
\deci_low.env_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(11),
      Q => env_W(11),
      R => '0'
    );
\deci_low.env_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(12),
      Q => env_W(12),
      R => '0'
    );
\deci_low.env_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(13),
      Q => env_W(13),
      R => '0'
    );
\deci_low.env_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(14),
      Q => env_W(14),
      R => '0'
    );
\deci_low.env_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(15),
      Q => env_W(15),
      R => '0'
    );
\deci_low.env_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(1),
      Q => env_W(1),
      R => '0'
    );
\deci_low.env_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(2),
      Q => env_W(2),
      R => '0'
    );
\deci_low.env_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(3),
      Q => env_W(3),
      R => '0'
    );
\deci_low.env_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(4),
      Q => env_W(4),
      R => '0'
    );
\deci_low.env_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(5),
      Q => env_W(5),
      R => '0'
    );
\deci_low.env_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(6),
      Q => env_W(6),
      R => '0'
    );
\deci_low.env_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(7),
      Q => env_W(7),
      R => '0'
    );
\deci_low.env_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(8),
      Q => env_W(8),
      R => '0'
    );
\deci_low.env_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => envW(9),
      Q => env_W(9),
      R => '0'
    );
\deci_low.morlet_active_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010001"
    )
        port map (
      I0 => start_delay(0),
      I1 => start_delay(2),
      I2 => \deci_low.start_delay[5]_i_2_n_0\,
      I3 => \deci_low.curr_delay[1]_i_3_n_0\,
      I4 => fifo_valid,
      O => \deci_low.morlet_active_i_1_n_0\
    );
\deci_low.morlet_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.morlet_active_i_1_n_0\,
      Q => morlet_active,
      R => '0'
    );
\deci_low.phase_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(0),
      Q => \^phase_e\(0),
      R => '0'
    );
\deci_low.phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(10),
      Q => \^phase_e\(10),
      R => '0'
    );
\deci_low.phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(11),
      Q => \^phase_e\(11),
      R => '0'
    );
\deci_low.phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(12),
      Q => \^phase_e\(12),
      R => '0'
    );
\deci_low.phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(13),
      Q => \^phase_e\(13),
      R => '0'
    );
\deci_low.phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(14),
      Q => \^phase_e\(14),
      R => '0'
    );
\deci_low.phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(15),
      Q => \^phase_e\(15),
      R => '0'
    );
\deci_low.phase_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(16),
      Q => \^phase_e\(16),
      R => '0'
    );
\deci_low.phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(17),
      Q => \^phase_e\(17),
      R => '0'
    );
\deci_low.phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(18),
      Q => \^phase_e\(18),
      R => '0'
    );
\deci_low.phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(19),
      Q => \^phase_e\(19),
      R => '0'
    );
\deci_low.phase_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(1),
      Q => \^phase_e\(1),
      R => '0'
    );
\deci_low.phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(2),
      Q => \^phase_e\(2),
      R => '0'
    );
\deci_low.phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(3),
      Q => \^phase_e\(3),
      R => '0'
    );
\deci_low.phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(4),
      Q => \^phase_e\(4),
      R => '0'
    );
\deci_low.phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(5),
      Q => \^phase_e\(5),
      R => '0'
    );
\deci_low.phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(6),
      Q => \^phase_e\(6),
      R => '0'
    );
\deci_low.phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(7),
      Q => \^phase_e\(7),
      R => '0'
    );
\deci_low.phase_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(8),
      Q => \^phase_e\(8),
      R => '0'
    );
\deci_low.phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseE(9),
      Q => \^phase_e\(9),
      R => '0'
    );
\deci_low.phase_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(0),
      Q => \^phase_n\(0),
      R => '0'
    );
\deci_low.phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(10),
      Q => \^phase_n\(10),
      R => '0'
    );
\deci_low.phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(11),
      Q => \^phase_n\(11),
      R => '0'
    );
\deci_low.phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(12),
      Q => \^phase_n\(12),
      R => '0'
    );
\deci_low.phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(13),
      Q => \^phase_n\(13),
      R => '0'
    );
\deci_low.phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(14),
      Q => \^phase_n\(14),
      R => '0'
    );
\deci_low.phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(15),
      Q => \^phase_n\(15),
      R => '0'
    );
\deci_low.phase_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(16),
      Q => \^phase_n\(16),
      R => '0'
    );
\deci_low.phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(17),
      Q => \^phase_n\(17),
      R => '0'
    );
\deci_low.phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(18),
      Q => \^phase_n\(18),
      R => '0'
    );
\deci_low.phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(19),
      Q => \^phase_n\(19),
      R => '0'
    );
\deci_low.phase_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(1),
      Q => \^phase_n\(1),
      R => '0'
    );
\deci_low.phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(2),
      Q => \^phase_n\(2),
      R => '0'
    );
\deci_low.phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(3),
      Q => \^phase_n\(3),
      R => '0'
    );
\deci_low.phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(4),
      Q => \^phase_n\(4),
      R => '0'
    );
\deci_low.phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(5),
      Q => \^phase_n\(5),
      R => '0'
    );
\deci_low.phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(6),
      Q => \^phase_n\(6),
      R => '0'
    );
\deci_low.phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(7),
      Q => \^phase_n\(7),
      R => '0'
    );
\deci_low.phase_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(8),
      Q => \^phase_n\(8),
      R => '0'
    );
\deci_low.phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseN(9),
      Q => \^phase_n\(9),
      R => '0'
    );
\deci_low.phase_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(0),
      Q => \^phase_w\(0),
      R => '0'
    );
\deci_low.phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(10),
      Q => \^phase_w\(10),
      R => '0'
    );
\deci_low.phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(11),
      Q => \^phase_w\(11),
      R => '0'
    );
\deci_low.phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(12),
      Q => \^phase_w\(12),
      R => '0'
    );
\deci_low.phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(13),
      Q => \^phase_w\(13),
      R => '0'
    );
\deci_low.phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(14),
      Q => \^phase_w\(14),
      R => '0'
    );
\deci_low.phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(15),
      Q => \^phase_w\(15),
      R => '0'
    );
\deci_low.phase_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(16),
      Q => \^phase_w\(16),
      R => '0'
    );
\deci_low.phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(17),
      Q => \^phase_w\(17),
      R => '0'
    );
\deci_low.phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(18),
      Q => \^phase_w\(18),
      R => '0'
    );
\deci_low.phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(19),
      Q => \^phase_w\(19),
      R => '0'
    );
\deci_low.phase_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(1),
      Q => \^phase_w\(1),
      R => '0'
    );
\deci_low.phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(2),
      Q => \^phase_w\(2),
      R => '0'
    );
\deci_low.phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(3),
      Q => \^phase_w\(3),
      R => '0'
    );
\deci_low.phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(4),
      Q => \^phase_w\(4),
      R => '0'
    );
\deci_low.phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(5),
      Q => \^phase_w\(5),
      R => '0'
    );
\deci_low.phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(6),
      Q => \^phase_w\(6),
      R => '0'
    );
\deci_low.phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(7),
      Q => \^phase_w\(7),
      R => '0'
    );
\deci_low.phase_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(8),
      Q => \^phase_w\(8),
      R => '0'
    );
\deci_low.phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => phaseW(9),
      Q => \^phase_w\(9),
      R => '0'
    );
\deci_low.prevE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(0),
      Q => prevE(0),
      R => '0'
    );
\deci_low.prevE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(10),
      Q => prevE(10),
      R => '0'
    );
\deci_low.prevE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(11),
      Q => prevE(11),
      R => '0'
    );
\deci_low.prevE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(12),
      Q => prevE(12),
      R => '0'
    );
\deci_low.prevE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(13),
      Q => prevE(13),
      R => '0'
    );
\deci_low.prevE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(14),
      Q => prevE(14),
      R => '0'
    );
\deci_low.prevE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(15),
      Q => prevE(15),
      R => '0'
    );
\deci_low.prevE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(16),
      Q => prevE(16),
      R => '0'
    );
\deci_low.prevE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(17),
      Q => prevE(17),
      R => '0'
    );
\deci_low.prevE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(18),
      Q => prevE(18),
      R => '0'
    );
\deci_low.prevE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(19),
      Q => prevE(19),
      R => '0'
    );
\deci_low.prevE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(1),
      Q => prevE(1),
      R => '0'
    );
\deci_low.prevE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(2),
      Q => prevE(2),
      R => '0'
    );
\deci_low.prevE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(3),
      Q => prevE(3),
      R => '0'
    );
\deci_low.prevE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(4),
      Q => prevE(4),
      R => '0'
    );
\deci_low.prevE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(5),
      Q => prevE(5),
      R => '0'
    );
\deci_low.prevE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(6),
      Q => prevE(6),
      R => '0'
    );
\deci_low.prevE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(7),
      Q => prevE(7),
      R => '0'
    );
\deci_low.prevE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(8),
      Q => prevE(8),
      R => '0'
    );
\deci_low.prevE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_e\(9),
      Q => prevE(9),
      R => '0'
    );
\deci_low.prevN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(0),
      Q => prevN(0),
      R => '0'
    );
\deci_low.prevN_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(10),
      Q => prevN(10),
      R => '0'
    );
\deci_low.prevN_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(11),
      Q => prevN(11),
      R => '0'
    );
\deci_low.prevN_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(12),
      Q => prevN(12),
      R => '0'
    );
\deci_low.prevN_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(13),
      Q => prevN(13),
      R => '0'
    );
\deci_low.prevN_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(14),
      Q => prevN(14),
      R => '0'
    );
\deci_low.prevN_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(15),
      Q => prevN(15),
      R => '0'
    );
\deci_low.prevN_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(16),
      Q => prevN(16),
      R => '0'
    );
\deci_low.prevN_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(17),
      Q => prevN(17),
      R => '0'
    );
\deci_low.prevN_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(18),
      Q => prevN(18),
      R => '0'
    );
\deci_low.prevN_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(19),
      Q => prevN(19),
      R => '0'
    );
\deci_low.prevN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(1),
      Q => prevN(1),
      R => '0'
    );
\deci_low.prevN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(2),
      Q => prevN(2),
      R => '0'
    );
\deci_low.prevN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(3),
      Q => prevN(3),
      R => '0'
    );
\deci_low.prevN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(4),
      Q => prevN(4),
      R => '0'
    );
\deci_low.prevN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(5),
      Q => prevN(5),
      R => '0'
    );
\deci_low.prevN_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(6),
      Q => prevN(6),
      R => '0'
    );
\deci_low.prevN_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(7),
      Q => prevN(7),
      R => '0'
    );
\deci_low.prevN_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(8),
      Q => prevN(8),
      R => '0'
    );
\deci_low.prevN_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_n\(9),
      Q => prevN(9),
      R => '0'
    );
\deci_low.prevW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(0),
      Q => prevW(0),
      R => '0'
    );
\deci_low.prevW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(10),
      Q => prevW(10),
      R => '0'
    );
\deci_low.prevW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(11),
      Q => prevW(11),
      R => '0'
    );
\deci_low.prevW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(12),
      Q => prevW(12),
      R => '0'
    );
\deci_low.prevW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(13),
      Q => prevW(13),
      R => '0'
    );
\deci_low.prevW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(14),
      Q => prevW(14),
      R => '0'
    );
\deci_low.prevW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(15),
      Q => prevW(15),
      R => '0'
    );
\deci_low.prevW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(16),
      Q => prevW(16),
      R => '0'
    );
\deci_low.prevW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(17),
      Q => prevW(17),
      R => '0'
    );
\deci_low.prevW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(18),
      Q => prevW(18),
      R => '0'
    );
\deci_low.prevW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(19),
      Q => prevW(19),
      R => '0'
    );
\deci_low.prevW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(1),
      Q => prevW(1),
      R => '0'
    );
\deci_low.prevW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(2),
      Q => prevW(2),
      R => '0'
    );
\deci_low.prevW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(3),
      Q => prevW(3),
      R => '0'
    );
\deci_low.prevW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(4),
      Q => prevW(4),
      R => '0'
    );
\deci_low.prevW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(5),
      Q => prevW(5),
      R => '0'
    );
\deci_low.prevW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(6),
      Q => prevW(6),
      R => '0'
    );
\deci_low.prevW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(7),
      Q => prevW(7),
      R => '0'
    );
\deci_low.prevW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(8),
      Q => prevW(8),
      R => '0'
    );
\deci_low.prevW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => diffN0,
      D => \^phase_w\(9),
      Q => prevW(9),
      R => '0'
    );
\deci_low.start_delay[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \deci_low.start_delay[5]_i_2_n_0\,
      I1 => start_delay(2),
      I2 => start_delay(0),
      O => \deci_low.start_delay[0]_i_1_n_0\
    );
\deci_low.start_delay[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5554ABAA"
    )
        port map (
      I0 => start_delay(0),
      I1 => start_delay(2),
      I2 => \deci_low.start_delay[5]_i_2_n_0\,
      I3 => \deci_low.start_delay[6]_i_4_n_0\,
      I4 => start_delay(1),
      O => \deci_low.start_delay[1]_i_1_n_0\
    );
\deci_low.start_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => start_delay(2),
      I1 => start_delay(1),
      I2 => start_delay(0),
      O => \deci_low.start_delay[2]_i_1_n_0\
    );
\deci_low.start_delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77768988FFFE0100"
    )
        port map (
      I0 => start_delay(0),
      I1 => start_delay(2),
      I2 => \deci_low.start_delay[5]_i_2_n_0\,
      I3 => \deci_low.start_delay[6]_i_4_n_0\,
      I4 => start_delay(3),
      I5 => start_delay(1),
      O => \deci_low.start_delay[3]_i_1_n_0\
    );
\deci_low.start_delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFEFFFE0100"
    )
        port map (
      I0 => start_delay(0),
      I1 => start_delay(2),
      I2 => \deci_low.start_delay[5]_i_2_n_0\,
      I3 => \deci_low.start_delay[6]_i_4_n_0\,
      I4 => start_delay(4),
      I5 => \deci_low.start_delay[4]_i_2_n_0\,
      O => \deci_low.start_delay[4]_i_1_n_0\
    );
\deci_low.start_delay[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start_delay(3),
      I1 => start_delay(1),
      I2 => start_delay(0),
      I3 => start_delay(2),
      O => \deci_low.start_delay[4]_i_2_n_0\
    );
\deci_low.start_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFEFFFE0100"
    )
        port map (
      I0 => start_delay(0),
      I1 => start_delay(2),
      I2 => \deci_low.start_delay[5]_i_2_n_0\,
      I3 => \deci_low.start_delay[6]_i_4_n_0\,
      I4 => start_delay(5),
      I5 => \deci_low.start_delay[6]_i_5_n_0\,
      O => \deci_low.start_delay[5]_i_1_n_0\
    );
\deci_low.start_delay[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => start_delay(3),
      I1 => start_delay(1),
      I2 => start_delay(6),
      I3 => start_delay(4),
      I4 => start_delay(5),
      O => \deci_low.start_delay[5]_i_2_n_0\
    );
\deci_low.start_delay[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => fifo_valid,
      I1 => \deci_low.start_delay[6]_i_3_n_0\,
      O => \deci_low.start_delay[6]_i_1_n_0\
    );
\deci_low.start_delay[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \deci_low.start_delay[6]_i_4_n_0\,
      I1 => \deci_low.curr_delay[1]_i_2_n_0\,
      I2 => start_delay(6),
      I3 => \deci_low.start_delay[6]_i_5_n_0\,
      I4 => start_delay(5),
      O => \deci_low.start_delay[6]_i_2_n_0\
    );
\deci_low.start_delay[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => start_delay(1),
      I1 => start_delay(6),
      I2 => start_delay(3),
      I3 => start_delay(5),
      I4 => start_delay(4),
      I5 => \deci_low.curr_delay[5]_i_4_n_0\,
      O => \deci_low.start_delay[6]_i_3_n_0\
    );
\deci_low.start_delay[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => fifo_valid,
      I1 => curr_delay(2),
      I2 => curr_delay(0),
      I3 => curr_delay(1),
      I4 => \deci_low.curr_delay[4]_i_3_n_0\,
      O => \deci_low.start_delay[6]_i_4_n_0\
    );
\deci_low.start_delay[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => start_delay(4),
      I1 => start_delay(2),
      I2 => start_delay(0),
      I3 => start_delay(1),
      I4 => start_delay(3),
      O => \deci_low.start_delay[6]_i_5_n_0\
    );
\deci_low.start_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.start_delay[6]_i_1_n_0\,
      D => \deci_low.start_delay[0]_i_1_n_0\,
      Q => start_delay(0),
      R => '0'
    );
\deci_low.start_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.start_delay[6]_i_1_n_0\,
      D => \deci_low.start_delay[1]_i_1_n_0\,
      Q => start_delay(1),
      R => '0'
    );
\deci_low.start_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.start_delay[6]_i_1_n_0\,
      D => \deci_low.start_delay[2]_i_1_n_0\,
      Q => start_delay(2),
      R => '0'
    );
\deci_low.start_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.start_delay[6]_i_1_n_0\,
      D => \deci_low.start_delay[3]_i_1_n_0\,
      Q => start_delay(3),
      R => '0'
    );
\deci_low.start_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.start_delay[6]_i_1_n_0\,
      D => \deci_low.start_delay[4]_i_1_n_0\,
      Q => start_delay(4),
      R => '0'
    );
\deci_low.start_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.start_delay[6]_i_1_n_0\,
      D => \deci_low.start_delay[5]_i_1_n_0\,
      Q => start_delay(5),
      R => '0'
    );
\deci_low.start_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.start_delay[6]_i_1_n_0\,
      D => \deci_low.start_delay[6]_i_2_n_0\,
      Q => start_delay(6),
      R => '0'
    );
\deci_low.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diffN0,
      Q => \^valid\,
      R => '0'
    );
fir_freq_low_im_E_i: component ps_freq_low_46_0_0_fir_doa_low_im
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_E(39 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_im_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => E(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_im_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_freq_low_im_N_i: component ps_freq_low_46_0_0_fir_doa_low_im
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_N(39 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_im_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => N(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_im_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_freq_low_im_W_i: component ps_freq_low_46_0_0_fir_doa_low_im_HD3
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_W(39 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_im_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => W(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_im_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_freq_low_re_E_i: component ps_freq_low_46_0_0_fir_doa_low_re
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_E(39 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_re_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => E(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_re_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_freq_low_re_N_i: component ps_freq_low_46_0_0_fir_doa_low_re
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_N(39 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_re_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => N(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_re_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
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
      m_axis_data_tdata(39 downto 0) => fir_re_W(39 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_re_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => W(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_re_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
freq_E_i: entity work.\ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\
     port map (
      active => morlet_active,
      clk => clk,
      env(15 downto 0) => envE(15 downto 0),
      im(23 downto 0) => fir_im_E(36 downto 13),
      phase(19 downto 0) => phaseE(19 downto 0),
      re(23 downto 0) => fir_re_E(36 downto 13),
      valid => validE
    );
freq_N_i: entity work.\ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\
     port map (
      active => morlet_active,
      clk => clk,
      env(15 downto 0) => envN(15 downto 0),
      im(23 downto 0) => fir_im_N(36 downto 13),
      phase(19 downto 0) => phaseN(19 downto 0),
      re(23 downto 0) => fir_re_N(36 downto 13),
      valid => validN
    );
freq_W_i: entity work.ps_freq_low_46_0_0_morlet_to_phase_env
     port map (
      active => morlet_active,
      clk => clk,
      env(15 downto 0) => envW(15 downto 0),
      im(23 downto 0) => fir_im_W(36 downto 13),
      phase(19 downto 0) => phaseW(19 downto 0),
      re(23 downto 0) => fir_re_W(36 downto 13),
      valid => validW
    );
ila_0_i: component ps_freq_low_46_0_0_ila_0
     port map (
      clk => clk,
      probe0(0) => fifo_valid,
      probe1(15 downto 0) => fifo_data(15 downto 0),
      probe10(15 downto 0) => envN(15 downto 0),
      probe11(19 downto 0) => phaseN(19 downto 0),
      probe12(15 downto 0) => E(15 downto 0),
      probe13(23 downto 0) => fir_re_E(36 downto 13),
      probe14(23 downto 0) => fir_im_E(36 downto 13),
      probe15(0) => validE,
      probe16(15 downto 0) => envE(15 downto 0),
      probe17(19 downto 0) => phaseE(19 downto 0),
      probe18(15 downto 0) => W(15 downto 0),
      probe19(23 downto 0) => fir_re_W(36 downto 13),
      probe2(6 downto 0) => start_delay(6 downto 0),
      probe20(23 downto 0) => fir_im_W(36 downto 13),
      probe21(0) => validW,
      probe22(15 downto 0) => envW(15 downto 0),
      probe23(19 downto 0) => phaseW(19 downto 0),
      probe3(6 downto 0) => curr_delay(6 downto 0),
      probe4(0) => morlet_active,
      probe5(0) => \^valid\,
      probe6(15 downto 0) => N(15 downto 0),
      probe7(23 downto 0) => fir_re_N(36 downto 13),
      probe8(23 downto 0) => fir_im_N(36 downto 13),
      probe9(0) => validN
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_valid : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
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
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_freq_low_46_0_0_freq_low_46
     port map (
      clk => clk,
      diff_E(19 downto 0) => diff_E(19 downto 0),
      diff_N(19 downto 0) => diff_N(19 downto 0),
      diff_W(19 downto 0) => diff_W(19 downto 0),
      env_E(15 downto 0) => env_E(15 downto 0),
      env_N(15 downto 0) => env_N(15 downto 0),
      env_W(15 downto 0) => env_W(15 downto 0),
      fifo_data(47 downto 0) => fifo_data(47 downto 0),
      fifo_valid => fifo_valid,
      phase_E(19 downto 0) => phase_E(19 downto 0),
      phase_N(19 downto 0) => phase_N(19 downto 0),
      phase_W(19 downto 0) => phase_W(19 downto 0),
      reset => reset,
      valid => valid
    );
end STRUCTURE;
