-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Nov 15 00:25:13 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_high_189_0_0/ps_doa_high_189_0_0_sim_netlist.vhdl
-- Design      : ps_doa_high_189_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_high_189_0_0_doa_high_189 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_valid : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 111 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_doa_high_189_0_0_doa_high_189 : entity is "doa_high_189";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_doa_high_189_0_0_doa_high_189 : entity is "soft";
end ps_doa_high_189_0_0_doa_high_189;

architecture STRUCTURE of ps_doa_high_189_0_0_doa_high_189 is
  component ps_doa_high_189_0_0_fir_doa_high_im_189 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component ps_doa_high_189_0_0_fir_doa_high_im_189;
  component ps_doa_high_189_0_0_fir_doa_high_im_189_HD1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_doa_high_189_0_0_fir_doa_high_im_189_HD1;
  component ps_doa_high_189_0_0_fir_doa_high_re_189 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component ps_doa_high_189_0_0_fir_doa_high_re_189;
  component ps_doa_high_189_0_0_fir_doa_high_re_189_HD2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_doa_high_189_0_0_fir_doa_high_re_189_HD2;
  component ps_doa_high_189_0_0_ila_2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_doa_high_189_0_0_ila_2;
  signal E0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of E0 : signal is std.standard.true;
  signal E1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E1 : signal is std.standard.true;
  signal N0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N0 : signal is std.standard.true;
  signal N1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N1 : signal is std.standard.true;
  signal W : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal W0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W0 : signal is std.standard.true;
  signal W1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W1 : signal is std.standard.true;
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
  attribute KEEP of \deci_high.E0_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \deci_high.E0_reg[0]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[10]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[11]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[12]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[13]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[1]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[2]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[3]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[4]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[5]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[6]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[7]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[8]\ : label is "yes";
  attribute KEEP of \deci_high.E0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E0_reg[9]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[0]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[10]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[11]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[12]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[13]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[1]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[2]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[3]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[4]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[5]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[6]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[7]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[8]\ : label is "yes";
  attribute KEEP of \deci_high.E1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_high.E1_reg[9]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[0]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[10]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[11]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[12]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[13]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[1]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[2]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[3]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[4]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[5]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[6]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[7]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[8]\ : label is "yes";
  attribute KEEP of \deci_high.N0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N0_reg[9]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[0]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[10]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[11]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[12]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[13]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[1]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[2]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[3]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[4]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[5]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[6]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[7]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[8]\ : label is "yes";
  attribute KEEP of \deci_high.N1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_high.N1_reg[9]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[0]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[10]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[11]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[12]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[13]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[1]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[2]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[3]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[4]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[5]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[6]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[7]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[8]\ : label is "yes";
  attribute KEEP of \deci_high.W0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W0_reg[9]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[0]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[10]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[11]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[12]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[13]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[1]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[2]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[3]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[4]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[5]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[6]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[7]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[8]\ : label is "yes";
  attribute KEEP of \deci_high.W1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_high.W1_reg[9]\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fir_doa_low_im_E_i : label is "fir_doa_high_im_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fir_doa_low_im_E_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fir_doa_low_im_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_im_N_i : label is "fir_doa_high_im_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_im_N_i : label is "yes";
  attribute x_core_info of fir_doa_low_im_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_im_W_i : label is "fir_doa_high_im_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_im_W_i : label is "yes";
  attribute x_core_info of fir_doa_low_im_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_re_E_i : label is "fir_doa_high_re_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_re_E_i : label is "yes";
  attribute x_core_info of fir_doa_low_re_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_re_N_i : label is "fir_doa_high_re_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_re_N_i : label is "yes";
  attribute x_core_info of fir_doa_low_re_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_low_re_W_i : label is "fir_doa_high_re_189,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_low_re_W_i : label is "yes";
  attribute x_core_info of fir_doa_low_re_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_2_i : label is "ila_2,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_2_i : label is "yes";
  attribute x_core_info of ila_2_i : label is "ila,Vivado 2025.1";
begin
\deci_high.E0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(56),
      Q => E0(0),
      R => '0'
    );
\deci_high.E0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(66),
      Q => E0(10),
      R => '0'
    );
\deci_high.E0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(67),
      Q => E0(11),
      R => '0'
    );
\deci_high.E0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(68),
      Q => E0(12),
      R => '0'
    );
\deci_high.E0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(69),
      Q => E0(13),
      R => '0'
    );
\deci_high.E0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(57),
      Q => E0(1),
      R => '0'
    );
\deci_high.E0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(58),
      Q => E0(2),
      R => '0'
    );
\deci_high.E0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(59),
      Q => E0(3),
      R => '0'
    );
\deci_high.E0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(60),
      Q => E0(4),
      R => '0'
    );
\deci_high.E0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(61),
      Q => E0(5),
      R => '0'
    );
\deci_high.E0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(62),
      Q => E0(6),
      R => '0'
    );
\deci_high.E0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(63),
      Q => E0(7),
      R => '0'
    );
\deci_high.E0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(64),
      Q => E0(8),
      R => '0'
    );
\deci_high.E0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(65),
      Q => E0(9),
      R => '0'
    );
\deci_high.E1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(70),
      Q => E1(0),
      R => '0'
    );
\deci_high.E1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(80),
      Q => E1(10),
      R => '0'
    );
\deci_high.E1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(81),
      Q => E1(11),
      R => '0'
    );
\deci_high.E1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(82),
      Q => E1(12),
      R => '0'
    );
\deci_high.E1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(83),
      Q => E1(13),
      R => '0'
    );
\deci_high.E1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(71),
      Q => E1(1),
      R => '0'
    );
\deci_high.E1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(72),
      Q => E1(2),
      R => '0'
    );
\deci_high.E1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(73),
      Q => E1(3),
      R => '0'
    );
\deci_high.E1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(74),
      Q => E1(4),
      R => '0'
    );
\deci_high.E1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(75),
      Q => E1(5),
      R => '0'
    );
\deci_high.E1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(76),
      Q => E1(6),
      R => '0'
    );
\deci_high.E1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(77),
      Q => E1(7),
      R => '0'
    );
\deci_high.E1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(78),
      Q => E1(8),
      R => '0'
    );
\deci_high.E1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(79),
      Q => E1(9),
      R => '0'
    );
\deci_high.N0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(28),
      Q => N0(0),
      R => '0'
    );
\deci_high.N0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(38),
      Q => N0(10),
      R => '0'
    );
\deci_high.N0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(39),
      Q => N0(11),
      R => '0'
    );
\deci_high.N0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(40),
      Q => N0(12),
      R => '0'
    );
\deci_high.N0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(41),
      Q => N0(13),
      R => '0'
    );
\deci_high.N0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(29),
      Q => N0(1),
      R => '0'
    );
\deci_high.N0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(30),
      Q => N0(2),
      R => '0'
    );
\deci_high.N0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(31),
      Q => N0(3),
      R => '0'
    );
\deci_high.N0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(32),
      Q => N0(4),
      R => '0'
    );
\deci_high.N0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(33),
      Q => N0(5),
      R => '0'
    );
\deci_high.N0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(34),
      Q => N0(6),
      R => '0'
    );
\deci_high.N0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(35),
      Q => N0(7),
      R => '0'
    );
\deci_high.N0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(36),
      Q => N0(8),
      R => '0'
    );
\deci_high.N0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(37),
      Q => N0(9),
      R => '0'
    );
\deci_high.N1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(42),
      Q => N1(0),
      R => '0'
    );
\deci_high.N1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(52),
      Q => N1(10),
      R => '0'
    );
\deci_high.N1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(53),
      Q => N1(11),
      R => '0'
    );
\deci_high.N1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(54),
      Q => N1(12),
      R => '0'
    );
\deci_high.N1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(55),
      Q => N1(13),
      R => '0'
    );
\deci_high.N1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(43),
      Q => N1(1),
      R => '0'
    );
\deci_high.N1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(44),
      Q => N1(2),
      R => '0'
    );
\deci_high.N1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(45),
      Q => N1(3),
      R => '0'
    );
\deci_high.N1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(46),
      Q => N1(4),
      R => '0'
    );
\deci_high.N1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(47),
      Q => N1(5),
      R => '0'
    );
\deci_high.N1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(48),
      Q => N1(6),
      R => '0'
    );
\deci_high.N1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(49),
      Q => N1(7),
      R => '0'
    );
\deci_high.N1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(50),
      Q => N1(8),
      R => '0'
    );
\deci_high.N1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(51),
      Q => N1(9),
      R => '0'
    );
\deci_high.W0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(84),
      Q => W0(0),
      R => '0'
    );
\deci_high.W0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(94),
      Q => W0(10),
      R => '0'
    );
\deci_high.W0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(95),
      Q => W0(11),
      R => '0'
    );
\deci_high.W0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(96),
      Q => W0(12),
      R => '0'
    );
\deci_high.W0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(97),
      Q => W0(13),
      R => '0'
    );
\deci_high.W0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(85),
      Q => W0(1),
      R => '0'
    );
\deci_high.W0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(86),
      Q => W0(2),
      R => '0'
    );
\deci_high.W0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(87),
      Q => W0(3),
      R => '0'
    );
\deci_high.W0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(88),
      Q => W0(4),
      R => '0'
    );
\deci_high.W0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(89),
      Q => W0(5),
      R => '0'
    );
\deci_high.W0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(90),
      Q => W0(6),
      R => '0'
    );
\deci_high.W0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(91),
      Q => W0(7),
      R => '0'
    );
\deci_high.W0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(92),
      Q => W0(8),
      R => '0'
    );
\deci_high.W0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(93),
      Q => W0(9),
      R => '0'
    );
\deci_high.W1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(98),
      Q => W1(0),
      R => '0'
    );
\deci_high.W1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(108),
      Q => W1(10),
      R => '0'
    );
\deci_high.W1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(109),
      Q => W1(11),
      R => '0'
    );
\deci_high.W1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(110),
      Q => W1(12),
      R => '0'
    );
\deci_high.W1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(111),
      Q => W1(13),
      R => '0'
    );
\deci_high.W1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(99),
      Q => W1(1),
      R => '0'
    );
\deci_high.W1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(100),
      Q => W1(2),
      R => '0'
    );
\deci_high.W1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(101),
      Q => W1(3),
      R => '0'
    );
\deci_high.W1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(102),
      Q => W1(4),
      R => '0'
    );
\deci_high.W1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(103),
      Q => W1(5),
      R => '0'
    );
\deci_high.W1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(104),
      Q => W1(6),
      R => '0'
    );
\deci_high.W1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(105),
      Q => W1(7),
      R => '0'
    );
\deci_high.W1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(106),
      Q => W1(8),
      R => '0'
    );
\deci_high.W1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_valid,
      D => fifo_data(107),
      Q => W1(9),
      R => '0'
    );
fir_doa_low_im_E_i: component ps_doa_high_189_0_0_fir_doa_high_im_189
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_E(39 downto 0),
      m_axis_data_tvalid => valid_im_E,
      s_axis_data_tdata(31 downto 18) => E1(13 downto 0),
      s_axis_data_tdata(17 downto 4) => E0(13 downto 0),
      s_axis_data_tdata(3 downto 0) => B"0000",
      s_axis_data_tready => NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_im_N_i: component ps_doa_high_189_0_0_fir_doa_high_im_189
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_N(39 downto 0),
      m_axis_data_tvalid => valid_im_N,
      s_axis_data_tdata(31 downto 18) => N1(13 downto 0),
      s_axis_data_tdata(17 downto 4) => N0(13 downto 0),
      s_axis_data_tdata(3 downto 0) => B"0000",
      s_axis_data_tready => NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_im_W_i: component ps_doa_high_189_0_0_fir_doa_high_im_189_HD1
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_im_W(39 downto 0),
      m_axis_data_tvalid => valid_im_W,
      s_axis_data_tdata(31 downto 0) => W(31 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_re_E_i: component ps_doa_high_189_0_0_fir_doa_high_re_189
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_E(39 downto 0),
      m_axis_data_tvalid => valid_re_E,
      s_axis_data_tdata(31 downto 18) => E1(13 downto 0),
      s_axis_data_tdata(17 downto 4) => E0(13 downto 0),
      s_axis_data_tdata(3 downto 0) => B"0000",
      s_axis_data_tready => NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
fir_doa_low_re_N_i: component ps_doa_high_189_0_0_fir_doa_high_re_189
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_N(39 downto 0),
      m_axis_data_tvalid => valid_re_N,
      s_axis_data_tdata(31 downto 18) => N1(13 downto 0),
      s_axis_data_tdata(17 downto 4) => N0(13 downto 0),
      s_axis_data_tdata(3 downto 0) => B"0000",
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
fir_doa_low_re_W_i: component ps_doa_high_189_0_0_fir_doa_high_re_189_HD2
     port map (
      aclk => clk,
      aresetn => fir_doa_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 0) => fir_re_W(39 downto 0),
      m_axis_data_tvalid => valid_re_W,
      s_axis_data_tdata(31 downto 0) => W(31 downto 0),
      s_axis_data_tready => NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fifo_valid
    );
ila_2_i: component ps_doa_high_189_0_0_ila_2
     port map (
      clk => clk,
      probe0(13 downto 0) => N0(13 downto 0),
      probe1(13 downto 0) => N1(13 downto 0),
      probe10(0) => valid_im_E,
      probe11(15 downto 0) => fir_im_E(39 downto 24),
      probe12(13 downto 0) => W0(13 downto 0),
      probe13(13 downto 0) => W1(13 downto 0),
      probe14(0) => valid_re_W,
      probe15(15 downto 0) => fir_re_W(39 downto 24),
      probe16(0) => valid_im_W,
      probe17(15 downto 0) => fir_im_W(39 downto 24),
      probe18(0) => fifo_valid,
      probe2(0) => valid_re_N,
      probe3(15 downto 0) => fir_re_N(39 downto 24),
      probe4(0) => valid_im_N,
      probe5(15 downto 0) => fir_im_N(39 downto 24),
      probe6(13 downto 0) => E0(13 downto 0),
      probe7(13 downto 0) => E1(13 downto 0),
      probe8(0) => valid_re_E,
      probe9(15 downto 0) => fir_re_E(39 downto 24)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_high_189_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_valid : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 111 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_doa_high_189_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_doa_high_189_0_0 : entity is "ps_doa_high_189_0_0,doa_high_189,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_doa_high_189_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_doa_high_189_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_doa_high_189_0_0 : entity is "doa_high_189,Vivado 2025.1";
end ps_doa_high_189_0_0;

architecture STRUCTURE of ps_doa_high_189_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_doa_high_189_0_0_doa_high_189
     port map (
      clk => clk,
      fifo_data(111 downto 28) => fifo_data(111 downto 28),
      fifo_data(27 downto 0) => B"0000000000000000000000000000",
      fifo_valid => fifo_valid,
      reset => reset
    );
end STRUCTURE;
