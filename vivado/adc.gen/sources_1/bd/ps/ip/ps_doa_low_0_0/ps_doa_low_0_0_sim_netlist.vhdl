-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Nov 15 00:25:13 2025
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
entity ps_doa_low_0_0_doa_low is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_valid : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 69 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_doa_low_0_0_doa_low : entity is "doa_low";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_doa_low_0_0_doa_low : entity is "soft";
end ps_doa_low_0_0_doa_low;

architecture STRUCTURE of ps_doa_low_0_0_doa_low is
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
  component ps_doa_low_0_0_fir_doa_low_im_HD1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_doa_low_0_0_fir_doa_low_im_HD1;
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
  component ps_doa_low_0_0_fir_doa_low_re_HD2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_doa_low_0_0_fir_doa_low_re_HD2;
  component ps_doa_low_0_0_ila_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_doa_low_0_0_ila_0;
  signal E : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of E : signal is std.standard.true;
  signal N : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of N : signal is std.standard.true;
  signal W : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of W : signal is std.standard.true;
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
  signal valid_im_E : STD_LOGIC;
  attribute MARK_DEBUG of valid_im_E : signal is std.standard.true;
  signal valid_im_N : STD_LOGIC;
  attribute MARK_DEBUG of valid_im_N : signal is std.standard.true;
  signal valid_im_W : STD_LOGIC;
  attribute MARK_DEBUG of valid_im_W : signal is std.standard.true;
  signal valid_re_E : STD_LOGIC;
  attribute MARK_DEBUG of valid_re_E : signal is std.standard.true;
  signal valid_re_N : STD_LOGIC;
  attribute MARK_DEBUG of valid_re_N : signal is std.standard.true;
  signal valid_re_W : STD_LOGIC;
  attribute MARK_DEBUG of valid_re_W : signal is std.standard.true;
  signal NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_low_re_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fir_doa_low_im_E_i : label is "fir_doa_low_im,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fir_doa_low_im_E_i : label is "yes";
  attribute x_core_info : string;
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
\deci_low.E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => '0',
      Q => E(0),
      R => '0'
    );
\deci_low.E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(50),
      Q => E(10),
      R => '0'
    );
\deci_low.E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(51),
      Q => E(11),
      R => '0'
    );
\deci_low.E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(52),
      Q => E(12),
      R => '0'
    );
\deci_low.E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(53),
      Q => E(13),
      R => '0'
    );
\deci_low.E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(54),
      Q => E(14),
      R => '0'
    );
\deci_low.E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(55),
      Q => E(15),
      R => '0'
    );
\deci_low.E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => '0',
      Q => E(1),
      R => '0'
    );
\deci_low.E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(42),
      Q => E(2),
      R => '0'
    );
\deci_low.E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(43),
      Q => E(3),
      R => '0'
    );
\deci_low.E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(44),
      Q => E(4),
      R => '0'
    );
\deci_low.E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(45),
      Q => E(5),
      R => '0'
    );
\deci_low.E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(46),
      Q => E(6),
      R => '0'
    );
\deci_low.E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(47),
      Q => E(7),
      R => '0'
    );
\deci_low.E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(48),
      Q => E(8),
      R => '0'
    );
\deci_low.E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(49),
      Q => E(9),
      R => '0'
    );
\deci_low.N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => '0',
      Q => N(0),
      R => '0'
    );
\deci_low.N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(36),
      Q => N(10),
      R => '0'
    );
\deci_low.N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(37),
      Q => N(11),
      R => '0'
    );
\deci_low.N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(38),
      Q => N(12),
      R => '0'
    );
\deci_low.N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(39),
      Q => N(13),
      R => '0'
    );
\deci_low.N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(40),
      Q => N(14),
      R => '0'
    );
\deci_low.N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(41),
      Q => N(15),
      R => '0'
    );
\deci_low.N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => '0',
      Q => N(1),
      R => '0'
    );
\deci_low.N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(28),
      Q => N(2),
      R => '0'
    );
\deci_low.N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(29),
      Q => N(3),
      R => '0'
    );
\deci_low.N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(30),
      Q => N(4),
      R => '0'
    );
\deci_low.N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(31),
      Q => N(5),
      R => '0'
    );
\deci_low.N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(32),
      Q => N(6),
      R => '0'
    );
\deci_low.N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(33),
      Q => N(7),
      R => '0'
    );
\deci_low.N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(34),
      Q => N(8),
      R => '0'
    );
\deci_low.N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(35),
      Q => N(9),
      R => '0'
    );
\deci_low.W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => '0',
      Q => W(0),
      R => '0'
    );
\deci_low.W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(64),
      Q => W(10),
      R => '0'
    );
\deci_low.W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(65),
      Q => W(11),
      R => '0'
    );
\deci_low.W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(66),
      Q => W(12),
      R => '0'
    );
\deci_low.W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(67),
      Q => W(13),
      R => '0'
    );
\deci_low.W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(68),
      Q => W(14),
      R => '0'
    );
\deci_low.W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(69),
      Q => W(15),
      R => '0'
    );
\deci_low.W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => '0',
      Q => W(1),
      R => '0'
    );
\deci_low.W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(56),
      Q => W(2),
      R => '0'
    );
\deci_low.W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(57),
      Q => W(3),
      R => '0'
    );
\deci_low.W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(58),
      Q => W(4),
      R => '0'
    );
\deci_low.W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(59),
      Q => W(5),
      R => '0'
    );
\deci_low.W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(60),
      Q => W(6),
      R => '0'
    );
\deci_low.W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(61),
      Q => W(7),
      R => '0'
    );
\deci_low.W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(62),
      Q => W(8),
      R => '0'
    );
\deci_low.W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(63),
      Q => W(9),
      R => '0'
    );
fir_doa_low_im_E_i: component ps_doa_low_0_0_fir_doa_low_im
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_E(39 downto 0),
      m_axis_data_tvalid => valid_im_E,
      s_axis_data_tdata(15 downto 0) => E(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_im_N_i: component ps_doa_low_0_0_fir_doa_low_im
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_N(39 downto 0),
      m_axis_data_tvalid => valid_im_N,
      s_axis_data_tdata(15 downto 0) => N(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_im_W_i: component ps_doa_low_0_0_fir_doa_low_im_HD1
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_W(39 downto 0),
      m_axis_data_tvalid => valid_im_W,
      s_axis_data_tdata(15 downto 0) => W(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_re_E_i: component ps_doa_low_0_0_fir_doa_low_re
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_E(39 downto 0),
      m_axis_data_tvalid => valid_re_E,
      s_axis_data_tdata(15 downto 0) => E(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_re_N_i: component ps_doa_low_0_0_fir_doa_low_re
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_N(39 downto 0),
      m_axis_data_tvalid => valid_re_N,
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
fir_doa_low_re_W_i: component ps_doa_low_0_0_fir_doa_low_re_HD2
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_W(39 downto 0),
      m_axis_data_tvalid => valid_re_W,
      s_axis_data_tdata(15 downto 0) => W(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
ila_0_i: component ps_doa_low_0_0_ila_0
     port map (
      clk => clk,
      probe0(13 downto 0) => N(15 downto 2),
      probe1(0) => valid_re_N,
      probe10(13 downto 0) => W(15 downto 2),
      probe11(0) => valid_re_W,
      probe12(15 downto 0) => fir_re_W(39 downto 24),
      probe13(0) => valid_im_W,
      probe14(15 downto 0) => fir_im_W(39 downto 24),
      probe15(0) => fifo_valid,
      probe2(15 downto 0) => fir_re_N(39 downto 24),
      probe3(0) => valid_im_N,
      probe4(15 downto 0) => fir_im_N(39 downto 24),
      probe5(13 downto 0) => E(15 downto 2),
      probe6(0) => valid_re_E,
      probe7(15 downto 0) => fir_re_E(39 downto 24),
      probe8(0) => valid_im_E,
      probe9(15 downto 0) => fir_im_E(39 downto 24)
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
    fifo_data : in STD_LOGIC_VECTOR ( 69 downto 0 )
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
      fifo_data(69 downto 28) => fifo_data(69 downto 28),
      fifo_data(27 downto 0) => B"0000000000000000000000000000",
      fifo_valid => fifo_valid,
      reset => reset
    );
end STRUCTURE;
