-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Dec 21 00:44:09 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_high_0_0/ps_comp_high_0_0_sim_netlist.vhdl
-- Design      : ps_comp_high_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_high_0_0_det_signal is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    active : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 143 downto 0 );
    signal_sample : out STD_LOGIC_VECTOR ( 23 downto 0 );
    signal_counter : out STD_LOGIC_VECTOR ( 8 downto 0 );
    signal_done : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_high_0_0_det_signal : entity is "det_signal";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_comp_high_0_0_det_signal : entity is "soft";
end ps_comp_high_0_0_det_signal;

architecture STRUCTURE of ps_comp_high_0_0_det_signal is
  component div_weighted_HD1 is
  port (
    aclk : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 79 downto 0 );
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component div_weighted_HD1;
  component ps_comp_high_0_0_div_weighted is
  port (
    aclk : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 79 downto 0 )
  );
  end component ps_comp_high_0_0_div_weighted;
  component ps_comp_high_0_0_dsp_incr_env is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 20 downto 0 );
    B : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    SCLRP : in STD_LOGIC
  );
  end component ps_comp_high_0_0_dsp_incr_env;
  component ps_comp_high_0_0_dsp_incr_env_HD2 is
  port (
    CLK : in STD_LOGIC;
    SCLRP : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 20 downto 0 );
    B : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component ps_comp_high_0_0_dsp_incr_env_HD2;
  component dsp_phase_env_HD3 is
  port (
    CLK : in STD_LOGIC;
    SCLRP : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 19 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component dsp_phase_env_HD3;
  component ps_comp_high_0_0_dsp_phase_env is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 19 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    SCLRP : in STD_LOGIC
  );
  end component ps_comp_high_0_0_dsp_phase_env;
  component ps_comp_high_0_0_ila_3 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component ps_comp_high_0_0_ila_3;
  signal \<const0>\ : STD_LOGIC;
  signal \det_signal.acc_reset_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.acc_reset_reg_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_19_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_20_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_21_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_23_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_24_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_25_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_26_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_27_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_28_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_29_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_30_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_31_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_32_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_33_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_34_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_35_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_36_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_37_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_10\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_11\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_12\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_13\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_14\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_8\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_13_n_9\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_10\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_11\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_12\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_13\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_14\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_8\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_22_n_9\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_3_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_4_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_4_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_4_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_4_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_4_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_4_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[16]_i_4_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_19_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_20_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_21_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_23_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_24_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_25_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_26_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_27_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_28_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_29_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_30_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_31_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_32_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_33_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_34_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_35_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_36_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_37_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_10\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_11\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_12\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_13\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_14\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_8\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_13_n_9\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_10\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_11\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_12\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_13\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_14\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_8\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_22_n_9\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_3_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_4_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_4_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_4_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_4_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_4_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_4_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[16]_i_4_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_19_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_20_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_21_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_23_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_24_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_25_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_26_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_27_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_28_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_29_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_30_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_31_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_32_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_33_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_34_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_35_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_36_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_37_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_10\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_11\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_12\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_13\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_14\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_8\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_13_n_9\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_10\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_11\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_12\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_13\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_14\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_8\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_22_n_9\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_3_n_15\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_4_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_4_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_4_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_4_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_4_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_4_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[16]_i_4_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_19_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[19]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[19]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[19]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[19]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[19]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[19]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[19]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[19]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_6_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_6_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_6_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_6_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_6_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_6_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[19]_i_6_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_E_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[19]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[19]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[19]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[19]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[19]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[19]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[19]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[19]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_6_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_6_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_6_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_6_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_6_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_6_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[19]_i_6_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_N_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[19]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[19]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[19]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[19]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[19]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[19]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[19]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[19]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_6_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_6_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_6_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_6_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_6_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_6_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[19]_i_6_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_phase_W_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.div_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.div_counter[5]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.div_start_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[19]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[19]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[19]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[19]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg00_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \det_signal.dsp_phase_EW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_EW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[19]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[19]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[19]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[19]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[19]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[19]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[19]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[19]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg01_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_7_n_12\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_7_n_13\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_7_n_14\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_7_n_15\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_7_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_7_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[19]_i_7_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NE_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_18_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[19]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[19]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[19]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[19]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[19]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[19]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[19]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[19]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_11_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_12_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_13_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_14_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_15_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_16_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_17_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg0\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_6_n_12\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_6_n_13\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_6_n_14\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_6_n_15\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_6_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_6_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[19]_i_6_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_10\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_11\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_12\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_13\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_14\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_15\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_7\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_8\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_10_n_9\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.dsp_phase_NW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_EW[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_EW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_NE[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE_reg0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \det_signal.env_NE_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_NE_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_NW[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_NW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[0]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[10]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[11]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[12]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[13]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[14]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[16]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[17]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[18]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[19]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[1]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[20]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[21]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[22]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[23]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[24]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[2]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[3]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[4]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[5]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[6]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[8]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW[9]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_EW_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_E[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[23]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[23]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[23]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[23]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[23]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[23]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[23]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[23]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[23]_i_2_n_9\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_E_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[15]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[23]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[23]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[23]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[23]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[23]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[23]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[23]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[23]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[31]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[7]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_NE_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[0]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[10]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[11]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[12]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[13]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[14]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[16]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[17]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[18]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[19]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[1]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[20]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[21]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[22]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[23]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[24]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[2]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[3]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[4]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[5]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[6]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_10_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[8]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW[9]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_NW_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_N[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[23]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[23]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[23]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[23]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[23]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[23]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[23]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[23]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_N_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.env_sum_W[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[23]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[23]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[23]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[23]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[23]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[23]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[23]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[23]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.env_sum_W_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.err_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.err_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.err_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.err_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.err_ov_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.err_ov_reg_n_0\ : STD_LOGIC;
  signal \det_signal.has_signal_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.max_doa_diff[11]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.proc_done_reg0\ : STD_LOGIC;
  signal \det_signal.proc_signal_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.run_reg[0]__0\ : STD_LOGIC;
  signal \det_signal.run_reg_n_0_[1]\ : STD_LOGIC;
  signal \det_signal.run_reg_n_0_[2]\ : STD_LOGIC;
  signal \det_signal.start_proc_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.valid_count_i_1_n_0\ : STD_LOGIC;
  signal diff_env_E01_out : STD_LOGIC_VECTOR ( 16 to 16 );
  signal diff_env_N02_out : STD_LOGIC_VECTOR ( 16 to 16 );
  signal diff_env_W00_out : STD_LOGIC_VECTOR ( 16 to 16 );
  signal diff_err_EW00_out : STD_LOGIC_VECTOR ( 12 to 12 );
  signal diff_err_NE0 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal diff_err_NW0 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal diff_phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diff_phase_E03_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diff_phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diff_phase_N04_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diff_phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal diff_phase_W02_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal div_counter : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of div_counter : signal is std.standard.true;
  signal div_delay : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of div_delay : signal is std.standard.true;
  signal div_start : STD_LOGIC;
  attribute MARK_DEBUG of div_start : signal is std.standard.true;
  signal dsp_phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal dsp_phase_EW : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of dsp_phase_EW : signal is std.standard.true;
  signal dsp_phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal dsp_phase_NE : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of dsp_phase_NE : signal is std.standard.true;
  signal dsp_phase_NW : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of dsp_phase_NW : signal is std.standard.true;
  signal dsp_phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal dsp_sum_EW : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute MARK_DEBUG of dsp_sum_EW : signal is std.standard.true;
  signal dsp_sum_NE : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute MARK_DEBUG of dsp_sum_NE : signal is std.standard.true;
  signal dsp_sum_NW : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute MARK_DEBUG of dsp_sum_NW : signal is std.standard.true;
  signal env_E : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_EW : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal env_EW0 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \env_EW__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal env_N : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_NE : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute MARK_DEBUG of env_NE : signal is std.standard.true;
  signal env_NW : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal env_NW0 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal env_W : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_sum_E : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of env_sum_E : signal is std.standard.true;
  signal env_sum_EW : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of env_sum_EW : signal is std.standard.true;
  signal env_sum_EW0 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \env_sum_E__0\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal env_sum_N : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of env_sum_N : signal is std.standard.true;
  signal env_sum_NE : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of env_sum_NE : signal is std.standard.true;
  signal env_sum_NE0 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal env_sum_NW : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of env_sum_NW : signal is std.standard.true;
  signal env_sum_NW0 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal env_sum_W : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of env_sum_W : signal is std.standard.true;
  signal err_EW : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal err_NE : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal err_NW : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal err_count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal has_signal : STD_LOGIC;
  signal max_doa_diff : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal max_doa_diff0 : STD_LOGIC;
  signal min_env : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal min_env0 : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal \p_0_in1_in__0\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal p_0_in4_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal p_2_in6_in : STD_LOGIC;
  signal phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_EW : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_EW : signal is std.standard.true;
  signal phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_NE : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_NE : signal is std.standard.true;
  signal phase_NW : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_NW : signal is std.standard.true;
  signal phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prev_phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prev_phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prev_phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal proc_done : STD_LOGIC;
  attribute MARK_DEBUG of proc_done : signal is std.standard.true;
  signal proc_signal : STD_LOGIC;
  attribute MARK_DEBUG of proc_signal : signal is std.standard.true;
  signal \^signal_done\ : STD_LOGIC;
  attribute MARK_DEBUG of signal_done : signal is std.standard.true;
  signal start_proc : STD_LOGIC;
  attribute MARK_DEBUG of start_proc : signal is std.standard.true;
  signal valid_count : STD_LOGIC;
  signal valid_env : STD_LOGIC;
  signal valid_env0 : STD_LOGIC;
  signal valid_err : STD_LOGIC;
  signal valid_err0 : STD_LOGIC;
  signal valid_phase_EW : STD_LOGIC;
  attribute MARK_DEBUG of valid_phase_EW : signal is std.standard.true;
  signal valid_phase_NE : STD_LOGIC;
  attribute MARK_DEBUG of valid_phase_NE : signal is std.standard.true;
  signal valid_phase_NW : STD_LOGIC;
  attribute MARK_DEBUG of valid_phase_NW : signal is std.standard.true;
  signal \NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_env_E_reg[16]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_E_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_E_reg[16]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_env_E_reg[16]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_env_N_reg[16]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_N_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_N_reg[16]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_env_N_reg[16]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_env_W_reg[16]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_W_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_W_reg[16]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_env_W_reg[16]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_err_EW_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_err_EW_reg[12]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_err_NE_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_err_NE_reg[12]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_err_NW_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_err_NW_reg[12]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_phase_E_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.diff_phase_E_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_phase_E_reg[19]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.diff_phase_E_reg[19]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_phase_N_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.diff_phase_N_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_phase_N_reg[19]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.diff_phase_N_reg[19]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_phase_W_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.diff_phase_W_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_phase_W_reg[19]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.diff_phase_W_reg[19]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.dsp_phase_EW_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.dsp_phase_EW_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.dsp_phase_NE_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.dsp_phase_NE_reg[19]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.dsp_phase_NE_reg[19]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.dsp_phase_NE_reg[19]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.dsp_phase_NW_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.dsp_phase_NW_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.dsp_phase_NW_reg[19]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_det_signal.dsp_phase_NW_reg[19]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.env_EW_reg[17]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.env_EW_reg[17]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_det_signal.env_NE_reg[17]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.env_NE_reg[17]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_det_signal.env_NW_reg[17]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.env_NW_reg[17]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_det_signal.env_sum_EW_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.env_sum_EW_reg[24]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.env_sum_E_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_det_signal.env_sum_NE_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.env_sum_NE_reg[24]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.env_sum_NW_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.env_sum_NW_reg[24]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.env_sum_N_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_det_signal.env_sum_W_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal NLW_dsp_incr_env_E_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_dsp_incr_env_N_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_dsp_incr_env_W_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[16]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[16]_i_22\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[16]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[16]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[16]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[16]_i_22\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[16]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[16]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[16]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[16]_i_22\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[16]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[16]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_err_EW_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_err_EW_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_err_NE_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_err_NE_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_err_NW_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_err_NW_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[15]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[19]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[7]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[15]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[19]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[7]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[15]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[19]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[7]_i_10\ : label is 35;
  attribute KEEP : string;
  attribute KEEP of \det_signal.div_counter_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.div_counter_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.div_counter_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.div_counter_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.div_counter_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.div_counter_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.div_delay_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.div_delay_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.div_delay_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.div_start_reg\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_EW_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_EW_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_EW_reg[19]_i_1\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_EW_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_EW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_EW_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_EW_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NE_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NE_reg[15]_i_10\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_NE_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NE_reg[19]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NE_reg[19]_i_7\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_NE_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NE_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NE_reg[7]_i_10\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_NE_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NE_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NW_reg[15]_i_10\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_NW_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NW_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NW_reg[19]_i_6\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_NW_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NW_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.dsp_phase_NW_reg[7]_i_10\ : label is 35;
  attribute KEEP of \det_signal.dsp_phase_NW_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.dsp_phase_NW_reg[9]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_EW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.env_EW_reg[17]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.env_EW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_NE_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_NE_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_NE_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[17]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_NE_reg[17]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_NE_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_NE_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_NE_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_NE_reg[9]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_NW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.env_NW_reg[17]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.env_NW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_EW_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_EW_reg[15]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_EW_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[20]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[20]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[21]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[21]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[22]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[22]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[23]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_EW_reg[23]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_EW_reg[24]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[24]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_EW_reg[24]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_EW_reg[25]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[25]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[26]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[26]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[27]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[27]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[28]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[28]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[29]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[29]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[30]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[30]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[31]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[31]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_EW_reg[7]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_EW_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_EW_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_EW_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_E_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_E_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[20]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[20]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[21]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[21]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[22]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[22]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[23]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_E_reg[23]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_E_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_E_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_NE_reg[15]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_NE_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[20]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[20]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[21]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[21]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[22]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[22]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[23]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_NE_reg[23]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_NE_reg[24]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[24]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_NE_reg[24]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_NE_reg[25]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[25]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[26]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[26]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[27]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[27]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[28]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[28]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[29]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[29]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[30]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[30]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[31]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[31]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_NE_reg[7]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_NE_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NE_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NE_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_NW_reg[15]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_NW_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[20]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[20]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[21]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[21]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[22]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[22]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[23]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_NW_reg[23]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_NW_reg[24]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[24]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_NW_reg[24]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_NW_reg[25]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[25]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[26]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[26]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[27]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[27]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[28]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[28]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[29]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[29]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[30]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[30]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[31]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[31]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_NW_reg[7]_i_2\ : label is 35;
  attribute KEEP of \det_signal.env_sum_NW_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_NW_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_NW_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_N_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_N_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[20]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[20]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[21]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[21]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[22]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[22]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[23]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_N_reg[23]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_N_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_N_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_W_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_W_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[20]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[20]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[21]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[21]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[22]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[22]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[23]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_W_reg[23]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.env_sum_W_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.env_sum_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_sum_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_sum_W_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \det_signal.err_count[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \det_signal.err_count[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \det_signal.err_ov_i_1\ : label is "soft_lutpair1";
  attribute KEEP of \det_signal.proc_done_reg\ : label is "yes";
  attribute KEEP of \det_signal.proc_signal_reg\ : label is "yes";
  attribute mark_debug_string of \det_signal.proc_signal_reg\ : label is "yes";
  attribute KEEP of \det_signal.start_proc_reg\ : label is "yes";
  attribute SOFT_HLUTNM of \det_signal.valid_count_i_1\ : label is "soft_lutpair1";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of div_phase_EW_i : label is "div_weighted,div_gen_v5_1_24,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of div_phase_EW_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of div_phase_EW_i : label is "div_gen_v5_1_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of div_phase_NE_i : label is "div_weighted,div_gen_v5_1_24,{}";
  attribute downgradeipidentifiedwarnings of div_phase_NE_i : label is "yes";
  attribute x_core_info of div_phase_NE_i : label is "div_gen_v5_1_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of div_phase_NW_i : label is "div_weighted,div_gen_v5_1_24,{}";
  attribute downgradeipidentifiedwarnings of div_phase_NW_i : label is "yes";
  attribute x_core_info of div_phase_NW_i : label is "div_gen_v5_1_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of dsp_incr_env_E : label is "dsp_incr_env,dsp_macro_v1_0_8,{}";
  attribute downgradeipidentifiedwarnings of dsp_incr_env_E : label is "yes";
  attribute x_core_info of dsp_incr_env_E : label is "dsp_macro_v1_0_8,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of dsp_incr_env_N : label is "dsp_incr_env,dsp_macro_v1_0_8,{}";
  attribute downgradeipidentifiedwarnings of dsp_incr_env_N : label is "yes";
  attribute x_core_info of dsp_incr_env_N : label is "dsp_macro_v1_0_8,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of dsp_incr_env_W : label is "dsp_incr_env,dsp_macro_v1_0_8,{}";
  attribute downgradeipidentifiedwarnings of dsp_incr_env_W : label is "yes";
  attribute x_core_info of dsp_incr_env_W : label is "dsp_macro_v1_0_8,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of dsp_phase_env_EW : label is "dsp_phase_env,dsp_macro_v1_0_8,{}";
  attribute downgradeipidentifiedwarnings of dsp_phase_env_EW : label is "yes";
  attribute x_core_info of dsp_phase_env_EW : label is "dsp_macro_v1_0_8,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of dsp_phase_env_NE : label is "dsp_phase_env,dsp_macro_v1_0_8,{}";
  attribute downgradeipidentifiedwarnings of dsp_phase_env_NE : label is "yes";
  attribute x_core_info of dsp_phase_env_NE : label is "dsp_macro_v1_0_8,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of dsp_phase_env_NW : label is "dsp_phase_env,dsp_macro_v1_0_8,{}";
  attribute downgradeipidentifiedwarnings of dsp_phase_env_NW : label is "yes";
  attribute x_core_info of dsp_phase_env_NW : label is "dsp_macro_v1_0_8,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_3,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
begin
  signal_counter(8) <= \<const0>\;
  signal_counter(7) <= \<const0>\;
  signal_counter(6) <= \<const0>\;
  signal_counter(5) <= \<const0>\;
  signal_counter(4) <= \<const0>\;
  signal_counter(3) <= \<const0>\;
  signal_counter(2) <= \<const0>\;
  signal_counter(1) <= \<const0>\;
  signal_counter(0) <= \<const0>\;
  signal_done <= \^signal_done\;
  signal_sample(23) <= \<const0>\;
  signal_sample(22) <= \<const0>\;
  signal_sample(21) <= \<const0>\;
  signal_sample(20) <= \<const0>\;
  signal_sample(19) <= \<const0>\;
  signal_sample(18) <= \<const0>\;
  signal_sample(17) <= \<const0>\;
  signal_sample(16) <= \<const0>\;
  signal_sample(15) <= \<const0>\;
  signal_sample(14) <= \<const0>\;
  signal_sample(13) <= \<const0>\;
  signal_sample(12) <= \<const0>\;
  signal_sample(11) <= \<const0>\;
  signal_sample(10) <= \<const0>\;
  signal_sample(9) <= \<const0>\;
  signal_sample(8) <= \<const0>\;
  signal_sample(7) <= \<const0>\;
  signal_sample(6) <= \<const0>\;
  signal_sample(5) <= \<const0>\;
  signal_sample(4) <= \<const0>\;
  signal_sample(3) <= \<const0>\;
  signal_sample(2) <= \<const0>\;
  signal_sample(1) <= \<const0>\;
  signal_sample(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\det_signal.acc_reset_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700550000005500"
    )
        port map (
      I0 => has_signal,
      I1 => valid_count,
      I2 => \det_signal.err_ov_reg_n_0\,
      I3 => \det_signal.run_reg_n_0_[2]\,
      I4 => \det_signal.err_count[0]_i_2_n_0\,
      I5 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.acc_reset_i_1_n_0\
    );
\det_signal.acc_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.acc_reset_i_1_n_0\,
      Q => \det_signal.acc_reset_reg_n_0\,
      R => '0'
    );
\det_signal.diff_env_E[16]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(10),
      I1 => \det_signal.diff_env_E_reg[16]_i_13_n_13\,
      O => \det_signal.diff_env_E[16]_i_10_n_0\
    );
\det_signal.diff_env_E[16]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(9),
      I1 => \det_signal.diff_env_E_reg[16]_i_13_n_14\,
      O => \det_signal.diff_env_E[16]_i_11_n_0\
    );
\det_signal.diff_env_E[16]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(8),
      I1 => \det_signal.diff_env_E_reg[16]_i_13_n_15\,
      O => \det_signal.diff_env_E[16]_i_12_n_0\
    );
\det_signal.diff_env_E[16]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(7),
      I1 => \det_signal.diff_env_E_reg[16]_i_22_n_8\,
      O => \det_signal.diff_env_E[16]_i_14_n_0\
    );
\det_signal.diff_env_E[16]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(6),
      I1 => \det_signal.diff_env_E_reg[16]_i_22_n_9\,
      O => \det_signal.diff_env_E[16]_i_15_n_0\
    );
\det_signal.diff_env_E[16]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(5),
      I1 => \det_signal.diff_env_E_reg[16]_i_22_n_10\,
      O => \det_signal.diff_env_E[16]_i_16_n_0\
    );
\det_signal.diff_env_E[16]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(4),
      I1 => \det_signal.diff_env_E_reg[16]_i_22_n_11\,
      O => \det_signal.diff_env_E[16]_i_17_n_0\
    );
\det_signal.diff_env_E[16]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(3),
      I1 => \det_signal.diff_env_E_reg[16]_i_22_n_12\,
      O => \det_signal.diff_env_E[16]_i_18_n_0\
    );
\det_signal.diff_env_E[16]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(2),
      I1 => \det_signal.diff_env_E_reg[16]_i_22_n_13\,
      O => \det_signal.diff_env_E[16]_i_19_n_0\
    );
\det_signal.diff_env_E[16]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(1),
      I1 => \det_signal.diff_env_E_reg[16]_i_22_n_14\,
      O => \det_signal.diff_env_E[16]_i_20_n_0\
    );
\det_signal.diff_env_E[16]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(0),
      I1 => \det_signal.diff_env_E_reg[16]_i_22_n_15\,
      O => \det_signal.diff_env_E[16]_i_21_n_0\
    );
\det_signal.diff_env_E[16]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(15),
      O => \det_signal.diff_env_E[16]_i_23_n_0\
    );
\det_signal.diff_env_E[16]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(14),
      O => \det_signal.diff_env_E[16]_i_24_n_0\
    );
\det_signal.diff_env_E[16]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(13),
      O => \det_signal.diff_env_E[16]_i_25_n_0\
    );
\det_signal.diff_env_E[16]_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(12),
      O => \det_signal.diff_env_E[16]_i_26_n_0\
    );
\det_signal.diff_env_E[16]_i_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(11),
      O => \det_signal.diff_env_E[16]_i_27_n_0\
    );
\det_signal.diff_env_E[16]_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(10),
      O => \det_signal.diff_env_E[16]_i_28_n_0\
    );
\det_signal.diff_env_E[16]_i_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(9),
      O => \det_signal.diff_env_E[16]_i_29_n_0\
    );
\det_signal.diff_env_E[16]_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(8),
      O => \det_signal.diff_env_E[16]_i_30_n_0\
    );
\det_signal.diff_env_E[16]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(7),
      O => \det_signal.diff_env_E[16]_i_31_n_0\
    );
\det_signal.diff_env_E[16]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(6),
      O => \det_signal.diff_env_E[16]_i_32_n_0\
    );
\det_signal.diff_env_E[16]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(5),
      O => \det_signal.diff_env_E[16]_i_33_n_0\
    );
\det_signal.diff_env_E[16]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(4),
      O => \det_signal.diff_env_E[16]_i_34_n_0\
    );
\det_signal.diff_env_E[16]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(3),
      O => \det_signal.diff_env_E[16]_i_35_n_0\
    );
\det_signal.diff_env_E[16]_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(2),
      O => \det_signal.diff_env_E[16]_i_36_n_0\
    );
\det_signal.diff_env_E[16]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(1),
      O => \det_signal.diff_env_E[16]_i_37_n_0\
    );
\det_signal.diff_env_E[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(15),
      I1 => \det_signal.diff_env_E_reg[16]_i_13_n_8\,
      O => \det_signal.diff_env_E[16]_i_5_n_0\
    );
\det_signal.diff_env_E[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(14),
      I1 => \det_signal.diff_env_E_reg[16]_i_13_n_9\,
      O => \det_signal.diff_env_E[16]_i_6_n_0\
    );
\det_signal.diff_env_E[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(13),
      I1 => \det_signal.diff_env_E_reg[16]_i_13_n_10\,
      O => \det_signal.diff_env_E[16]_i_7_n_0\
    );
\det_signal.diff_env_E[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(12),
      I1 => \det_signal.diff_env_E_reg[16]_i_13_n_11\,
      O => \det_signal.diff_env_E[16]_i_8_n_0\
    );
\det_signal.diff_env_E[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(11),
      I1 => \det_signal.diff_env_E_reg[16]_i_13_n_12\,
      O => \det_signal.diff_env_E[16]_i_9_n_0\
    );
\det_signal.diff_env_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => diff_env_E01_out(16),
      Q => p_0_in4_in,
      R => '0'
    );
\det_signal.diff_env_E_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_E_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => diff_env_E01_out(16),
      S(7 downto 1) => B"0000000",
      S(0) => \det_signal.diff_env_E_reg[16]_i_3_n_15\
    );
\det_signal.diff_env_E_reg[16]_i_13\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_E_reg[16]_i_22_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_E_reg[16]_i_13_n_0\,
      CO(6) => \det_signal.diff_env_E_reg[16]_i_13_n_1\,
      CO(5) => \det_signal.diff_env_E_reg[16]_i_13_n_2\,
      CO(4) => \det_signal.diff_env_E_reg[16]_i_13_n_3\,
      CO(3) => \det_signal.diff_env_E_reg[16]_i_13_n_4\,
      CO(2) => \det_signal.diff_env_E_reg[16]_i_13_n_5\,
      CO(1) => \det_signal.diff_env_E_reg[16]_i_13_n_6\,
      CO(0) => \det_signal.diff_env_E_reg[16]_i_13_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.diff_env_E_reg[16]_i_13_n_8\,
      O(6) => \det_signal.diff_env_E_reg[16]_i_13_n_9\,
      O(5) => \det_signal.diff_env_E_reg[16]_i_13_n_10\,
      O(4) => \det_signal.diff_env_E_reg[16]_i_13_n_11\,
      O(3) => \det_signal.diff_env_E_reg[16]_i_13_n_12\,
      O(2) => \det_signal.diff_env_E_reg[16]_i_13_n_13\,
      O(1) => \det_signal.diff_env_E_reg[16]_i_13_n_14\,
      O(0) => \det_signal.diff_env_E_reg[16]_i_13_n_15\,
      S(7) => \det_signal.diff_env_E[16]_i_23_n_0\,
      S(6) => \det_signal.diff_env_E[16]_i_24_n_0\,
      S(5) => \det_signal.diff_env_E[16]_i_25_n_0\,
      S(4) => \det_signal.diff_env_E[16]_i_26_n_0\,
      S(3) => \det_signal.diff_env_E[16]_i_27_n_0\,
      S(2) => \det_signal.diff_env_E[16]_i_28_n_0\,
      S(1) => \det_signal.diff_env_E[16]_i_29_n_0\,
      S(0) => \det_signal.diff_env_E[16]_i_30_n_0\
    );
\det_signal.diff_env_E_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_E_reg[16]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_E_reg[16]_i_2_n_0\,
      CO(6) => \det_signal.diff_env_E_reg[16]_i_2_n_1\,
      CO(5) => \det_signal.diff_env_E_reg[16]_i_2_n_2\,
      CO(4) => \det_signal.diff_env_E_reg[16]_i_2_n_3\,
      CO(3) => \det_signal.diff_env_E_reg[16]_i_2_n_4\,
      CO(2) => \det_signal.diff_env_E_reg[16]_i_2_n_5\,
      CO(1) => \det_signal.diff_env_E_reg[16]_i_2_n_6\,
      CO(0) => \det_signal.diff_env_E_reg[16]_i_2_n_7\,
      DI(7 downto 0) => min_env(15 downto 8),
      O(7 downto 0) => \NLW_det_signal.diff_env_E_reg[16]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_env_E[16]_i_5_n_0\,
      S(6) => \det_signal.diff_env_E[16]_i_6_n_0\,
      S(5) => \det_signal.diff_env_E[16]_i_7_n_0\,
      S(4) => \det_signal.diff_env_E[16]_i_8_n_0\,
      S(3) => \det_signal.diff_env_E[16]_i_9_n_0\,
      S(2) => \det_signal.diff_env_E[16]_i_10_n_0\,
      S(1) => \det_signal.diff_env_E[16]_i_11_n_0\,
      S(0) => \det_signal.diff_env_E[16]_i_12_n_0\
    );
\det_signal.diff_env_E_reg[16]_i_22\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_E_reg[16]_i_22_n_0\,
      CO(6) => \det_signal.diff_env_E_reg[16]_i_22_n_1\,
      CO(5) => \det_signal.diff_env_E_reg[16]_i_22_n_2\,
      CO(4) => \det_signal.diff_env_E_reg[16]_i_22_n_3\,
      CO(3) => \det_signal.diff_env_E_reg[16]_i_22_n_4\,
      CO(2) => \det_signal.diff_env_E_reg[16]_i_22_n_5\,
      CO(1) => \det_signal.diff_env_E_reg[16]_i_22_n_6\,
      CO(0) => \det_signal.diff_env_E_reg[16]_i_22_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \det_signal.diff_env_E_reg[16]_i_22_n_8\,
      O(6) => \det_signal.diff_env_E_reg[16]_i_22_n_9\,
      O(5) => \det_signal.diff_env_E_reg[16]_i_22_n_10\,
      O(4) => \det_signal.diff_env_E_reg[16]_i_22_n_11\,
      O(3) => \det_signal.diff_env_E_reg[16]_i_22_n_12\,
      O(2) => \det_signal.diff_env_E_reg[16]_i_22_n_13\,
      O(1) => \det_signal.diff_env_E_reg[16]_i_22_n_14\,
      O(0) => \det_signal.diff_env_E_reg[16]_i_22_n_15\,
      S(7) => \det_signal.diff_env_E[16]_i_31_n_0\,
      S(6) => \det_signal.diff_env_E[16]_i_32_n_0\,
      S(5) => \det_signal.diff_env_E[16]_i_33_n_0\,
      S(4) => \det_signal.diff_env_E[16]_i_34_n_0\,
      S(3) => \det_signal.diff_env_E[16]_i_35_n_0\,
      S(2) => \det_signal.diff_env_E[16]_i_36_n_0\,
      S(1) => \det_signal.diff_env_E[16]_i_37_n_0\,
      S(0) => env_E(0)
    );
\det_signal.diff_env_E_reg[16]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_E_reg[16]_i_13_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_E_reg[16]_i_3_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_E_reg[16]_i_3_O_UNCONNECTED\(7 downto 1),
      O(0) => \det_signal.diff_env_E_reg[16]_i_3_n_15\,
      S(7 downto 0) => B"00000001"
    );
\det_signal.diff_env_E_reg[16]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_E_reg[16]_i_4_n_0\,
      CO(6) => \det_signal.diff_env_E_reg[16]_i_4_n_1\,
      CO(5) => \det_signal.diff_env_E_reg[16]_i_4_n_2\,
      CO(4) => \det_signal.diff_env_E_reg[16]_i_4_n_3\,
      CO(3) => \det_signal.diff_env_E_reg[16]_i_4_n_4\,
      CO(2) => \det_signal.diff_env_E_reg[16]_i_4_n_5\,
      CO(1) => \det_signal.diff_env_E_reg[16]_i_4_n_6\,
      CO(0) => \det_signal.diff_env_E_reg[16]_i_4_n_7\,
      DI(7 downto 0) => min_env(7 downto 0),
      O(7 downto 0) => \NLW_det_signal.diff_env_E_reg[16]_i_4_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_env_E[16]_i_14_n_0\,
      S(6) => \det_signal.diff_env_E[16]_i_15_n_0\,
      S(5) => \det_signal.diff_env_E[16]_i_16_n_0\,
      S(4) => \det_signal.diff_env_E[16]_i_17_n_0\,
      S(3) => \det_signal.diff_env_E[16]_i_18_n_0\,
      S(2) => \det_signal.diff_env_E[16]_i_19_n_0\,
      S(1) => \det_signal.diff_env_E[16]_i_20_n_0\,
      S(0) => \det_signal.diff_env_E[16]_i_21_n_0\
    );
\det_signal.diff_env_N[16]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(10),
      I1 => \det_signal.diff_env_N_reg[16]_i_13_n_13\,
      O => \det_signal.diff_env_N[16]_i_10_n_0\
    );
\det_signal.diff_env_N[16]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(9),
      I1 => \det_signal.diff_env_N_reg[16]_i_13_n_14\,
      O => \det_signal.diff_env_N[16]_i_11_n_0\
    );
\det_signal.diff_env_N[16]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(8),
      I1 => \det_signal.diff_env_N_reg[16]_i_13_n_15\,
      O => \det_signal.diff_env_N[16]_i_12_n_0\
    );
\det_signal.diff_env_N[16]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(7),
      I1 => \det_signal.diff_env_N_reg[16]_i_22_n_8\,
      O => \det_signal.diff_env_N[16]_i_14_n_0\
    );
\det_signal.diff_env_N[16]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(6),
      I1 => \det_signal.diff_env_N_reg[16]_i_22_n_9\,
      O => \det_signal.diff_env_N[16]_i_15_n_0\
    );
\det_signal.diff_env_N[16]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(5),
      I1 => \det_signal.diff_env_N_reg[16]_i_22_n_10\,
      O => \det_signal.diff_env_N[16]_i_16_n_0\
    );
\det_signal.diff_env_N[16]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(4),
      I1 => \det_signal.diff_env_N_reg[16]_i_22_n_11\,
      O => \det_signal.diff_env_N[16]_i_17_n_0\
    );
\det_signal.diff_env_N[16]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(3),
      I1 => \det_signal.diff_env_N_reg[16]_i_22_n_12\,
      O => \det_signal.diff_env_N[16]_i_18_n_0\
    );
\det_signal.diff_env_N[16]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(2),
      I1 => \det_signal.diff_env_N_reg[16]_i_22_n_13\,
      O => \det_signal.diff_env_N[16]_i_19_n_0\
    );
\det_signal.diff_env_N[16]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(1),
      I1 => \det_signal.diff_env_N_reg[16]_i_22_n_14\,
      O => \det_signal.diff_env_N[16]_i_20_n_0\
    );
\det_signal.diff_env_N[16]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(0),
      I1 => \det_signal.diff_env_N_reg[16]_i_22_n_15\,
      O => \det_signal.diff_env_N[16]_i_21_n_0\
    );
\det_signal.diff_env_N[16]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(15),
      O => \det_signal.diff_env_N[16]_i_23_n_0\
    );
\det_signal.diff_env_N[16]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(14),
      O => \det_signal.diff_env_N[16]_i_24_n_0\
    );
\det_signal.diff_env_N[16]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(13),
      O => \det_signal.diff_env_N[16]_i_25_n_0\
    );
\det_signal.diff_env_N[16]_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(12),
      O => \det_signal.diff_env_N[16]_i_26_n_0\
    );
\det_signal.diff_env_N[16]_i_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(11),
      O => \det_signal.diff_env_N[16]_i_27_n_0\
    );
\det_signal.diff_env_N[16]_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(10),
      O => \det_signal.diff_env_N[16]_i_28_n_0\
    );
\det_signal.diff_env_N[16]_i_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(9),
      O => \det_signal.diff_env_N[16]_i_29_n_0\
    );
\det_signal.diff_env_N[16]_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(8),
      O => \det_signal.diff_env_N[16]_i_30_n_0\
    );
\det_signal.diff_env_N[16]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(7),
      O => \det_signal.diff_env_N[16]_i_31_n_0\
    );
\det_signal.diff_env_N[16]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(6),
      O => \det_signal.diff_env_N[16]_i_32_n_0\
    );
\det_signal.diff_env_N[16]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(5),
      O => \det_signal.diff_env_N[16]_i_33_n_0\
    );
\det_signal.diff_env_N[16]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(4),
      O => \det_signal.diff_env_N[16]_i_34_n_0\
    );
\det_signal.diff_env_N[16]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(3),
      O => \det_signal.diff_env_N[16]_i_35_n_0\
    );
\det_signal.diff_env_N[16]_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(2),
      O => \det_signal.diff_env_N[16]_i_36_n_0\
    );
\det_signal.diff_env_N[16]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(1),
      O => \det_signal.diff_env_N[16]_i_37_n_0\
    );
\det_signal.diff_env_N[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(15),
      I1 => \det_signal.diff_env_N_reg[16]_i_13_n_8\,
      O => \det_signal.diff_env_N[16]_i_5_n_0\
    );
\det_signal.diff_env_N[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(14),
      I1 => \det_signal.diff_env_N_reg[16]_i_13_n_9\,
      O => \det_signal.diff_env_N[16]_i_6_n_0\
    );
\det_signal.diff_env_N[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(13),
      I1 => \det_signal.diff_env_N_reg[16]_i_13_n_10\,
      O => \det_signal.diff_env_N[16]_i_7_n_0\
    );
\det_signal.diff_env_N[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(12),
      I1 => \det_signal.diff_env_N_reg[16]_i_13_n_11\,
      O => \det_signal.diff_env_N[16]_i_8_n_0\
    );
\det_signal.diff_env_N[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(11),
      I1 => \det_signal.diff_env_N_reg[16]_i_13_n_12\,
      O => \det_signal.diff_env_N[16]_i_9_n_0\
    );
\det_signal.diff_env_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => diff_env_N02_out(16),
      Q => p_1_in5_in,
      R => '0'
    );
\det_signal.diff_env_N_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_N_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => diff_env_N02_out(16),
      S(7 downto 1) => B"0000000",
      S(0) => \det_signal.diff_env_N_reg[16]_i_3_n_15\
    );
\det_signal.diff_env_N_reg[16]_i_13\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_N_reg[16]_i_22_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_N_reg[16]_i_13_n_0\,
      CO(6) => \det_signal.diff_env_N_reg[16]_i_13_n_1\,
      CO(5) => \det_signal.diff_env_N_reg[16]_i_13_n_2\,
      CO(4) => \det_signal.diff_env_N_reg[16]_i_13_n_3\,
      CO(3) => \det_signal.diff_env_N_reg[16]_i_13_n_4\,
      CO(2) => \det_signal.diff_env_N_reg[16]_i_13_n_5\,
      CO(1) => \det_signal.diff_env_N_reg[16]_i_13_n_6\,
      CO(0) => \det_signal.diff_env_N_reg[16]_i_13_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.diff_env_N_reg[16]_i_13_n_8\,
      O(6) => \det_signal.diff_env_N_reg[16]_i_13_n_9\,
      O(5) => \det_signal.diff_env_N_reg[16]_i_13_n_10\,
      O(4) => \det_signal.diff_env_N_reg[16]_i_13_n_11\,
      O(3) => \det_signal.diff_env_N_reg[16]_i_13_n_12\,
      O(2) => \det_signal.diff_env_N_reg[16]_i_13_n_13\,
      O(1) => \det_signal.diff_env_N_reg[16]_i_13_n_14\,
      O(0) => \det_signal.diff_env_N_reg[16]_i_13_n_15\,
      S(7) => \det_signal.diff_env_N[16]_i_23_n_0\,
      S(6) => \det_signal.diff_env_N[16]_i_24_n_0\,
      S(5) => \det_signal.diff_env_N[16]_i_25_n_0\,
      S(4) => \det_signal.diff_env_N[16]_i_26_n_0\,
      S(3) => \det_signal.diff_env_N[16]_i_27_n_0\,
      S(2) => \det_signal.diff_env_N[16]_i_28_n_0\,
      S(1) => \det_signal.diff_env_N[16]_i_29_n_0\,
      S(0) => \det_signal.diff_env_N[16]_i_30_n_0\
    );
\det_signal.diff_env_N_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_N_reg[16]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_N_reg[16]_i_2_n_0\,
      CO(6) => \det_signal.diff_env_N_reg[16]_i_2_n_1\,
      CO(5) => \det_signal.diff_env_N_reg[16]_i_2_n_2\,
      CO(4) => \det_signal.diff_env_N_reg[16]_i_2_n_3\,
      CO(3) => \det_signal.diff_env_N_reg[16]_i_2_n_4\,
      CO(2) => \det_signal.diff_env_N_reg[16]_i_2_n_5\,
      CO(1) => \det_signal.diff_env_N_reg[16]_i_2_n_6\,
      CO(0) => \det_signal.diff_env_N_reg[16]_i_2_n_7\,
      DI(7 downto 0) => min_env(15 downto 8),
      O(7 downto 0) => \NLW_det_signal.diff_env_N_reg[16]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_env_N[16]_i_5_n_0\,
      S(6) => \det_signal.diff_env_N[16]_i_6_n_0\,
      S(5) => \det_signal.diff_env_N[16]_i_7_n_0\,
      S(4) => \det_signal.diff_env_N[16]_i_8_n_0\,
      S(3) => \det_signal.diff_env_N[16]_i_9_n_0\,
      S(2) => \det_signal.diff_env_N[16]_i_10_n_0\,
      S(1) => \det_signal.diff_env_N[16]_i_11_n_0\,
      S(0) => \det_signal.diff_env_N[16]_i_12_n_0\
    );
\det_signal.diff_env_N_reg[16]_i_22\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_N_reg[16]_i_22_n_0\,
      CO(6) => \det_signal.diff_env_N_reg[16]_i_22_n_1\,
      CO(5) => \det_signal.diff_env_N_reg[16]_i_22_n_2\,
      CO(4) => \det_signal.diff_env_N_reg[16]_i_22_n_3\,
      CO(3) => \det_signal.diff_env_N_reg[16]_i_22_n_4\,
      CO(2) => \det_signal.diff_env_N_reg[16]_i_22_n_5\,
      CO(1) => \det_signal.diff_env_N_reg[16]_i_22_n_6\,
      CO(0) => \det_signal.diff_env_N_reg[16]_i_22_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \det_signal.diff_env_N_reg[16]_i_22_n_8\,
      O(6) => \det_signal.diff_env_N_reg[16]_i_22_n_9\,
      O(5) => \det_signal.diff_env_N_reg[16]_i_22_n_10\,
      O(4) => \det_signal.diff_env_N_reg[16]_i_22_n_11\,
      O(3) => \det_signal.diff_env_N_reg[16]_i_22_n_12\,
      O(2) => \det_signal.diff_env_N_reg[16]_i_22_n_13\,
      O(1) => \det_signal.diff_env_N_reg[16]_i_22_n_14\,
      O(0) => \det_signal.diff_env_N_reg[16]_i_22_n_15\,
      S(7) => \det_signal.diff_env_N[16]_i_31_n_0\,
      S(6) => \det_signal.diff_env_N[16]_i_32_n_0\,
      S(5) => \det_signal.diff_env_N[16]_i_33_n_0\,
      S(4) => \det_signal.diff_env_N[16]_i_34_n_0\,
      S(3) => \det_signal.diff_env_N[16]_i_35_n_0\,
      S(2) => \det_signal.diff_env_N[16]_i_36_n_0\,
      S(1) => \det_signal.diff_env_N[16]_i_37_n_0\,
      S(0) => env_N(0)
    );
\det_signal.diff_env_N_reg[16]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_N_reg[16]_i_13_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_N_reg[16]_i_3_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_N_reg[16]_i_3_O_UNCONNECTED\(7 downto 1),
      O(0) => \det_signal.diff_env_N_reg[16]_i_3_n_15\,
      S(7 downto 0) => B"00000001"
    );
\det_signal.diff_env_N_reg[16]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_N_reg[16]_i_4_n_0\,
      CO(6) => \det_signal.diff_env_N_reg[16]_i_4_n_1\,
      CO(5) => \det_signal.diff_env_N_reg[16]_i_4_n_2\,
      CO(4) => \det_signal.diff_env_N_reg[16]_i_4_n_3\,
      CO(3) => \det_signal.diff_env_N_reg[16]_i_4_n_4\,
      CO(2) => \det_signal.diff_env_N_reg[16]_i_4_n_5\,
      CO(1) => \det_signal.diff_env_N_reg[16]_i_4_n_6\,
      CO(0) => \det_signal.diff_env_N_reg[16]_i_4_n_7\,
      DI(7 downto 0) => min_env(7 downto 0),
      O(7 downto 0) => \NLW_det_signal.diff_env_N_reg[16]_i_4_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_env_N[16]_i_14_n_0\,
      S(6) => \det_signal.diff_env_N[16]_i_15_n_0\,
      S(5) => \det_signal.diff_env_N[16]_i_16_n_0\,
      S(4) => \det_signal.diff_env_N[16]_i_17_n_0\,
      S(3) => \det_signal.diff_env_N[16]_i_18_n_0\,
      S(2) => \det_signal.diff_env_N[16]_i_19_n_0\,
      S(1) => \det_signal.diff_env_N[16]_i_20_n_0\,
      S(0) => \det_signal.diff_env_N[16]_i_21_n_0\
    );
\det_signal.diff_env_W[16]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(10),
      I1 => \det_signal.diff_env_W_reg[16]_i_13_n_13\,
      O => \det_signal.diff_env_W[16]_i_10_n_0\
    );
\det_signal.diff_env_W[16]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(9),
      I1 => \det_signal.diff_env_W_reg[16]_i_13_n_14\,
      O => \det_signal.diff_env_W[16]_i_11_n_0\
    );
\det_signal.diff_env_W[16]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(8),
      I1 => \det_signal.diff_env_W_reg[16]_i_13_n_15\,
      O => \det_signal.diff_env_W[16]_i_12_n_0\
    );
\det_signal.diff_env_W[16]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(7),
      I1 => \det_signal.diff_env_W_reg[16]_i_22_n_8\,
      O => \det_signal.diff_env_W[16]_i_14_n_0\
    );
\det_signal.diff_env_W[16]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(6),
      I1 => \det_signal.diff_env_W_reg[16]_i_22_n_9\,
      O => \det_signal.diff_env_W[16]_i_15_n_0\
    );
\det_signal.diff_env_W[16]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(5),
      I1 => \det_signal.diff_env_W_reg[16]_i_22_n_10\,
      O => \det_signal.diff_env_W[16]_i_16_n_0\
    );
\det_signal.diff_env_W[16]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(4),
      I1 => \det_signal.diff_env_W_reg[16]_i_22_n_11\,
      O => \det_signal.diff_env_W[16]_i_17_n_0\
    );
\det_signal.diff_env_W[16]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(3),
      I1 => \det_signal.diff_env_W_reg[16]_i_22_n_12\,
      O => \det_signal.diff_env_W[16]_i_18_n_0\
    );
\det_signal.diff_env_W[16]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(2),
      I1 => \det_signal.diff_env_W_reg[16]_i_22_n_13\,
      O => \det_signal.diff_env_W[16]_i_19_n_0\
    );
\det_signal.diff_env_W[16]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(1),
      I1 => \det_signal.diff_env_W_reg[16]_i_22_n_14\,
      O => \det_signal.diff_env_W[16]_i_20_n_0\
    );
\det_signal.diff_env_W[16]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(0),
      I1 => \det_signal.diff_env_W_reg[16]_i_22_n_15\,
      O => \det_signal.diff_env_W[16]_i_21_n_0\
    );
\det_signal.diff_env_W[16]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(15),
      O => \det_signal.diff_env_W[16]_i_23_n_0\
    );
\det_signal.diff_env_W[16]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(14),
      O => \det_signal.diff_env_W[16]_i_24_n_0\
    );
\det_signal.diff_env_W[16]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(13),
      O => \det_signal.diff_env_W[16]_i_25_n_0\
    );
\det_signal.diff_env_W[16]_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(12),
      O => \det_signal.diff_env_W[16]_i_26_n_0\
    );
\det_signal.diff_env_W[16]_i_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(11),
      O => \det_signal.diff_env_W[16]_i_27_n_0\
    );
\det_signal.diff_env_W[16]_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(10),
      O => \det_signal.diff_env_W[16]_i_28_n_0\
    );
\det_signal.diff_env_W[16]_i_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(9),
      O => \det_signal.diff_env_W[16]_i_29_n_0\
    );
\det_signal.diff_env_W[16]_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(8),
      O => \det_signal.diff_env_W[16]_i_30_n_0\
    );
\det_signal.diff_env_W[16]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(7),
      O => \det_signal.diff_env_W[16]_i_31_n_0\
    );
\det_signal.diff_env_W[16]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(6),
      O => \det_signal.diff_env_W[16]_i_32_n_0\
    );
\det_signal.diff_env_W[16]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(5),
      O => \det_signal.diff_env_W[16]_i_33_n_0\
    );
\det_signal.diff_env_W[16]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(4),
      O => \det_signal.diff_env_W[16]_i_34_n_0\
    );
\det_signal.diff_env_W[16]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(3),
      O => \det_signal.diff_env_W[16]_i_35_n_0\
    );
\det_signal.diff_env_W[16]_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(2),
      O => \det_signal.diff_env_W[16]_i_36_n_0\
    );
\det_signal.diff_env_W[16]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(1),
      O => \det_signal.diff_env_W[16]_i_37_n_0\
    );
\det_signal.diff_env_W[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(15),
      I1 => \det_signal.diff_env_W_reg[16]_i_13_n_8\,
      O => \det_signal.diff_env_W[16]_i_5_n_0\
    );
\det_signal.diff_env_W[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(14),
      I1 => \det_signal.diff_env_W_reg[16]_i_13_n_9\,
      O => \det_signal.diff_env_W[16]_i_6_n_0\
    );
\det_signal.diff_env_W[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(13),
      I1 => \det_signal.diff_env_W_reg[16]_i_13_n_10\,
      O => \det_signal.diff_env_W[16]_i_7_n_0\
    );
\det_signal.diff_env_W[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(12),
      I1 => \det_signal.diff_env_W_reg[16]_i_13_n_11\,
      O => \det_signal.diff_env_W[16]_i_8_n_0\
    );
\det_signal.diff_env_W[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min_env(11),
      I1 => \det_signal.diff_env_W_reg[16]_i_13_n_12\,
      O => \det_signal.diff_env_W[16]_i_9_n_0\
    );
\det_signal.diff_env_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => diff_env_W00_out(16),
      Q => p_2_in6_in,
      R => '0'
    );
\det_signal.diff_env_W_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_W_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => diff_env_W00_out(16),
      S(7 downto 1) => B"0000000",
      S(0) => \det_signal.diff_env_W_reg[16]_i_3_n_15\
    );
\det_signal.diff_env_W_reg[16]_i_13\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_W_reg[16]_i_22_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_W_reg[16]_i_13_n_0\,
      CO(6) => \det_signal.diff_env_W_reg[16]_i_13_n_1\,
      CO(5) => \det_signal.diff_env_W_reg[16]_i_13_n_2\,
      CO(4) => \det_signal.diff_env_W_reg[16]_i_13_n_3\,
      CO(3) => \det_signal.diff_env_W_reg[16]_i_13_n_4\,
      CO(2) => \det_signal.diff_env_W_reg[16]_i_13_n_5\,
      CO(1) => \det_signal.diff_env_W_reg[16]_i_13_n_6\,
      CO(0) => \det_signal.diff_env_W_reg[16]_i_13_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.diff_env_W_reg[16]_i_13_n_8\,
      O(6) => \det_signal.diff_env_W_reg[16]_i_13_n_9\,
      O(5) => \det_signal.diff_env_W_reg[16]_i_13_n_10\,
      O(4) => \det_signal.diff_env_W_reg[16]_i_13_n_11\,
      O(3) => \det_signal.diff_env_W_reg[16]_i_13_n_12\,
      O(2) => \det_signal.diff_env_W_reg[16]_i_13_n_13\,
      O(1) => \det_signal.diff_env_W_reg[16]_i_13_n_14\,
      O(0) => \det_signal.diff_env_W_reg[16]_i_13_n_15\,
      S(7) => \det_signal.diff_env_W[16]_i_23_n_0\,
      S(6) => \det_signal.diff_env_W[16]_i_24_n_0\,
      S(5) => \det_signal.diff_env_W[16]_i_25_n_0\,
      S(4) => \det_signal.diff_env_W[16]_i_26_n_0\,
      S(3) => \det_signal.diff_env_W[16]_i_27_n_0\,
      S(2) => \det_signal.diff_env_W[16]_i_28_n_0\,
      S(1) => \det_signal.diff_env_W[16]_i_29_n_0\,
      S(0) => \det_signal.diff_env_W[16]_i_30_n_0\
    );
\det_signal.diff_env_W_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_W_reg[16]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_W_reg[16]_i_2_n_0\,
      CO(6) => \det_signal.diff_env_W_reg[16]_i_2_n_1\,
      CO(5) => \det_signal.diff_env_W_reg[16]_i_2_n_2\,
      CO(4) => \det_signal.diff_env_W_reg[16]_i_2_n_3\,
      CO(3) => \det_signal.diff_env_W_reg[16]_i_2_n_4\,
      CO(2) => \det_signal.diff_env_W_reg[16]_i_2_n_5\,
      CO(1) => \det_signal.diff_env_W_reg[16]_i_2_n_6\,
      CO(0) => \det_signal.diff_env_W_reg[16]_i_2_n_7\,
      DI(7 downto 0) => min_env(15 downto 8),
      O(7 downto 0) => \NLW_det_signal.diff_env_W_reg[16]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_env_W[16]_i_5_n_0\,
      S(6) => \det_signal.diff_env_W[16]_i_6_n_0\,
      S(5) => \det_signal.diff_env_W[16]_i_7_n_0\,
      S(4) => \det_signal.diff_env_W[16]_i_8_n_0\,
      S(3) => \det_signal.diff_env_W[16]_i_9_n_0\,
      S(2) => \det_signal.diff_env_W[16]_i_10_n_0\,
      S(1) => \det_signal.diff_env_W[16]_i_11_n_0\,
      S(0) => \det_signal.diff_env_W[16]_i_12_n_0\
    );
\det_signal.diff_env_W_reg[16]_i_22\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_W_reg[16]_i_22_n_0\,
      CO(6) => \det_signal.diff_env_W_reg[16]_i_22_n_1\,
      CO(5) => \det_signal.diff_env_W_reg[16]_i_22_n_2\,
      CO(4) => \det_signal.diff_env_W_reg[16]_i_22_n_3\,
      CO(3) => \det_signal.diff_env_W_reg[16]_i_22_n_4\,
      CO(2) => \det_signal.diff_env_W_reg[16]_i_22_n_5\,
      CO(1) => \det_signal.diff_env_W_reg[16]_i_22_n_6\,
      CO(0) => \det_signal.diff_env_W_reg[16]_i_22_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \det_signal.diff_env_W_reg[16]_i_22_n_8\,
      O(6) => \det_signal.diff_env_W_reg[16]_i_22_n_9\,
      O(5) => \det_signal.diff_env_W_reg[16]_i_22_n_10\,
      O(4) => \det_signal.diff_env_W_reg[16]_i_22_n_11\,
      O(3) => \det_signal.diff_env_W_reg[16]_i_22_n_12\,
      O(2) => \det_signal.diff_env_W_reg[16]_i_22_n_13\,
      O(1) => \det_signal.diff_env_W_reg[16]_i_22_n_14\,
      O(0) => \det_signal.diff_env_W_reg[16]_i_22_n_15\,
      S(7) => \det_signal.diff_env_W[16]_i_31_n_0\,
      S(6) => \det_signal.diff_env_W[16]_i_32_n_0\,
      S(5) => \det_signal.diff_env_W[16]_i_33_n_0\,
      S(4) => \det_signal.diff_env_W[16]_i_34_n_0\,
      S(3) => \det_signal.diff_env_W[16]_i_35_n_0\,
      S(2) => \det_signal.diff_env_W[16]_i_36_n_0\,
      S(1) => \det_signal.diff_env_W[16]_i_37_n_0\,
      S(0) => env_W(0)
    );
\det_signal.diff_env_W_reg[16]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_W_reg[16]_i_13_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_W_reg[16]_i_3_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_W_reg[16]_i_3_O_UNCONNECTED\(7 downto 1),
      O(0) => \det_signal.diff_env_W_reg[16]_i_3_n_15\,
      S(7 downto 0) => B"00000001"
    );
\det_signal.diff_env_W_reg[16]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_W_reg[16]_i_4_n_0\,
      CO(6) => \det_signal.diff_env_W_reg[16]_i_4_n_1\,
      CO(5) => \det_signal.diff_env_W_reg[16]_i_4_n_2\,
      CO(4) => \det_signal.diff_env_W_reg[16]_i_4_n_3\,
      CO(3) => \det_signal.diff_env_W_reg[16]_i_4_n_4\,
      CO(2) => \det_signal.diff_env_W_reg[16]_i_4_n_5\,
      CO(1) => \det_signal.diff_env_W_reg[16]_i_4_n_6\,
      CO(0) => \det_signal.diff_env_W_reg[16]_i_4_n_7\,
      DI(7 downto 0) => min_env(7 downto 0),
      O(7 downto 0) => \NLW_det_signal.diff_env_W_reg[16]_i_4_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_env_W[16]_i_14_n_0\,
      S(6) => \det_signal.diff_env_W[16]_i_15_n_0\,
      S(5) => \det_signal.diff_env_W[16]_i_16_n_0\,
      S(4) => \det_signal.diff_env_W[16]_i_17_n_0\,
      S(3) => \det_signal.diff_env_W[16]_i_18_n_0\,
      S(2) => \det_signal.diff_env_W[16]_i_19_n_0\,
      S(1) => \det_signal.diff_env_W[16]_i_20_n_0\,
      S(0) => \det_signal.diff_env_W[16]_i_21_n_0\
    );
\det_signal.diff_err_EW[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_EW(5),
      I1 => \det_signal.diff_err_NW[12]_i_19_n_0\,
      O => \det_signal.diff_err_EW[12]_i_10_n_0\
    );
\det_signal.diff_err_EW[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => err_EW(4),
      I1 => max_doa_diff(4),
      I2 => max_doa_diff(2),
      I3 => max_doa_diff(1),
      I4 => max_doa_diff(0),
      I5 => max_doa_diff(3),
      O => \det_signal.diff_err_EW[12]_i_11_n_0\
    );
\det_signal.diff_err_EW[12]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => err_EW(3),
      I1 => max_doa_diff(3),
      I2 => max_doa_diff(0),
      I3 => max_doa_diff(1),
      I4 => max_doa_diff(2),
      O => \det_signal.diff_err_EW[12]_i_12_n_0\
    );
\det_signal.diff_err_EW[12]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => err_EW(2),
      I1 => max_doa_diff(2),
      I2 => max_doa_diff(1),
      I3 => max_doa_diff(0),
      O => \det_signal.diff_err_EW[12]_i_13_n_0\
    );
\det_signal.diff_err_EW[12]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => err_EW(1),
      I1 => max_doa_diff(1),
      I2 => max_doa_diff(0),
      O => \det_signal.diff_err_EW[12]_i_14_n_0\
    );
\det_signal.diff_err_EW[12]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_EW(0),
      I1 => max_doa_diff(0),
      O => \det_signal.diff_err_EW[12]_i_15_n_0\
    );
\det_signal.diff_err_EW[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => max_doa_diff(11),
      I1 => \det_signal.diff_err_NW[12]_i_16_n_0\,
      O => \det_signal.diff_err_EW[12]_i_3_n_0\
    );
\det_signal.diff_err_EW[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => err_EW(11),
      I1 => max_doa_diff(11),
      I2 => \det_signal.diff_err_NW[12]_i_16_n_0\,
      O => \det_signal.diff_err_EW[12]_i_4_n_0\
    );
\det_signal.diff_err_EW[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_EW(10),
      I1 => \det_signal.diff_err_NW[12]_i_17_n_0\,
      O => \det_signal.diff_err_EW[12]_i_5_n_0\
    );
\det_signal.diff_err_EW[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999699"
    )
        port map (
      I0 => err_EW(9),
      I1 => max_doa_diff(9),
      I2 => max_doa_diff(7),
      I3 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I4 => max_doa_diff(6),
      I5 => max_doa_diff(8),
      O => \det_signal.diff_err_EW[12]_i_6_n_0\
    );
\det_signal.diff_err_EW[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999699"
    )
        port map (
      I0 => err_EW(8),
      I1 => max_doa_diff(8),
      I2 => max_doa_diff(6),
      I3 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I4 => max_doa_diff(7),
      O => \det_signal.diff_err_EW[12]_i_7_n_0\
    );
\det_signal.diff_err_EW[12]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => err_EW(7),
      I1 => max_doa_diff(7),
      I2 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I3 => max_doa_diff(6),
      O => \det_signal.diff_err_EW[12]_i_8_n_0\
    );
\det_signal.diff_err_EW[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => err_EW(6),
      I1 => max_doa_diff(6),
      I2 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      O => \det_signal.diff_err_EW[12]_i_9_n_0\
    );
\det_signal.diff_err_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => diff_err_EW00_out(12),
      Q => p_2_in,
      R => '0'
    );
\det_signal.diff_err_EW_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_err_EW_reg[12]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_det_signal.diff_err_EW_reg[12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \det_signal.diff_err_EW_reg[12]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_EW_reg[12]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_EW_reg[12]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_EW_reg[12]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => err_EW(11 downto 8),
      O(7 downto 5) => \NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4) => diff_err_EW00_out(12),
      O(3 downto 0) => \NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED\(3 downto 0),
      S(7 downto 5) => B"000",
      S(4) => \det_signal.diff_err_EW[12]_i_3_n_0\,
      S(3) => \det_signal.diff_err_EW[12]_i_4_n_0\,
      S(2) => \det_signal.diff_err_EW[12]_i_5_n_0\,
      S(1) => \det_signal.diff_err_EW[12]_i_6_n_0\,
      S(0) => \det_signal.diff_err_EW[12]_i_7_n_0\
    );
\det_signal.diff_err_EW_reg[12]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_err_EW_reg[12]_i_2_n_0\,
      CO(6) => \det_signal.diff_err_EW_reg[12]_i_2_n_1\,
      CO(5) => \det_signal.diff_err_EW_reg[12]_i_2_n_2\,
      CO(4) => \det_signal.diff_err_EW_reg[12]_i_2_n_3\,
      CO(3) => \det_signal.diff_err_EW_reg[12]_i_2_n_4\,
      CO(2) => \det_signal.diff_err_EW_reg[12]_i_2_n_5\,
      CO(1) => \det_signal.diff_err_EW_reg[12]_i_2_n_6\,
      CO(0) => \det_signal.diff_err_EW_reg[12]_i_2_n_7\,
      DI(7 downto 0) => err_EW(7 downto 0),
      O(7 downto 0) => \NLW_det_signal.diff_err_EW_reg[12]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_err_EW[12]_i_8_n_0\,
      S(6) => \det_signal.diff_err_EW[12]_i_9_n_0\,
      S(5) => \det_signal.diff_err_EW[12]_i_10_n_0\,
      S(4) => \det_signal.diff_err_EW[12]_i_11_n_0\,
      S(3) => \det_signal.diff_err_EW[12]_i_12_n_0\,
      S(2) => \det_signal.diff_err_EW[12]_i_13_n_0\,
      S(1) => \det_signal.diff_err_EW[12]_i_14_n_0\,
      S(0) => \det_signal.diff_err_EW[12]_i_15_n_0\
    );
\det_signal.diff_err_NE[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_NE(5),
      I1 => \det_signal.diff_err_NW[12]_i_19_n_0\,
      O => \det_signal.diff_err_NE[12]_i_10_n_0\
    );
\det_signal.diff_err_NE[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => err_NE(4),
      I1 => max_doa_diff(4),
      I2 => max_doa_diff(2),
      I3 => max_doa_diff(1),
      I4 => max_doa_diff(0),
      I5 => max_doa_diff(3),
      O => \det_signal.diff_err_NE[12]_i_11_n_0\
    );
\det_signal.diff_err_NE[12]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => err_NE(3),
      I1 => max_doa_diff(3),
      I2 => max_doa_diff(0),
      I3 => max_doa_diff(1),
      I4 => max_doa_diff(2),
      O => \det_signal.diff_err_NE[12]_i_12_n_0\
    );
\det_signal.diff_err_NE[12]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => err_NE(2),
      I1 => max_doa_diff(2),
      I2 => max_doa_diff(1),
      I3 => max_doa_diff(0),
      O => \det_signal.diff_err_NE[12]_i_13_n_0\
    );
\det_signal.diff_err_NE[12]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => err_NE(1),
      I1 => max_doa_diff(1),
      I2 => max_doa_diff(0),
      O => \det_signal.diff_err_NE[12]_i_14_n_0\
    );
\det_signal.diff_err_NE[12]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_NE(0),
      I1 => max_doa_diff(0),
      O => \det_signal.diff_err_NE[12]_i_15_n_0\
    );
\det_signal.diff_err_NE[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => max_doa_diff(11),
      I1 => \det_signal.diff_err_NW[12]_i_16_n_0\,
      O => \det_signal.diff_err_NE[12]_i_3_n_0\
    );
\det_signal.diff_err_NE[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => err_NE(11),
      I1 => max_doa_diff(11),
      I2 => \det_signal.diff_err_NW[12]_i_16_n_0\,
      O => \det_signal.diff_err_NE[12]_i_4_n_0\
    );
\det_signal.diff_err_NE[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_NE(10),
      I1 => \det_signal.diff_err_NW[12]_i_17_n_0\,
      O => \det_signal.diff_err_NE[12]_i_5_n_0\
    );
\det_signal.diff_err_NE[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999699"
    )
        port map (
      I0 => err_NE(9),
      I1 => max_doa_diff(9),
      I2 => max_doa_diff(7),
      I3 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I4 => max_doa_diff(6),
      I5 => max_doa_diff(8),
      O => \det_signal.diff_err_NE[12]_i_6_n_0\
    );
\det_signal.diff_err_NE[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999699"
    )
        port map (
      I0 => err_NE(8),
      I1 => max_doa_diff(8),
      I2 => max_doa_diff(6),
      I3 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I4 => max_doa_diff(7),
      O => \det_signal.diff_err_NE[12]_i_7_n_0\
    );
\det_signal.diff_err_NE[12]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => err_NE(7),
      I1 => max_doa_diff(7),
      I2 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I3 => max_doa_diff(6),
      O => \det_signal.diff_err_NE[12]_i_8_n_0\
    );
\det_signal.diff_err_NE[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => err_NE(6),
      I1 => max_doa_diff(6),
      I2 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      O => \det_signal.diff_err_NE[12]_i_9_n_0\
    );
\det_signal.diff_err_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => diff_err_NE0(12),
      Q => p_1_in2_in,
      R => '0'
    );
\det_signal.diff_err_NE_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_err_NE_reg[12]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_det_signal.diff_err_NE_reg[12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \det_signal.diff_err_NE_reg[12]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_NE_reg[12]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_NE_reg[12]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_NE_reg[12]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => err_NE(11 downto 8),
      O(7 downto 5) => \NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4) => diff_err_NE0(12),
      O(3 downto 0) => \NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED\(3 downto 0),
      S(7 downto 5) => B"000",
      S(4) => \det_signal.diff_err_NE[12]_i_3_n_0\,
      S(3) => \det_signal.diff_err_NE[12]_i_4_n_0\,
      S(2) => \det_signal.diff_err_NE[12]_i_5_n_0\,
      S(1) => \det_signal.diff_err_NE[12]_i_6_n_0\,
      S(0) => \det_signal.diff_err_NE[12]_i_7_n_0\
    );
\det_signal.diff_err_NE_reg[12]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_err_NE_reg[12]_i_2_n_0\,
      CO(6) => \det_signal.diff_err_NE_reg[12]_i_2_n_1\,
      CO(5) => \det_signal.diff_err_NE_reg[12]_i_2_n_2\,
      CO(4) => \det_signal.diff_err_NE_reg[12]_i_2_n_3\,
      CO(3) => \det_signal.diff_err_NE_reg[12]_i_2_n_4\,
      CO(2) => \det_signal.diff_err_NE_reg[12]_i_2_n_5\,
      CO(1) => \det_signal.diff_err_NE_reg[12]_i_2_n_6\,
      CO(0) => \det_signal.diff_err_NE_reg[12]_i_2_n_7\,
      DI(7 downto 0) => err_NE(7 downto 0),
      O(7 downto 0) => \NLW_det_signal.diff_err_NE_reg[12]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_err_NE[12]_i_8_n_0\,
      S(6) => \det_signal.diff_err_NE[12]_i_9_n_0\,
      S(5) => \det_signal.diff_err_NE[12]_i_10_n_0\,
      S(4) => \det_signal.diff_err_NE[12]_i_11_n_0\,
      S(3) => \det_signal.diff_err_NE[12]_i_12_n_0\,
      S(2) => \det_signal.diff_err_NE[12]_i_13_n_0\,
      S(1) => \det_signal.diff_err_NE[12]_i_14_n_0\,
      S(0) => \det_signal.diff_err_NE[12]_i_15_n_0\
    );
\det_signal.diff_err_NW[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_NW(5),
      I1 => \det_signal.diff_err_NW[12]_i_19_n_0\,
      O => \det_signal.diff_err_NW[12]_i_10_n_0\
    );
\det_signal.diff_err_NW[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => err_NW(4),
      I1 => max_doa_diff(4),
      I2 => max_doa_diff(2),
      I3 => max_doa_diff(1),
      I4 => max_doa_diff(0),
      I5 => max_doa_diff(3),
      O => \det_signal.diff_err_NW[12]_i_11_n_0\
    );
\det_signal.diff_err_NW[12]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => err_NW(3),
      I1 => max_doa_diff(3),
      I2 => max_doa_diff(0),
      I3 => max_doa_diff(1),
      I4 => max_doa_diff(2),
      O => \det_signal.diff_err_NW[12]_i_12_n_0\
    );
\det_signal.diff_err_NW[12]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => err_NW(2),
      I1 => max_doa_diff(2),
      I2 => max_doa_diff(1),
      I3 => max_doa_diff(0),
      O => \det_signal.diff_err_NW[12]_i_13_n_0\
    );
\det_signal.diff_err_NW[12]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => err_NW(1),
      I1 => max_doa_diff(1),
      I2 => max_doa_diff(0),
      O => \det_signal.diff_err_NW[12]_i_14_n_0\
    );
\det_signal.diff_err_NW[12]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_NW(0),
      I1 => max_doa_diff(0),
      O => \det_signal.diff_err_NW[12]_i_15_n_0\
    );
\det_signal.diff_err_NW[12]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => max_doa_diff(9),
      I1 => max_doa_diff(7),
      I2 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I3 => max_doa_diff(6),
      I4 => max_doa_diff(8),
      I5 => max_doa_diff(10),
      O => \det_signal.diff_err_NW[12]_i_16_n_0\
    );
\det_signal.diff_err_NW[12]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFEF"
    )
        port map (
      I0 => max_doa_diff(9),
      I1 => max_doa_diff(7),
      I2 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I3 => max_doa_diff(6),
      I4 => max_doa_diff(8),
      I5 => max_doa_diff(10),
      O => \det_signal.diff_err_NW[12]_i_17_n_0\
    );
\det_signal.diff_err_NW[12]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => max_doa_diff(4),
      I1 => max_doa_diff(2),
      I2 => max_doa_diff(1),
      I3 => max_doa_diff(0),
      I4 => max_doa_diff(3),
      I5 => max_doa_diff(5),
      O => \det_signal.diff_err_NW[12]_i_18_n_0\
    );
\det_signal.diff_err_NW[12]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => max_doa_diff(4),
      I1 => max_doa_diff(2),
      I2 => max_doa_diff(1),
      I3 => max_doa_diff(0),
      I4 => max_doa_diff(3),
      I5 => max_doa_diff(5),
      O => \det_signal.diff_err_NW[12]_i_19_n_0\
    );
\det_signal.diff_err_NW[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => max_doa_diff(11),
      I1 => \det_signal.diff_err_NW[12]_i_16_n_0\,
      O => \det_signal.diff_err_NW[12]_i_3_n_0\
    );
\det_signal.diff_err_NW[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => err_NW(11),
      I1 => max_doa_diff(11),
      I2 => \det_signal.diff_err_NW[12]_i_16_n_0\,
      O => \det_signal.diff_err_NW[12]_i_4_n_0\
    );
\det_signal.diff_err_NW[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_NW(10),
      I1 => \det_signal.diff_err_NW[12]_i_17_n_0\,
      O => \det_signal.diff_err_NW[12]_i_5_n_0\
    );
\det_signal.diff_err_NW[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999699"
    )
        port map (
      I0 => err_NW(9),
      I1 => max_doa_diff(9),
      I2 => max_doa_diff(7),
      I3 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I4 => max_doa_diff(6),
      I5 => max_doa_diff(8),
      O => \det_signal.diff_err_NW[12]_i_6_n_0\
    );
\det_signal.diff_err_NW[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999699"
    )
        port map (
      I0 => err_NW(8),
      I1 => max_doa_diff(8),
      I2 => max_doa_diff(6),
      I3 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I4 => max_doa_diff(7),
      O => \det_signal.diff_err_NW[12]_i_7_n_0\
    );
\det_signal.diff_err_NW[12]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => err_NW(7),
      I1 => max_doa_diff(7),
      I2 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      I3 => max_doa_diff(6),
      O => \det_signal.diff_err_NW[12]_i_8_n_0\
    );
\det_signal.diff_err_NW[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => err_NW(6),
      I1 => max_doa_diff(6),
      I2 => \det_signal.diff_err_NW[12]_i_18_n_0\,
      O => \det_signal.diff_err_NW[12]_i_9_n_0\
    );
\det_signal.diff_err_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => diff_err_NW0(12),
      Q => p_0_in1_in,
      R => '0'
    );
\det_signal.diff_err_NW_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_err_NW_reg[12]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_det_signal.diff_err_NW_reg[12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \det_signal.diff_err_NW_reg[12]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_NW_reg[12]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_NW_reg[12]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_NW_reg[12]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => err_NW(11 downto 8),
      O(7 downto 5) => \NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4) => diff_err_NW0(12),
      O(3 downto 0) => \NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED\(3 downto 0),
      S(7 downto 5) => B"000",
      S(4) => \det_signal.diff_err_NW[12]_i_3_n_0\,
      S(3) => \det_signal.diff_err_NW[12]_i_4_n_0\,
      S(2) => \det_signal.diff_err_NW[12]_i_5_n_0\,
      S(1) => \det_signal.diff_err_NW[12]_i_6_n_0\,
      S(0) => \det_signal.diff_err_NW[12]_i_7_n_0\
    );
\det_signal.diff_err_NW_reg[12]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_err_NW_reg[12]_i_2_n_0\,
      CO(6) => \det_signal.diff_err_NW_reg[12]_i_2_n_1\,
      CO(5) => \det_signal.diff_err_NW_reg[12]_i_2_n_2\,
      CO(4) => \det_signal.diff_err_NW_reg[12]_i_2_n_3\,
      CO(3) => \det_signal.diff_err_NW_reg[12]_i_2_n_4\,
      CO(2) => \det_signal.diff_err_NW_reg[12]_i_2_n_5\,
      CO(1) => \det_signal.diff_err_NW_reg[12]_i_2_n_6\,
      CO(0) => \det_signal.diff_err_NW_reg[12]_i_2_n_7\,
      DI(7 downto 0) => err_NW(7 downto 0),
      O(7 downto 0) => \NLW_det_signal.diff_err_NW_reg[12]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \det_signal.diff_err_NW[12]_i_8_n_0\,
      S(6) => \det_signal.diff_err_NW[12]_i_9_n_0\,
      S(5) => \det_signal.diff_err_NW[12]_i_10_n_0\,
      S(4) => \det_signal.diff_err_NW[12]_i_11_n_0\,
      S(3) => \det_signal.diff_err_NW[12]_i_12_n_0\,
      S(2) => \det_signal.diff_err_NW[12]_i_13_n_0\,
      S(1) => \det_signal.diff_err_NW[12]_i_14_n_0\,
      S(0) => \det_signal.diff_err_NW[12]_i_15_n_0\
    );
\det_signal.diff_phase_E[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(15),
      O => \det_signal.diff_phase_E[15]_i_11_n_0\
    );
\det_signal.diff_phase_E[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(14),
      O => \det_signal.diff_phase_E[15]_i_12_n_0\
    );
\det_signal.diff_phase_E[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(13),
      O => \det_signal.diff_phase_E[15]_i_13_n_0\
    );
\det_signal.diff_phase_E[15]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(12),
      O => \det_signal.diff_phase_E[15]_i_14_n_0\
    );
\det_signal.diff_phase_E[15]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(11),
      O => \det_signal.diff_phase_E[15]_i_15_n_0\
    );
\det_signal.diff_phase_E[15]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(10),
      O => \det_signal.diff_phase_E[15]_i_16_n_0\
    );
\det_signal.diff_phase_E[15]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(9),
      O => \det_signal.diff_phase_E[15]_i_17_n_0\
    );
\det_signal.diff_phase_E[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(8),
      O => \det_signal.diff_phase_E[15]_i_18_n_0\
    );
\det_signal.diff_phase_E[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(15),
      I1 => \det_signal.diff_phase_E_reg[15]_i_10_n_8\,
      O => \det_signal.diff_phase_E[15]_i_2_n_0\
    );
\det_signal.diff_phase_E[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(14),
      I1 => \det_signal.diff_phase_E_reg[15]_i_10_n_9\,
      O => \det_signal.diff_phase_E[15]_i_3_n_0\
    );
\det_signal.diff_phase_E[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(13),
      I1 => \det_signal.diff_phase_E_reg[15]_i_10_n_10\,
      O => \det_signal.diff_phase_E[15]_i_4_n_0\
    );
\det_signal.diff_phase_E[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(12),
      I1 => \det_signal.diff_phase_E_reg[15]_i_10_n_11\,
      O => \det_signal.diff_phase_E[15]_i_5_n_0\
    );
\det_signal.diff_phase_E[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(11),
      I1 => \det_signal.diff_phase_E_reg[15]_i_10_n_12\,
      O => \det_signal.diff_phase_E[15]_i_6_n_0\
    );
\det_signal.diff_phase_E[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(10),
      I1 => \det_signal.diff_phase_E_reg[15]_i_10_n_13\,
      O => \det_signal.diff_phase_E[15]_i_7_n_0\
    );
\det_signal.diff_phase_E[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(9),
      I1 => \det_signal.diff_phase_E_reg[15]_i_10_n_14\,
      O => \det_signal.diff_phase_E[15]_i_8_n_0\
    );
\det_signal.diff_phase_E[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(8),
      I1 => \det_signal.diff_phase_E_reg[15]_i_10_n_15\,
      O => \det_signal.diff_phase_E[15]_i_9_n_0\
    );
\det_signal.diff_phase_E[19]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(16),
      O => \det_signal.diff_phase_E[19]_i_10_n_0\
    );
\det_signal.diff_phase_E[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(19),
      I1 => \det_signal.diff_phase_E_reg[19]_i_6_n_12\,
      O => \det_signal.diff_phase_E[19]_i_2_n_0\
    );
\det_signal.diff_phase_E[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(18),
      I1 => \det_signal.diff_phase_E_reg[19]_i_6_n_13\,
      O => \det_signal.diff_phase_E[19]_i_3_n_0\
    );
\det_signal.diff_phase_E[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(17),
      I1 => \det_signal.diff_phase_E_reg[19]_i_6_n_14\,
      O => \det_signal.diff_phase_E[19]_i_4_n_0\
    );
\det_signal.diff_phase_E[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(16),
      I1 => \det_signal.diff_phase_E_reg[19]_i_6_n_15\,
      O => \det_signal.diff_phase_E[19]_i_5_n_0\
    );
\det_signal.diff_phase_E[19]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(19),
      O => \det_signal.diff_phase_E[19]_i_7_n_0\
    );
\det_signal.diff_phase_E[19]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(18),
      O => \det_signal.diff_phase_E[19]_i_8_n_0\
    );
\det_signal.diff_phase_E[19]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(17),
      O => \det_signal.diff_phase_E[19]_i_9_n_0\
    );
\det_signal.diff_phase_E[7]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(7),
      O => \det_signal.diff_phase_E[7]_i_11_n_0\
    );
\det_signal.diff_phase_E[7]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(6),
      O => \det_signal.diff_phase_E[7]_i_12_n_0\
    );
\det_signal.diff_phase_E[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(5),
      O => \det_signal.diff_phase_E[7]_i_13_n_0\
    );
\det_signal.diff_phase_E[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(4),
      O => \det_signal.diff_phase_E[7]_i_14_n_0\
    );
\det_signal.diff_phase_E[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(3),
      O => \det_signal.diff_phase_E[7]_i_15_n_0\
    );
\det_signal.diff_phase_E[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(2),
      O => \det_signal.diff_phase_E[7]_i_16_n_0\
    );
\det_signal.diff_phase_E[7]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_E(1),
      O => \det_signal.diff_phase_E[7]_i_17_n_0\
    );
\det_signal.diff_phase_E[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(7),
      I1 => \det_signal.diff_phase_E_reg[7]_i_10_n_8\,
      O => \det_signal.diff_phase_E[7]_i_2_n_0\
    );
\det_signal.diff_phase_E[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(6),
      I1 => \det_signal.diff_phase_E_reg[7]_i_10_n_9\,
      O => \det_signal.diff_phase_E[7]_i_3_n_0\
    );
\det_signal.diff_phase_E[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(5),
      I1 => \det_signal.diff_phase_E_reg[7]_i_10_n_10\,
      O => \det_signal.diff_phase_E[7]_i_4_n_0\
    );
\det_signal.diff_phase_E[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(4),
      I1 => \det_signal.diff_phase_E_reg[7]_i_10_n_11\,
      O => \det_signal.diff_phase_E[7]_i_5_n_0\
    );
\det_signal.diff_phase_E[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(3),
      I1 => \det_signal.diff_phase_E_reg[7]_i_10_n_12\,
      O => \det_signal.diff_phase_E[7]_i_6_n_0\
    );
\det_signal.diff_phase_E[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(2),
      I1 => \det_signal.diff_phase_E_reg[7]_i_10_n_13\,
      O => \det_signal.diff_phase_E[7]_i_7_n_0\
    );
\det_signal.diff_phase_E[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(1),
      I1 => \det_signal.diff_phase_E_reg[7]_i_10_n_14\,
      O => \det_signal.diff_phase_E[7]_i_8_n_0\
    );
\det_signal.diff_phase_E[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(0),
      I1 => \det_signal.diff_phase_E_reg[7]_i_10_n_15\,
      O => \det_signal.diff_phase_E[7]_i_9_n_0\
    );
\det_signal.diff_phase_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(0),
      Q => diff_phase_E(0),
      R => '0'
    );
\det_signal.diff_phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(10),
      Q => diff_phase_E(10),
      R => '0'
    );
\det_signal.diff_phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(11),
      Q => diff_phase_E(11),
      R => '0'
    );
\det_signal.diff_phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(12),
      Q => diff_phase_E(12),
      R => '0'
    );
\det_signal.diff_phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(13),
      Q => diff_phase_E(13),
      R => '0'
    );
\det_signal.diff_phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(14),
      Q => diff_phase_E(14),
      R => '0'
    );
\det_signal.diff_phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(15),
      Q => diff_phase_E(15),
      R => '0'
    );
\det_signal.diff_phase_E_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_E_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_E_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.diff_phase_E_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.diff_phase_E_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.diff_phase_E_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.diff_phase_E_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.diff_phase_E_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_E_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_E_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_E(15 downto 8),
      O(7 downto 0) => diff_phase_E03_out(15 downto 8),
      S(7) => \det_signal.diff_phase_E[15]_i_2_n_0\,
      S(6) => \det_signal.diff_phase_E[15]_i_3_n_0\,
      S(5) => \det_signal.diff_phase_E[15]_i_4_n_0\,
      S(4) => \det_signal.diff_phase_E[15]_i_5_n_0\,
      S(3) => \det_signal.diff_phase_E[15]_i_6_n_0\,
      S(2) => \det_signal.diff_phase_E[15]_i_7_n_0\,
      S(1) => \det_signal.diff_phase_E[15]_i_8_n_0\,
      S(0) => \det_signal.diff_phase_E[15]_i_9_n_0\
    );
\det_signal.diff_phase_E_reg[15]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_E_reg[7]_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_E_reg[15]_i_10_n_0\,
      CO(6) => \det_signal.diff_phase_E_reg[15]_i_10_n_1\,
      CO(5) => \det_signal.diff_phase_E_reg[15]_i_10_n_2\,
      CO(4) => \det_signal.diff_phase_E_reg[15]_i_10_n_3\,
      CO(3) => \det_signal.diff_phase_E_reg[15]_i_10_n_4\,
      CO(2) => \det_signal.diff_phase_E_reg[15]_i_10_n_5\,
      CO(1) => \det_signal.diff_phase_E_reg[15]_i_10_n_6\,
      CO(0) => \det_signal.diff_phase_E_reg[15]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.diff_phase_E_reg[15]_i_10_n_8\,
      O(6) => \det_signal.diff_phase_E_reg[15]_i_10_n_9\,
      O(5) => \det_signal.diff_phase_E_reg[15]_i_10_n_10\,
      O(4) => \det_signal.diff_phase_E_reg[15]_i_10_n_11\,
      O(3) => \det_signal.diff_phase_E_reg[15]_i_10_n_12\,
      O(2) => \det_signal.diff_phase_E_reg[15]_i_10_n_13\,
      O(1) => \det_signal.diff_phase_E_reg[15]_i_10_n_14\,
      O(0) => \det_signal.diff_phase_E_reg[15]_i_10_n_15\,
      S(7) => \det_signal.diff_phase_E[15]_i_11_n_0\,
      S(6) => \det_signal.diff_phase_E[15]_i_12_n_0\,
      S(5) => \det_signal.diff_phase_E[15]_i_13_n_0\,
      S(4) => \det_signal.diff_phase_E[15]_i_14_n_0\,
      S(3) => \det_signal.diff_phase_E[15]_i_15_n_0\,
      S(2) => \det_signal.diff_phase_E[15]_i_16_n_0\,
      S(1) => \det_signal.diff_phase_E[15]_i_17_n_0\,
      S(0) => \det_signal.diff_phase_E[15]_i_18_n_0\
    );
\det_signal.diff_phase_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(16),
      Q => diff_phase_E(16),
      R => '0'
    );
\det_signal.diff_phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(17),
      Q => diff_phase_E(17),
      R => '0'
    );
\det_signal.diff_phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(18),
      Q => diff_phase_E(18),
      R => '0'
    );
\det_signal.diff_phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(19),
      Q => diff_phase_E(19),
      R => '0'
    );
\det_signal.diff_phase_E_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_E_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.diff_phase_E_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.diff_phase_E_reg[19]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_E_reg[19]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_E_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_E(18 downto 16),
      O(7 downto 4) => \NLW_det_signal.diff_phase_E_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => diff_phase_E03_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.diff_phase_E[19]_i_2_n_0\,
      S(2) => \det_signal.diff_phase_E[19]_i_3_n_0\,
      S(1) => \det_signal.diff_phase_E[19]_i_4_n_0\,
      S(0) => \det_signal.diff_phase_E[19]_i_5_n_0\
    );
\det_signal.diff_phase_E_reg[19]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_E_reg[15]_i_10_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.diff_phase_E_reg[19]_i_6_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.diff_phase_E_reg[19]_i_6_n_5\,
      CO(1) => \det_signal.diff_phase_E_reg[19]_i_6_n_6\,
      CO(0) => \det_signal.diff_phase_E_reg[19]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_det_signal.diff_phase_E_reg[19]_i_6_O_UNCONNECTED\(7 downto 4),
      O(3) => \det_signal.diff_phase_E_reg[19]_i_6_n_12\,
      O(2) => \det_signal.diff_phase_E_reg[19]_i_6_n_13\,
      O(1) => \det_signal.diff_phase_E_reg[19]_i_6_n_14\,
      O(0) => \det_signal.diff_phase_E_reg[19]_i_6_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.diff_phase_E[19]_i_7_n_0\,
      S(2) => \det_signal.diff_phase_E[19]_i_8_n_0\,
      S(1) => \det_signal.diff_phase_E[19]_i_9_n_0\,
      S(0) => \det_signal.diff_phase_E[19]_i_10_n_0\
    );
\det_signal.diff_phase_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(1),
      Q => diff_phase_E(1),
      R => '0'
    );
\det_signal.diff_phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(2),
      Q => diff_phase_E(2),
      R => '0'
    );
\det_signal.diff_phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(3),
      Q => diff_phase_E(3),
      R => '0'
    );
\det_signal.diff_phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(4),
      Q => diff_phase_E(4),
      R => '0'
    );
\det_signal.diff_phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(5),
      Q => diff_phase_E(5),
      R => '0'
    );
\det_signal.diff_phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(6),
      Q => diff_phase_E(6),
      R => '0'
    );
\det_signal.diff_phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(7),
      Q => diff_phase_E(7),
      R => '0'
    );
\det_signal.diff_phase_E_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_E_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_phase_E_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_phase_E_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_phase_E_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_phase_E_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_phase_E_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_E_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_E_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_E(7 downto 0),
      O(7 downto 0) => diff_phase_E03_out(7 downto 0),
      S(7) => \det_signal.diff_phase_E[7]_i_2_n_0\,
      S(6) => \det_signal.diff_phase_E[7]_i_3_n_0\,
      S(5) => \det_signal.diff_phase_E[7]_i_4_n_0\,
      S(4) => \det_signal.diff_phase_E[7]_i_5_n_0\,
      S(3) => \det_signal.diff_phase_E[7]_i_6_n_0\,
      S(2) => \det_signal.diff_phase_E[7]_i_7_n_0\,
      S(1) => \det_signal.diff_phase_E[7]_i_8_n_0\,
      S(0) => \det_signal.diff_phase_E[7]_i_9_n_0\
    );
\det_signal.diff_phase_E_reg[7]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_E_reg[7]_i_10_n_0\,
      CO(6) => \det_signal.diff_phase_E_reg[7]_i_10_n_1\,
      CO(5) => \det_signal.diff_phase_E_reg[7]_i_10_n_2\,
      CO(4) => \det_signal.diff_phase_E_reg[7]_i_10_n_3\,
      CO(3) => \det_signal.diff_phase_E_reg[7]_i_10_n_4\,
      CO(2) => \det_signal.diff_phase_E_reg[7]_i_10_n_5\,
      CO(1) => \det_signal.diff_phase_E_reg[7]_i_10_n_6\,
      CO(0) => \det_signal.diff_phase_E_reg[7]_i_10_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \det_signal.diff_phase_E_reg[7]_i_10_n_8\,
      O(6) => \det_signal.diff_phase_E_reg[7]_i_10_n_9\,
      O(5) => \det_signal.diff_phase_E_reg[7]_i_10_n_10\,
      O(4) => \det_signal.diff_phase_E_reg[7]_i_10_n_11\,
      O(3) => \det_signal.diff_phase_E_reg[7]_i_10_n_12\,
      O(2) => \det_signal.diff_phase_E_reg[7]_i_10_n_13\,
      O(1) => \det_signal.diff_phase_E_reg[7]_i_10_n_14\,
      O(0) => \det_signal.diff_phase_E_reg[7]_i_10_n_15\,
      S(7) => \det_signal.diff_phase_E[7]_i_11_n_0\,
      S(6) => \det_signal.diff_phase_E[7]_i_12_n_0\,
      S(5) => \det_signal.diff_phase_E[7]_i_13_n_0\,
      S(4) => \det_signal.diff_phase_E[7]_i_14_n_0\,
      S(3) => \det_signal.diff_phase_E[7]_i_15_n_0\,
      S(2) => \det_signal.diff_phase_E[7]_i_16_n_0\,
      S(1) => \det_signal.diff_phase_E[7]_i_17_n_0\,
      S(0) => prev_phase_E(0)
    );
\det_signal.diff_phase_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(8),
      Q => diff_phase_E(8),
      R => '0'
    );
\det_signal.diff_phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_E03_out(9),
      Q => diff_phase_E(9),
      R => '0'
    );
\det_signal.diff_phase_N[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(15),
      O => \det_signal.diff_phase_N[15]_i_11_n_0\
    );
\det_signal.diff_phase_N[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(14),
      O => \det_signal.diff_phase_N[15]_i_12_n_0\
    );
\det_signal.diff_phase_N[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(13),
      O => \det_signal.diff_phase_N[15]_i_13_n_0\
    );
\det_signal.diff_phase_N[15]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(12),
      O => \det_signal.diff_phase_N[15]_i_14_n_0\
    );
\det_signal.diff_phase_N[15]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(11),
      O => \det_signal.diff_phase_N[15]_i_15_n_0\
    );
\det_signal.diff_phase_N[15]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(10),
      O => \det_signal.diff_phase_N[15]_i_16_n_0\
    );
\det_signal.diff_phase_N[15]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(9),
      O => \det_signal.diff_phase_N[15]_i_17_n_0\
    );
\det_signal.diff_phase_N[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(8),
      O => \det_signal.diff_phase_N[15]_i_18_n_0\
    );
\det_signal.diff_phase_N[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(15),
      I1 => \det_signal.diff_phase_N_reg[15]_i_10_n_8\,
      O => \det_signal.diff_phase_N[15]_i_2_n_0\
    );
\det_signal.diff_phase_N[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(14),
      I1 => \det_signal.diff_phase_N_reg[15]_i_10_n_9\,
      O => \det_signal.diff_phase_N[15]_i_3_n_0\
    );
\det_signal.diff_phase_N[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(13),
      I1 => \det_signal.diff_phase_N_reg[15]_i_10_n_10\,
      O => \det_signal.diff_phase_N[15]_i_4_n_0\
    );
\det_signal.diff_phase_N[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(12),
      I1 => \det_signal.diff_phase_N_reg[15]_i_10_n_11\,
      O => \det_signal.diff_phase_N[15]_i_5_n_0\
    );
\det_signal.diff_phase_N[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(11),
      I1 => \det_signal.diff_phase_N_reg[15]_i_10_n_12\,
      O => \det_signal.diff_phase_N[15]_i_6_n_0\
    );
\det_signal.diff_phase_N[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(10),
      I1 => \det_signal.diff_phase_N_reg[15]_i_10_n_13\,
      O => \det_signal.diff_phase_N[15]_i_7_n_0\
    );
\det_signal.diff_phase_N[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(9),
      I1 => \det_signal.diff_phase_N_reg[15]_i_10_n_14\,
      O => \det_signal.diff_phase_N[15]_i_8_n_0\
    );
\det_signal.diff_phase_N[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(8),
      I1 => \det_signal.diff_phase_N_reg[15]_i_10_n_15\,
      O => \det_signal.diff_phase_N[15]_i_9_n_0\
    );
\det_signal.diff_phase_N[19]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(16),
      O => \det_signal.diff_phase_N[19]_i_10_n_0\
    );
\det_signal.diff_phase_N[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(19),
      I1 => \det_signal.diff_phase_N_reg[19]_i_6_n_12\,
      O => \det_signal.diff_phase_N[19]_i_2_n_0\
    );
\det_signal.diff_phase_N[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(18),
      I1 => \det_signal.diff_phase_N_reg[19]_i_6_n_13\,
      O => \det_signal.diff_phase_N[19]_i_3_n_0\
    );
\det_signal.diff_phase_N[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(17),
      I1 => \det_signal.diff_phase_N_reg[19]_i_6_n_14\,
      O => \det_signal.diff_phase_N[19]_i_4_n_0\
    );
\det_signal.diff_phase_N[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(16),
      I1 => \det_signal.diff_phase_N_reg[19]_i_6_n_15\,
      O => \det_signal.diff_phase_N[19]_i_5_n_0\
    );
\det_signal.diff_phase_N[19]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(19),
      O => \det_signal.diff_phase_N[19]_i_7_n_0\
    );
\det_signal.diff_phase_N[19]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(18),
      O => \det_signal.diff_phase_N[19]_i_8_n_0\
    );
\det_signal.diff_phase_N[19]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(17),
      O => \det_signal.diff_phase_N[19]_i_9_n_0\
    );
\det_signal.diff_phase_N[7]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(7),
      O => \det_signal.diff_phase_N[7]_i_11_n_0\
    );
\det_signal.diff_phase_N[7]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(6),
      O => \det_signal.diff_phase_N[7]_i_12_n_0\
    );
\det_signal.diff_phase_N[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(5),
      O => \det_signal.diff_phase_N[7]_i_13_n_0\
    );
\det_signal.diff_phase_N[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(4),
      O => \det_signal.diff_phase_N[7]_i_14_n_0\
    );
\det_signal.diff_phase_N[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(3),
      O => \det_signal.diff_phase_N[7]_i_15_n_0\
    );
\det_signal.diff_phase_N[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(2),
      O => \det_signal.diff_phase_N[7]_i_16_n_0\
    );
\det_signal.diff_phase_N[7]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_N(1),
      O => \det_signal.diff_phase_N[7]_i_17_n_0\
    );
\det_signal.diff_phase_N[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(7),
      I1 => \det_signal.diff_phase_N_reg[7]_i_10_n_8\,
      O => \det_signal.diff_phase_N[7]_i_2_n_0\
    );
\det_signal.diff_phase_N[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(6),
      I1 => \det_signal.diff_phase_N_reg[7]_i_10_n_9\,
      O => \det_signal.diff_phase_N[7]_i_3_n_0\
    );
\det_signal.diff_phase_N[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(5),
      I1 => \det_signal.diff_phase_N_reg[7]_i_10_n_10\,
      O => \det_signal.diff_phase_N[7]_i_4_n_0\
    );
\det_signal.diff_phase_N[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(4),
      I1 => \det_signal.diff_phase_N_reg[7]_i_10_n_11\,
      O => \det_signal.diff_phase_N[7]_i_5_n_0\
    );
\det_signal.diff_phase_N[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(3),
      I1 => \det_signal.diff_phase_N_reg[7]_i_10_n_12\,
      O => \det_signal.diff_phase_N[7]_i_6_n_0\
    );
\det_signal.diff_phase_N[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(2),
      I1 => \det_signal.diff_phase_N_reg[7]_i_10_n_13\,
      O => \det_signal.diff_phase_N[7]_i_7_n_0\
    );
\det_signal.diff_phase_N[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(1),
      I1 => \det_signal.diff_phase_N_reg[7]_i_10_n_14\,
      O => \det_signal.diff_phase_N[7]_i_8_n_0\
    );
\det_signal.diff_phase_N[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(0),
      I1 => \det_signal.diff_phase_N_reg[7]_i_10_n_15\,
      O => \det_signal.diff_phase_N[7]_i_9_n_0\
    );
\det_signal.diff_phase_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(0),
      Q => diff_phase_N(0),
      R => '0'
    );
\det_signal.diff_phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(10),
      Q => diff_phase_N(10),
      R => '0'
    );
\det_signal.diff_phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(11),
      Q => diff_phase_N(11),
      R => '0'
    );
\det_signal.diff_phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(12),
      Q => diff_phase_N(12),
      R => '0'
    );
\det_signal.diff_phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(13),
      Q => diff_phase_N(13),
      R => '0'
    );
\det_signal.diff_phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(14),
      Q => diff_phase_N(14),
      R => '0'
    );
\det_signal.diff_phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(15),
      Q => diff_phase_N(15),
      R => '0'
    );
\det_signal.diff_phase_N_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_N_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_N_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.diff_phase_N_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.diff_phase_N_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.diff_phase_N_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.diff_phase_N_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.diff_phase_N_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_N_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_N_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_N(15 downto 8),
      O(7 downto 0) => diff_phase_N04_out(15 downto 8),
      S(7) => \det_signal.diff_phase_N[15]_i_2_n_0\,
      S(6) => \det_signal.diff_phase_N[15]_i_3_n_0\,
      S(5) => \det_signal.diff_phase_N[15]_i_4_n_0\,
      S(4) => \det_signal.diff_phase_N[15]_i_5_n_0\,
      S(3) => \det_signal.diff_phase_N[15]_i_6_n_0\,
      S(2) => \det_signal.diff_phase_N[15]_i_7_n_0\,
      S(1) => \det_signal.diff_phase_N[15]_i_8_n_0\,
      S(0) => \det_signal.diff_phase_N[15]_i_9_n_0\
    );
\det_signal.diff_phase_N_reg[15]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_N_reg[7]_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_N_reg[15]_i_10_n_0\,
      CO(6) => \det_signal.diff_phase_N_reg[15]_i_10_n_1\,
      CO(5) => \det_signal.diff_phase_N_reg[15]_i_10_n_2\,
      CO(4) => \det_signal.diff_phase_N_reg[15]_i_10_n_3\,
      CO(3) => \det_signal.diff_phase_N_reg[15]_i_10_n_4\,
      CO(2) => \det_signal.diff_phase_N_reg[15]_i_10_n_5\,
      CO(1) => \det_signal.diff_phase_N_reg[15]_i_10_n_6\,
      CO(0) => \det_signal.diff_phase_N_reg[15]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.diff_phase_N_reg[15]_i_10_n_8\,
      O(6) => \det_signal.diff_phase_N_reg[15]_i_10_n_9\,
      O(5) => \det_signal.diff_phase_N_reg[15]_i_10_n_10\,
      O(4) => \det_signal.diff_phase_N_reg[15]_i_10_n_11\,
      O(3) => \det_signal.diff_phase_N_reg[15]_i_10_n_12\,
      O(2) => \det_signal.diff_phase_N_reg[15]_i_10_n_13\,
      O(1) => \det_signal.diff_phase_N_reg[15]_i_10_n_14\,
      O(0) => \det_signal.diff_phase_N_reg[15]_i_10_n_15\,
      S(7) => \det_signal.diff_phase_N[15]_i_11_n_0\,
      S(6) => \det_signal.diff_phase_N[15]_i_12_n_0\,
      S(5) => \det_signal.diff_phase_N[15]_i_13_n_0\,
      S(4) => \det_signal.diff_phase_N[15]_i_14_n_0\,
      S(3) => \det_signal.diff_phase_N[15]_i_15_n_0\,
      S(2) => \det_signal.diff_phase_N[15]_i_16_n_0\,
      S(1) => \det_signal.diff_phase_N[15]_i_17_n_0\,
      S(0) => \det_signal.diff_phase_N[15]_i_18_n_0\
    );
\det_signal.diff_phase_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(16),
      Q => diff_phase_N(16),
      R => '0'
    );
\det_signal.diff_phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(17),
      Q => diff_phase_N(17),
      R => '0'
    );
\det_signal.diff_phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(18),
      Q => diff_phase_N(18),
      R => '0'
    );
\det_signal.diff_phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(19),
      Q => diff_phase_N(19),
      R => '0'
    );
\det_signal.diff_phase_N_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_N_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.diff_phase_N_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.diff_phase_N_reg[19]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_N_reg[19]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_N_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_N(18 downto 16),
      O(7 downto 4) => \NLW_det_signal.diff_phase_N_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => diff_phase_N04_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.diff_phase_N[19]_i_2_n_0\,
      S(2) => \det_signal.diff_phase_N[19]_i_3_n_0\,
      S(1) => \det_signal.diff_phase_N[19]_i_4_n_0\,
      S(0) => \det_signal.diff_phase_N[19]_i_5_n_0\
    );
\det_signal.diff_phase_N_reg[19]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_N_reg[15]_i_10_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.diff_phase_N_reg[19]_i_6_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.diff_phase_N_reg[19]_i_6_n_5\,
      CO(1) => \det_signal.diff_phase_N_reg[19]_i_6_n_6\,
      CO(0) => \det_signal.diff_phase_N_reg[19]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_det_signal.diff_phase_N_reg[19]_i_6_O_UNCONNECTED\(7 downto 4),
      O(3) => \det_signal.diff_phase_N_reg[19]_i_6_n_12\,
      O(2) => \det_signal.diff_phase_N_reg[19]_i_6_n_13\,
      O(1) => \det_signal.diff_phase_N_reg[19]_i_6_n_14\,
      O(0) => \det_signal.diff_phase_N_reg[19]_i_6_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.diff_phase_N[19]_i_7_n_0\,
      S(2) => \det_signal.diff_phase_N[19]_i_8_n_0\,
      S(1) => \det_signal.diff_phase_N[19]_i_9_n_0\,
      S(0) => \det_signal.diff_phase_N[19]_i_10_n_0\
    );
\det_signal.diff_phase_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(1),
      Q => diff_phase_N(1),
      R => '0'
    );
\det_signal.diff_phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(2),
      Q => diff_phase_N(2),
      R => '0'
    );
\det_signal.diff_phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(3),
      Q => diff_phase_N(3),
      R => '0'
    );
\det_signal.diff_phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(4),
      Q => diff_phase_N(4),
      R => '0'
    );
\det_signal.diff_phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(5),
      Q => diff_phase_N(5),
      R => '0'
    );
\det_signal.diff_phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(6),
      Q => diff_phase_N(6),
      R => '0'
    );
\det_signal.diff_phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(7),
      Q => diff_phase_N(7),
      R => '0'
    );
\det_signal.diff_phase_N_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_N_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_phase_N_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_phase_N_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_phase_N_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_phase_N_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_phase_N_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_N_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_N_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_N(7 downto 0),
      O(7 downto 0) => diff_phase_N04_out(7 downto 0),
      S(7) => \det_signal.diff_phase_N[7]_i_2_n_0\,
      S(6) => \det_signal.diff_phase_N[7]_i_3_n_0\,
      S(5) => \det_signal.diff_phase_N[7]_i_4_n_0\,
      S(4) => \det_signal.diff_phase_N[7]_i_5_n_0\,
      S(3) => \det_signal.diff_phase_N[7]_i_6_n_0\,
      S(2) => \det_signal.diff_phase_N[7]_i_7_n_0\,
      S(1) => \det_signal.diff_phase_N[7]_i_8_n_0\,
      S(0) => \det_signal.diff_phase_N[7]_i_9_n_0\
    );
\det_signal.diff_phase_N_reg[7]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_N_reg[7]_i_10_n_0\,
      CO(6) => \det_signal.diff_phase_N_reg[7]_i_10_n_1\,
      CO(5) => \det_signal.diff_phase_N_reg[7]_i_10_n_2\,
      CO(4) => \det_signal.diff_phase_N_reg[7]_i_10_n_3\,
      CO(3) => \det_signal.diff_phase_N_reg[7]_i_10_n_4\,
      CO(2) => \det_signal.diff_phase_N_reg[7]_i_10_n_5\,
      CO(1) => \det_signal.diff_phase_N_reg[7]_i_10_n_6\,
      CO(0) => \det_signal.diff_phase_N_reg[7]_i_10_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \det_signal.diff_phase_N_reg[7]_i_10_n_8\,
      O(6) => \det_signal.diff_phase_N_reg[7]_i_10_n_9\,
      O(5) => \det_signal.diff_phase_N_reg[7]_i_10_n_10\,
      O(4) => \det_signal.diff_phase_N_reg[7]_i_10_n_11\,
      O(3) => \det_signal.diff_phase_N_reg[7]_i_10_n_12\,
      O(2) => \det_signal.diff_phase_N_reg[7]_i_10_n_13\,
      O(1) => \det_signal.diff_phase_N_reg[7]_i_10_n_14\,
      O(0) => \det_signal.diff_phase_N_reg[7]_i_10_n_15\,
      S(7) => \det_signal.diff_phase_N[7]_i_11_n_0\,
      S(6) => \det_signal.diff_phase_N[7]_i_12_n_0\,
      S(5) => \det_signal.diff_phase_N[7]_i_13_n_0\,
      S(4) => \det_signal.diff_phase_N[7]_i_14_n_0\,
      S(3) => \det_signal.diff_phase_N[7]_i_15_n_0\,
      S(2) => \det_signal.diff_phase_N[7]_i_16_n_0\,
      S(1) => \det_signal.diff_phase_N[7]_i_17_n_0\,
      S(0) => prev_phase_N(0)
    );
\det_signal.diff_phase_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(8),
      Q => diff_phase_N(8),
      R => '0'
    );
\det_signal.diff_phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_N04_out(9),
      Q => diff_phase_N(9),
      R => '0'
    );
\det_signal.diff_phase_W[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(15),
      O => \det_signal.diff_phase_W[15]_i_11_n_0\
    );
\det_signal.diff_phase_W[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(14),
      O => \det_signal.diff_phase_W[15]_i_12_n_0\
    );
\det_signal.diff_phase_W[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(13),
      O => \det_signal.diff_phase_W[15]_i_13_n_0\
    );
\det_signal.diff_phase_W[15]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(12),
      O => \det_signal.diff_phase_W[15]_i_14_n_0\
    );
\det_signal.diff_phase_W[15]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(11),
      O => \det_signal.diff_phase_W[15]_i_15_n_0\
    );
\det_signal.diff_phase_W[15]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(10),
      O => \det_signal.diff_phase_W[15]_i_16_n_0\
    );
\det_signal.diff_phase_W[15]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(9),
      O => \det_signal.diff_phase_W[15]_i_17_n_0\
    );
\det_signal.diff_phase_W[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(8),
      O => \det_signal.diff_phase_W[15]_i_18_n_0\
    );
\det_signal.diff_phase_W[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(15),
      I1 => \det_signal.diff_phase_W_reg[15]_i_10_n_8\,
      O => \det_signal.diff_phase_W[15]_i_2_n_0\
    );
\det_signal.diff_phase_W[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(14),
      I1 => \det_signal.diff_phase_W_reg[15]_i_10_n_9\,
      O => \det_signal.diff_phase_W[15]_i_3_n_0\
    );
\det_signal.diff_phase_W[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(13),
      I1 => \det_signal.diff_phase_W_reg[15]_i_10_n_10\,
      O => \det_signal.diff_phase_W[15]_i_4_n_0\
    );
\det_signal.diff_phase_W[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(12),
      I1 => \det_signal.diff_phase_W_reg[15]_i_10_n_11\,
      O => \det_signal.diff_phase_W[15]_i_5_n_0\
    );
\det_signal.diff_phase_W[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(11),
      I1 => \det_signal.diff_phase_W_reg[15]_i_10_n_12\,
      O => \det_signal.diff_phase_W[15]_i_6_n_0\
    );
\det_signal.diff_phase_W[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(10),
      I1 => \det_signal.diff_phase_W_reg[15]_i_10_n_13\,
      O => \det_signal.diff_phase_W[15]_i_7_n_0\
    );
\det_signal.diff_phase_W[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(9),
      I1 => \det_signal.diff_phase_W_reg[15]_i_10_n_14\,
      O => \det_signal.diff_phase_W[15]_i_8_n_0\
    );
\det_signal.diff_phase_W[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(8),
      I1 => \det_signal.diff_phase_W_reg[15]_i_10_n_15\,
      O => \det_signal.diff_phase_W[15]_i_9_n_0\
    );
\det_signal.diff_phase_W[19]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(16),
      O => \det_signal.diff_phase_W[19]_i_10_n_0\
    );
\det_signal.diff_phase_W[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(19),
      I1 => \det_signal.diff_phase_W_reg[19]_i_6_n_12\,
      O => \det_signal.diff_phase_W[19]_i_2_n_0\
    );
\det_signal.diff_phase_W[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(18),
      I1 => \det_signal.diff_phase_W_reg[19]_i_6_n_13\,
      O => \det_signal.diff_phase_W[19]_i_3_n_0\
    );
\det_signal.diff_phase_W[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(17),
      I1 => \det_signal.diff_phase_W_reg[19]_i_6_n_14\,
      O => \det_signal.diff_phase_W[19]_i_4_n_0\
    );
\det_signal.diff_phase_W[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(16),
      I1 => \det_signal.diff_phase_W_reg[19]_i_6_n_15\,
      O => \det_signal.diff_phase_W[19]_i_5_n_0\
    );
\det_signal.diff_phase_W[19]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(19),
      O => \det_signal.diff_phase_W[19]_i_7_n_0\
    );
\det_signal.diff_phase_W[19]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(18),
      O => \det_signal.diff_phase_W[19]_i_8_n_0\
    );
\det_signal.diff_phase_W[19]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(17),
      O => \det_signal.diff_phase_W[19]_i_9_n_0\
    );
\det_signal.diff_phase_W[7]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(7),
      O => \det_signal.diff_phase_W[7]_i_11_n_0\
    );
\det_signal.diff_phase_W[7]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(6),
      O => \det_signal.diff_phase_W[7]_i_12_n_0\
    );
\det_signal.diff_phase_W[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(5),
      O => \det_signal.diff_phase_W[7]_i_13_n_0\
    );
\det_signal.diff_phase_W[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(4),
      O => \det_signal.diff_phase_W[7]_i_14_n_0\
    );
\det_signal.diff_phase_W[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(3),
      O => \det_signal.diff_phase_W[7]_i_15_n_0\
    );
\det_signal.diff_phase_W[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(2),
      O => \det_signal.diff_phase_W[7]_i_16_n_0\
    );
\det_signal.diff_phase_W[7]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_phase_W(1),
      O => \det_signal.diff_phase_W[7]_i_17_n_0\
    );
\det_signal.diff_phase_W[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(7),
      I1 => \det_signal.diff_phase_W_reg[7]_i_10_n_8\,
      O => \det_signal.diff_phase_W[7]_i_2_n_0\
    );
\det_signal.diff_phase_W[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(6),
      I1 => \det_signal.diff_phase_W_reg[7]_i_10_n_9\,
      O => \det_signal.diff_phase_W[7]_i_3_n_0\
    );
\det_signal.diff_phase_W[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(5),
      I1 => \det_signal.diff_phase_W_reg[7]_i_10_n_10\,
      O => \det_signal.diff_phase_W[7]_i_4_n_0\
    );
\det_signal.diff_phase_W[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(4),
      I1 => \det_signal.diff_phase_W_reg[7]_i_10_n_11\,
      O => \det_signal.diff_phase_W[7]_i_5_n_0\
    );
\det_signal.diff_phase_W[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(3),
      I1 => \det_signal.diff_phase_W_reg[7]_i_10_n_12\,
      O => \det_signal.diff_phase_W[7]_i_6_n_0\
    );
\det_signal.diff_phase_W[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(2),
      I1 => \det_signal.diff_phase_W_reg[7]_i_10_n_13\,
      O => \det_signal.diff_phase_W[7]_i_7_n_0\
    );
\det_signal.diff_phase_W[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(1),
      I1 => \det_signal.diff_phase_W_reg[7]_i_10_n_14\,
      O => \det_signal.diff_phase_W[7]_i_8_n_0\
    );
\det_signal.diff_phase_W[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_W(0),
      I1 => \det_signal.diff_phase_W_reg[7]_i_10_n_15\,
      O => \det_signal.diff_phase_W[7]_i_9_n_0\
    );
\det_signal.diff_phase_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(0),
      Q => diff_phase_W(0),
      R => '0'
    );
\det_signal.diff_phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(10),
      Q => diff_phase_W(10),
      R => '0'
    );
\det_signal.diff_phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(11),
      Q => diff_phase_W(11),
      R => '0'
    );
\det_signal.diff_phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(12),
      Q => diff_phase_W(12),
      R => '0'
    );
\det_signal.diff_phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(13),
      Q => diff_phase_W(13),
      R => '0'
    );
\det_signal.diff_phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(14),
      Q => diff_phase_W(14),
      R => '0'
    );
\det_signal.diff_phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(15),
      Q => diff_phase_W(15),
      R => '0'
    );
\det_signal.diff_phase_W_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_W_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_W_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.diff_phase_W_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.diff_phase_W_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.diff_phase_W_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.diff_phase_W_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.diff_phase_W_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_W_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_W_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_W(15 downto 8),
      O(7 downto 0) => diff_phase_W02_out(15 downto 8),
      S(7) => \det_signal.diff_phase_W[15]_i_2_n_0\,
      S(6) => \det_signal.diff_phase_W[15]_i_3_n_0\,
      S(5) => \det_signal.diff_phase_W[15]_i_4_n_0\,
      S(4) => \det_signal.diff_phase_W[15]_i_5_n_0\,
      S(3) => \det_signal.diff_phase_W[15]_i_6_n_0\,
      S(2) => \det_signal.diff_phase_W[15]_i_7_n_0\,
      S(1) => \det_signal.diff_phase_W[15]_i_8_n_0\,
      S(0) => \det_signal.diff_phase_W[15]_i_9_n_0\
    );
\det_signal.diff_phase_W_reg[15]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_W_reg[7]_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_W_reg[15]_i_10_n_0\,
      CO(6) => \det_signal.diff_phase_W_reg[15]_i_10_n_1\,
      CO(5) => \det_signal.diff_phase_W_reg[15]_i_10_n_2\,
      CO(4) => \det_signal.diff_phase_W_reg[15]_i_10_n_3\,
      CO(3) => \det_signal.diff_phase_W_reg[15]_i_10_n_4\,
      CO(2) => \det_signal.diff_phase_W_reg[15]_i_10_n_5\,
      CO(1) => \det_signal.diff_phase_W_reg[15]_i_10_n_6\,
      CO(0) => \det_signal.diff_phase_W_reg[15]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.diff_phase_W_reg[15]_i_10_n_8\,
      O(6) => \det_signal.diff_phase_W_reg[15]_i_10_n_9\,
      O(5) => \det_signal.diff_phase_W_reg[15]_i_10_n_10\,
      O(4) => \det_signal.diff_phase_W_reg[15]_i_10_n_11\,
      O(3) => \det_signal.diff_phase_W_reg[15]_i_10_n_12\,
      O(2) => \det_signal.diff_phase_W_reg[15]_i_10_n_13\,
      O(1) => \det_signal.diff_phase_W_reg[15]_i_10_n_14\,
      O(0) => \det_signal.diff_phase_W_reg[15]_i_10_n_15\,
      S(7) => \det_signal.diff_phase_W[15]_i_11_n_0\,
      S(6) => \det_signal.diff_phase_W[15]_i_12_n_0\,
      S(5) => \det_signal.diff_phase_W[15]_i_13_n_0\,
      S(4) => \det_signal.diff_phase_W[15]_i_14_n_0\,
      S(3) => \det_signal.diff_phase_W[15]_i_15_n_0\,
      S(2) => \det_signal.diff_phase_W[15]_i_16_n_0\,
      S(1) => \det_signal.diff_phase_W[15]_i_17_n_0\,
      S(0) => \det_signal.diff_phase_W[15]_i_18_n_0\
    );
\det_signal.diff_phase_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(16),
      Q => diff_phase_W(16),
      R => '0'
    );
\det_signal.diff_phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(17),
      Q => diff_phase_W(17),
      R => '0'
    );
\det_signal.diff_phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(18),
      Q => diff_phase_W(18),
      R => '0'
    );
\det_signal.diff_phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(19),
      Q => diff_phase_W(19),
      R => '0'
    );
\det_signal.diff_phase_W_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_W_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.diff_phase_W_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.diff_phase_W_reg[19]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_W_reg[19]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_W_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_W(18 downto 16),
      O(7 downto 4) => \NLW_det_signal.diff_phase_W_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => diff_phase_W02_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.diff_phase_W[19]_i_2_n_0\,
      S(2) => \det_signal.diff_phase_W[19]_i_3_n_0\,
      S(1) => \det_signal.diff_phase_W[19]_i_4_n_0\,
      S(0) => \det_signal.diff_phase_W[19]_i_5_n_0\
    );
\det_signal.diff_phase_W_reg[19]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_phase_W_reg[15]_i_10_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.diff_phase_W_reg[19]_i_6_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.diff_phase_W_reg[19]_i_6_n_5\,
      CO(1) => \det_signal.diff_phase_W_reg[19]_i_6_n_6\,
      CO(0) => \det_signal.diff_phase_W_reg[19]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_det_signal.diff_phase_W_reg[19]_i_6_O_UNCONNECTED\(7 downto 4),
      O(3) => \det_signal.diff_phase_W_reg[19]_i_6_n_12\,
      O(2) => \det_signal.diff_phase_W_reg[19]_i_6_n_13\,
      O(1) => \det_signal.diff_phase_W_reg[19]_i_6_n_14\,
      O(0) => \det_signal.diff_phase_W_reg[19]_i_6_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.diff_phase_W[19]_i_7_n_0\,
      S(2) => \det_signal.diff_phase_W[19]_i_8_n_0\,
      S(1) => \det_signal.diff_phase_W[19]_i_9_n_0\,
      S(0) => \det_signal.diff_phase_W[19]_i_10_n_0\
    );
\det_signal.diff_phase_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(1),
      Q => diff_phase_W(1),
      R => '0'
    );
\det_signal.diff_phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(2),
      Q => diff_phase_W(2),
      R => '0'
    );
\det_signal.diff_phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(3),
      Q => diff_phase_W(3),
      R => '0'
    );
\det_signal.diff_phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(4),
      Q => diff_phase_W(4),
      R => '0'
    );
\det_signal.diff_phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(5),
      Q => diff_phase_W(5),
      R => '0'
    );
\det_signal.diff_phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(6),
      Q => diff_phase_W(6),
      R => '0'
    );
\det_signal.diff_phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(7),
      Q => diff_phase_W(7),
      R => '0'
    );
\det_signal.diff_phase_W_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_W_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_phase_W_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_phase_W_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_phase_W_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_phase_W_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_phase_W_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_phase_W_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_phase_W_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_W(7 downto 0),
      O(7 downto 0) => diff_phase_W02_out(7 downto 0),
      S(7) => \det_signal.diff_phase_W[7]_i_2_n_0\,
      S(6) => \det_signal.diff_phase_W[7]_i_3_n_0\,
      S(5) => \det_signal.diff_phase_W[7]_i_4_n_0\,
      S(4) => \det_signal.diff_phase_W[7]_i_5_n_0\,
      S(3) => \det_signal.diff_phase_W[7]_i_6_n_0\,
      S(2) => \det_signal.diff_phase_W[7]_i_7_n_0\,
      S(1) => \det_signal.diff_phase_W[7]_i_8_n_0\,
      S(0) => \det_signal.diff_phase_W[7]_i_9_n_0\
    );
\det_signal.diff_phase_W_reg[7]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_phase_W_reg[7]_i_10_n_0\,
      CO(6) => \det_signal.diff_phase_W_reg[7]_i_10_n_1\,
      CO(5) => \det_signal.diff_phase_W_reg[7]_i_10_n_2\,
      CO(4) => \det_signal.diff_phase_W_reg[7]_i_10_n_3\,
      CO(3) => \det_signal.diff_phase_W_reg[7]_i_10_n_4\,
      CO(2) => \det_signal.diff_phase_W_reg[7]_i_10_n_5\,
      CO(1) => \det_signal.diff_phase_W_reg[7]_i_10_n_6\,
      CO(0) => \det_signal.diff_phase_W_reg[7]_i_10_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \det_signal.diff_phase_W_reg[7]_i_10_n_8\,
      O(6) => \det_signal.diff_phase_W_reg[7]_i_10_n_9\,
      O(5) => \det_signal.diff_phase_W_reg[7]_i_10_n_10\,
      O(4) => \det_signal.diff_phase_W_reg[7]_i_10_n_11\,
      O(3) => \det_signal.diff_phase_W_reg[7]_i_10_n_12\,
      O(2) => \det_signal.diff_phase_W_reg[7]_i_10_n_13\,
      O(1) => \det_signal.diff_phase_W_reg[7]_i_10_n_14\,
      O(0) => \det_signal.diff_phase_W_reg[7]_i_10_n_15\,
      S(7) => \det_signal.diff_phase_W[7]_i_11_n_0\,
      S(6) => \det_signal.diff_phase_W[7]_i_12_n_0\,
      S(5) => \det_signal.diff_phase_W[7]_i_13_n_0\,
      S(4) => \det_signal.diff_phase_W[7]_i_14_n_0\,
      S(3) => \det_signal.diff_phase_W[7]_i_15_n_0\,
      S(2) => \det_signal.diff_phase_W[7]_i_16_n_0\,
      S(1) => \det_signal.diff_phase_W[7]_i_17_n_0\,
      S(0) => prev_phase_W(0)
    );
\det_signal.diff_phase_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(8),
      Q => diff_phase_W(8),
      R => '0'
    );
\det_signal.diff_phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => diff_phase_W02_out(9),
      Q => diff_phase_W(9),
      R => '0'
    );
\det_signal.div_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => div_counter(0),
      I1 => \det_signal.div_counter[5]_i_4_n_0\,
      I2 => \det_signal.div_counter[2]_i_2_n_0\,
      I3 => div_counter(1),
      I4 => div_counter(2),
      O => \det_signal.div_counter[0]_i_1_n_0\
    );
\det_signal.div_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F8F000"
    )
        port map (
      I0 => div_counter(2),
      I1 => \det_signal.div_counter[2]_i_2_n_0\,
      I2 => \det_signal.div_counter[5]_i_4_n_0\,
      I3 => div_counter(1),
      I4 => div_counter(0),
      O => \det_signal.div_counter[1]_i_1_n_0\
    );
\det_signal.div_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCE000"
    )
        port map (
      I0 => \det_signal.div_counter[2]_i_2_n_0\,
      I1 => \det_signal.div_counter[5]_i_4_n_0\,
      I2 => div_counter(1),
      I3 => div_counter(0),
      I4 => div_counter(2),
      O => \det_signal.div_counter[2]_i_1_n_0\
    );
\det_signal.div_counter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => div_counter(5),
      I1 => div_counter(4),
      I2 => div_counter(3),
      I3 => div_delay(0),
      I4 => div_delay(1),
      I5 => div_delay(2),
      O => \det_signal.div_counter[2]_i_2_n_0\
    );
\det_signal.div_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D9990000"
    )
        port map (
      I0 => \det_signal.div_counter[5]_i_3_n_0\,
      I1 => div_counter(3),
      I2 => div_counter(4),
      I3 => div_counter(5),
      I4 => \det_signal.div_counter[5]_i_4_n_0\,
      O => \det_signal.div_counter[3]_i_1_n_0\
    );
\det_signal.div_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A828"
    )
        port map (
      I0 => \det_signal.div_counter[5]_i_4_n_0\,
      I1 => div_counter(3),
      I2 => div_counter(4),
      I3 => div_counter(5),
      I4 => \det_signal.div_counter[5]_i_3_n_0\,
      O => \det_signal.div_counter[4]_i_1_n_0\
    );
\det_signal.div_counter[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => proc_signal,
      O => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF080000"
    )
        port map (
      I0 => div_counter(3),
      I1 => div_counter(4),
      I2 => \det_signal.div_counter[5]_i_3_n_0\,
      I3 => div_counter(5),
      I4 => \det_signal.div_counter[5]_i_4_n_0\,
      O => \det_signal.div_counter[5]_i_2_n_0\
    );
\det_signal.div_counter[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => div_counter(1),
      I1 => div_counter(0),
      I2 => div_counter(2),
      O => \det_signal.div_counter[5]_i_3_n_0\
    );
\det_signal.div_counter[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => div_delay(0),
      I1 => div_delay(1),
      I2 => div_delay(2),
      O => \det_signal.div_counter[5]_i_4_n_0\
    );
\det_signal.div_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.div_counter[0]_i_1_n_0\,
      Q => div_counter(0),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.div_counter[1]_i_1_n_0\,
      Q => div_counter(1),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.div_counter[2]_i_1_n_0\,
      Q => div_counter(2),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.div_counter[3]_i_1_n_0\,
      Q => div_counter(3),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.div_counter[4]_i_1_n_0\,
      Q => div_counter(4),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.div_counter[5]_i_2_n_0\,
      Q => div_counter(5),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_delay[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => div_delay(1),
      I1 => div_delay(2),
      I2 => div_delay(0),
      O => \p_1_in__0\(0)
    );
\det_signal.div_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => div_delay(0),
      I1 => div_delay(1),
      O => \p_1_in__0\(1)
    );
\det_signal.div_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => div_delay(1),
      I1 => div_delay(0),
      I2 => div_delay(2),
      O => \p_1_in__0\(2)
    );
\det_signal.div_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(0),
      Q => div_delay(0),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => div_delay(1),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(2),
      Q => div_delay(2),
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.div_start_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => div_delay(1),
      I1 => div_delay(2),
      I2 => div_delay(0),
      O => \det_signal.div_start_i_1_n_0\
    );
\det_signal.div_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.div_start_i_1_n_0\,
      Q => div_start,
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.dsp_phase_EW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(15),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_8\,
      O => \det_signal.dsp_phase_EW[15]_i_2_n_0\
    );
\det_signal.dsp_phase_EW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(14),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_9\,
      O => \det_signal.dsp_phase_EW[15]_i_3_n_0\
    );
\det_signal.dsp_phase_EW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(13),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_10\,
      O => \det_signal.dsp_phase_EW[15]_i_4_n_0\
    );
\det_signal.dsp_phase_EW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(12),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_11\,
      O => \det_signal.dsp_phase_EW[15]_i_5_n_0\
    );
\det_signal.dsp_phase_EW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(11),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_12\,
      O => \det_signal.dsp_phase_EW[15]_i_6_n_0\
    );
\det_signal.dsp_phase_EW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(10),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_13\,
      O => \det_signal.dsp_phase_EW[15]_i_7_n_0\
    );
\det_signal.dsp_phase_EW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(9),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_14\,
      O => \det_signal.dsp_phase_EW[15]_i_8_n_0\
    );
\det_signal.dsp_phase_EW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(8),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_15\,
      O => \det_signal.dsp_phase_EW[15]_i_9_n_0\
    );
\det_signal.dsp_phase_EW[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(19),
      I1 => \det_signal.dsp_phase_NW_reg[19]_i_6_n_12\,
      O => \det_signal.dsp_phase_EW[19]_i_2_n_0\
    );
\det_signal.dsp_phase_EW[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(18),
      I1 => \det_signal.dsp_phase_NW_reg[19]_i_6_n_13\,
      O => \det_signal.dsp_phase_EW[19]_i_3_n_0\
    );
\det_signal.dsp_phase_EW[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(17),
      I1 => \det_signal.dsp_phase_NW_reg[19]_i_6_n_14\,
      O => \det_signal.dsp_phase_EW[19]_i_4_n_0\
    );
\det_signal.dsp_phase_EW[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(16),
      I1 => \det_signal.dsp_phase_NW_reg[19]_i_6_n_15\,
      O => \det_signal.dsp_phase_EW[19]_i_5_n_0\
    );
\det_signal.dsp_phase_EW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(7),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_8\,
      O => \det_signal.dsp_phase_EW[7]_i_2_n_0\
    );
\det_signal.dsp_phase_EW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(6),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_9\,
      O => \det_signal.dsp_phase_EW[7]_i_3_n_0\
    );
\det_signal.dsp_phase_EW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(5),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_10\,
      O => \det_signal.dsp_phase_EW[7]_i_4_n_0\
    );
\det_signal.dsp_phase_EW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(4),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_11\,
      O => \det_signal.dsp_phase_EW[7]_i_5_n_0\
    );
\det_signal.dsp_phase_EW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(3),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_12\,
      O => \det_signal.dsp_phase_EW[7]_i_6_n_0\
    );
\det_signal.dsp_phase_EW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(2),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_13\,
      O => \det_signal.dsp_phase_EW[7]_i_7_n_0\
    );
\det_signal.dsp_phase_EW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(1),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_14\,
      O => \det_signal.dsp_phase_EW[7]_i_8_n_0\
    );
\det_signal.dsp_phase_EW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_E(0),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_15\,
      O => \det_signal.dsp_phase_EW[7]_i_9_n_0\
    );
\det_signal.dsp_phase_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(0),
      Q => dsp_phase_EW(0),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(10),
      Q => dsp_phase_EW(10),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(11),
      Q => dsp_phase_EW(11),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(12),
      Q => dsp_phase_EW(12),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(13),
      Q => dsp_phase_EW(13),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(14),
      Q => dsp_phase_EW(14),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(15),
      Q => dsp_phase_EW(15),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_EW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_EW_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.dsp_phase_EW_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.dsp_phase_EW_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.dsp_phase_EW_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.dsp_phase_EW_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.dsp_phase_EW_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.dsp_phase_EW_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.dsp_phase_EW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_E(15 downto 8),
      O(7 downto 0) => \det_signal.dsp_phase_EW_reg00_out\(15 downto 8),
      S(7) => \det_signal.dsp_phase_EW[15]_i_2_n_0\,
      S(6) => \det_signal.dsp_phase_EW[15]_i_3_n_0\,
      S(5) => \det_signal.dsp_phase_EW[15]_i_4_n_0\,
      S(4) => \det_signal.dsp_phase_EW[15]_i_5_n_0\,
      S(3) => \det_signal.dsp_phase_EW[15]_i_6_n_0\,
      S(2) => \det_signal.dsp_phase_EW[15]_i_7_n_0\,
      S(1) => \det_signal.dsp_phase_EW[15]_i_8_n_0\,
      S(0) => \det_signal.dsp_phase_EW[15]_i_9_n_0\
    );
\det_signal.dsp_phase_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(16),
      Q => dsp_phase_EW(16),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(17),
      Q => dsp_phase_EW(17),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(18),
      Q => dsp_phase_EW(18),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(19),
      Q => dsp_phase_EW(19),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_EW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.dsp_phase_EW_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.dsp_phase_EW_reg[19]_i_1_n_5\,
      CO(1) => \det_signal.dsp_phase_EW_reg[19]_i_1_n_6\,
      CO(0) => \det_signal.dsp_phase_EW_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_E(18 downto 16),
      O(7 downto 4) => \NLW_det_signal.dsp_phase_EW_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \det_signal.dsp_phase_EW_reg00_out\(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.dsp_phase_EW[19]_i_2_n_0\,
      S(2) => \det_signal.dsp_phase_EW[19]_i_3_n_0\,
      S(1) => \det_signal.dsp_phase_EW[19]_i_4_n_0\,
      S(0) => \det_signal.dsp_phase_EW[19]_i_5_n_0\
    );
\det_signal.dsp_phase_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(1),
      Q => dsp_phase_EW(1),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(2),
      Q => dsp_phase_EW(2),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(3),
      Q => dsp_phase_EW(3),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(4),
      Q => dsp_phase_EW(4),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(5),
      Q => dsp_phase_EW(5),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(6),
      Q => dsp_phase_EW(6),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(7),
      Q => dsp_phase_EW(7),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_EW_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.dsp_phase_EW_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.dsp_phase_EW_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.dsp_phase_EW_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.dsp_phase_EW_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.dsp_phase_EW_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.dsp_phase_EW_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.dsp_phase_EW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_E(7 downto 0),
      O(7 downto 0) => \det_signal.dsp_phase_EW_reg00_out\(7 downto 0),
      S(7) => \det_signal.dsp_phase_EW[7]_i_2_n_0\,
      S(6) => \det_signal.dsp_phase_EW[7]_i_3_n_0\,
      S(5) => \det_signal.dsp_phase_EW[7]_i_4_n_0\,
      S(4) => \det_signal.dsp_phase_EW[7]_i_5_n_0\,
      S(3) => \det_signal.dsp_phase_EW[7]_i_6_n_0\,
      S(2) => \det_signal.dsp_phase_EW[7]_i_7_n_0\,
      S(1) => \det_signal.dsp_phase_EW[7]_i_8_n_0\,
      S(0) => \det_signal.dsp_phase_EW[7]_i_9_n_0\
    );
\det_signal.dsp_phase_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(8),
      Q => dsp_phase_EW(8),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_EW_reg00_out\(9),
      Q => dsp_phase_EW(9),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(0),
      Q => dsp_phase_E(0),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(10),
      Q => dsp_phase_E(10),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(11),
      Q => dsp_phase_E(11),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(12),
      Q => dsp_phase_E(12),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(13),
      Q => dsp_phase_E(13),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(14),
      Q => dsp_phase_E(14),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(15),
      Q => dsp_phase_E(15),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(16),
      Q => dsp_phase_E(16),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(17),
      Q => dsp_phase_E(17),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(18),
      Q => dsp_phase_E(18),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(19),
      Q => dsp_phase_E(19),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(1),
      Q => dsp_phase_E(1),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(2),
      Q => dsp_phase_E(2),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(3),
      Q => dsp_phase_E(3),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(4),
      Q => dsp_phase_E(4),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(5),
      Q => dsp_phase_E(5),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(6),
      Q => dsp_phase_E(6),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(7),
      Q => dsp_phase_E(7),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(8),
      Q => dsp_phase_E(8),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_E(9),
      Q => dsp_phase_E(9),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(15),
      O => \det_signal.dsp_phase_NE[15]_i_11_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(14),
      O => \det_signal.dsp_phase_NE[15]_i_12_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(13),
      O => \det_signal.dsp_phase_NE[15]_i_13_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(12),
      O => \det_signal.dsp_phase_NE[15]_i_14_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(11),
      O => \det_signal.dsp_phase_NE[15]_i_15_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(10),
      O => \det_signal.dsp_phase_NE[15]_i_16_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(9),
      O => \det_signal.dsp_phase_NE[15]_i_17_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(8),
      O => \det_signal.dsp_phase_NE[15]_i_18_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(15),
      I1 => \det_signal.dsp_phase_NE_reg[15]_i_10_n_8\,
      O => \det_signal.dsp_phase_NE[15]_i_2_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(14),
      I1 => \det_signal.dsp_phase_NE_reg[15]_i_10_n_9\,
      O => \det_signal.dsp_phase_NE[15]_i_3_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(13),
      I1 => \det_signal.dsp_phase_NE_reg[15]_i_10_n_10\,
      O => \det_signal.dsp_phase_NE[15]_i_4_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(12),
      I1 => \det_signal.dsp_phase_NE_reg[15]_i_10_n_11\,
      O => \det_signal.dsp_phase_NE[15]_i_5_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(11),
      I1 => \det_signal.dsp_phase_NE_reg[15]_i_10_n_12\,
      O => \det_signal.dsp_phase_NE[15]_i_6_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(10),
      I1 => \det_signal.dsp_phase_NE_reg[15]_i_10_n_13\,
      O => \det_signal.dsp_phase_NE[15]_i_7_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(9),
      I1 => \det_signal.dsp_phase_NE_reg[15]_i_10_n_14\,
      O => \det_signal.dsp_phase_NE[15]_i_8_n_0\
    );
\det_signal.dsp_phase_NE[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(8),
      I1 => \det_signal.dsp_phase_NE_reg[15]_i_10_n_15\,
      O => \det_signal.dsp_phase_NE[15]_i_9_n_0\
    );
\det_signal.dsp_phase_NE[19]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => has_signal,
      O => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE[19]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(17),
      O => \det_signal.dsp_phase_NE[19]_i_10_n_0\
    );
\det_signal.dsp_phase_NE[19]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(16),
      O => \det_signal.dsp_phase_NE[19]_i_11_n_0\
    );
\det_signal.dsp_phase_NE[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(19),
      I1 => \det_signal.dsp_phase_NE_reg[19]_i_7_n_12\,
      O => \det_signal.dsp_phase_NE[19]_i_3_n_0\
    );
\det_signal.dsp_phase_NE[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(18),
      I1 => \det_signal.dsp_phase_NE_reg[19]_i_7_n_13\,
      O => \det_signal.dsp_phase_NE[19]_i_4_n_0\
    );
\det_signal.dsp_phase_NE[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(17),
      I1 => \det_signal.dsp_phase_NE_reg[19]_i_7_n_14\,
      O => \det_signal.dsp_phase_NE[19]_i_5_n_0\
    );
\det_signal.dsp_phase_NE[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(16),
      I1 => \det_signal.dsp_phase_NE_reg[19]_i_7_n_15\,
      O => \det_signal.dsp_phase_NE[19]_i_6_n_0\
    );
\det_signal.dsp_phase_NE[19]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(19),
      O => \det_signal.dsp_phase_NE[19]_i_8_n_0\
    );
\det_signal.dsp_phase_NE[19]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(18),
      O => \det_signal.dsp_phase_NE[19]_i_9_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(7),
      O => \det_signal.dsp_phase_NE[7]_i_11_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(6),
      O => \det_signal.dsp_phase_NE[7]_i_12_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(5),
      O => \det_signal.dsp_phase_NE[7]_i_13_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(4),
      O => \det_signal.dsp_phase_NE[7]_i_14_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(3),
      O => \det_signal.dsp_phase_NE[7]_i_15_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(2),
      O => \det_signal.dsp_phase_NE[7]_i_16_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_E(1),
      O => \det_signal.dsp_phase_NE[7]_i_17_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(7),
      I1 => \det_signal.dsp_phase_NE_reg[7]_i_10_n_8\,
      O => \det_signal.dsp_phase_NE[7]_i_2_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(6),
      I1 => \det_signal.dsp_phase_NE_reg[7]_i_10_n_9\,
      O => \det_signal.dsp_phase_NE[7]_i_3_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(5),
      I1 => \det_signal.dsp_phase_NE_reg[7]_i_10_n_10\,
      O => \det_signal.dsp_phase_NE[7]_i_4_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(4),
      I1 => \det_signal.dsp_phase_NE_reg[7]_i_10_n_11\,
      O => \det_signal.dsp_phase_NE[7]_i_5_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(3),
      I1 => \det_signal.dsp_phase_NE_reg[7]_i_10_n_12\,
      O => \det_signal.dsp_phase_NE[7]_i_6_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(2),
      I1 => \det_signal.dsp_phase_NE_reg[7]_i_10_n_13\,
      O => \det_signal.dsp_phase_NE[7]_i_7_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(1),
      I1 => \det_signal.dsp_phase_NE_reg[7]_i_10_n_14\,
      O => \det_signal.dsp_phase_NE[7]_i_8_n_0\
    );
\det_signal.dsp_phase_NE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(0),
      I1 => \det_signal.dsp_phase_NE_reg[7]_i_10_n_15\,
      O => \det_signal.dsp_phase_NE[7]_i_9_n_0\
    );
\det_signal.dsp_phase_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(0),
      Q => dsp_phase_NE(0),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(10),
      Q => dsp_phase_NE(10),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(11),
      Q => dsp_phase_NE(11),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(12),
      Q => dsp_phase_NE(12),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(13),
      Q => dsp_phase_NE(13),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(14),
      Q => dsp_phase_NE(14),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(15),
      Q => dsp_phase_NE(15),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_NE_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_NE_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.dsp_phase_NE_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.dsp_phase_NE_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.dsp_phase_NE_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.dsp_phase_NE_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.dsp_phase_NE_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.dsp_phase_NE_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.dsp_phase_NE_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_N(15 downto 8),
      O(7 downto 0) => \det_signal.dsp_phase_NE_reg01_out\(15 downto 8),
      S(7) => \det_signal.dsp_phase_NE[15]_i_2_n_0\,
      S(6) => \det_signal.dsp_phase_NE[15]_i_3_n_0\,
      S(5) => \det_signal.dsp_phase_NE[15]_i_4_n_0\,
      S(4) => \det_signal.dsp_phase_NE[15]_i_5_n_0\,
      S(3) => \det_signal.dsp_phase_NE[15]_i_6_n_0\,
      S(2) => \det_signal.dsp_phase_NE[15]_i_7_n_0\,
      S(1) => \det_signal.dsp_phase_NE[15]_i_8_n_0\,
      S(0) => \det_signal.dsp_phase_NE[15]_i_9_n_0\
    );
\det_signal.dsp_phase_NE_reg[15]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_NE_reg[7]_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_0\,
      CO(6) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_1\,
      CO(5) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_2\,
      CO(4) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_3\,
      CO(3) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_4\,
      CO(2) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_5\,
      CO(1) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_6\,
      CO(0) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_8\,
      O(6) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_9\,
      O(5) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_10\,
      O(4) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_11\,
      O(3) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_12\,
      O(2) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_13\,
      O(1) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_14\,
      O(0) => \det_signal.dsp_phase_NE_reg[15]_i_10_n_15\,
      S(7) => \det_signal.dsp_phase_NE[15]_i_11_n_0\,
      S(6) => \det_signal.dsp_phase_NE[15]_i_12_n_0\,
      S(5) => \det_signal.dsp_phase_NE[15]_i_13_n_0\,
      S(4) => \det_signal.dsp_phase_NE[15]_i_14_n_0\,
      S(3) => \det_signal.dsp_phase_NE[15]_i_15_n_0\,
      S(2) => \det_signal.dsp_phase_NE[15]_i_16_n_0\,
      S(1) => \det_signal.dsp_phase_NE[15]_i_17_n_0\,
      S(0) => \det_signal.dsp_phase_NE[15]_i_18_n_0\
    );
\det_signal.dsp_phase_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(16),
      Q => dsp_phase_NE(16),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(17),
      Q => dsp_phase_NE(17),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(18),
      Q => dsp_phase_NE(18),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(19),
      Q => dsp_phase_NE(19),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[19]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_NE_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.dsp_phase_NE_reg[19]_i_2_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.dsp_phase_NE_reg[19]_i_2_n_5\,
      CO(1) => \det_signal.dsp_phase_NE_reg[19]_i_2_n_6\,
      CO(0) => \det_signal.dsp_phase_NE_reg[19]_i_2_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_N(18 downto 16),
      O(7 downto 4) => \NLW_det_signal.dsp_phase_NE_reg[19]_i_2_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \det_signal.dsp_phase_NE_reg01_out\(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.dsp_phase_NE[19]_i_3_n_0\,
      S(2) => \det_signal.dsp_phase_NE[19]_i_4_n_0\,
      S(1) => \det_signal.dsp_phase_NE[19]_i_5_n_0\,
      S(0) => \det_signal.dsp_phase_NE[19]_i_6_n_0\
    );
\det_signal.dsp_phase_NE_reg[19]_i_7\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_NE_reg[15]_i_10_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.dsp_phase_NE_reg[19]_i_7_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.dsp_phase_NE_reg[19]_i_7_n_5\,
      CO(1) => \det_signal.dsp_phase_NE_reg[19]_i_7_n_6\,
      CO(0) => \det_signal.dsp_phase_NE_reg[19]_i_7_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_det_signal.dsp_phase_NE_reg[19]_i_7_O_UNCONNECTED\(7 downto 4),
      O(3) => \det_signal.dsp_phase_NE_reg[19]_i_7_n_12\,
      O(2) => \det_signal.dsp_phase_NE_reg[19]_i_7_n_13\,
      O(1) => \det_signal.dsp_phase_NE_reg[19]_i_7_n_14\,
      O(0) => \det_signal.dsp_phase_NE_reg[19]_i_7_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.dsp_phase_NE[19]_i_8_n_0\,
      S(2) => \det_signal.dsp_phase_NE[19]_i_9_n_0\,
      S(1) => \det_signal.dsp_phase_NE[19]_i_10_n_0\,
      S(0) => \det_signal.dsp_phase_NE[19]_i_11_n_0\
    );
\det_signal.dsp_phase_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(1),
      Q => dsp_phase_NE(1),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(2),
      Q => dsp_phase_NE(2),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(3),
      Q => dsp_phase_NE(3),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(4),
      Q => dsp_phase_NE(4),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(5),
      Q => dsp_phase_NE(5),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(6),
      Q => dsp_phase_NE(6),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(7),
      Q => dsp_phase_NE(7),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_NE_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.dsp_phase_NE_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.dsp_phase_NE_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.dsp_phase_NE_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.dsp_phase_NE_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.dsp_phase_NE_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.dsp_phase_NE_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.dsp_phase_NE_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_N(7 downto 0),
      O(7 downto 0) => \det_signal.dsp_phase_NE_reg01_out\(7 downto 0),
      S(7) => \det_signal.dsp_phase_NE[7]_i_2_n_0\,
      S(6) => \det_signal.dsp_phase_NE[7]_i_3_n_0\,
      S(5) => \det_signal.dsp_phase_NE[7]_i_4_n_0\,
      S(4) => \det_signal.dsp_phase_NE[7]_i_5_n_0\,
      S(3) => \det_signal.dsp_phase_NE[7]_i_6_n_0\,
      S(2) => \det_signal.dsp_phase_NE[7]_i_7_n_0\,
      S(1) => \det_signal.dsp_phase_NE[7]_i_8_n_0\,
      S(0) => \det_signal.dsp_phase_NE[7]_i_9_n_0\
    );
\det_signal.dsp_phase_NE_reg[7]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_0\,
      CO(6) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_1\,
      CO(5) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_2\,
      CO(4) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_3\,
      CO(3) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_4\,
      CO(2) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_5\,
      CO(1) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_6\,
      CO(0) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_8\,
      O(6) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_9\,
      O(5) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_10\,
      O(4) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_11\,
      O(3) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_12\,
      O(2) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_13\,
      O(1) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_14\,
      O(0) => \det_signal.dsp_phase_NE_reg[7]_i_10_n_15\,
      S(7) => \det_signal.dsp_phase_NE[7]_i_11_n_0\,
      S(6) => \det_signal.dsp_phase_NE[7]_i_12_n_0\,
      S(5) => \det_signal.dsp_phase_NE[7]_i_13_n_0\,
      S(4) => \det_signal.dsp_phase_NE[7]_i_14_n_0\,
      S(3) => \det_signal.dsp_phase_NE[7]_i_15_n_0\,
      S(2) => \det_signal.dsp_phase_NE[7]_i_16_n_0\,
      S(1) => \det_signal.dsp_phase_NE[7]_i_17_n_0\,
      S(0) => phase_E(0)
    );
\det_signal.dsp_phase_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(8),
      Q => dsp_phase_NE(8),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NE_reg01_out\(9),
      Q => dsp_phase_NE(9),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(15),
      O => \det_signal.dsp_phase_NW[15]_i_11_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(14),
      O => \det_signal.dsp_phase_NW[15]_i_12_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(13),
      O => \det_signal.dsp_phase_NW[15]_i_13_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(12),
      O => \det_signal.dsp_phase_NW[15]_i_14_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(11),
      O => \det_signal.dsp_phase_NW[15]_i_15_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(10),
      O => \det_signal.dsp_phase_NW[15]_i_16_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(9),
      O => \det_signal.dsp_phase_NW[15]_i_17_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(8),
      O => \det_signal.dsp_phase_NW[15]_i_18_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(15),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_8\,
      O => \det_signal.dsp_phase_NW[15]_i_2_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(14),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_9\,
      O => \det_signal.dsp_phase_NW[15]_i_3_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(13),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_10\,
      O => \det_signal.dsp_phase_NW[15]_i_4_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(12),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_11\,
      O => \det_signal.dsp_phase_NW[15]_i_5_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(11),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_12\,
      O => \det_signal.dsp_phase_NW[15]_i_6_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(10),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_13\,
      O => \det_signal.dsp_phase_NW[15]_i_7_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(9),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_14\,
      O => \det_signal.dsp_phase_NW[15]_i_8_n_0\
    );
\det_signal.dsp_phase_NW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(8),
      I1 => \det_signal.dsp_phase_NW_reg[15]_i_10_n_15\,
      O => \det_signal.dsp_phase_NW[15]_i_9_n_0\
    );
\det_signal.dsp_phase_NW[19]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(16),
      O => \det_signal.dsp_phase_NW[19]_i_10_n_0\
    );
\det_signal.dsp_phase_NW[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(19),
      I1 => \det_signal.dsp_phase_NW_reg[19]_i_6_n_12\,
      O => \det_signal.dsp_phase_NW[19]_i_2_n_0\
    );
\det_signal.dsp_phase_NW[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(18),
      I1 => \det_signal.dsp_phase_NW_reg[19]_i_6_n_13\,
      O => \det_signal.dsp_phase_NW[19]_i_3_n_0\
    );
\det_signal.dsp_phase_NW[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(17),
      I1 => \det_signal.dsp_phase_NW_reg[19]_i_6_n_14\,
      O => \det_signal.dsp_phase_NW[19]_i_4_n_0\
    );
\det_signal.dsp_phase_NW[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(16),
      I1 => \det_signal.dsp_phase_NW_reg[19]_i_6_n_15\,
      O => \det_signal.dsp_phase_NW[19]_i_5_n_0\
    );
\det_signal.dsp_phase_NW[19]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(19),
      O => \det_signal.dsp_phase_NW[19]_i_7_n_0\
    );
\det_signal.dsp_phase_NW[19]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(18),
      O => \det_signal.dsp_phase_NW[19]_i_8_n_0\
    );
\det_signal.dsp_phase_NW[19]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(17),
      O => \det_signal.dsp_phase_NW[19]_i_9_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(7),
      O => \det_signal.dsp_phase_NW[7]_i_11_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(6),
      O => \det_signal.dsp_phase_NW[7]_i_12_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(5),
      O => \det_signal.dsp_phase_NW[7]_i_13_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(4),
      O => \det_signal.dsp_phase_NW[7]_i_14_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(3),
      O => \det_signal.dsp_phase_NW[7]_i_15_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(2),
      O => \det_signal.dsp_phase_NW[7]_i_16_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_W(1),
      O => \det_signal.dsp_phase_NW[7]_i_17_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(7),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_8\,
      O => \det_signal.dsp_phase_NW[7]_i_2_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(6),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_9\,
      O => \det_signal.dsp_phase_NW[7]_i_3_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(5),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_10\,
      O => \det_signal.dsp_phase_NW[7]_i_4_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(4),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_11\,
      O => \det_signal.dsp_phase_NW[7]_i_5_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(3),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_12\,
      O => \det_signal.dsp_phase_NW[7]_i_6_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(2),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_13\,
      O => \det_signal.dsp_phase_NW[7]_i_7_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(1),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_14\,
      O => \det_signal.dsp_phase_NW[7]_i_8_n_0\
    );
\det_signal.dsp_phase_NW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_N(0),
      I1 => \det_signal.dsp_phase_NW_reg[7]_i_10_n_15\,
      O => \det_signal.dsp_phase_NW[7]_i_9_n_0\
    );
\det_signal.dsp_phase_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(0),
      Q => dsp_phase_NW(0),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(10),
      Q => dsp_phase_NW(10),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(11),
      Q => dsp_phase_NW(11),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(12),
      Q => dsp_phase_NW(12),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(13),
      Q => dsp_phase_NW(13),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(14),
      Q => dsp_phase_NW(14),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(15),
      Q => dsp_phase_NW(15),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_NW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_NW_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.dsp_phase_NW_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.dsp_phase_NW_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.dsp_phase_NW_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.dsp_phase_NW_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.dsp_phase_NW_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.dsp_phase_NW_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.dsp_phase_NW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_N(15 downto 8),
      O(7 downto 0) => \det_signal.dsp_phase_NW_reg0\(15 downto 8),
      S(7) => \det_signal.dsp_phase_NW[15]_i_2_n_0\,
      S(6) => \det_signal.dsp_phase_NW[15]_i_3_n_0\,
      S(5) => \det_signal.dsp_phase_NW[15]_i_4_n_0\,
      S(4) => \det_signal.dsp_phase_NW[15]_i_5_n_0\,
      S(3) => \det_signal.dsp_phase_NW[15]_i_6_n_0\,
      S(2) => \det_signal.dsp_phase_NW[15]_i_7_n_0\,
      S(1) => \det_signal.dsp_phase_NW[15]_i_8_n_0\,
      S(0) => \det_signal.dsp_phase_NW[15]_i_9_n_0\
    );
\det_signal.dsp_phase_NW_reg[15]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_NW_reg[7]_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_0\,
      CO(6) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_1\,
      CO(5) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_2\,
      CO(4) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_3\,
      CO(3) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_4\,
      CO(2) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_5\,
      CO(1) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_6\,
      CO(0) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_8\,
      O(6) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_9\,
      O(5) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_10\,
      O(4) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_11\,
      O(3) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_12\,
      O(2) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_13\,
      O(1) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_14\,
      O(0) => \det_signal.dsp_phase_NW_reg[15]_i_10_n_15\,
      S(7) => \det_signal.dsp_phase_NW[15]_i_11_n_0\,
      S(6) => \det_signal.dsp_phase_NW[15]_i_12_n_0\,
      S(5) => \det_signal.dsp_phase_NW[15]_i_13_n_0\,
      S(4) => \det_signal.dsp_phase_NW[15]_i_14_n_0\,
      S(3) => \det_signal.dsp_phase_NW[15]_i_15_n_0\,
      S(2) => \det_signal.dsp_phase_NW[15]_i_16_n_0\,
      S(1) => \det_signal.dsp_phase_NW[15]_i_17_n_0\,
      S(0) => \det_signal.dsp_phase_NW[15]_i_18_n_0\
    );
\det_signal.dsp_phase_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(16),
      Q => dsp_phase_NW(16),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(17),
      Q => dsp_phase_NW(17),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(18),
      Q => dsp_phase_NW(18),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(19),
      Q => dsp_phase_NW(19),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_NW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.dsp_phase_NW_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.dsp_phase_NW_reg[19]_i_1_n_5\,
      CO(1) => \det_signal.dsp_phase_NW_reg[19]_i_1_n_6\,
      CO(0) => \det_signal.dsp_phase_NW_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_N(18 downto 16),
      O(7 downto 4) => \NLW_det_signal.dsp_phase_NW_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \det_signal.dsp_phase_NW_reg0\(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.dsp_phase_NW[19]_i_2_n_0\,
      S(2) => \det_signal.dsp_phase_NW[19]_i_3_n_0\,
      S(1) => \det_signal.dsp_phase_NW[19]_i_4_n_0\,
      S(0) => \det_signal.dsp_phase_NW[19]_i_5_n_0\
    );
\det_signal.dsp_phase_NW_reg[19]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.dsp_phase_NW_reg[15]_i_10_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_det_signal.dsp_phase_NW_reg[19]_i_6_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \det_signal.dsp_phase_NW_reg[19]_i_6_n_5\,
      CO(1) => \det_signal.dsp_phase_NW_reg[19]_i_6_n_6\,
      CO(0) => \det_signal.dsp_phase_NW_reg[19]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_det_signal.dsp_phase_NW_reg[19]_i_6_O_UNCONNECTED\(7 downto 4),
      O(3) => \det_signal.dsp_phase_NW_reg[19]_i_6_n_12\,
      O(2) => \det_signal.dsp_phase_NW_reg[19]_i_6_n_13\,
      O(1) => \det_signal.dsp_phase_NW_reg[19]_i_6_n_14\,
      O(0) => \det_signal.dsp_phase_NW_reg[19]_i_6_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \det_signal.dsp_phase_NW[19]_i_7_n_0\,
      S(2) => \det_signal.dsp_phase_NW[19]_i_8_n_0\,
      S(1) => \det_signal.dsp_phase_NW[19]_i_9_n_0\,
      S(0) => \det_signal.dsp_phase_NW[19]_i_10_n_0\
    );
\det_signal.dsp_phase_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(1),
      Q => dsp_phase_NW(1),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(2),
      Q => dsp_phase_NW(2),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(3),
      Q => dsp_phase_NW(3),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(4),
      Q => dsp_phase_NW(4),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(5),
      Q => dsp_phase_NW(5),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(6),
      Q => dsp_phase_NW(6),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(7),
      Q => dsp_phase_NW(7),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_NW_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.dsp_phase_NW_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.dsp_phase_NW_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.dsp_phase_NW_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.dsp_phase_NW_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.dsp_phase_NW_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.dsp_phase_NW_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.dsp_phase_NW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_N(7 downto 0),
      O(7 downto 0) => \det_signal.dsp_phase_NW_reg0\(7 downto 0),
      S(7) => \det_signal.dsp_phase_NW[7]_i_2_n_0\,
      S(6) => \det_signal.dsp_phase_NW[7]_i_3_n_0\,
      S(5) => \det_signal.dsp_phase_NW[7]_i_4_n_0\,
      S(4) => \det_signal.dsp_phase_NW[7]_i_5_n_0\,
      S(3) => \det_signal.dsp_phase_NW[7]_i_6_n_0\,
      S(2) => \det_signal.dsp_phase_NW[7]_i_7_n_0\,
      S(1) => \det_signal.dsp_phase_NW[7]_i_8_n_0\,
      S(0) => \det_signal.dsp_phase_NW[7]_i_9_n_0\
    );
\det_signal.dsp_phase_NW_reg[7]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_0\,
      CO(6) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_1\,
      CO(5) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_2\,
      CO(4) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_3\,
      CO(3) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_4\,
      CO(2) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_5\,
      CO(1) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_6\,
      CO(0) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_8\,
      O(6) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_9\,
      O(5) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_10\,
      O(4) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_11\,
      O(3) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_12\,
      O(2) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_13\,
      O(1) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_14\,
      O(0) => \det_signal.dsp_phase_NW_reg[7]_i_10_n_15\,
      S(7) => \det_signal.dsp_phase_NW[7]_i_11_n_0\,
      S(6) => \det_signal.dsp_phase_NW[7]_i_12_n_0\,
      S(5) => \det_signal.dsp_phase_NW[7]_i_13_n_0\,
      S(4) => \det_signal.dsp_phase_NW[7]_i_14_n_0\,
      S(3) => \det_signal.dsp_phase_NW[7]_i_15_n_0\,
      S(2) => \det_signal.dsp_phase_NW[7]_i_16_n_0\,
      S(1) => \det_signal.dsp_phase_NW[7]_i_17_n_0\,
      S(0) => phase_W(0)
    );
\det_signal.dsp_phase_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(8),
      Q => dsp_phase_NW(8),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.dsp_phase_NW_reg0\(9),
      Q => dsp_phase_NW(9),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(0),
      Q => dsp_phase_N(0),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(10),
      Q => dsp_phase_N(10),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(11),
      Q => dsp_phase_N(11),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(12),
      Q => dsp_phase_N(12),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(13),
      Q => dsp_phase_N(13),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(14),
      Q => dsp_phase_N(14),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(15),
      Q => dsp_phase_N(15),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(16),
      Q => dsp_phase_N(16),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(17),
      Q => dsp_phase_N(17),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(18),
      Q => dsp_phase_N(18),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(19),
      Q => dsp_phase_N(19),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(1),
      Q => dsp_phase_N(1),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(2),
      Q => dsp_phase_N(2),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(3),
      Q => dsp_phase_N(3),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(4),
      Q => dsp_phase_N(4),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(5),
      Q => dsp_phase_N(5),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(6),
      Q => dsp_phase_N(6),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(7),
      Q => dsp_phase_N(7),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(8),
      Q => dsp_phase_N(8),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_N(9),
      Q => dsp_phase_N(9),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(0),
      Q => dsp_phase_W(0),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(10),
      Q => dsp_phase_W(10),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(11),
      Q => dsp_phase_W(11),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(12),
      Q => dsp_phase_W(12),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(13),
      Q => dsp_phase_W(13),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(14),
      Q => dsp_phase_W(14),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(15),
      Q => dsp_phase_W(15),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(16),
      Q => dsp_phase_W(16),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(17),
      Q => dsp_phase_W(17),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(18),
      Q => dsp_phase_W(18),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(19),
      Q => dsp_phase_W(19),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(1),
      Q => dsp_phase_W(1),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(2),
      Q => dsp_phase_W(2),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(3),
      Q => dsp_phase_W(3),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(4),
      Q => dsp_phase_W(4),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(5),
      Q => dsp_phase_W(5),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(6),
      Q => dsp_phase_W(6),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(7),
      Q => dsp_phase_W(7),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(8),
      Q => dsp_phase_W(8),
      R => \env_EW__0\(0)
    );
\det_signal.dsp_phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_phase_W(9),
      Q => dsp_phase_W(9),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(15),
      I1 => env_W(15),
      O => \det_signal.env_EW[15]_i_2_n_0\
    );
\det_signal.env_EW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(14),
      I1 => env_W(14),
      O => \det_signal.env_EW[15]_i_3_n_0\
    );
\det_signal.env_EW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(13),
      I1 => env_W(13),
      O => \det_signal.env_EW[15]_i_4_n_0\
    );
\det_signal.env_EW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(12),
      I1 => env_W(12),
      O => \det_signal.env_EW[15]_i_5_n_0\
    );
\det_signal.env_EW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(11),
      I1 => env_W(11),
      O => \det_signal.env_EW[15]_i_6_n_0\
    );
\det_signal.env_EW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(10),
      I1 => env_W(10),
      O => \det_signal.env_EW[15]_i_7_n_0\
    );
\det_signal.env_EW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(9),
      I1 => env_W(9),
      O => \det_signal.env_EW[15]_i_8_n_0\
    );
\det_signal.env_EW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(8),
      I1 => env_W(8),
      O => \det_signal.env_EW[15]_i_9_n_0\
    );
\det_signal.env_EW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(7),
      I1 => env_W(7),
      O => \det_signal.env_EW[7]_i_2_n_0\
    );
\det_signal.env_EW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(6),
      I1 => env_W(6),
      O => \det_signal.env_EW[7]_i_3_n_0\
    );
\det_signal.env_EW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(5),
      I1 => env_W(5),
      O => \det_signal.env_EW[7]_i_4_n_0\
    );
\det_signal.env_EW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(4),
      I1 => env_W(4),
      O => \det_signal.env_EW[7]_i_5_n_0\
    );
\det_signal.env_EW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(3),
      I1 => env_W(3),
      O => \det_signal.env_EW[7]_i_6_n_0\
    );
\det_signal.env_EW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(2),
      I1 => env_W(2),
      O => \det_signal.env_EW[7]_i_7_n_0\
    );
\det_signal.env_EW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(1),
      I1 => env_W(1),
      O => \det_signal.env_EW[7]_i_8_n_0\
    );
\det_signal.env_EW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_E(0),
      I1 => env_W(0),
      O => \det_signal.env_EW[7]_i_9_n_0\
    );
\det_signal.env_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(0),
      Q => env_EW(0),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(10),
      Q => env_EW(10),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(11),
      Q => env_EW(11),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(12),
      Q => env_EW(12),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(13),
      Q => env_EW(13),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(14),
      Q => env_EW(14),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(15),
      Q => env_EW(15),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_EW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_EW_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.env_EW_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.env_EW_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.env_EW_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.env_EW_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.env_EW_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.env_EW_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.env_EW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => env_E(15 downto 8),
      O(7 downto 0) => env_EW0(15 downto 8),
      S(7) => \det_signal.env_EW[15]_i_2_n_0\,
      S(6) => \det_signal.env_EW[15]_i_3_n_0\,
      S(5) => \det_signal.env_EW[15]_i_4_n_0\,
      S(4) => \det_signal.env_EW[15]_i_5_n_0\,
      S(3) => \det_signal.env_EW[15]_i_6_n_0\,
      S(2) => \det_signal.env_EW[15]_i_7_n_0\,
      S(1) => \det_signal.env_EW[15]_i_8_n_0\,
      S(0) => \det_signal.env_EW[15]_i_9_n_0\
    );
\det_signal.env_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(16),
      Q => env_EW(16),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(17),
      Q => env_EW(17),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[17]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_EW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_det_signal.env_EW_reg[17]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \det_signal.env_EW_reg[17]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_det_signal.env_EW_reg[17]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => env_EW0(17 downto 16),
      S(7 downto 0) => B"00000000"
    );
\det_signal.env_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(1),
      Q => env_EW(1),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(2),
      Q => env_EW(2),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(3),
      Q => env_EW(3),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(4),
      Q => env_EW(4),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(5),
      Q => env_EW(5),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(6),
      Q => env_EW(6),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(7),
      Q => env_EW(7),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_EW_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.env_EW_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.env_EW_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.env_EW_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.env_EW_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.env_EW_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.env_EW_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.env_EW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => env_E(7 downto 0),
      O(7 downto 0) => env_EW0(7 downto 0),
      S(7) => \det_signal.env_EW[7]_i_2_n_0\,
      S(6) => \det_signal.env_EW[7]_i_3_n_0\,
      S(5) => \det_signal.env_EW[7]_i_4_n_0\,
      S(4) => \det_signal.env_EW[7]_i_5_n_0\,
      S(3) => \det_signal.env_EW[7]_i_6_n_0\,
      S(2) => \det_signal.env_EW[7]_i_7_n_0\,
      S(1) => \det_signal.env_EW[7]_i_8_n_0\,
      S(0) => \det_signal.env_EW[7]_i_9_n_0\
    );
\det_signal.env_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(8),
      Q => env_EW(8),
      R => \env_EW__0\(0)
    );
\det_signal.env_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_EW0(9),
      Q => env_EW(9),
      R => \env_EW__0\(0)
    );
\det_signal.env_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(36),
      Q => env_E(0),
      R => '0'
    );
\det_signal.env_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(46),
      Q => env_E(10),
      R => '0'
    );
\det_signal.env_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(47),
      Q => env_E(11),
      R => '0'
    );
\det_signal.env_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(48),
      Q => env_E(12),
      R => '0'
    );
\det_signal.env_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(49),
      Q => env_E(13),
      R => '0'
    );
\det_signal.env_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(50),
      Q => env_E(14),
      R => '0'
    );
\det_signal.env_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(51),
      Q => env_E(15),
      R => '0'
    );
\det_signal.env_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(37),
      Q => env_E(1),
      R => '0'
    );
\det_signal.env_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(38),
      Q => env_E(2),
      R => '0'
    );
\det_signal.env_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(39),
      Q => env_E(3),
      R => '0'
    );
\det_signal.env_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(40),
      Q => env_E(4),
      R => '0'
    );
\det_signal.env_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(41),
      Q => env_E(5),
      R => '0'
    );
\det_signal.env_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(42),
      Q => env_E(6),
      R => '0'
    );
\det_signal.env_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(43),
      Q => env_E(7),
      R => '0'
    );
\det_signal.env_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(44),
      Q => env_E(8),
      R => '0'
    );
\det_signal.env_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(45),
      Q => env_E(9),
      R => '0'
    );
\det_signal.env_NE[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(15),
      I1 => env_E(15),
      O => \det_signal.env_NE[15]_i_2_n_0\
    );
\det_signal.env_NE[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(14),
      I1 => env_E(14),
      O => \det_signal.env_NE[15]_i_3_n_0\
    );
\det_signal.env_NE[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(13),
      I1 => env_E(13),
      O => \det_signal.env_NE[15]_i_4_n_0\
    );
\det_signal.env_NE[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(12),
      I1 => env_E(12),
      O => \det_signal.env_NE[15]_i_5_n_0\
    );
\det_signal.env_NE[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(11),
      I1 => env_E(11),
      O => \det_signal.env_NE[15]_i_6_n_0\
    );
\det_signal.env_NE[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(10),
      I1 => env_E(10),
      O => \det_signal.env_NE[15]_i_7_n_0\
    );
\det_signal.env_NE[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(9),
      I1 => env_E(9),
      O => \det_signal.env_NE[15]_i_8_n_0\
    );
\det_signal.env_NE[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(8),
      I1 => env_E(8),
      O => \det_signal.env_NE[15]_i_9_n_0\
    );
\det_signal.env_NE[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(7),
      I1 => env_E(7),
      O => \det_signal.env_NE[7]_i_2_n_0\
    );
\det_signal.env_NE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(6),
      I1 => env_E(6),
      O => \det_signal.env_NE[7]_i_3_n_0\
    );
\det_signal.env_NE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(5),
      I1 => env_E(5),
      O => \det_signal.env_NE[7]_i_4_n_0\
    );
\det_signal.env_NE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(4),
      I1 => env_E(4),
      O => \det_signal.env_NE[7]_i_5_n_0\
    );
\det_signal.env_NE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(3),
      I1 => env_E(3),
      O => \det_signal.env_NE[7]_i_6_n_0\
    );
\det_signal.env_NE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(2),
      I1 => env_E(2),
      O => \det_signal.env_NE[7]_i_7_n_0\
    );
\det_signal.env_NE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(1),
      I1 => env_E(1),
      O => \det_signal.env_NE[7]_i_8_n_0\
    );
\det_signal.env_NE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(0),
      I1 => env_E(0),
      O => \det_signal.env_NE[7]_i_9_n_0\
    );
\det_signal.env_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(0),
      Q => env_NE(0),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(10),
      Q => env_NE(10),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(11),
      Q => env_NE(11),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(12),
      Q => env_NE(12),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(13),
      Q => env_NE(13),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(14),
      Q => env_NE(14),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(15),
      Q => env_NE(15),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_NE_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_NE_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.env_NE_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.env_NE_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.env_NE_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.env_NE_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.env_NE_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.env_NE_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.env_NE_reg[15]_i_1_n_7\,
      DI(7 downto 0) => env_N(15 downto 8),
      O(7 downto 0) => \det_signal.env_NE_reg0\(15 downto 8),
      S(7) => \det_signal.env_NE[15]_i_2_n_0\,
      S(6) => \det_signal.env_NE[15]_i_3_n_0\,
      S(5) => \det_signal.env_NE[15]_i_4_n_0\,
      S(4) => \det_signal.env_NE[15]_i_5_n_0\,
      S(3) => \det_signal.env_NE[15]_i_6_n_0\,
      S(2) => \det_signal.env_NE[15]_i_7_n_0\,
      S(1) => \det_signal.env_NE[15]_i_8_n_0\,
      S(0) => \det_signal.env_NE[15]_i_9_n_0\
    );
\det_signal.env_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(16),
      Q => env_NE(16),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(17),
      Q => env_NE(17),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[17]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_NE_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_det_signal.env_NE_reg[17]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \det_signal.env_NE_reg[17]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_det_signal.env_NE_reg[17]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => \det_signal.env_NE_reg0\(17 downto 16),
      S(7 downto 0) => B"00000000"
    );
\det_signal.env_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(1),
      Q => env_NE(1),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(2),
      Q => env_NE(2),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(3),
      Q => env_NE(3),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(4),
      Q => env_NE(4),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(5),
      Q => env_NE(5),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(6),
      Q => env_NE(6),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(7),
      Q => env_NE(7),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_NE_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.env_NE_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.env_NE_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.env_NE_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.env_NE_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.env_NE_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.env_NE_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.env_NE_reg[7]_i_1_n_7\,
      DI(7 downto 0) => env_N(7 downto 0),
      O(7 downto 0) => \det_signal.env_NE_reg0\(7 downto 0),
      S(7) => \det_signal.env_NE[7]_i_2_n_0\,
      S(6) => \det_signal.env_NE[7]_i_3_n_0\,
      S(5) => \det_signal.env_NE[7]_i_4_n_0\,
      S(4) => \det_signal.env_NE[7]_i_5_n_0\,
      S(3) => \det_signal.env_NE[7]_i_6_n_0\,
      S(2) => \det_signal.env_NE[7]_i_7_n_0\,
      S(1) => \det_signal.env_NE[7]_i_8_n_0\,
      S(0) => \det_signal.env_NE[7]_i_9_n_0\
    );
\det_signal.env_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(8),
      Q => env_NE(8),
      R => \env_EW__0\(0)
    );
\det_signal.env_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.env_NE_reg0\(9),
      Q => env_NE(9),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(15),
      I1 => env_W(15),
      O => \det_signal.env_NW[15]_i_2_n_0\
    );
\det_signal.env_NW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(14),
      I1 => env_W(14),
      O => \det_signal.env_NW[15]_i_3_n_0\
    );
\det_signal.env_NW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(13),
      I1 => env_W(13),
      O => \det_signal.env_NW[15]_i_4_n_0\
    );
\det_signal.env_NW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(12),
      I1 => env_W(12),
      O => \det_signal.env_NW[15]_i_5_n_0\
    );
\det_signal.env_NW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(11),
      I1 => env_W(11),
      O => \det_signal.env_NW[15]_i_6_n_0\
    );
\det_signal.env_NW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(10),
      I1 => env_W(10),
      O => \det_signal.env_NW[15]_i_7_n_0\
    );
\det_signal.env_NW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(9),
      I1 => env_W(9),
      O => \det_signal.env_NW[15]_i_8_n_0\
    );
\det_signal.env_NW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(8),
      I1 => env_W(8),
      O => \det_signal.env_NW[15]_i_9_n_0\
    );
\det_signal.env_NW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(7),
      I1 => env_W(7),
      O => \det_signal.env_NW[7]_i_2_n_0\
    );
\det_signal.env_NW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(6),
      I1 => env_W(6),
      O => \det_signal.env_NW[7]_i_3_n_0\
    );
\det_signal.env_NW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(5),
      I1 => env_W(5),
      O => \det_signal.env_NW[7]_i_4_n_0\
    );
\det_signal.env_NW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(4),
      I1 => env_W(4),
      O => \det_signal.env_NW[7]_i_5_n_0\
    );
\det_signal.env_NW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(3),
      I1 => env_W(3),
      O => \det_signal.env_NW[7]_i_6_n_0\
    );
\det_signal.env_NW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(2),
      I1 => env_W(2),
      O => \det_signal.env_NW[7]_i_7_n_0\
    );
\det_signal.env_NW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(1),
      I1 => env_W(1),
      O => \det_signal.env_NW[7]_i_8_n_0\
    );
\det_signal.env_NW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_N(0),
      I1 => env_W(0),
      O => \det_signal.env_NW[7]_i_9_n_0\
    );
\det_signal.env_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(0),
      Q => env_NW(0),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(10),
      Q => env_NW(10),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(11),
      Q => env_NW(11),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(12),
      Q => env_NW(12),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(13),
      Q => env_NW(13),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(14),
      Q => env_NW(14),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(15),
      Q => env_NW(15),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_NW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_NW_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.env_NW_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.env_NW_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.env_NW_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.env_NW_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.env_NW_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.env_NW_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.env_NW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => env_N(15 downto 8),
      O(7 downto 0) => env_NW0(15 downto 8),
      S(7) => \det_signal.env_NW[15]_i_2_n_0\,
      S(6) => \det_signal.env_NW[15]_i_3_n_0\,
      S(5) => \det_signal.env_NW[15]_i_4_n_0\,
      S(4) => \det_signal.env_NW[15]_i_5_n_0\,
      S(3) => \det_signal.env_NW[15]_i_6_n_0\,
      S(2) => \det_signal.env_NW[15]_i_7_n_0\,
      S(1) => \det_signal.env_NW[15]_i_8_n_0\,
      S(0) => \det_signal.env_NW[15]_i_9_n_0\
    );
\det_signal.env_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(16),
      Q => env_NW(16),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(17),
      Q => env_NW(17),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[17]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_NW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_det_signal.env_NW_reg[17]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \det_signal.env_NW_reg[17]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_det_signal.env_NW_reg[17]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => env_NW0(17 downto 16),
      S(7 downto 0) => B"00000000"
    );
\det_signal.env_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(1),
      Q => env_NW(1),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(2),
      Q => env_NW(2),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(3),
      Q => env_NW(3),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(4),
      Q => env_NW(4),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(5),
      Q => env_NW(5),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(6),
      Q => env_NW(6),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(7),
      Q => env_NW(7),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_NW_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.env_NW_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.env_NW_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.env_NW_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.env_NW_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.env_NW_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.env_NW_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.env_NW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => env_N(7 downto 0),
      O(7 downto 0) => env_NW0(7 downto 0),
      S(7) => \det_signal.env_NW[7]_i_2_n_0\,
      S(6) => \det_signal.env_NW[7]_i_3_n_0\,
      S(5) => \det_signal.env_NW[7]_i_4_n_0\,
      S(4) => \det_signal.env_NW[7]_i_5_n_0\,
      S(3) => \det_signal.env_NW[7]_i_6_n_0\,
      S(2) => \det_signal.env_NW[7]_i_7_n_0\,
      S(1) => \det_signal.env_NW[7]_i_8_n_0\,
      S(0) => \det_signal.env_NW[7]_i_9_n_0\
    );
\det_signal.env_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(8),
      Q => env_NW(8),
      R => \env_EW__0\(0)
    );
\det_signal.env_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_NW0(9),
      Q => env_NW(9),
      R => \env_EW__0\(0)
    );
\det_signal.env_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(0),
      Q => env_N(0),
      R => '0'
    );
\det_signal.env_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(10),
      Q => env_N(10),
      R => '0'
    );
\det_signal.env_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(11),
      Q => env_N(11),
      R => '0'
    );
\det_signal.env_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(12),
      Q => env_N(12),
      R => '0'
    );
\det_signal.env_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(13),
      Q => env_N(13),
      R => '0'
    );
\det_signal.env_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(14),
      Q => env_N(14),
      R => '0'
    );
\det_signal.env_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(15),
      Q => env_N(15),
      R => '0'
    );
\det_signal.env_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(1),
      Q => env_N(1),
      R => '0'
    );
\det_signal.env_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(2),
      Q => env_N(2),
      R => '0'
    );
\det_signal.env_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(3),
      Q => env_N(3),
      R => '0'
    );
\det_signal.env_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(4),
      Q => env_N(4),
      R => '0'
    );
\det_signal.env_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(5),
      Q => env_N(5),
      R => '0'
    );
\det_signal.env_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(6),
      Q => env_N(6),
      R => '0'
    );
\det_signal.env_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(7),
      Q => env_N(7),
      R => '0'
    );
\det_signal.env_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(8),
      Q => env_N(8),
      R => '0'
    );
\det_signal.env_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(9),
      Q => env_N(9),
      R => '0'
    );
\det_signal.env_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(72),
      Q => env_W(0),
      R => '0'
    );
\det_signal.env_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(82),
      Q => env_W(10),
      R => '0'
    );
\det_signal.env_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(83),
      Q => env_W(11),
      R => '0'
    );
\det_signal.env_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(84),
      Q => env_W(12),
      R => '0'
    );
\det_signal.env_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(85),
      Q => env_W(13),
      R => '0'
    );
\det_signal.env_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(86),
      Q => env_W(14),
      R => '0'
    );
\det_signal.env_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(87),
      Q => env_W(15),
      R => '0'
    );
\det_signal.env_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(73),
      Q => env_W(1),
      R => '0'
    );
\det_signal.env_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(74),
      Q => env_W(2),
      R => '0'
    );
\det_signal.env_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(75),
      Q => env_W(3),
      R => '0'
    );
\det_signal.env_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(76),
      Q => env_W(4),
      R => '0'
    );
\det_signal.env_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(77),
      Q => env_W(5),
      R => '0'
    );
\det_signal.env_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(78),
      Q => env_W(6),
      R => '0'
    );
\det_signal.env_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(79),
      Q => env_W(7),
      R => '0'
    );
\det_signal.env_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(80),
      Q => env_W(8),
      R => '0'
    );
\det_signal.env_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(81),
      Q => env_W(9),
      R => '0'
    );
\det_signal.env_sum_EW[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(0),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(0),
      O => \det_signal.env_sum_EW[0]_i_1_n_0\
    );
\det_signal.env_sum_EW[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(10),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(10),
      O => \det_signal.env_sum_EW[10]_i_1_n_0\
    );
\det_signal.env_sum_EW[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(11),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(11),
      O => \det_signal.env_sum_EW[11]_i_1_n_0\
    );
\det_signal.env_sum_EW[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(12),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(12),
      O => \det_signal.env_sum_EW[12]_i_1_n_0\
    );
\det_signal.env_sum_EW[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(13),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(13),
      O => \det_signal.env_sum_EW[13]_i_1_n_0\
    );
\det_signal.env_sum_EW[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(14),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(14),
      O => \det_signal.env_sum_EW[14]_i_1_n_0\
    );
\det_signal.env_sum_EW[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(15),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(15),
      O => \det_signal.env_sum_EW[15]_i_1_n_0\
    );
\det_signal.env_sum_EW[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(8),
      I1 => env_sum_W(8),
      O => \det_signal.env_sum_EW[15]_i_10_n_0\
    );
\det_signal.env_sum_EW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(15),
      I1 => env_sum_W(15),
      O => \det_signal.env_sum_EW[15]_i_3_n_0\
    );
\det_signal.env_sum_EW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(14),
      I1 => env_sum_W(14),
      O => \det_signal.env_sum_EW[15]_i_4_n_0\
    );
\det_signal.env_sum_EW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(13),
      I1 => env_sum_W(13),
      O => \det_signal.env_sum_EW[15]_i_5_n_0\
    );
\det_signal.env_sum_EW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(12),
      I1 => env_sum_W(12),
      O => \det_signal.env_sum_EW[15]_i_6_n_0\
    );
\det_signal.env_sum_EW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(11),
      I1 => env_sum_W(11),
      O => \det_signal.env_sum_EW[15]_i_7_n_0\
    );
\det_signal.env_sum_EW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(10),
      I1 => env_sum_W(10),
      O => \det_signal.env_sum_EW[15]_i_8_n_0\
    );
\det_signal.env_sum_EW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(9),
      I1 => env_sum_W(9),
      O => \det_signal.env_sum_EW[15]_i_9_n_0\
    );
\det_signal.env_sum_EW[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(16),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(16),
      O => \det_signal.env_sum_EW[16]_i_1_n_0\
    );
\det_signal.env_sum_EW[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(17),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(17),
      O => \det_signal.env_sum_EW[17]_i_1_n_0\
    );
\det_signal.env_sum_EW[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(18),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(18),
      O => \det_signal.env_sum_EW[18]_i_1_n_0\
    );
\det_signal.env_sum_EW[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(19),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(19),
      O => \det_signal.env_sum_EW[19]_i_1_n_0\
    );
\det_signal.env_sum_EW[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(1),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(1),
      O => \det_signal.env_sum_EW[1]_i_1_n_0\
    );
\det_signal.env_sum_EW[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(20),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(20),
      O => \det_signal.env_sum_EW[20]_i_1_n_0\
    );
\det_signal.env_sum_EW[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(21),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(21),
      O => \det_signal.env_sum_EW[21]_i_1_n_0\
    );
\det_signal.env_sum_EW[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(22),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(22),
      O => \det_signal.env_sum_EW[22]_i_1_n_0\
    );
\det_signal.env_sum_EW[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(23),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(23),
      O => \det_signal.env_sum_EW[23]_i_1_n_0\
    );
\det_signal.env_sum_EW[23]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(16),
      I1 => env_sum_W(16),
      O => \det_signal.env_sum_EW[23]_i_10_n_0\
    );
\det_signal.env_sum_EW[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(23),
      I1 => env_sum_W(23),
      O => \det_signal.env_sum_EW[23]_i_3_n_0\
    );
\det_signal.env_sum_EW[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(22),
      I1 => env_sum_W(22),
      O => \det_signal.env_sum_EW[23]_i_4_n_0\
    );
\det_signal.env_sum_EW[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(21),
      I1 => env_sum_W(21),
      O => \det_signal.env_sum_EW[23]_i_5_n_0\
    );
\det_signal.env_sum_EW[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(20),
      I1 => env_sum_W(20),
      O => \det_signal.env_sum_EW[23]_i_6_n_0\
    );
\det_signal.env_sum_EW[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(19),
      I1 => env_sum_W(19),
      O => \det_signal.env_sum_EW[23]_i_7_n_0\
    );
\det_signal.env_sum_EW[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(18),
      I1 => env_sum_W(18),
      O => \det_signal.env_sum_EW[23]_i_8_n_0\
    );
\det_signal.env_sum_EW[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(17),
      I1 => env_sum_W(17),
      O => \det_signal.env_sum_EW[23]_i_9_n_0\
    );
\det_signal.env_sum_EW[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(24),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(24),
      O => \det_signal.env_sum_EW[24]_i_1_n_0\
    );
\det_signal.env_sum_EW[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(2),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(2),
      O => \det_signal.env_sum_EW[2]_i_1_n_0\
    );
\det_signal.env_sum_EW[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(3),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(3),
      O => \det_signal.env_sum_EW[3]_i_1_n_0\
    );
\det_signal.env_sum_EW[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(4),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(4),
      O => \det_signal.env_sum_EW[4]_i_1_n_0\
    );
\det_signal.env_sum_EW[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(5),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(5),
      O => \det_signal.env_sum_EW[5]_i_1_n_0\
    );
\det_signal.env_sum_EW[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(6),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(6),
      O => \det_signal.env_sum_EW[6]_i_1_n_0\
    );
\det_signal.env_sum_EW[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(7),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(7),
      O => \det_signal.env_sum_EW[7]_i_1_n_0\
    );
\det_signal.env_sum_EW[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(0),
      I1 => env_sum_W(0),
      O => \det_signal.env_sum_EW[7]_i_10_n_0\
    );
\det_signal.env_sum_EW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(7),
      I1 => env_sum_W(7),
      O => \det_signal.env_sum_EW[7]_i_3_n_0\
    );
\det_signal.env_sum_EW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(6),
      I1 => env_sum_W(6),
      O => \det_signal.env_sum_EW[7]_i_4_n_0\
    );
\det_signal.env_sum_EW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(5),
      I1 => env_sum_W(5),
      O => \det_signal.env_sum_EW[7]_i_5_n_0\
    );
\det_signal.env_sum_EW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(4),
      I1 => env_sum_W(4),
      O => \det_signal.env_sum_EW[7]_i_6_n_0\
    );
\det_signal.env_sum_EW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(3),
      I1 => env_sum_W(3),
      O => \det_signal.env_sum_EW[7]_i_7_n_0\
    );
\det_signal.env_sum_EW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(2),
      I1 => env_sum_W(2),
      O => \det_signal.env_sum_EW[7]_i_8_n_0\
    );
\det_signal.env_sum_EW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_E(1),
      I1 => env_sum_W(1),
      O => \det_signal.env_sum_EW[7]_i_9_n_0\
    );
\det_signal.env_sum_EW[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(8),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(8),
      O => \det_signal.env_sum_EW[8]_i_1_n_0\
    );
\det_signal.env_sum_EW[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_EW(9),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_EW0(9),
      O => \det_signal.env_sum_EW[9]_i_1_n_0\
    );
\det_signal.env_sum_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[0]_i_1_n_0\,
      Q => env_sum_EW(0),
      R => '0'
    );
\det_signal.env_sum_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[10]_i_1_n_0\,
      Q => env_sum_EW(10),
      R => '0'
    );
\det_signal.env_sum_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[11]_i_1_n_0\,
      Q => env_sum_EW(11),
      R => '0'
    );
\det_signal.env_sum_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[12]_i_1_n_0\,
      Q => env_sum_EW(12),
      R => '0'
    );
\det_signal.env_sum_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[13]_i_1_n_0\,
      Q => env_sum_EW(13),
      R => '0'
    );
\det_signal.env_sum_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[14]_i_1_n_0\,
      Q => env_sum_EW(14),
      R => '0'
    );
\det_signal.env_sum_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[15]_i_1_n_0\,
      Q => env_sum_EW(15),
      R => '0'
    );
\det_signal.env_sum_EW_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_EW_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_EW_reg[15]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_EW_reg[15]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_EW_reg[15]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_EW_reg[15]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_EW_reg[15]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_EW_reg[15]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_EW_reg[15]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_EW_reg[15]_i_2_n_7\,
      DI(7 downto 0) => env_sum_E(15 downto 8),
      O(7 downto 0) => env_sum_EW0(15 downto 8),
      S(7) => \det_signal.env_sum_EW[15]_i_3_n_0\,
      S(6) => \det_signal.env_sum_EW[15]_i_4_n_0\,
      S(5) => \det_signal.env_sum_EW[15]_i_5_n_0\,
      S(4) => \det_signal.env_sum_EW[15]_i_6_n_0\,
      S(3) => \det_signal.env_sum_EW[15]_i_7_n_0\,
      S(2) => \det_signal.env_sum_EW[15]_i_8_n_0\,
      S(1) => \det_signal.env_sum_EW[15]_i_9_n_0\,
      S(0) => \det_signal.env_sum_EW[15]_i_10_n_0\
    );
\det_signal.env_sum_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[16]_i_1_n_0\,
      Q => env_sum_EW(16),
      R => '0'
    );
\det_signal.env_sum_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[17]_i_1_n_0\,
      Q => env_sum_EW(17),
      R => '0'
    );
\det_signal.env_sum_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[18]_i_1_n_0\,
      Q => env_sum_EW(18),
      R => '0'
    );
\det_signal.env_sum_EW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[19]_i_1_n_0\,
      Q => env_sum_EW(19),
      R => '0'
    );
\det_signal.env_sum_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[1]_i_1_n_0\,
      Q => env_sum_EW(1),
      R => '0'
    );
\det_signal.env_sum_EW_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[20]_i_1_n_0\,
      Q => env_sum_EW(20),
      R => '0'
    );
\det_signal.env_sum_EW_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[21]_i_1_n_0\,
      Q => env_sum_EW(21),
      R => '0'
    );
\det_signal.env_sum_EW_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[22]_i_1_n_0\,
      Q => env_sum_EW(22),
      R => '0'
    );
\det_signal.env_sum_EW_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[23]_i_1_n_0\,
      Q => env_sum_EW(23),
      R => '0'
    );
\det_signal.env_sum_EW_reg[23]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_EW_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_EW_reg[23]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_EW_reg[23]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_EW_reg[23]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_EW_reg[23]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_EW_reg[23]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_EW_reg[23]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_EW_reg[23]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_EW_reg[23]_i_2_n_7\,
      DI(7 downto 0) => env_sum_E(23 downto 16),
      O(7 downto 0) => env_sum_EW0(23 downto 16),
      S(7) => \det_signal.env_sum_EW[23]_i_3_n_0\,
      S(6) => \det_signal.env_sum_EW[23]_i_4_n_0\,
      S(5) => \det_signal.env_sum_EW[23]_i_5_n_0\,
      S(4) => \det_signal.env_sum_EW[23]_i_6_n_0\,
      S(3) => \det_signal.env_sum_EW[23]_i_7_n_0\,
      S(2) => \det_signal.env_sum_EW[23]_i_8_n_0\,
      S(1) => \det_signal.env_sum_EW[23]_i_9_n_0\,
      S(0) => \det_signal.env_sum_EW[23]_i_10_n_0\
    );
\det_signal.env_sum_EW_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[24]_i_1_n_0\,
      Q => env_sum_EW(24),
      R => '0'
    );
\det_signal.env_sum_EW_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_EW_reg[23]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.env_sum_EW_reg[24]_i_2_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.env_sum_EW_reg[24]_i_2_O_UNCONNECTED\(7 downto 1),
      O(0) => env_sum_EW0(24),
      S(7 downto 0) => B"00000000"
    );
\det_signal.env_sum_EW_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_EW(25),
      Q => env_sum_EW(25),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_EW_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_EW(26),
      Q => env_sum_EW(26),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_EW_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_EW(27),
      Q => env_sum_EW(27),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_EW_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_EW(28),
      Q => env_sum_EW(28),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_EW_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_EW(29),
      Q => env_sum_EW(29),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[2]_i_1_n_0\,
      Q => env_sum_EW(2),
      R => '0'
    );
\det_signal.env_sum_EW_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_EW(30),
      Q => env_sum_EW(30),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_EW_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_EW(31),
      Q => env_sum_EW(31),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[3]_i_1_n_0\,
      Q => env_sum_EW(3),
      R => '0'
    );
\det_signal.env_sum_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[4]_i_1_n_0\,
      Q => env_sum_EW(4),
      R => '0'
    );
\det_signal.env_sum_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[5]_i_1_n_0\,
      Q => env_sum_EW(5),
      R => '0'
    );
\det_signal.env_sum_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[6]_i_1_n_0\,
      Q => env_sum_EW(6),
      R => '0'
    );
\det_signal.env_sum_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[7]_i_1_n_0\,
      Q => env_sum_EW(7),
      R => '0'
    );
\det_signal.env_sum_EW_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_EW_reg[7]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_EW_reg[7]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_EW_reg[7]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_EW_reg[7]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_EW_reg[7]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_EW_reg[7]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_EW_reg[7]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_EW_reg[7]_i_2_n_7\,
      DI(7 downto 0) => env_sum_E(7 downto 0),
      O(7 downto 0) => env_sum_EW0(7 downto 0),
      S(7) => \det_signal.env_sum_EW[7]_i_3_n_0\,
      S(6) => \det_signal.env_sum_EW[7]_i_4_n_0\,
      S(5) => \det_signal.env_sum_EW[7]_i_5_n_0\,
      S(4) => \det_signal.env_sum_EW[7]_i_6_n_0\,
      S(3) => \det_signal.env_sum_EW[7]_i_7_n_0\,
      S(2) => \det_signal.env_sum_EW[7]_i_8_n_0\,
      S(1) => \det_signal.env_sum_EW[7]_i_9_n_0\,
      S(0) => \det_signal.env_sum_EW[7]_i_10_n_0\
    );
\det_signal.env_sum_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[8]_i_1_n_0\,
      Q => env_sum_EW(8),
      R => '0'
    );
\det_signal.env_sum_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_EW[9]_i_1_n_0\,
      Q => env_sum_EW(9),
      R => '0'
    );
\det_signal.env_sum_E[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(15),
      I2 => env_E(15),
      O => \det_signal.env_sum_E[15]_i_2_n_0\
    );
\det_signal.env_sum_E[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(14),
      I2 => env_E(14),
      O => \det_signal.env_sum_E[15]_i_3_n_0\
    );
\det_signal.env_sum_E[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(13),
      I2 => env_E(13),
      O => \det_signal.env_sum_E[15]_i_4_n_0\
    );
\det_signal.env_sum_E[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(12),
      I2 => env_E(12),
      O => \det_signal.env_sum_E[15]_i_5_n_0\
    );
\det_signal.env_sum_E[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(11),
      I2 => env_E(11),
      O => \det_signal.env_sum_E[15]_i_6_n_0\
    );
\det_signal.env_sum_E[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(10),
      I2 => env_E(10),
      O => \det_signal.env_sum_E[15]_i_7_n_0\
    );
\det_signal.env_sum_E[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(9),
      I2 => env_E(9),
      O => \det_signal.env_sum_E[15]_i_8_n_0\
    );
\det_signal.env_sum_E[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(8),
      I2 => env_E(8),
      O => \det_signal.env_sum_E[15]_i_9_n_0\
    );
\det_signal.env_sum_E[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => has_signal,
      O => \env_sum_E__0\(17)
    );
\det_signal.env_sum_E[23]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_E(16),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_E[23]_i_10_n_0\
    );
\det_signal.env_sum_E[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_E(23),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_E[23]_i_3_n_0\
    );
\det_signal.env_sum_E[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_E(22),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_E[23]_i_4_n_0\
    );
\det_signal.env_sum_E[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_E(21),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_E[23]_i_5_n_0\
    );
\det_signal.env_sum_E[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_E(20),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_E[23]_i_6_n_0\
    );
\det_signal.env_sum_E[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_E(19),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_E[23]_i_7_n_0\
    );
\det_signal.env_sum_E[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_E(18),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_E[23]_i_8_n_0\
    );
\det_signal.env_sum_E[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_E(17),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_E[23]_i_9_n_0\
    );
\det_signal.env_sum_E[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(7),
      I2 => env_E(7),
      O => \det_signal.env_sum_E[7]_i_2_n_0\
    );
\det_signal.env_sum_E[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(6),
      I2 => env_E(6),
      O => \det_signal.env_sum_E[7]_i_3_n_0\
    );
\det_signal.env_sum_E[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(5),
      I2 => env_E(5),
      O => \det_signal.env_sum_E[7]_i_4_n_0\
    );
\det_signal.env_sum_E[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(4),
      I2 => env_E(4),
      O => \det_signal.env_sum_E[7]_i_5_n_0\
    );
\det_signal.env_sum_E[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(3),
      I2 => env_E(3),
      O => \det_signal.env_sum_E[7]_i_6_n_0\
    );
\det_signal.env_sum_E[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(2),
      I2 => env_E(2),
      O => \det_signal.env_sum_E[7]_i_7_n_0\
    );
\det_signal.env_sum_E[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(1),
      I2 => env_E(1),
      O => \det_signal.env_sum_E[7]_i_8_n_0\
    );
\det_signal.env_sum_E[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_E(0),
      I2 => env_E(0),
      O => \det_signal.env_sum_E[7]_i_9_n_0\
    );
\det_signal.env_sum_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[7]_i_1_n_15\,
      Q => env_sum_E(0),
      R => '0'
    );
\det_signal.env_sum_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[15]_i_1_n_13\,
      Q => env_sum_E(10),
      R => '0'
    );
\det_signal.env_sum_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[15]_i_1_n_12\,
      Q => env_sum_E(11),
      R => '0'
    );
\det_signal.env_sum_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[15]_i_1_n_11\,
      Q => env_sum_E(12),
      R => '0'
    );
\det_signal.env_sum_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[15]_i_1_n_10\,
      Q => env_sum_E(13),
      R => '0'
    );
\det_signal.env_sum_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[15]_i_1_n_9\,
      Q => env_sum_E(14),
      R => '0'
    );
\det_signal.env_sum_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[15]_i_1_n_8\,
      Q => env_sum_E(15),
      R => '0'
    );
\det_signal.env_sum_E_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_E_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_E_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.env_sum_E_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.env_sum_E_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.env_sum_E_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.env_sum_E_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.env_sum_E_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.env_sum_E_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.env_sum_E_reg[15]_i_1_n_7\,
      DI(7 downto 0) => env_E(15 downto 8),
      O(7) => \det_signal.env_sum_E_reg[15]_i_1_n_8\,
      O(6) => \det_signal.env_sum_E_reg[15]_i_1_n_9\,
      O(5) => \det_signal.env_sum_E_reg[15]_i_1_n_10\,
      O(4) => \det_signal.env_sum_E_reg[15]_i_1_n_11\,
      O(3) => \det_signal.env_sum_E_reg[15]_i_1_n_12\,
      O(2) => \det_signal.env_sum_E_reg[15]_i_1_n_13\,
      O(1) => \det_signal.env_sum_E_reg[15]_i_1_n_14\,
      O(0) => \det_signal.env_sum_E_reg[15]_i_1_n_15\,
      S(7) => \det_signal.env_sum_E[15]_i_2_n_0\,
      S(6) => \det_signal.env_sum_E[15]_i_3_n_0\,
      S(5) => \det_signal.env_sum_E[15]_i_4_n_0\,
      S(4) => \det_signal.env_sum_E[15]_i_5_n_0\,
      S(3) => \det_signal.env_sum_E[15]_i_6_n_0\,
      S(2) => \det_signal.env_sum_E[15]_i_7_n_0\,
      S(1) => \det_signal.env_sum_E[15]_i_8_n_0\,
      S(0) => \det_signal.env_sum_E[15]_i_9_n_0\
    );
\det_signal.env_sum_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[23]_i_2_n_15\,
      Q => env_sum_E(16),
      R => '0'
    );
\det_signal.env_sum_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[23]_i_2_n_14\,
      Q => env_sum_E(17),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[23]_i_2_n_13\,
      Q => env_sum_E(18),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[23]_i_2_n_12\,
      Q => env_sum_E(19),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[7]_i_1_n_14\,
      Q => env_sum_E(1),
      R => '0'
    );
\det_signal.env_sum_E_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[23]_i_2_n_11\,
      Q => env_sum_E(20),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_E_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[23]_i_2_n_10\,
      Q => env_sum_E(21),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_E_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[23]_i_2_n_9\,
      Q => env_sum_E(22),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_E_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[23]_i_2_n_8\,
      Q => env_sum_E(23),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_E_reg[23]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_E_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_det_signal.env_sum_E_reg[23]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \det_signal.env_sum_E_reg[23]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_E_reg[23]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_E_reg[23]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_E_reg[23]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_E_reg[23]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_E_reg[23]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_E_reg[23]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.env_sum_E_reg[23]_i_2_n_8\,
      O(6) => \det_signal.env_sum_E_reg[23]_i_2_n_9\,
      O(5) => \det_signal.env_sum_E_reg[23]_i_2_n_10\,
      O(4) => \det_signal.env_sum_E_reg[23]_i_2_n_11\,
      O(3) => \det_signal.env_sum_E_reg[23]_i_2_n_12\,
      O(2) => \det_signal.env_sum_E_reg[23]_i_2_n_13\,
      O(1) => \det_signal.env_sum_E_reg[23]_i_2_n_14\,
      O(0) => \det_signal.env_sum_E_reg[23]_i_2_n_15\,
      S(7) => \det_signal.env_sum_E[23]_i_3_n_0\,
      S(6) => \det_signal.env_sum_E[23]_i_4_n_0\,
      S(5) => \det_signal.env_sum_E[23]_i_5_n_0\,
      S(4) => \det_signal.env_sum_E[23]_i_6_n_0\,
      S(3) => \det_signal.env_sum_E[23]_i_7_n_0\,
      S(2) => \det_signal.env_sum_E[23]_i_8_n_0\,
      S(1) => \det_signal.env_sum_E[23]_i_9_n_0\,
      S(0) => \det_signal.env_sum_E[23]_i_10_n_0\
    );
\det_signal.env_sum_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[7]_i_1_n_13\,
      Q => env_sum_E(2),
      R => '0'
    );
\det_signal.env_sum_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[7]_i_1_n_12\,
      Q => env_sum_E(3),
      R => '0'
    );
\det_signal.env_sum_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[7]_i_1_n_11\,
      Q => env_sum_E(4),
      R => '0'
    );
\det_signal.env_sum_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[7]_i_1_n_10\,
      Q => env_sum_E(5),
      R => '0'
    );
\det_signal.env_sum_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[7]_i_1_n_9\,
      Q => env_sum_E(6),
      R => '0'
    );
\det_signal.env_sum_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[7]_i_1_n_8\,
      Q => env_sum_E(7),
      R => '0'
    );
\det_signal.env_sum_E_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_E_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.env_sum_E_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.env_sum_E_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.env_sum_E_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.env_sum_E_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.env_sum_E_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.env_sum_E_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.env_sum_E_reg[7]_i_1_n_7\,
      DI(7 downto 0) => env_E(7 downto 0),
      O(7) => \det_signal.env_sum_E_reg[7]_i_1_n_8\,
      O(6) => \det_signal.env_sum_E_reg[7]_i_1_n_9\,
      O(5) => \det_signal.env_sum_E_reg[7]_i_1_n_10\,
      O(4) => \det_signal.env_sum_E_reg[7]_i_1_n_11\,
      O(3) => \det_signal.env_sum_E_reg[7]_i_1_n_12\,
      O(2) => \det_signal.env_sum_E_reg[7]_i_1_n_13\,
      O(1) => \det_signal.env_sum_E_reg[7]_i_1_n_14\,
      O(0) => \det_signal.env_sum_E_reg[7]_i_1_n_15\,
      S(7) => \det_signal.env_sum_E[7]_i_2_n_0\,
      S(6) => \det_signal.env_sum_E[7]_i_3_n_0\,
      S(5) => \det_signal.env_sum_E[7]_i_4_n_0\,
      S(4) => \det_signal.env_sum_E[7]_i_5_n_0\,
      S(3) => \det_signal.env_sum_E[7]_i_6_n_0\,
      S(2) => \det_signal.env_sum_E[7]_i_7_n_0\,
      S(1) => \det_signal.env_sum_E[7]_i_8_n_0\,
      S(0) => \det_signal.env_sum_E[7]_i_9_n_0\
    );
\det_signal.env_sum_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[15]_i_1_n_15\,
      Q => env_sum_E(8),
      R => '0'
    );
\det_signal.env_sum_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_E_reg[15]_i_1_n_14\,
      Q => env_sum_E(9),
      R => '0'
    );
\det_signal.env_sum_NE[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(0),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(0),
      O => \p_0_in1_in__0\(0)
    );
\det_signal.env_sum_NE[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(10),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(10),
      O => \p_0_in1_in__0\(10)
    );
\det_signal.env_sum_NE[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(11),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(11),
      O => \p_0_in1_in__0\(11)
    );
\det_signal.env_sum_NE[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(12),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(12),
      O => \p_0_in1_in__0\(12)
    );
\det_signal.env_sum_NE[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(13),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(13),
      O => \p_0_in1_in__0\(13)
    );
\det_signal.env_sum_NE[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(14),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(14),
      O => \p_0_in1_in__0\(14)
    );
\det_signal.env_sum_NE[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(15),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(15),
      O => \p_0_in1_in__0\(15)
    );
\det_signal.env_sum_NE[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(8),
      I1 => env_sum_E(8),
      O => \det_signal.env_sum_NE[15]_i_10_n_0\
    );
\det_signal.env_sum_NE[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(15),
      I1 => env_sum_E(15),
      O => \det_signal.env_sum_NE[15]_i_3_n_0\
    );
\det_signal.env_sum_NE[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(14),
      I1 => env_sum_E(14),
      O => \det_signal.env_sum_NE[15]_i_4_n_0\
    );
\det_signal.env_sum_NE[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(13),
      I1 => env_sum_E(13),
      O => \det_signal.env_sum_NE[15]_i_5_n_0\
    );
\det_signal.env_sum_NE[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(12),
      I1 => env_sum_E(12),
      O => \det_signal.env_sum_NE[15]_i_6_n_0\
    );
\det_signal.env_sum_NE[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(11),
      I1 => env_sum_E(11),
      O => \det_signal.env_sum_NE[15]_i_7_n_0\
    );
\det_signal.env_sum_NE[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(10),
      I1 => env_sum_E(10),
      O => \det_signal.env_sum_NE[15]_i_8_n_0\
    );
\det_signal.env_sum_NE[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(9),
      I1 => env_sum_E(9),
      O => \det_signal.env_sum_NE[15]_i_9_n_0\
    );
\det_signal.env_sum_NE[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(16),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(16),
      O => \p_0_in1_in__0\(16)
    );
\det_signal.env_sum_NE[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(17),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(17),
      O => \p_0_in1_in__0\(17)
    );
\det_signal.env_sum_NE[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(18),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(18),
      O => \p_0_in1_in__0\(18)
    );
\det_signal.env_sum_NE[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(19),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(19),
      O => \p_0_in1_in__0\(19)
    );
\det_signal.env_sum_NE[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(1),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(1),
      O => \p_0_in1_in__0\(1)
    );
\det_signal.env_sum_NE[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(20),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(20),
      O => \p_0_in1_in__0\(20)
    );
\det_signal.env_sum_NE[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(21),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(21),
      O => \p_0_in1_in__0\(21)
    );
\det_signal.env_sum_NE[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(22),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(22),
      O => \p_0_in1_in__0\(22)
    );
\det_signal.env_sum_NE[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(23),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(23),
      O => \p_0_in1_in__0\(23)
    );
\det_signal.env_sum_NE[23]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(16),
      I1 => env_sum_E(16),
      O => \det_signal.env_sum_NE[23]_i_10_n_0\
    );
\det_signal.env_sum_NE[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(23),
      I1 => env_sum_E(23),
      O => \det_signal.env_sum_NE[23]_i_3_n_0\
    );
\det_signal.env_sum_NE[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(22),
      I1 => env_sum_E(22),
      O => \det_signal.env_sum_NE[23]_i_4_n_0\
    );
\det_signal.env_sum_NE[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(21),
      I1 => env_sum_E(21),
      O => \det_signal.env_sum_NE[23]_i_5_n_0\
    );
\det_signal.env_sum_NE[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(20),
      I1 => env_sum_E(20),
      O => \det_signal.env_sum_NE[23]_i_6_n_0\
    );
\det_signal.env_sum_NE[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(19),
      I1 => env_sum_E(19),
      O => \det_signal.env_sum_NE[23]_i_7_n_0\
    );
\det_signal.env_sum_NE[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(18),
      I1 => env_sum_E(18),
      O => \det_signal.env_sum_NE[23]_i_8_n_0\
    );
\det_signal.env_sum_NE[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(17),
      I1 => env_sum_E(17),
      O => \det_signal.env_sum_NE[23]_i_9_n_0\
    );
\det_signal.env_sum_NE[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(24),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(24),
      O => \p_0_in1_in__0\(24)
    );
\det_signal.env_sum_NE[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(2),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(2),
      O => \p_0_in1_in__0\(2)
    );
\det_signal.env_sum_NE[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => proc_signal,
      I1 => div_delay(1),
      I2 => div_delay(0),
      I3 => div_delay(2),
      O => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NE[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(3),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(3),
      O => \p_0_in1_in__0\(3)
    );
\det_signal.env_sum_NE[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(4),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(4),
      O => \p_0_in1_in__0\(4)
    );
\det_signal.env_sum_NE[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(5),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(5),
      O => \p_0_in1_in__0\(5)
    );
\det_signal.env_sum_NE[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(6),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(6),
      O => \p_0_in1_in__0\(6)
    );
\det_signal.env_sum_NE[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(7),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(7),
      O => \p_0_in1_in__0\(7)
    );
\det_signal.env_sum_NE[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(0),
      I1 => env_sum_E(0),
      O => \det_signal.env_sum_NE[7]_i_10_n_0\
    );
\det_signal.env_sum_NE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(7),
      I1 => env_sum_E(7),
      O => \det_signal.env_sum_NE[7]_i_3_n_0\
    );
\det_signal.env_sum_NE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(6),
      I1 => env_sum_E(6),
      O => \det_signal.env_sum_NE[7]_i_4_n_0\
    );
\det_signal.env_sum_NE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(5),
      I1 => env_sum_E(5),
      O => \det_signal.env_sum_NE[7]_i_5_n_0\
    );
\det_signal.env_sum_NE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(4),
      I1 => env_sum_E(4),
      O => \det_signal.env_sum_NE[7]_i_6_n_0\
    );
\det_signal.env_sum_NE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(3),
      I1 => env_sum_E(3),
      O => \det_signal.env_sum_NE[7]_i_7_n_0\
    );
\det_signal.env_sum_NE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(2),
      I1 => env_sum_E(2),
      O => \det_signal.env_sum_NE[7]_i_8_n_0\
    );
\det_signal.env_sum_NE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(1),
      I1 => env_sum_E(1),
      O => \det_signal.env_sum_NE[7]_i_9_n_0\
    );
\det_signal.env_sum_NE[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(8),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(8),
      O => \p_0_in1_in__0\(8)
    );
\det_signal.env_sum_NE[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NE(9),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NE0(9),
      O => \p_0_in1_in__0\(9)
    );
\det_signal.env_sum_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(0),
      Q => env_sum_NE(0),
      R => '0'
    );
\det_signal.env_sum_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(10),
      Q => env_sum_NE(10),
      R => '0'
    );
\det_signal.env_sum_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(11),
      Q => env_sum_NE(11),
      R => '0'
    );
\det_signal.env_sum_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(12),
      Q => env_sum_NE(12),
      R => '0'
    );
\det_signal.env_sum_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(13),
      Q => env_sum_NE(13),
      R => '0'
    );
\det_signal.env_sum_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(14),
      Q => env_sum_NE(14),
      R => '0'
    );
\det_signal.env_sum_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(15),
      Q => env_sum_NE(15),
      R => '0'
    );
\det_signal.env_sum_NE_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_NE_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_NE_reg[15]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_NE_reg[15]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_NE_reg[15]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_NE_reg[15]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_NE_reg[15]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_NE_reg[15]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_NE_reg[15]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_NE_reg[15]_i_2_n_7\,
      DI(7 downto 0) => env_sum_N(15 downto 8),
      O(7 downto 0) => env_sum_NE0(15 downto 8),
      S(7) => \det_signal.env_sum_NE[15]_i_3_n_0\,
      S(6) => \det_signal.env_sum_NE[15]_i_4_n_0\,
      S(5) => \det_signal.env_sum_NE[15]_i_5_n_0\,
      S(4) => \det_signal.env_sum_NE[15]_i_6_n_0\,
      S(3) => \det_signal.env_sum_NE[15]_i_7_n_0\,
      S(2) => \det_signal.env_sum_NE[15]_i_8_n_0\,
      S(1) => \det_signal.env_sum_NE[15]_i_9_n_0\,
      S(0) => \det_signal.env_sum_NE[15]_i_10_n_0\
    );
\det_signal.env_sum_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(16),
      Q => env_sum_NE(16),
      R => '0'
    );
\det_signal.env_sum_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(17),
      Q => env_sum_NE(17),
      R => '0'
    );
\det_signal.env_sum_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(18),
      Q => env_sum_NE(18),
      R => '0'
    );
\det_signal.env_sum_NE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(19),
      Q => env_sum_NE(19),
      R => '0'
    );
\det_signal.env_sum_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(1),
      Q => env_sum_NE(1),
      R => '0'
    );
\det_signal.env_sum_NE_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(20),
      Q => env_sum_NE(20),
      R => '0'
    );
\det_signal.env_sum_NE_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(21),
      Q => env_sum_NE(21),
      R => '0'
    );
\det_signal.env_sum_NE_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(22),
      Q => env_sum_NE(22),
      R => '0'
    );
\det_signal.env_sum_NE_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(23),
      Q => env_sum_NE(23),
      R => '0'
    );
\det_signal.env_sum_NE_reg[23]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_NE_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_NE_reg[23]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_NE_reg[23]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_NE_reg[23]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_NE_reg[23]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_NE_reg[23]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_NE_reg[23]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_NE_reg[23]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_NE_reg[23]_i_2_n_7\,
      DI(7 downto 0) => env_sum_N(23 downto 16),
      O(7 downto 0) => env_sum_NE0(23 downto 16),
      S(7) => \det_signal.env_sum_NE[23]_i_3_n_0\,
      S(6) => \det_signal.env_sum_NE[23]_i_4_n_0\,
      S(5) => \det_signal.env_sum_NE[23]_i_5_n_0\,
      S(4) => \det_signal.env_sum_NE[23]_i_6_n_0\,
      S(3) => \det_signal.env_sum_NE[23]_i_7_n_0\,
      S(2) => \det_signal.env_sum_NE[23]_i_8_n_0\,
      S(1) => \det_signal.env_sum_NE[23]_i_9_n_0\,
      S(0) => \det_signal.env_sum_NE[23]_i_10_n_0\
    );
\det_signal.env_sum_NE_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(24),
      Q => env_sum_NE(24),
      R => '0'
    );
\det_signal.env_sum_NE_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_NE_reg[23]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.env_sum_NE_reg[24]_i_2_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.env_sum_NE_reg[24]_i_2_O_UNCONNECTED\(7 downto 1),
      O(0) => env_sum_NE0(24),
      S(7 downto 0) => B"00000000"
    );
\det_signal.env_sum_NE_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NE(25),
      Q => env_sum_NE(25),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NE_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NE(26),
      Q => env_sum_NE(26),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NE_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NE(27),
      Q => env_sum_NE(27),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NE_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NE(28),
      Q => env_sum_NE(28),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NE_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NE(29),
      Q => env_sum_NE(29),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(2),
      Q => env_sum_NE(2),
      R => '0'
    );
\det_signal.env_sum_NE_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NE(30),
      Q => env_sum_NE(30),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NE_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NE(31),
      Q => env_sum_NE(31),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(3),
      Q => env_sum_NE(3),
      R => '0'
    );
\det_signal.env_sum_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(4),
      Q => env_sum_NE(4),
      R => '0'
    );
\det_signal.env_sum_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(5),
      Q => env_sum_NE(5),
      R => '0'
    );
\det_signal.env_sum_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(6),
      Q => env_sum_NE(6),
      R => '0'
    );
\det_signal.env_sum_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(7),
      Q => env_sum_NE(7),
      R => '0'
    );
\det_signal.env_sum_NE_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_NE_reg[7]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_NE_reg[7]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_NE_reg[7]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_NE_reg[7]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_NE_reg[7]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_NE_reg[7]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_NE_reg[7]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_NE_reg[7]_i_2_n_7\,
      DI(7 downto 0) => env_sum_N(7 downto 0),
      O(7 downto 0) => env_sum_NE0(7 downto 0),
      S(7) => \det_signal.env_sum_NE[7]_i_3_n_0\,
      S(6) => \det_signal.env_sum_NE[7]_i_4_n_0\,
      S(5) => \det_signal.env_sum_NE[7]_i_5_n_0\,
      S(4) => \det_signal.env_sum_NE[7]_i_6_n_0\,
      S(3) => \det_signal.env_sum_NE[7]_i_7_n_0\,
      S(2) => \det_signal.env_sum_NE[7]_i_8_n_0\,
      S(1) => \det_signal.env_sum_NE[7]_i_9_n_0\,
      S(0) => \det_signal.env_sum_NE[7]_i_10_n_0\
    );
\det_signal.env_sum_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(8),
      Q => env_sum_NE(8),
      R => '0'
    );
\det_signal.env_sum_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \p_0_in1_in__0\(9),
      Q => env_sum_NE(9),
      R => '0'
    );
\det_signal.env_sum_NW[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(0),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(0),
      O => \det_signal.env_sum_NW[0]_i_1_n_0\
    );
\det_signal.env_sum_NW[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(10),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(10),
      O => \det_signal.env_sum_NW[10]_i_1_n_0\
    );
\det_signal.env_sum_NW[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(11),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(11),
      O => \det_signal.env_sum_NW[11]_i_1_n_0\
    );
\det_signal.env_sum_NW[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(12),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(12),
      O => \det_signal.env_sum_NW[12]_i_1_n_0\
    );
\det_signal.env_sum_NW[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(13),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(13),
      O => \det_signal.env_sum_NW[13]_i_1_n_0\
    );
\det_signal.env_sum_NW[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(14),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(14),
      O => \det_signal.env_sum_NW[14]_i_1_n_0\
    );
\det_signal.env_sum_NW[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(15),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(15),
      O => \det_signal.env_sum_NW[15]_i_1_n_0\
    );
\det_signal.env_sum_NW[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(8),
      I1 => env_sum_W(8),
      O => \det_signal.env_sum_NW[15]_i_10_n_0\
    );
\det_signal.env_sum_NW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(15),
      I1 => env_sum_W(15),
      O => \det_signal.env_sum_NW[15]_i_3_n_0\
    );
\det_signal.env_sum_NW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(14),
      I1 => env_sum_W(14),
      O => \det_signal.env_sum_NW[15]_i_4_n_0\
    );
\det_signal.env_sum_NW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(13),
      I1 => env_sum_W(13),
      O => \det_signal.env_sum_NW[15]_i_5_n_0\
    );
\det_signal.env_sum_NW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(12),
      I1 => env_sum_W(12),
      O => \det_signal.env_sum_NW[15]_i_6_n_0\
    );
\det_signal.env_sum_NW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(11),
      I1 => env_sum_W(11),
      O => \det_signal.env_sum_NW[15]_i_7_n_0\
    );
\det_signal.env_sum_NW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(10),
      I1 => env_sum_W(10),
      O => \det_signal.env_sum_NW[15]_i_8_n_0\
    );
\det_signal.env_sum_NW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(9),
      I1 => env_sum_W(9),
      O => \det_signal.env_sum_NW[15]_i_9_n_0\
    );
\det_signal.env_sum_NW[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(16),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(16),
      O => \det_signal.env_sum_NW[16]_i_1_n_0\
    );
\det_signal.env_sum_NW[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(17),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(17),
      O => \det_signal.env_sum_NW[17]_i_1_n_0\
    );
\det_signal.env_sum_NW[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(18),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(18),
      O => \det_signal.env_sum_NW[18]_i_1_n_0\
    );
\det_signal.env_sum_NW[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(19),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(19),
      O => \det_signal.env_sum_NW[19]_i_1_n_0\
    );
\det_signal.env_sum_NW[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(1),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(1),
      O => \det_signal.env_sum_NW[1]_i_1_n_0\
    );
\det_signal.env_sum_NW[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(20),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(20),
      O => \det_signal.env_sum_NW[20]_i_1_n_0\
    );
\det_signal.env_sum_NW[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(21),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(21),
      O => \det_signal.env_sum_NW[21]_i_1_n_0\
    );
\det_signal.env_sum_NW[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(22),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(22),
      O => \det_signal.env_sum_NW[22]_i_1_n_0\
    );
\det_signal.env_sum_NW[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(23),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(23),
      O => \det_signal.env_sum_NW[23]_i_1_n_0\
    );
\det_signal.env_sum_NW[23]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(16),
      I1 => env_sum_W(16),
      O => \det_signal.env_sum_NW[23]_i_10_n_0\
    );
\det_signal.env_sum_NW[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(23),
      I1 => env_sum_W(23),
      O => \det_signal.env_sum_NW[23]_i_3_n_0\
    );
\det_signal.env_sum_NW[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(22),
      I1 => env_sum_W(22),
      O => \det_signal.env_sum_NW[23]_i_4_n_0\
    );
\det_signal.env_sum_NW[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(21),
      I1 => env_sum_W(21),
      O => \det_signal.env_sum_NW[23]_i_5_n_0\
    );
\det_signal.env_sum_NW[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(20),
      I1 => env_sum_W(20),
      O => \det_signal.env_sum_NW[23]_i_6_n_0\
    );
\det_signal.env_sum_NW[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(19),
      I1 => env_sum_W(19),
      O => \det_signal.env_sum_NW[23]_i_7_n_0\
    );
\det_signal.env_sum_NW[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(18),
      I1 => env_sum_W(18),
      O => \det_signal.env_sum_NW[23]_i_8_n_0\
    );
\det_signal.env_sum_NW[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(17),
      I1 => env_sum_W(17),
      O => \det_signal.env_sum_NW[23]_i_9_n_0\
    );
\det_signal.env_sum_NW[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(24),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(24),
      O => \det_signal.env_sum_NW[24]_i_1_n_0\
    );
\det_signal.env_sum_NW[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(2),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(2),
      O => \det_signal.env_sum_NW[2]_i_1_n_0\
    );
\det_signal.env_sum_NW[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(3),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(3),
      O => \det_signal.env_sum_NW[3]_i_1_n_0\
    );
\det_signal.env_sum_NW[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(4),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(4),
      O => \det_signal.env_sum_NW[4]_i_1_n_0\
    );
\det_signal.env_sum_NW[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(5),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(5),
      O => \det_signal.env_sum_NW[5]_i_1_n_0\
    );
\det_signal.env_sum_NW[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(6),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(6),
      O => \det_signal.env_sum_NW[6]_i_1_n_0\
    );
\det_signal.env_sum_NW[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(7),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(7),
      O => \det_signal.env_sum_NW[7]_i_1_n_0\
    );
\det_signal.env_sum_NW[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(0),
      I1 => env_sum_W(0),
      O => \det_signal.env_sum_NW[7]_i_10_n_0\
    );
\det_signal.env_sum_NW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(7),
      I1 => env_sum_W(7),
      O => \det_signal.env_sum_NW[7]_i_3_n_0\
    );
\det_signal.env_sum_NW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(6),
      I1 => env_sum_W(6),
      O => \det_signal.env_sum_NW[7]_i_4_n_0\
    );
\det_signal.env_sum_NW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(5),
      I1 => env_sum_W(5),
      O => \det_signal.env_sum_NW[7]_i_5_n_0\
    );
\det_signal.env_sum_NW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(4),
      I1 => env_sum_W(4),
      O => \det_signal.env_sum_NW[7]_i_6_n_0\
    );
\det_signal.env_sum_NW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(3),
      I1 => env_sum_W(3),
      O => \det_signal.env_sum_NW[7]_i_7_n_0\
    );
\det_signal.env_sum_NW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(2),
      I1 => env_sum_W(2),
      O => \det_signal.env_sum_NW[7]_i_8_n_0\
    );
\det_signal.env_sum_NW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_sum_N(1),
      I1 => env_sum_W(1),
      O => \det_signal.env_sum_NW[7]_i_9_n_0\
    );
\det_signal.env_sum_NW[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(8),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(8),
      O => \det_signal.env_sum_NW[8]_i_1_n_0\
    );
\det_signal.env_sum_NW[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => env_sum_NW(9),
      I1 => div_delay(2),
      I2 => div_delay(0),
      I3 => div_delay(1),
      I4 => env_sum_NW0(9),
      O => \det_signal.env_sum_NW[9]_i_1_n_0\
    );
\det_signal.env_sum_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[0]_i_1_n_0\,
      Q => env_sum_NW(0),
      R => '0'
    );
\det_signal.env_sum_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[10]_i_1_n_0\,
      Q => env_sum_NW(10),
      R => '0'
    );
\det_signal.env_sum_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[11]_i_1_n_0\,
      Q => env_sum_NW(11),
      R => '0'
    );
\det_signal.env_sum_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[12]_i_1_n_0\,
      Q => env_sum_NW(12),
      R => '0'
    );
\det_signal.env_sum_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[13]_i_1_n_0\,
      Q => env_sum_NW(13),
      R => '0'
    );
\det_signal.env_sum_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[14]_i_1_n_0\,
      Q => env_sum_NW(14),
      R => '0'
    );
\det_signal.env_sum_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[15]_i_1_n_0\,
      Q => env_sum_NW(15),
      R => '0'
    );
\det_signal.env_sum_NW_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_NW_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_NW_reg[15]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_NW_reg[15]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_NW_reg[15]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_NW_reg[15]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_NW_reg[15]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_NW_reg[15]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_NW_reg[15]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_NW_reg[15]_i_2_n_7\,
      DI(7 downto 0) => env_sum_N(15 downto 8),
      O(7 downto 0) => env_sum_NW0(15 downto 8),
      S(7) => \det_signal.env_sum_NW[15]_i_3_n_0\,
      S(6) => \det_signal.env_sum_NW[15]_i_4_n_0\,
      S(5) => \det_signal.env_sum_NW[15]_i_5_n_0\,
      S(4) => \det_signal.env_sum_NW[15]_i_6_n_0\,
      S(3) => \det_signal.env_sum_NW[15]_i_7_n_0\,
      S(2) => \det_signal.env_sum_NW[15]_i_8_n_0\,
      S(1) => \det_signal.env_sum_NW[15]_i_9_n_0\,
      S(0) => \det_signal.env_sum_NW[15]_i_10_n_0\
    );
\det_signal.env_sum_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[16]_i_1_n_0\,
      Q => env_sum_NW(16),
      R => '0'
    );
\det_signal.env_sum_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[17]_i_1_n_0\,
      Q => env_sum_NW(17),
      R => '0'
    );
\det_signal.env_sum_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[18]_i_1_n_0\,
      Q => env_sum_NW(18),
      R => '0'
    );
\det_signal.env_sum_NW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[19]_i_1_n_0\,
      Q => env_sum_NW(19),
      R => '0'
    );
\det_signal.env_sum_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[1]_i_1_n_0\,
      Q => env_sum_NW(1),
      R => '0'
    );
\det_signal.env_sum_NW_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[20]_i_1_n_0\,
      Q => env_sum_NW(20),
      R => '0'
    );
\det_signal.env_sum_NW_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[21]_i_1_n_0\,
      Q => env_sum_NW(21),
      R => '0'
    );
\det_signal.env_sum_NW_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[22]_i_1_n_0\,
      Q => env_sum_NW(22),
      R => '0'
    );
\det_signal.env_sum_NW_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[23]_i_1_n_0\,
      Q => env_sum_NW(23),
      R => '0'
    );
\det_signal.env_sum_NW_reg[23]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_NW_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_NW_reg[23]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_NW_reg[23]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_NW_reg[23]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_NW_reg[23]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_NW_reg[23]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_NW_reg[23]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_NW_reg[23]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_NW_reg[23]_i_2_n_7\,
      DI(7 downto 0) => env_sum_N(23 downto 16),
      O(7 downto 0) => env_sum_NW0(23 downto 16),
      S(7) => \det_signal.env_sum_NW[23]_i_3_n_0\,
      S(6) => \det_signal.env_sum_NW[23]_i_4_n_0\,
      S(5) => \det_signal.env_sum_NW[23]_i_5_n_0\,
      S(4) => \det_signal.env_sum_NW[23]_i_6_n_0\,
      S(3) => \det_signal.env_sum_NW[23]_i_7_n_0\,
      S(2) => \det_signal.env_sum_NW[23]_i_8_n_0\,
      S(1) => \det_signal.env_sum_NW[23]_i_9_n_0\,
      S(0) => \det_signal.env_sum_NW[23]_i_10_n_0\
    );
\det_signal.env_sum_NW_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[24]_i_1_n_0\,
      Q => env_sum_NW(24),
      R => '0'
    );
\det_signal.env_sum_NW_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_NW_reg[23]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.env_sum_NW_reg[24]_i_2_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.env_sum_NW_reg[24]_i_2_O_UNCONNECTED\(7 downto 1),
      O(0) => env_sum_NW0(24),
      S(7 downto 0) => B"00000000"
    );
\det_signal.env_sum_NW_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NW(25),
      Q => env_sum_NW(25),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NW_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NW(26),
      Q => env_sum_NW(26),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NW_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NW(27),
      Q => env_sum_NW(27),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NW_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NW(28),
      Q => env_sum_NW(28),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NW_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NW(29),
      Q => env_sum_NW(29),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[2]_i_1_n_0\,
      Q => env_sum_NW(2),
      R => '0'
    );
\det_signal.env_sum_NW_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NW(30),
      Q => env_sum_NW(30),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NW_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => env_sum_NW(31),
      Q => env_sum_NW(31),
      R => \det_signal.env_sum_NE[31]_i_1_n_0\
    );
\det_signal.env_sum_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[3]_i_1_n_0\,
      Q => env_sum_NW(3),
      R => '0'
    );
\det_signal.env_sum_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[4]_i_1_n_0\,
      Q => env_sum_NW(4),
      R => '0'
    );
\det_signal.env_sum_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[5]_i_1_n_0\,
      Q => env_sum_NW(5),
      R => '0'
    );
\det_signal.env_sum_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[6]_i_1_n_0\,
      Q => env_sum_NW(6),
      R => '0'
    );
\det_signal.env_sum_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[7]_i_1_n_0\,
      Q => env_sum_NW(7),
      R => '0'
    );
\det_signal.env_sum_NW_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_NW_reg[7]_i_2_n_0\,
      CO(6) => \det_signal.env_sum_NW_reg[7]_i_2_n_1\,
      CO(5) => \det_signal.env_sum_NW_reg[7]_i_2_n_2\,
      CO(4) => \det_signal.env_sum_NW_reg[7]_i_2_n_3\,
      CO(3) => \det_signal.env_sum_NW_reg[7]_i_2_n_4\,
      CO(2) => \det_signal.env_sum_NW_reg[7]_i_2_n_5\,
      CO(1) => \det_signal.env_sum_NW_reg[7]_i_2_n_6\,
      CO(0) => \det_signal.env_sum_NW_reg[7]_i_2_n_7\,
      DI(7 downto 0) => env_sum_N(7 downto 0),
      O(7 downto 0) => env_sum_NW0(7 downto 0),
      S(7) => \det_signal.env_sum_NW[7]_i_3_n_0\,
      S(6) => \det_signal.env_sum_NW[7]_i_4_n_0\,
      S(5) => \det_signal.env_sum_NW[7]_i_5_n_0\,
      S(4) => \det_signal.env_sum_NW[7]_i_6_n_0\,
      S(3) => \det_signal.env_sum_NW[7]_i_7_n_0\,
      S(2) => \det_signal.env_sum_NW[7]_i_8_n_0\,
      S(1) => \det_signal.env_sum_NW[7]_i_9_n_0\,
      S(0) => \det_signal.env_sum_NW[7]_i_10_n_0\
    );
\det_signal.env_sum_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[8]_i_1_n_0\,
      Q => env_sum_NW(8),
      R => '0'
    );
\det_signal.env_sum_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => \det_signal.env_sum_NW[9]_i_1_n_0\,
      Q => env_sum_NW(9),
      R => '0'
    );
\det_signal.env_sum_N[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(15),
      I2 => env_N(15),
      O => \det_signal.env_sum_N[15]_i_2_n_0\
    );
\det_signal.env_sum_N[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(14),
      I2 => env_N(14),
      O => \det_signal.env_sum_N[15]_i_3_n_0\
    );
\det_signal.env_sum_N[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(13),
      I2 => env_N(13),
      O => \det_signal.env_sum_N[15]_i_4_n_0\
    );
\det_signal.env_sum_N[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(12),
      I2 => env_N(12),
      O => \det_signal.env_sum_N[15]_i_5_n_0\
    );
\det_signal.env_sum_N[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(11),
      I2 => env_N(11),
      O => \det_signal.env_sum_N[15]_i_6_n_0\
    );
\det_signal.env_sum_N[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(10),
      I2 => env_N(10),
      O => \det_signal.env_sum_N[15]_i_7_n_0\
    );
\det_signal.env_sum_N[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(9),
      I2 => env_N(9),
      O => \det_signal.env_sum_N[15]_i_8_n_0\
    );
\det_signal.env_sum_N[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(8),
      I2 => env_N(8),
      O => \det_signal.env_sum_N[15]_i_9_n_0\
    );
\det_signal.env_sum_N[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_N(23),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_N[23]_i_2_n_0\
    );
\det_signal.env_sum_N[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_N(22),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_N[23]_i_3_n_0\
    );
\det_signal.env_sum_N[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_N(21),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_N[23]_i_4_n_0\
    );
\det_signal.env_sum_N[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_N(20),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_N[23]_i_5_n_0\
    );
\det_signal.env_sum_N[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_N(19),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_N[23]_i_6_n_0\
    );
\det_signal.env_sum_N[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_N(18),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_N[23]_i_7_n_0\
    );
\det_signal.env_sum_N[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_N(17),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_N[23]_i_8_n_0\
    );
\det_signal.env_sum_N[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_N(16),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_N[23]_i_9_n_0\
    );
\det_signal.env_sum_N[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(7),
      I2 => env_N(7),
      O => \det_signal.env_sum_N[7]_i_2_n_0\
    );
\det_signal.env_sum_N[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(6),
      I2 => env_N(6),
      O => \det_signal.env_sum_N[7]_i_3_n_0\
    );
\det_signal.env_sum_N[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(5),
      I2 => env_N(5),
      O => \det_signal.env_sum_N[7]_i_4_n_0\
    );
\det_signal.env_sum_N[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(4),
      I2 => env_N(4),
      O => \det_signal.env_sum_N[7]_i_5_n_0\
    );
\det_signal.env_sum_N[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(3),
      I2 => env_N(3),
      O => \det_signal.env_sum_N[7]_i_6_n_0\
    );
\det_signal.env_sum_N[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(2),
      I2 => env_N(2),
      O => \det_signal.env_sum_N[7]_i_7_n_0\
    );
\det_signal.env_sum_N[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(1),
      I2 => env_N(1),
      O => \det_signal.env_sum_N[7]_i_8_n_0\
    );
\det_signal.env_sum_N[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_N(0),
      I2 => env_N(0),
      O => \det_signal.env_sum_N[7]_i_9_n_0\
    );
\det_signal.env_sum_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[7]_i_1_n_15\,
      Q => env_sum_N(0),
      R => '0'
    );
\det_signal.env_sum_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[15]_i_1_n_13\,
      Q => env_sum_N(10),
      R => '0'
    );
\det_signal.env_sum_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[15]_i_1_n_12\,
      Q => env_sum_N(11),
      R => '0'
    );
\det_signal.env_sum_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[15]_i_1_n_11\,
      Q => env_sum_N(12),
      R => '0'
    );
\det_signal.env_sum_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[15]_i_1_n_10\,
      Q => env_sum_N(13),
      R => '0'
    );
\det_signal.env_sum_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[15]_i_1_n_9\,
      Q => env_sum_N(14),
      R => '0'
    );
\det_signal.env_sum_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[15]_i_1_n_8\,
      Q => env_sum_N(15),
      R => '0'
    );
\det_signal.env_sum_N_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_N_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_N_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.env_sum_N_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.env_sum_N_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.env_sum_N_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.env_sum_N_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.env_sum_N_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.env_sum_N_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.env_sum_N_reg[15]_i_1_n_7\,
      DI(7 downto 0) => env_N(15 downto 8),
      O(7) => \det_signal.env_sum_N_reg[15]_i_1_n_8\,
      O(6) => \det_signal.env_sum_N_reg[15]_i_1_n_9\,
      O(5) => \det_signal.env_sum_N_reg[15]_i_1_n_10\,
      O(4) => \det_signal.env_sum_N_reg[15]_i_1_n_11\,
      O(3) => \det_signal.env_sum_N_reg[15]_i_1_n_12\,
      O(2) => \det_signal.env_sum_N_reg[15]_i_1_n_13\,
      O(1) => \det_signal.env_sum_N_reg[15]_i_1_n_14\,
      O(0) => \det_signal.env_sum_N_reg[15]_i_1_n_15\,
      S(7) => \det_signal.env_sum_N[15]_i_2_n_0\,
      S(6) => \det_signal.env_sum_N[15]_i_3_n_0\,
      S(5) => \det_signal.env_sum_N[15]_i_4_n_0\,
      S(4) => \det_signal.env_sum_N[15]_i_5_n_0\,
      S(3) => \det_signal.env_sum_N[15]_i_6_n_0\,
      S(2) => \det_signal.env_sum_N[15]_i_7_n_0\,
      S(1) => \det_signal.env_sum_N[15]_i_8_n_0\,
      S(0) => \det_signal.env_sum_N[15]_i_9_n_0\
    );
\det_signal.env_sum_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[23]_i_1_n_15\,
      Q => env_sum_N(16),
      R => '0'
    );
\det_signal.env_sum_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[23]_i_1_n_14\,
      Q => env_sum_N(17),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[23]_i_1_n_13\,
      Q => env_sum_N(18),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[23]_i_1_n_12\,
      Q => env_sum_N(19),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[7]_i_1_n_14\,
      Q => env_sum_N(1),
      R => '0'
    );
\det_signal.env_sum_N_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[23]_i_1_n_11\,
      Q => env_sum_N(20),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_N_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[23]_i_1_n_10\,
      Q => env_sum_N(21),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_N_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[23]_i_1_n_9\,
      Q => env_sum_N(22),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_N_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[23]_i_1_n_8\,
      Q => env_sum_N(23),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_N_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_N_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_det_signal.env_sum_N_reg[23]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \det_signal.env_sum_N_reg[23]_i_1_n_1\,
      CO(5) => \det_signal.env_sum_N_reg[23]_i_1_n_2\,
      CO(4) => \det_signal.env_sum_N_reg[23]_i_1_n_3\,
      CO(3) => \det_signal.env_sum_N_reg[23]_i_1_n_4\,
      CO(2) => \det_signal.env_sum_N_reg[23]_i_1_n_5\,
      CO(1) => \det_signal.env_sum_N_reg[23]_i_1_n_6\,
      CO(0) => \det_signal.env_sum_N_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.env_sum_N_reg[23]_i_1_n_8\,
      O(6) => \det_signal.env_sum_N_reg[23]_i_1_n_9\,
      O(5) => \det_signal.env_sum_N_reg[23]_i_1_n_10\,
      O(4) => \det_signal.env_sum_N_reg[23]_i_1_n_11\,
      O(3) => \det_signal.env_sum_N_reg[23]_i_1_n_12\,
      O(2) => \det_signal.env_sum_N_reg[23]_i_1_n_13\,
      O(1) => \det_signal.env_sum_N_reg[23]_i_1_n_14\,
      O(0) => \det_signal.env_sum_N_reg[23]_i_1_n_15\,
      S(7) => \det_signal.env_sum_N[23]_i_2_n_0\,
      S(6) => \det_signal.env_sum_N[23]_i_3_n_0\,
      S(5) => \det_signal.env_sum_N[23]_i_4_n_0\,
      S(4) => \det_signal.env_sum_N[23]_i_5_n_0\,
      S(3) => \det_signal.env_sum_N[23]_i_6_n_0\,
      S(2) => \det_signal.env_sum_N[23]_i_7_n_0\,
      S(1) => \det_signal.env_sum_N[23]_i_8_n_0\,
      S(0) => \det_signal.env_sum_N[23]_i_9_n_0\
    );
\det_signal.env_sum_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[7]_i_1_n_13\,
      Q => env_sum_N(2),
      R => '0'
    );
\det_signal.env_sum_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[7]_i_1_n_12\,
      Q => env_sum_N(3),
      R => '0'
    );
\det_signal.env_sum_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[7]_i_1_n_11\,
      Q => env_sum_N(4),
      R => '0'
    );
\det_signal.env_sum_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[7]_i_1_n_10\,
      Q => env_sum_N(5),
      R => '0'
    );
\det_signal.env_sum_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[7]_i_1_n_9\,
      Q => env_sum_N(6),
      R => '0'
    );
\det_signal.env_sum_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[7]_i_1_n_8\,
      Q => env_sum_N(7),
      R => '0'
    );
\det_signal.env_sum_N_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_N_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.env_sum_N_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.env_sum_N_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.env_sum_N_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.env_sum_N_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.env_sum_N_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.env_sum_N_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.env_sum_N_reg[7]_i_1_n_7\,
      DI(7 downto 0) => env_N(7 downto 0),
      O(7) => \det_signal.env_sum_N_reg[7]_i_1_n_8\,
      O(6) => \det_signal.env_sum_N_reg[7]_i_1_n_9\,
      O(5) => \det_signal.env_sum_N_reg[7]_i_1_n_10\,
      O(4) => \det_signal.env_sum_N_reg[7]_i_1_n_11\,
      O(3) => \det_signal.env_sum_N_reg[7]_i_1_n_12\,
      O(2) => \det_signal.env_sum_N_reg[7]_i_1_n_13\,
      O(1) => \det_signal.env_sum_N_reg[7]_i_1_n_14\,
      O(0) => \det_signal.env_sum_N_reg[7]_i_1_n_15\,
      S(7) => \det_signal.env_sum_N[7]_i_2_n_0\,
      S(6) => \det_signal.env_sum_N[7]_i_3_n_0\,
      S(5) => \det_signal.env_sum_N[7]_i_4_n_0\,
      S(4) => \det_signal.env_sum_N[7]_i_5_n_0\,
      S(3) => \det_signal.env_sum_N[7]_i_6_n_0\,
      S(2) => \det_signal.env_sum_N[7]_i_7_n_0\,
      S(1) => \det_signal.env_sum_N[7]_i_8_n_0\,
      S(0) => \det_signal.env_sum_N[7]_i_9_n_0\
    );
\det_signal.env_sum_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[15]_i_1_n_15\,
      Q => env_sum_N(8),
      R => '0'
    );
\det_signal.env_sum_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_N_reg[15]_i_1_n_14\,
      Q => env_sum_N(9),
      R => '0'
    );
\det_signal.env_sum_W[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(15),
      I2 => env_W(15),
      O => \det_signal.env_sum_W[15]_i_2_n_0\
    );
\det_signal.env_sum_W[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(14),
      I2 => env_W(14),
      O => \det_signal.env_sum_W[15]_i_3_n_0\
    );
\det_signal.env_sum_W[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(13),
      I2 => env_W(13),
      O => \det_signal.env_sum_W[15]_i_4_n_0\
    );
\det_signal.env_sum_W[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(12),
      I2 => env_W(12),
      O => \det_signal.env_sum_W[15]_i_5_n_0\
    );
\det_signal.env_sum_W[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(11),
      I2 => env_W(11),
      O => \det_signal.env_sum_W[15]_i_6_n_0\
    );
\det_signal.env_sum_W[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(10),
      I2 => env_W(10),
      O => \det_signal.env_sum_W[15]_i_7_n_0\
    );
\det_signal.env_sum_W[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(9),
      I2 => env_W(9),
      O => \det_signal.env_sum_W[15]_i_8_n_0\
    );
\det_signal.env_sum_W[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(8),
      I2 => env_W(8),
      O => \det_signal.env_sum_W[15]_i_9_n_0\
    );
\det_signal.env_sum_W[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_W(23),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_W[23]_i_2_n_0\
    );
\det_signal.env_sum_W[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_W(22),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_W[23]_i_3_n_0\
    );
\det_signal.env_sum_W[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_W(21),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_W[23]_i_4_n_0\
    );
\det_signal.env_sum_W[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_W(20),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_W[23]_i_5_n_0\
    );
\det_signal.env_sum_W[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_W(19),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_W[23]_i_6_n_0\
    );
\det_signal.env_sum_W[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_W(18),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_W[23]_i_7_n_0\
    );
\det_signal.env_sum_W[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_W(17),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_W[23]_i_8_n_0\
    );
\det_signal.env_sum_W[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => env_sum_W(16),
      I1 => \det_signal.acc_reset_reg_n_0\,
      O => \det_signal.env_sum_W[23]_i_9_n_0\
    );
\det_signal.env_sum_W[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(7),
      I2 => env_W(7),
      O => \det_signal.env_sum_W[7]_i_2_n_0\
    );
\det_signal.env_sum_W[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(6),
      I2 => env_W(6),
      O => \det_signal.env_sum_W[7]_i_3_n_0\
    );
\det_signal.env_sum_W[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(5),
      I2 => env_W(5),
      O => \det_signal.env_sum_W[7]_i_4_n_0\
    );
\det_signal.env_sum_W[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(4),
      I2 => env_W(4),
      O => \det_signal.env_sum_W[7]_i_5_n_0\
    );
\det_signal.env_sum_W[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(3),
      I2 => env_W(3),
      O => \det_signal.env_sum_W[7]_i_6_n_0\
    );
\det_signal.env_sum_W[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(2),
      I2 => env_W(2),
      O => \det_signal.env_sum_W[7]_i_7_n_0\
    );
\det_signal.env_sum_W[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(1),
      I2 => env_W(1),
      O => \det_signal.env_sum_W[7]_i_8_n_0\
    );
\det_signal.env_sum_W[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \det_signal.acc_reset_reg_n_0\,
      I1 => env_sum_W(0),
      I2 => env_W(0),
      O => \det_signal.env_sum_W[7]_i_9_n_0\
    );
\det_signal.env_sum_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[7]_i_1_n_15\,
      Q => env_sum_W(0),
      R => '0'
    );
\det_signal.env_sum_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[15]_i_1_n_13\,
      Q => env_sum_W(10),
      R => '0'
    );
\det_signal.env_sum_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[15]_i_1_n_12\,
      Q => env_sum_W(11),
      R => '0'
    );
\det_signal.env_sum_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[15]_i_1_n_11\,
      Q => env_sum_W(12),
      R => '0'
    );
\det_signal.env_sum_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[15]_i_1_n_10\,
      Q => env_sum_W(13),
      R => '0'
    );
\det_signal.env_sum_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[15]_i_1_n_9\,
      Q => env_sum_W(14),
      R => '0'
    );
\det_signal.env_sum_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[15]_i_1_n_8\,
      Q => env_sum_W(15),
      R => '0'
    );
\det_signal.env_sum_W_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_W_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_W_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.env_sum_W_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.env_sum_W_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.env_sum_W_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.env_sum_W_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.env_sum_W_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.env_sum_W_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.env_sum_W_reg[15]_i_1_n_7\,
      DI(7 downto 0) => env_W(15 downto 8),
      O(7) => \det_signal.env_sum_W_reg[15]_i_1_n_8\,
      O(6) => \det_signal.env_sum_W_reg[15]_i_1_n_9\,
      O(5) => \det_signal.env_sum_W_reg[15]_i_1_n_10\,
      O(4) => \det_signal.env_sum_W_reg[15]_i_1_n_11\,
      O(3) => \det_signal.env_sum_W_reg[15]_i_1_n_12\,
      O(2) => \det_signal.env_sum_W_reg[15]_i_1_n_13\,
      O(1) => \det_signal.env_sum_W_reg[15]_i_1_n_14\,
      O(0) => \det_signal.env_sum_W_reg[15]_i_1_n_15\,
      S(7) => \det_signal.env_sum_W[15]_i_2_n_0\,
      S(6) => \det_signal.env_sum_W[15]_i_3_n_0\,
      S(5) => \det_signal.env_sum_W[15]_i_4_n_0\,
      S(4) => \det_signal.env_sum_W[15]_i_5_n_0\,
      S(3) => \det_signal.env_sum_W[15]_i_6_n_0\,
      S(2) => \det_signal.env_sum_W[15]_i_7_n_0\,
      S(1) => \det_signal.env_sum_W[15]_i_8_n_0\,
      S(0) => \det_signal.env_sum_W[15]_i_9_n_0\
    );
\det_signal.env_sum_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[23]_i_1_n_15\,
      Q => env_sum_W(16),
      R => '0'
    );
\det_signal.env_sum_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[23]_i_1_n_14\,
      Q => env_sum_W(17),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[23]_i_1_n_13\,
      Q => env_sum_W(18),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[23]_i_1_n_12\,
      Q => env_sum_W(19),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[7]_i_1_n_14\,
      Q => env_sum_W(1),
      R => '0'
    );
\det_signal.env_sum_W_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[23]_i_1_n_11\,
      Q => env_sum_W(20),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_W_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[23]_i_1_n_10\,
      Q => env_sum_W(21),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_W_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[23]_i_1_n_9\,
      Q => env_sum_W(22),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_W_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[23]_i_1_n_8\,
      Q => env_sum_W(23),
      R => \env_sum_E__0\(17)
    );
\det_signal.env_sum_W_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.env_sum_W_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_det_signal.env_sum_W_reg[23]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \det_signal.env_sum_W_reg[23]_i_1_n_1\,
      CO(5) => \det_signal.env_sum_W_reg[23]_i_1_n_2\,
      CO(4) => \det_signal.env_sum_W_reg[23]_i_1_n_3\,
      CO(3) => \det_signal.env_sum_W_reg[23]_i_1_n_4\,
      CO(2) => \det_signal.env_sum_W_reg[23]_i_1_n_5\,
      CO(1) => \det_signal.env_sum_W_reg[23]_i_1_n_6\,
      CO(0) => \det_signal.env_sum_W_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.env_sum_W_reg[23]_i_1_n_8\,
      O(6) => \det_signal.env_sum_W_reg[23]_i_1_n_9\,
      O(5) => \det_signal.env_sum_W_reg[23]_i_1_n_10\,
      O(4) => \det_signal.env_sum_W_reg[23]_i_1_n_11\,
      O(3) => \det_signal.env_sum_W_reg[23]_i_1_n_12\,
      O(2) => \det_signal.env_sum_W_reg[23]_i_1_n_13\,
      O(1) => \det_signal.env_sum_W_reg[23]_i_1_n_14\,
      O(0) => \det_signal.env_sum_W_reg[23]_i_1_n_15\,
      S(7) => \det_signal.env_sum_W[23]_i_2_n_0\,
      S(6) => \det_signal.env_sum_W[23]_i_3_n_0\,
      S(5) => \det_signal.env_sum_W[23]_i_4_n_0\,
      S(4) => \det_signal.env_sum_W[23]_i_5_n_0\,
      S(3) => \det_signal.env_sum_W[23]_i_6_n_0\,
      S(2) => \det_signal.env_sum_W[23]_i_7_n_0\,
      S(1) => \det_signal.env_sum_W[23]_i_8_n_0\,
      S(0) => \det_signal.env_sum_W[23]_i_9_n_0\
    );
\det_signal.env_sum_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[7]_i_1_n_13\,
      Q => env_sum_W(2),
      R => '0'
    );
\det_signal.env_sum_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[7]_i_1_n_12\,
      Q => env_sum_W(3),
      R => '0'
    );
\det_signal.env_sum_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[7]_i_1_n_11\,
      Q => env_sum_W(4),
      R => '0'
    );
\det_signal.env_sum_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[7]_i_1_n_10\,
      Q => env_sum_W(5),
      R => '0'
    );
\det_signal.env_sum_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[7]_i_1_n_9\,
      Q => env_sum_W(6),
      R => '0'
    );
\det_signal.env_sum_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[7]_i_1_n_8\,
      Q => env_sum_W(7),
      R => '0'
    );
\det_signal.env_sum_W_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.env_sum_W_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.env_sum_W_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.env_sum_W_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.env_sum_W_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.env_sum_W_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.env_sum_W_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.env_sum_W_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.env_sum_W_reg[7]_i_1_n_7\,
      DI(7 downto 0) => env_W(7 downto 0),
      O(7) => \det_signal.env_sum_W_reg[7]_i_1_n_8\,
      O(6) => \det_signal.env_sum_W_reg[7]_i_1_n_9\,
      O(5) => \det_signal.env_sum_W_reg[7]_i_1_n_10\,
      O(4) => \det_signal.env_sum_W_reg[7]_i_1_n_11\,
      O(3) => \det_signal.env_sum_W_reg[7]_i_1_n_12\,
      O(2) => \det_signal.env_sum_W_reg[7]_i_1_n_13\,
      O(1) => \det_signal.env_sum_W_reg[7]_i_1_n_14\,
      O(0) => \det_signal.env_sum_W_reg[7]_i_1_n_15\,
      S(7) => \det_signal.env_sum_W[7]_i_2_n_0\,
      S(6) => \det_signal.env_sum_W[7]_i_3_n_0\,
      S(5) => \det_signal.env_sum_W[7]_i_4_n_0\,
      S(4) => \det_signal.env_sum_W[7]_i_5_n_0\,
      S(3) => \det_signal.env_sum_W[7]_i_6_n_0\,
      S(2) => \det_signal.env_sum_W[7]_i_7_n_0\,
      S(1) => \det_signal.env_sum_W[7]_i_8_n_0\,
      S(0) => \det_signal.env_sum_W[7]_i_9_n_0\
    );
\det_signal.env_sum_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[15]_i_1_n_15\,
      Q => env_sum_W(8),
      R => '0'
    );
\det_signal.env_sum_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => has_signal,
      D => \det_signal.env_sum_W_reg[15]_i_1_n_14\,
      Q => env_sum_W(9),
      R => '0'
    );
\det_signal.err_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(132),
      Q => err_EW(0),
      R => '0'
    );
\det_signal.err_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(142),
      Q => err_EW(10),
      R => '0'
    );
\det_signal.err_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(143),
      Q => err_EW(11),
      R => '0'
    );
\det_signal.err_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(133),
      Q => err_EW(1),
      R => '0'
    );
\det_signal.err_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(134),
      Q => err_EW(2),
      R => '0'
    );
\det_signal.err_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(135),
      Q => err_EW(3),
      R => '0'
    );
\det_signal.err_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(136),
      Q => err_EW(4),
      R => '0'
    );
\det_signal.err_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(137),
      Q => err_EW(5),
      R => '0'
    );
\det_signal.err_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(138),
      Q => err_EW(6),
      R => '0'
    );
\det_signal.err_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(139),
      Q => err_EW(7),
      R => '0'
    );
\det_signal.err_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(140),
      Q => err_EW(8),
      R => '0'
    );
\det_signal.err_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(141),
      Q => err_EW(9),
      R => '0'
    );
\det_signal.err_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(108),
      Q => err_NE(0),
      R => '0'
    );
\det_signal.err_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(118),
      Q => err_NE(10),
      R => '0'
    );
\det_signal.err_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(119),
      Q => err_NE(11),
      R => '0'
    );
\det_signal.err_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(109),
      Q => err_NE(1),
      R => '0'
    );
\det_signal.err_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(110),
      Q => err_NE(2),
      R => '0'
    );
\det_signal.err_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(111),
      Q => err_NE(3),
      R => '0'
    );
\det_signal.err_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(112),
      Q => err_NE(4),
      R => '0'
    );
\det_signal.err_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(113),
      Q => err_NE(5),
      R => '0'
    );
\det_signal.err_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(114),
      Q => err_NE(6),
      R => '0'
    );
\det_signal.err_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(115),
      Q => err_NE(7),
      R => '0'
    );
\det_signal.err_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(116),
      Q => err_NE(8),
      R => '0'
    );
\det_signal.err_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(117),
      Q => err_NE(9),
      R => '0'
    );
\det_signal.err_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(120),
      Q => err_NW(0),
      R => '0'
    );
\det_signal.err_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(130),
      Q => err_NW(10),
      R => '0'
    );
\det_signal.err_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(131),
      Q => err_NW(11),
      R => '0'
    );
\det_signal.err_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(121),
      Q => err_NW(1),
      R => '0'
    );
\det_signal.err_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(122),
      Q => err_NW(2),
      R => '0'
    );
\det_signal.err_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(123),
      Q => err_NW(3),
      R => '0'
    );
\det_signal.err_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(124),
      Q => err_NW(4),
      R => '0'
    );
\det_signal.err_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(125),
      Q => err_NW(5),
      R => '0'
    );
\det_signal.err_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(126),
      Q => err_NW(6),
      R => '0'
    );
\det_signal.err_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(127),
      Q => err_NW(7),
      R => '0'
    );
\det_signal.err_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(128),
      Q => err_NW(8),
      R => '0'
    );
\det_signal.err_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(129),
      Q => err_NW(9),
      R => '0'
    );
\det_signal.err_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6A000000000000"
    )
        port map (
      I0 => err_count(0),
      I1 => has_signal,
      I2 => valid_count,
      I3 => \det_signal.err_ov_reg_n_0\,
      I4 => \det_signal.run_reg_n_0_[2]\,
      I5 => \det_signal.err_count[0]_i_2_n_0\,
      O => \det_signal.err_count[0]_i_1_n_0\
    );
\det_signal.err_count[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => valid_err,
      I1 => valid_env,
      I2 => valid_count,
      O => \det_signal.err_count[0]_i_2_n_0\
    );
\det_signal.err_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6AAAAA"
    )
        port map (
      I0 => err_count(1),
      I1 => has_signal,
      I2 => valid_count,
      I3 => \det_signal.err_ov_reg_n_0\,
      I4 => err_count(0),
      I5 => \det_signal.err_count[1]_i_2_n_0\,
      O => \det_signal.err_count[1]_i_1_n_0\
    );
\det_signal.err_count[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => valid_count,
      I1 => valid_env,
      I2 => valid_err,
      I3 => \det_signal.run_reg_n_0_[2]\,
      O => \det_signal.err_count[1]_i_2_n_0\
    );
\det_signal.err_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.err_count[0]_i_1_n_0\,
      Q => err_count(0),
      R => '0'
    );
\det_signal.err_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.err_count[1]_i_1_n_0\,
      Q => err_count(1),
      R => '0'
    );
\det_signal.err_ov_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E222"
    )
        port map (
      I0 => \det_signal.err_ov_reg_n_0\,
      I1 => \det_signal.run_reg_n_0_[1]\,
      I2 => err_count(0),
      I3 => err_count(1),
      O => \det_signal.err_ov_i_1_n_0\
    );
\det_signal.err_ov_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.err_ov_i_1_n_0\,
      Q => \det_signal.err_ov_reg_n_0\,
      R => '0'
    );
\det_signal.has_signal_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80008000AA008000"
    )
        port map (
      I0 => \det_signal.run_reg_n_0_[2]\,
      I1 => valid_err,
      I2 => valid_env,
      I3 => valid_count,
      I4 => has_signal,
      I5 => \det_signal.err_ov_reg_n_0\,
      O => \det_signal.has_signal_i_1_n_0\
    );
\det_signal.has_signal_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.has_signal_i_1_n_0\,
      Q => has_signal,
      R => '0'
    );
\det_signal.max_doa_diff[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => config_adr(0),
      I1 => \det_signal.max_doa_diff[11]_i_2_n_0\,
      I2 => config_adr(1),
      I3 => config_wr,
      O => max_doa_diff0
    );
\det_signal.max_doa_diff[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => config_adr(3),
      I1 => config_adr(7),
      I2 => config_adr(5),
      I3 => config_adr(6),
      I4 => config_adr(2),
      I5 => config_adr(4),
      O => \det_signal.max_doa_diff[11]_i_2_n_0\
    );
\det_signal.max_doa_diff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(0),
      Q => max_doa_diff(0),
      R => '0'
    );
\det_signal.max_doa_diff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(10),
      Q => max_doa_diff(10),
      R => '0'
    );
\det_signal.max_doa_diff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(11),
      Q => max_doa_diff(11),
      R => '0'
    );
\det_signal.max_doa_diff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(1),
      Q => max_doa_diff(1),
      R => '0'
    );
\det_signal.max_doa_diff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(2),
      Q => max_doa_diff(2),
      R => '0'
    );
\det_signal.max_doa_diff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(3),
      Q => max_doa_diff(3),
      R => '0'
    );
\det_signal.max_doa_diff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(4),
      Q => max_doa_diff(4),
      R => '0'
    );
\det_signal.max_doa_diff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(5),
      Q => max_doa_diff(5),
      R => '0'
    );
\det_signal.max_doa_diff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(6),
      Q => max_doa_diff(6),
      R => '0'
    );
\det_signal.max_doa_diff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(7),
      Q => max_doa_diff(7),
      R => '0'
    );
\det_signal.max_doa_diff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(8),
      Q => max_doa_diff(8),
      R => '0'
    );
\det_signal.max_doa_diff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff0,
      D => config_data(9),
      Q => max_doa_diff(9),
      R => '0'
    );
\det_signal.min_env[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => config_adr(0),
      I1 => \det_signal.max_doa_diff[11]_i_2_n_0\,
      I2 => config_adr(1),
      I3 => config_wr,
      O => min_env0
    );
\det_signal.min_env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(0),
      Q => min_env(0),
      R => '0'
    );
\det_signal.min_env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(10),
      Q => min_env(10),
      R => '0'
    );
\det_signal.min_env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(11),
      Q => min_env(11),
      R => '0'
    );
\det_signal.min_env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(12),
      Q => min_env(12),
      R => '0'
    );
\det_signal.min_env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(13),
      Q => min_env(13),
      R => '0'
    );
\det_signal.min_env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(14),
      Q => min_env(14),
      R => '0'
    );
\det_signal.min_env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(15),
      Q => min_env(15),
      R => '0'
    );
\det_signal.min_env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(1),
      Q => min_env(1),
      R => '0'
    );
\det_signal.min_env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(2),
      Q => min_env(2),
      R => '0'
    );
\det_signal.min_env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(3),
      Q => min_env(3),
      R => '0'
    );
\det_signal.min_env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(4),
      Q => min_env(4),
      R => '0'
    );
\det_signal.min_env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(5),
      Q => min_env(5),
      R => '0'
    );
\det_signal.min_env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(6),
      Q => min_env(6),
      R => '0'
    );
\det_signal.min_env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(7),
      Q => min_env(7),
      R => '0'
    );
\det_signal.min_env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(8),
      Q => min_env(8),
      R => '0'
    );
\det_signal.min_env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data(9),
      Q => min_env(9),
      R => '0'
    );
\det_signal.phase_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(52),
      Q => phase_E(0),
      R => '0'
    );
\det_signal.phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(62),
      Q => phase_E(10),
      R => '0'
    );
\det_signal.phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(63),
      Q => phase_E(11),
      R => '0'
    );
\det_signal.phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(64),
      Q => phase_E(12),
      R => '0'
    );
\det_signal.phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(65),
      Q => phase_E(13),
      R => '0'
    );
\det_signal.phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(66),
      Q => phase_E(14),
      R => '0'
    );
\det_signal.phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(67),
      Q => phase_E(15),
      R => '0'
    );
\det_signal.phase_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(68),
      Q => phase_E(16),
      R => '0'
    );
\det_signal.phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(69),
      Q => phase_E(17),
      R => '0'
    );
\det_signal.phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(70),
      Q => phase_E(18),
      R => '0'
    );
\det_signal.phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(71),
      Q => phase_E(19),
      R => '0'
    );
\det_signal.phase_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(53),
      Q => phase_E(1),
      R => '0'
    );
\det_signal.phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(54),
      Q => phase_E(2),
      R => '0'
    );
\det_signal.phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(55),
      Q => phase_E(3),
      R => '0'
    );
\det_signal.phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(56),
      Q => phase_E(4),
      R => '0'
    );
\det_signal.phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(57),
      Q => phase_E(5),
      R => '0'
    );
\det_signal.phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(58),
      Q => phase_E(6),
      R => '0'
    );
\det_signal.phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(59),
      Q => phase_E(7),
      R => '0'
    );
\det_signal.phase_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(60),
      Q => phase_E(8),
      R => '0'
    );
\det_signal.phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(61),
      Q => phase_E(9),
      R => '0'
    );
\det_signal.phase_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(16),
      Q => phase_N(0),
      R => '0'
    );
\det_signal.phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(26),
      Q => phase_N(10),
      R => '0'
    );
\det_signal.phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(27),
      Q => phase_N(11),
      R => '0'
    );
\det_signal.phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(28),
      Q => phase_N(12),
      R => '0'
    );
\det_signal.phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(29),
      Q => phase_N(13),
      R => '0'
    );
\det_signal.phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(30),
      Q => phase_N(14),
      R => '0'
    );
\det_signal.phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(31),
      Q => phase_N(15),
      R => '0'
    );
\det_signal.phase_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(32),
      Q => phase_N(16),
      R => '0'
    );
\det_signal.phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(33),
      Q => phase_N(17),
      R => '0'
    );
\det_signal.phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(34),
      Q => phase_N(18),
      R => '0'
    );
\det_signal.phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(35),
      Q => phase_N(19),
      R => '0'
    );
\det_signal.phase_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(17),
      Q => phase_N(1),
      R => '0'
    );
\det_signal.phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(18),
      Q => phase_N(2),
      R => '0'
    );
\det_signal.phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(19),
      Q => phase_N(3),
      R => '0'
    );
\det_signal.phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(20),
      Q => phase_N(4),
      R => '0'
    );
\det_signal.phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(21),
      Q => phase_N(5),
      R => '0'
    );
\det_signal.phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(22),
      Q => phase_N(6),
      R => '0'
    );
\det_signal.phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(23),
      Q => phase_N(7),
      R => '0'
    );
\det_signal.phase_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(24),
      Q => phase_N(8),
      R => '0'
    );
\det_signal.phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(25),
      Q => phase_N(9),
      R => '0'
    );
\det_signal.phase_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(88),
      Q => phase_W(0),
      R => '0'
    );
\det_signal.phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(98),
      Q => phase_W(10),
      R => '0'
    );
\det_signal.phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(99),
      Q => phase_W(11),
      R => '0'
    );
\det_signal.phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(100),
      Q => phase_W(12),
      R => '0'
    );
\det_signal.phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(101),
      Q => phase_W(13),
      R => '0'
    );
\det_signal.phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(102),
      Q => phase_W(14),
      R => '0'
    );
\det_signal.phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(103),
      Q => phase_W(15),
      R => '0'
    );
\det_signal.phase_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(104),
      Q => phase_W(16),
      R => '0'
    );
\det_signal.phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(105),
      Q => phase_W(17),
      R => '0'
    );
\det_signal.phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(106),
      Q => phase_W(18),
      R => '0'
    );
\det_signal.phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(107),
      Q => phase_W(19),
      R => '0'
    );
\det_signal.phase_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(89),
      Q => phase_W(1),
      R => '0'
    );
\det_signal.phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(90),
      Q => phase_W(2),
      R => '0'
    );
\det_signal.phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(91),
      Q => phase_W(3),
      R => '0'
    );
\det_signal.phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(92),
      Q => phase_W(4),
      R => '0'
    );
\det_signal.phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(93),
      Q => phase_W(5),
      R => '0'
    );
\det_signal.phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(94),
      Q => phase_W(6),
      R => '0'
    );
\det_signal.phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(95),
      Q => phase_W(7),
      R => '0'
    );
\det_signal.phase_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(96),
      Q => phase_W(8),
      R => '0'
    );
\det_signal.phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => data(97),
      Q => phase_W(9),
      R => '0'
    );
\det_signal.prev_phase_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(0),
      Q => prev_phase_E(0),
      R => '0'
    );
\det_signal.prev_phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(10),
      Q => prev_phase_E(10),
      R => '0'
    );
\det_signal.prev_phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(11),
      Q => prev_phase_E(11),
      R => '0'
    );
\det_signal.prev_phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(12),
      Q => prev_phase_E(12),
      R => '0'
    );
\det_signal.prev_phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(13),
      Q => prev_phase_E(13),
      R => '0'
    );
\det_signal.prev_phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(14),
      Q => prev_phase_E(14),
      R => '0'
    );
\det_signal.prev_phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(15),
      Q => prev_phase_E(15),
      R => '0'
    );
\det_signal.prev_phase_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(16),
      Q => prev_phase_E(16),
      R => '0'
    );
\det_signal.prev_phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(17),
      Q => prev_phase_E(17),
      R => '0'
    );
\det_signal.prev_phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(18),
      Q => prev_phase_E(18),
      R => '0'
    );
\det_signal.prev_phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(19),
      Q => prev_phase_E(19),
      R => '0'
    );
\det_signal.prev_phase_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(1),
      Q => prev_phase_E(1),
      R => '0'
    );
\det_signal.prev_phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(2),
      Q => prev_phase_E(2),
      R => '0'
    );
\det_signal.prev_phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(3),
      Q => prev_phase_E(3),
      R => '0'
    );
\det_signal.prev_phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(4),
      Q => prev_phase_E(4),
      R => '0'
    );
\det_signal.prev_phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(5),
      Q => prev_phase_E(5),
      R => '0'
    );
\det_signal.prev_phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(6),
      Q => prev_phase_E(6),
      R => '0'
    );
\det_signal.prev_phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(7),
      Q => prev_phase_E(7),
      R => '0'
    );
\det_signal.prev_phase_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(8),
      Q => prev_phase_E(8),
      R => '0'
    );
\det_signal.prev_phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_E(9),
      Q => prev_phase_E(9),
      R => '0'
    );
\det_signal.prev_phase_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(0),
      Q => prev_phase_N(0),
      R => '0'
    );
\det_signal.prev_phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(10),
      Q => prev_phase_N(10),
      R => '0'
    );
\det_signal.prev_phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(11),
      Q => prev_phase_N(11),
      R => '0'
    );
\det_signal.prev_phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(12),
      Q => prev_phase_N(12),
      R => '0'
    );
\det_signal.prev_phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(13),
      Q => prev_phase_N(13),
      R => '0'
    );
\det_signal.prev_phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(14),
      Q => prev_phase_N(14),
      R => '0'
    );
\det_signal.prev_phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(15),
      Q => prev_phase_N(15),
      R => '0'
    );
\det_signal.prev_phase_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(16),
      Q => prev_phase_N(16),
      R => '0'
    );
\det_signal.prev_phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(17),
      Q => prev_phase_N(17),
      R => '0'
    );
\det_signal.prev_phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(18),
      Q => prev_phase_N(18),
      R => '0'
    );
\det_signal.prev_phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(19),
      Q => prev_phase_N(19),
      R => '0'
    );
\det_signal.prev_phase_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(1),
      Q => prev_phase_N(1),
      R => '0'
    );
\det_signal.prev_phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(2),
      Q => prev_phase_N(2),
      R => '0'
    );
\det_signal.prev_phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(3),
      Q => prev_phase_N(3),
      R => '0'
    );
\det_signal.prev_phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(4),
      Q => prev_phase_N(4),
      R => '0'
    );
\det_signal.prev_phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(5),
      Q => prev_phase_N(5),
      R => '0'
    );
\det_signal.prev_phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(6),
      Q => prev_phase_N(6),
      R => '0'
    );
\det_signal.prev_phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(7),
      Q => prev_phase_N(7),
      R => '0'
    );
\det_signal.prev_phase_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(8),
      Q => prev_phase_N(8),
      R => '0'
    );
\det_signal.prev_phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_N(9),
      Q => prev_phase_N(9),
      R => '0'
    );
\det_signal.prev_phase_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(0),
      Q => prev_phase_W(0),
      R => '0'
    );
\det_signal.prev_phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(10),
      Q => prev_phase_W(10),
      R => '0'
    );
\det_signal.prev_phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(11),
      Q => prev_phase_W(11),
      R => '0'
    );
\det_signal.prev_phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(12),
      Q => prev_phase_W(12),
      R => '0'
    );
\det_signal.prev_phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(13),
      Q => prev_phase_W(13),
      R => '0'
    );
\det_signal.prev_phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(14),
      Q => prev_phase_W(14),
      R => '0'
    );
\det_signal.prev_phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(15),
      Q => prev_phase_W(15),
      R => '0'
    );
\det_signal.prev_phase_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(16),
      Q => prev_phase_W(16),
      R => '0'
    );
\det_signal.prev_phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(17),
      Q => prev_phase_W(17),
      R => '0'
    );
\det_signal.prev_phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(18),
      Q => prev_phase_W(18),
      R => '0'
    );
\det_signal.prev_phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(19),
      Q => prev_phase_W(19),
      R => '0'
    );
\det_signal.prev_phase_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(1),
      Q => prev_phase_W(1),
      R => '0'
    );
\det_signal.prev_phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(2),
      Q => prev_phase_W(2),
      R => '0'
    );
\det_signal.prev_phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(3),
      Q => prev_phase_W(3),
      R => '0'
    );
\det_signal.prev_phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(4),
      Q => prev_phase_W(4),
      R => '0'
    );
\det_signal.prev_phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(5),
      Q => prev_phase_W(5),
      R => '0'
    );
\det_signal.prev_phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(6),
      Q => prev_phase_W(6),
      R => '0'
    );
\det_signal.prev_phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(7),
      Q => prev_phase_W(7),
      R => '0'
    );
\det_signal.prev_phase_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(8),
      Q => prev_phase_W(8),
      R => '0'
    );
\det_signal.prev_phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => phase_W(9),
      Q => prev_phase_W(9),
      R => '0'
    );
\det_signal.proc_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \det_signal.div_counter[2]_i_2_n_0\,
      I1 => div_counter(2),
      I2 => div_counter(0),
      I3 => div_counter(1),
      O => \det_signal.proc_done_reg0\
    );
\det_signal.proc_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.proc_done_reg0\,
      Q => proc_done,
      R => \det_signal.div_counter[5]_i_1_n_0\
    );
\det_signal.proc_signal_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => proc_signal,
      I1 => start_proc,
      I2 => proc_done,
      O => \det_signal.proc_signal_i_1_n_0\
    );
\det_signal.proc_signal_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.proc_signal_i_1_n_0\,
      Q => proc_signal,
      R => '0'
    );
\det_signal.run_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active,
      Q => \det_signal.run_reg[0]__0\,
      R => '0'
    );
\det_signal.run_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.run_reg[0]__0\,
      Q => \det_signal.run_reg_n_0_[1]\,
      R => '0'
    );
\det_signal.run_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.run_reg_n_0_[1]\,
      Q => \det_signal.run_reg_n_0_[2]\,
      R => '0'
    );
\det_signal.start_proc_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F55000000000000"
    )
        port map (
      I0 => valid_count,
      I1 => valid_err,
      I2 => valid_env,
      I3 => \det_signal.err_ov_reg_n_0\,
      I4 => has_signal,
      I5 => \det_signal.run_reg_n_0_[2]\,
      O => \det_signal.start_proc_i_1_n_0\
    );
\det_signal.start_proc_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.start_proc_i_1_n_0\,
      Q => start_proc,
      R => '0'
    );
\det_signal.valid_count_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \det_signal.run_reg_n_0_[1]\,
      I1 => valid_count,
      O => \det_signal.valid_count_i_1_n_0\
    );
\det_signal.valid_count_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.valid_count_i_1_n_0\,
      Q => valid_count,
      R => '0'
    );
\det_signal.valid_env_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_1_in5_in,
      I2 => p_2_in6_in,
      O => valid_env0
    );
\det_signal.valid_env_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => valid_env0,
      Q => valid_env,
      R => '0'
    );
\det_signal.valid_err_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_1_in2_in,
      I2 => p_2_in,
      O => valid_err0
    );
\det_signal.valid_err_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg_n_0_[1]\,
      D => valid_err0,
      Q => valid_err,
      R => '0'
    );
div_phase_EW_i: component div_weighted_HD1
     port map (
      aclk => clk,
      m_axis_dout_tdata(79 downto 52) => NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED(79 downto 52),
      m_axis_dout_tdata(51 downto 32) => phase_EW(19 downto 0),
      m_axis_dout_tdata(31 downto 0) => NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED(31 downto 0),
      m_axis_dout_tvalid => valid_phase_EW,
      s_axis_dividend_tdata(47 downto 0) => dsp_sum_EW(47 downto 0),
      s_axis_dividend_tvalid => div_start,
      s_axis_divisor_tdata(31 downto 0) => env_sum_EW(31 downto 0),
      s_axis_divisor_tvalid => div_start
    );
div_phase_NE_i: component ps_comp_high_0_0_div_weighted
     port map (
      aclk => clk,
      m_axis_dout_tdata(79 downto 52) => NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED(79 downto 52),
      m_axis_dout_tdata(51 downto 32) => phase_NE(19 downto 0),
      m_axis_dout_tdata(31 downto 0) => NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED(31 downto 0),
      m_axis_dout_tvalid => valid_phase_NE,
      s_axis_dividend_tdata(47 downto 0) => dsp_sum_NE(47 downto 0),
      s_axis_dividend_tvalid => div_start,
      s_axis_divisor_tdata(31 downto 0) => env_sum_NE(31 downto 0),
      s_axis_divisor_tvalid => div_start
    );
div_phase_NW_i: component ps_comp_high_0_0_div_weighted
     port map (
      aclk => clk,
      m_axis_dout_tdata(79 downto 52) => NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED(79 downto 52),
      m_axis_dout_tdata(51 downto 32) => phase_NW(19 downto 0),
      m_axis_dout_tdata(31 downto 0) => NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED(31 downto 0),
      m_axis_dout_tvalid => valid_phase_NW,
      s_axis_dividend_tdata(47 downto 0) => dsp_sum_NW(47 downto 0),
      s_axis_dividend_tvalid => div_start,
      s_axis_divisor_tdata(31 downto 0) => env_sum_NW(31 downto 0),
      s_axis_divisor_tvalid => div_start
    );
dsp_incr_env_E: component ps_comp_high_0_0_dsp_incr_env
     port map (
      A(20) => '0',
      A(19 downto 0) => dsp_phase_E(19 downto 0),
      B(16) => '0',
      B(15 downto 0) => env_E(15 downto 0),
      CLK => clk,
      P(47 downto 0) => NLW_dsp_incr_env_E_P_UNCONNECTED(47 downto 0),
      SCLRP => \det_signal.acc_reset_reg_n_0\
    );
dsp_incr_env_N: component ps_comp_high_0_0_dsp_incr_env
     port map (
      A(20) => '0',
      A(19 downto 0) => dsp_phase_N(19 downto 0),
      B(16) => '0',
      B(15 downto 0) => env_N(15 downto 0),
      CLK => clk,
      P(47 downto 0) => NLW_dsp_incr_env_N_P_UNCONNECTED(47 downto 0),
      SCLRP => \det_signal.acc_reset_reg_n_0\
    );
dsp_incr_env_W: component ps_comp_high_0_0_dsp_incr_env_HD2
     port map (
      A(20) => '0',
      A(19 downto 0) => dsp_phase_W(19 downto 0),
      B(16) => '0',
      B(15 downto 0) => env_W(15 downto 0),
      CLK => clk,
      P(47 downto 0) => NLW_dsp_incr_env_W_P_UNCONNECTED(47 downto 0),
      SCLRP => \det_signal.acc_reset_reg_n_0\
    );
dsp_phase_env_EW: component dsp_phase_env_HD3
     port map (
      A(19 downto 0) => dsp_phase_EW(19 downto 0),
      B(17 downto 0) => env_EW(17 downto 0),
      CLK => clk,
      P(47 downto 0) => dsp_sum_EW(47 downto 0),
      SCLRP => \det_signal.acc_reset_reg_n_0\
    );
dsp_phase_env_NE: component ps_comp_high_0_0_dsp_phase_env
     port map (
      A(19 downto 0) => dsp_phase_NE(19 downto 0),
      B(17 downto 0) => env_NE(17 downto 0),
      CLK => clk,
      P(47 downto 0) => dsp_sum_NE(47 downto 0),
      SCLRP => \det_signal.acc_reset_reg_n_0\
    );
dsp_phase_env_NW: component ps_comp_high_0_0_dsp_phase_env
     port map (
      A(19 downto 0) => dsp_phase_NW(19 downto 0),
      B(17 downto 0) => env_NW(17 downto 0),
      CLK => clk,
      P(47 downto 0) => dsp_sum_NW(47 downto 0),
      SCLRP => \det_signal.acc_reset_reg_n_0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^signal_done\
    );
ila_i: component ps_comp_high_0_0_ila_3
     port map (
      clk => clk,
      probe0(0) => active,
      probe1(23 downto 0) => env_sum_N(23 downto 0),
      probe10(19 downto 0) => dsp_phase_NW(19 downto 0),
      probe11(47 downto 0) => dsp_sum_NW(47 downto 0),
      probe12(31 downto 0) => env_sum_NW(31 downto 0),
      probe13(19 downto 0) => phase_NW(19 downto 0),
      probe14(0) => valid_phase_NW,
      probe15(19 downto 0) => dsp_phase_EW(19 downto 0),
      probe16(47 downto 0) => dsp_sum_EW(47 downto 0),
      probe17(31 downto 0) => env_sum_EW(31 downto 0),
      probe18(19 downto 0) => phase_EW(19 downto 0),
      probe19(0) => valid_phase_EW,
      probe2(23 downto 0) => env_sum_E(23 downto 0),
      probe20(0) => start_proc,
      probe21(0) => proc_signal,
      probe22(0) => div_start,
      probe23(2 downto 0) => div_delay(2 downto 0),
      probe24(5 downto 0) => div_counter(5 downto 0),
      probe25(0) => proc_done,
      probe26(19 downto 1) => B"0000000000000000000",
      probe26(0) => \^signal_done\,
      probe3(23 downto 0) => env_sum_W(23 downto 0),
      probe4(17 downto 0) => env_NE(17 downto 0),
      probe5(19 downto 0) => dsp_phase_NE(19 downto 0),
      probe6(47 downto 0) => dsp_sum_NE(47 downto 0),
      probe7(31 downto 0) => env_sum_NE(31 downto 0),
      probe8(19 downto 0) => phase_NE(19 downto 0),
      probe9(0) => valid_phase_NE
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_high_0_0_comp_high is
  port (
    fifo_clk : in STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    fifo_sample_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    fifo_doa_data : in STD_LOGIC_VECTOR ( 143 downto 0 );
    config_clk : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_high_0_0_comp_high : entity is "comp_high";
end ps_comp_high_0_0_comp_high;

architecture STRUCTURE of ps_comp_high_0_0_comp_high is
  component ps_comp_high_0_0_fifo_config is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_comp_high_0_0_fifo_config;
  component ps_comp_high_0_0_fifo_doa is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 143 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 143 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_comp_high_0_0_fifo_doa;
  component ps_comp_high_0_0_fifo_raw_high is
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
  end component ps_comp_high_0_0_fifo_raw_high;
  signal cfg_empty : STD_LOGIC;
  signal cfg_rd : STD_LOGIC;
  signal \comp_high.doa_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.doa_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.doa_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.doa_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.doa_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_high.doa_rd_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.doa_valid_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.sample_rd_i_1_n_0\ : STD_LOGIC;
  signal config_data_adr_out : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal det_sig_i_i_1_n_0 : STD_LOGIC;
  signal doa_data : STD_LOGIC_VECTOR ( 143 downto 0 );
  signal doa_delay : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal doa_delay0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal doa_empty : STD_LOGIC;
  signal doa_out_data : STD_LOGIC_VECTOR ( 143 downto 0 );
  signal doa_rd : STD_LOGIC;
  signal doa_valid : STD_LOGIC;
  signal fifo_sample_delay : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal fifo_sample_delay0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_sample_empty : STD_LOGIC;
  signal sample_rd : STD_LOGIC;
  signal NLW_det_sig_i_signal_done_UNCONNECTED : STD_LOGIC;
  signal NLW_det_sig_i_signal_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_det_sig_i_signal_sample_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_fifo_config_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_config_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_config_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_doa_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 383 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \comp_high.doa_delay[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \comp_high.doa_delay[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \comp_high.doa_delay[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \comp_high.doa_delay[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \comp_high.fifo_sample_delay[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \comp_high.fifo_sample_delay[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \comp_high.fifo_sample_delay[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \comp_high.fifo_sample_delay[4]_i_1\ : label is "soft_lutpair3";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of det_sig_i : label is "soft";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_config_i : label is "fifo_config,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_config_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_config_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_doa_i : label is "fifo_doa,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_doa_i : label is "yes";
  attribute x_core_info of fifo_doa_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_raw_high,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
  attribute x_core_info of fifo_raw_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
begin
\comp_high.cfg_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => det_sig_i_i_1_n_0,
      Q => cfg_rd,
      R => '0'
    );
\comp_high.doa_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(0),
      Q => doa_data(0),
      R => '0'
    );
\comp_high.doa_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(100),
      Q => doa_data(100),
      R => '0'
    );
\comp_high.doa_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(101),
      Q => doa_data(101),
      R => '0'
    );
\comp_high.doa_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(102),
      Q => doa_data(102),
      R => '0'
    );
\comp_high.doa_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(103),
      Q => doa_data(103),
      R => '0'
    );
\comp_high.doa_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(104),
      Q => doa_data(104),
      R => '0'
    );
\comp_high.doa_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(105),
      Q => doa_data(105),
      R => '0'
    );
\comp_high.doa_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(106),
      Q => doa_data(106),
      R => '0'
    );
\comp_high.doa_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(107),
      Q => doa_data(107),
      R => '0'
    );
\comp_high.doa_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(108),
      Q => doa_data(108),
      R => '0'
    );
\comp_high.doa_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(109),
      Q => doa_data(109),
      R => '0'
    );
\comp_high.doa_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(10),
      Q => doa_data(10),
      R => '0'
    );
\comp_high.doa_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(110),
      Q => doa_data(110),
      R => '0'
    );
\comp_high.doa_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(111),
      Q => doa_data(111),
      R => '0'
    );
\comp_high.doa_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(112),
      Q => doa_data(112),
      R => '0'
    );
\comp_high.doa_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(113),
      Q => doa_data(113),
      R => '0'
    );
\comp_high.doa_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(114),
      Q => doa_data(114),
      R => '0'
    );
\comp_high.doa_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(115),
      Q => doa_data(115),
      R => '0'
    );
\comp_high.doa_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(116),
      Q => doa_data(116),
      R => '0'
    );
\comp_high.doa_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(117),
      Q => doa_data(117),
      R => '0'
    );
\comp_high.doa_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(118),
      Q => doa_data(118),
      R => '0'
    );
\comp_high.doa_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(119),
      Q => doa_data(119),
      R => '0'
    );
\comp_high.doa_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(11),
      Q => doa_data(11),
      R => '0'
    );
\comp_high.doa_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(120),
      Q => doa_data(120),
      R => '0'
    );
\comp_high.doa_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(121),
      Q => doa_data(121),
      R => '0'
    );
\comp_high.doa_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(122),
      Q => doa_data(122),
      R => '0'
    );
\comp_high.doa_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(123),
      Q => doa_data(123),
      R => '0'
    );
\comp_high.doa_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(124),
      Q => doa_data(124),
      R => '0'
    );
\comp_high.doa_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(125),
      Q => doa_data(125),
      R => '0'
    );
\comp_high.doa_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(126),
      Q => doa_data(126),
      R => '0'
    );
\comp_high.doa_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(127),
      Q => doa_data(127),
      R => '0'
    );
\comp_high.doa_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(128),
      Q => doa_data(128),
      R => '0'
    );
\comp_high.doa_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(129),
      Q => doa_data(129),
      R => '0'
    );
\comp_high.doa_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(12),
      Q => doa_data(12),
      R => '0'
    );
\comp_high.doa_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(130),
      Q => doa_data(130),
      R => '0'
    );
\comp_high.doa_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(131),
      Q => doa_data(131),
      R => '0'
    );
\comp_high.doa_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(132),
      Q => doa_data(132),
      R => '0'
    );
\comp_high.doa_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(133),
      Q => doa_data(133),
      R => '0'
    );
\comp_high.doa_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(134),
      Q => doa_data(134),
      R => '0'
    );
\comp_high.doa_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(135),
      Q => doa_data(135),
      R => '0'
    );
\comp_high.doa_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(136),
      Q => doa_data(136),
      R => '0'
    );
\comp_high.doa_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(137),
      Q => doa_data(137),
      R => '0'
    );
\comp_high.doa_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(138),
      Q => doa_data(138),
      R => '0'
    );
\comp_high.doa_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(139),
      Q => doa_data(139),
      R => '0'
    );
\comp_high.doa_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(13),
      Q => doa_data(13),
      R => '0'
    );
\comp_high.doa_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(140),
      Q => doa_data(140),
      R => '0'
    );
\comp_high.doa_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(141),
      Q => doa_data(141),
      R => '0'
    );
\comp_high.doa_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(142),
      Q => doa_data(142),
      R => '0'
    );
\comp_high.doa_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(143),
      Q => doa_data(143),
      R => '0'
    );
\comp_high.doa_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(14),
      Q => doa_data(14),
      R => '0'
    );
\comp_high.doa_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(15),
      Q => doa_data(15),
      R => '0'
    );
\comp_high.doa_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(16),
      Q => doa_data(16),
      R => '0'
    );
\comp_high.doa_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(17),
      Q => doa_data(17),
      R => '0'
    );
\comp_high.doa_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(18),
      Q => doa_data(18),
      R => '0'
    );
\comp_high.doa_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(19),
      Q => doa_data(19),
      R => '0'
    );
\comp_high.doa_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(1),
      Q => doa_data(1),
      R => '0'
    );
\comp_high.doa_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(20),
      Q => doa_data(20),
      R => '0'
    );
\comp_high.doa_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(21),
      Q => doa_data(21),
      R => '0'
    );
\comp_high.doa_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(22),
      Q => doa_data(22),
      R => '0'
    );
\comp_high.doa_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(23),
      Q => doa_data(23),
      R => '0'
    );
\comp_high.doa_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(24),
      Q => doa_data(24),
      R => '0'
    );
\comp_high.doa_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(25),
      Q => doa_data(25),
      R => '0'
    );
\comp_high.doa_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(26),
      Q => doa_data(26),
      R => '0'
    );
\comp_high.doa_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(27),
      Q => doa_data(27),
      R => '0'
    );
\comp_high.doa_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(28),
      Q => doa_data(28),
      R => '0'
    );
\comp_high.doa_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(29),
      Q => doa_data(29),
      R => '0'
    );
\comp_high.doa_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(2),
      Q => doa_data(2),
      R => '0'
    );
\comp_high.doa_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(30),
      Q => doa_data(30),
      R => '0'
    );
\comp_high.doa_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(31),
      Q => doa_data(31),
      R => '0'
    );
\comp_high.doa_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(32),
      Q => doa_data(32),
      R => '0'
    );
\comp_high.doa_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(33),
      Q => doa_data(33),
      R => '0'
    );
\comp_high.doa_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(34),
      Q => doa_data(34),
      R => '0'
    );
\comp_high.doa_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(35),
      Q => doa_data(35),
      R => '0'
    );
\comp_high.doa_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(36),
      Q => doa_data(36),
      R => '0'
    );
\comp_high.doa_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(37),
      Q => doa_data(37),
      R => '0'
    );
\comp_high.doa_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(38),
      Q => doa_data(38),
      R => '0'
    );
\comp_high.doa_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(39),
      Q => doa_data(39),
      R => '0'
    );
\comp_high.doa_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(3),
      Q => doa_data(3),
      R => '0'
    );
\comp_high.doa_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(40),
      Q => doa_data(40),
      R => '0'
    );
\comp_high.doa_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(41),
      Q => doa_data(41),
      R => '0'
    );
\comp_high.doa_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(42),
      Q => doa_data(42),
      R => '0'
    );
\comp_high.doa_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(43),
      Q => doa_data(43),
      R => '0'
    );
\comp_high.doa_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(44),
      Q => doa_data(44),
      R => '0'
    );
\comp_high.doa_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(45),
      Q => doa_data(45),
      R => '0'
    );
\comp_high.doa_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(46),
      Q => doa_data(46),
      R => '0'
    );
\comp_high.doa_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(47),
      Q => doa_data(47),
      R => '0'
    );
\comp_high.doa_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(48),
      Q => doa_data(48),
      R => '0'
    );
\comp_high.doa_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(49),
      Q => doa_data(49),
      R => '0'
    );
\comp_high.doa_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(4),
      Q => doa_data(4),
      R => '0'
    );
\comp_high.doa_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(50),
      Q => doa_data(50),
      R => '0'
    );
\comp_high.doa_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(51),
      Q => doa_data(51),
      R => '0'
    );
\comp_high.doa_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(52),
      Q => doa_data(52),
      R => '0'
    );
\comp_high.doa_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(53),
      Q => doa_data(53),
      R => '0'
    );
\comp_high.doa_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(54),
      Q => doa_data(54),
      R => '0'
    );
\comp_high.doa_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(55),
      Q => doa_data(55),
      R => '0'
    );
\comp_high.doa_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(56),
      Q => doa_data(56),
      R => '0'
    );
\comp_high.doa_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(57),
      Q => doa_data(57),
      R => '0'
    );
\comp_high.doa_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(58),
      Q => doa_data(58),
      R => '0'
    );
\comp_high.doa_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(59),
      Q => doa_data(59),
      R => '0'
    );
\comp_high.doa_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(5),
      Q => doa_data(5),
      R => '0'
    );
\comp_high.doa_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(60),
      Q => doa_data(60),
      R => '0'
    );
\comp_high.doa_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(61),
      Q => doa_data(61),
      R => '0'
    );
\comp_high.doa_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(62),
      Q => doa_data(62),
      R => '0'
    );
\comp_high.doa_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(63),
      Q => doa_data(63),
      R => '0'
    );
\comp_high.doa_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(64),
      Q => doa_data(64),
      R => '0'
    );
\comp_high.doa_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(65),
      Q => doa_data(65),
      R => '0'
    );
\comp_high.doa_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(66),
      Q => doa_data(66),
      R => '0'
    );
\comp_high.doa_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(67),
      Q => doa_data(67),
      R => '0'
    );
\comp_high.doa_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(68),
      Q => doa_data(68),
      R => '0'
    );
\comp_high.doa_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(69),
      Q => doa_data(69),
      R => '0'
    );
\comp_high.doa_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(6),
      Q => doa_data(6),
      R => '0'
    );
\comp_high.doa_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(70),
      Q => doa_data(70),
      R => '0'
    );
\comp_high.doa_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(71),
      Q => doa_data(71),
      R => '0'
    );
\comp_high.doa_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(72),
      Q => doa_data(72),
      R => '0'
    );
\comp_high.doa_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(73),
      Q => doa_data(73),
      R => '0'
    );
\comp_high.doa_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(74),
      Q => doa_data(74),
      R => '0'
    );
\comp_high.doa_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(75),
      Q => doa_data(75),
      R => '0'
    );
\comp_high.doa_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(76),
      Q => doa_data(76),
      R => '0'
    );
\comp_high.doa_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(77),
      Q => doa_data(77),
      R => '0'
    );
\comp_high.doa_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(78),
      Q => doa_data(78),
      R => '0'
    );
\comp_high.doa_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(79),
      Q => doa_data(79),
      R => '0'
    );
\comp_high.doa_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(7),
      Q => doa_data(7),
      R => '0'
    );
\comp_high.doa_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(80),
      Q => doa_data(80),
      R => '0'
    );
\comp_high.doa_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(81),
      Q => doa_data(81),
      R => '0'
    );
\comp_high.doa_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(82),
      Q => doa_data(82),
      R => '0'
    );
\comp_high.doa_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(83),
      Q => doa_data(83),
      R => '0'
    );
\comp_high.doa_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(84),
      Q => doa_data(84),
      R => '0'
    );
\comp_high.doa_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(85),
      Q => doa_data(85),
      R => '0'
    );
\comp_high.doa_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(86),
      Q => doa_data(86),
      R => '0'
    );
\comp_high.doa_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(87),
      Q => doa_data(87),
      R => '0'
    );
\comp_high.doa_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(88),
      Q => doa_data(88),
      R => '0'
    );
\comp_high.doa_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(89),
      Q => doa_data(89),
      R => '0'
    );
\comp_high.doa_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(8),
      Q => doa_data(8),
      R => '0'
    );
\comp_high.doa_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(90),
      Q => doa_data(90),
      R => '0'
    );
\comp_high.doa_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(91),
      Q => doa_data(91),
      R => '0'
    );
\comp_high.doa_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(92),
      Q => doa_data(92),
      R => '0'
    );
\comp_high.doa_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(93),
      Q => doa_data(93),
      R => '0'
    );
\comp_high.doa_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(94),
      Q => doa_data(94),
      R => '0'
    );
\comp_high.doa_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(95),
      Q => doa_data(95),
      R => '0'
    );
\comp_high.doa_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(96),
      Q => doa_data(96),
      R => '0'
    );
\comp_high.doa_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(97),
      Q => doa_data(97),
      R => '0'
    );
\comp_high.doa_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(98),
      Q => doa_data(98),
      R => '0'
    );
\comp_high.doa_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(99),
      Q => doa_data(99),
      R => '0'
    );
\comp_high.doa_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.doa_valid_i_1_n_0\,
      D => doa_out_data(9),
      Q => doa_data(9),
      R => '0'
    );
\comp_high.doa_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => doa_delay(0),
      O => doa_delay0(0)
    );
\comp_high.doa_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => doa_delay(0),
      I1 => doa_delay(1),
      O => \comp_high.doa_delay[1]_i_1_n_0\
    );
\comp_high.doa_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => doa_delay(1),
      I1 => doa_delay(0),
      I2 => doa_delay(2),
      O => \comp_high.doa_delay[2]_i_1_n_0\
    );
\comp_high.doa_delay[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => doa_delay(2),
      I1 => doa_delay(0),
      I2 => doa_delay(1),
      I3 => doa_delay(3),
      O => \comp_high.doa_delay[3]_i_1_n_0\
    );
\comp_high.doa_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => doa_delay(0),
      I1 => doa_delay(3),
      I2 => doa_delay(4),
      I3 => doa_delay(1),
      I4 => doa_delay(2),
      O => \comp_high.doa_delay[4]_i_1_n_0\
    );
\comp_high.doa_delay[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => doa_delay(3),
      I1 => doa_delay(1),
      I2 => doa_delay(0),
      I3 => doa_delay(2),
      I4 => doa_delay(4),
      O => \comp_high.doa_delay[4]_i_2_n_0\
    );
\comp_high.doa_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.doa_delay[4]_i_1_n_0\,
      D => doa_delay0(0),
      Q => doa_delay(0),
      S => doa_empty
    );
\comp_high.doa_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.doa_delay[4]_i_1_n_0\,
      D => \comp_high.doa_delay[1]_i_1_n_0\,
      Q => doa_delay(1),
      S => doa_empty
    );
\comp_high.doa_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.doa_delay[4]_i_1_n_0\,
      D => \comp_high.doa_delay[2]_i_1_n_0\,
      Q => doa_delay(2),
      S => doa_empty
    );
\comp_high.doa_delay_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.doa_delay[4]_i_1_n_0\,
      D => \comp_high.doa_delay[3]_i_1_n_0\,
      Q => doa_delay(3),
      S => doa_empty
    );
\comp_high.doa_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.doa_delay[4]_i_1_n_0\,
      D => \comp_high.doa_delay[4]_i_2_n_0\,
      Q => doa_delay(4),
      S => doa_empty
    );
\comp_high.doa_rd_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => doa_empty,
      I1 => doa_delay(2),
      I2 => doa_delay(1),
      I3 => doa_delay(4),
      I4 => doa_delay(3),
      I5 => doa_delay(0),
      O => \comp_high.doa_rd_i_1_n_0\
    );
\comp_high.doa_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_high.doa_rd_i_1_n_0\,
      Q => doa_rd,
      R => '0'
    );
\comp_high.doa_valid_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => doa_rd,
      I1 => doa_empty,
      O => \comp_high.doa_valid_i_1_n_0\
    );
\comp_high.doa_valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_high.doa_valid_i_1_n_0\,
      Q => doa_valid,
      R => '0'
    );
\comp_high.fifo_sample_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_sample_delay(0),
      O => fifo_sample_delay0(0)
    );
\comp_high.fifo_sample_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fifo_sample_delay(1),
      I1 => fifo_sample_delay(0),
      O => fifo_sample_delay0(1)
    );
\comp_high.fifo_sample_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => fifo_sample_delay(2),
      I1 => fifo_sample_delay(0),
      I2 => fifo_sample_delay(1),
      O => fifo_sample_delay0(2)
    );
\comp_high.fifo_sample_delay[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => fifo_sample_delay(3),
      I1 => fifo_sample_delay(1),
      I2 => fifo_sample_delay(0),
      I3 => fifo_sample_delay(2),
      O => fifo_sample_delay0(3)
    );
\comp_high.fifo_sample_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => fifo_sample_delay(4),
      I1 => fifo_sample_delay(2),
      I2 => fifo_sample_delay(0),
      I3 => fifo_sample_delay(1),
      I4 => fifo_sample_delay(3),
      O => fifo_sample_delay0(4)
    );
\comp_high.fifo_sample_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => fifo_sample_delay(5),
      I1 => fifo_sample_delay(3),
      I2 => fifo_sample_delay(1),
      I3 => fifo_sample_delay(0),
      I4 => fifo_sample_delay(2),
      I5 => fifo_sample_delay(4),
      O => fifo_sample_delay0(5)
    );
\comp_high.fifo_sample_delay[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fifo_sample_delay(6),
      I1 => \comp_high.fifo_sample_delay[7]_i_3_n_0\,
      O => fifo_sample_delay0(6)
    );
\comp_high.fifo_sample_delay[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifo_sample_delay(7),
      I1 => \comp_high.fifo_sample_delay[7]_i_3_n_0\,
      I2 => fifo_sample_delay(6),
      I3 => fifo_sample_delay(8),
      O => \comp_high.fifo_sample_delay[7]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => fifo_sample_delay(7),
      I1 => \comp_high.fifo_sample_delay[7]_i_3_n_0\,
      I2 => fifo_sample_delay(6),
      O => fifo_sample_delay0(7)
    );
\comp_high.fifo_sample_delay[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => fifo_sample_delay(4),
      I1 => fifo_sample_delay(2),
      I2 => fifo_sample_delay(0),
      I3 => fifo_sample_delay(1),
      I4 => fifo_sample_delay(3),
      I5 => fifo_sample_delay(5),
      O => \comp_high.fifo_sample_delay[7]_i_3_n_0\
    );
\comp_high.fifo_sample_delay[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => fifo_sample_delay(7),
      I1 => \comp_high.fifo_sample_delay[7]_i_3_n_0\,
      I2 => fifo_sample_delay(6),
      I3 => fifo_sample_delay(8),
      O => \comp_high.fifo_sample_delay[8]_i_1_n_0\
    );
\comp_high.fifo_sample_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      D => fifo_sample_delay0(0),
      Q => fifo_sample_delay(0),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      D => fifo_sample_delay0(1),
      Q => fifo_sample_delay(1),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      D => fifo_sample_delay0(2),
      Q => fifo_sample_delay(2),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      D => fifo_sample_delay0(3),
      Q => fifo_sample_delay(3),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      D => fifo_sample_delay0(4),
      Q => fifo_sample_delay(4),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      D => fifo_sample_delay0(5),
      Q => fifo_sample_delay(5),
      R => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      D => fifo_sample_delay0(6),
      Q => fifo_sample_delay(6),
      R => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      D => fifo_sample_delay0(7),
      Q => fifo_sample_delay(7),
      R => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_high.fifo_sample_delay[8]_i_1_n_0\,
      Q => fifo_sample_delay(8),
      R => fifo_sample_empty
    );
\comp_high.sample_rd_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => fifo_sample_empty,
      I1 => fifo_sample_delay(8),
      I2 => fifo_sample_delay(6),
      I3 => \comp_high.fifo_sample_delay[7]_i_3_n_0\,
      I4 => fifo_sample_delay(7),
      O => \comp_high.sample_rd_i_1_n_0\
    );
\comp_high.sample_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_high.sample_rd_i_1_n_0\,
      Q => sample_rd,
      R => '0'
    );
det_sig_i: entity work.ps_comp_high_0_0_det_signal
     port map (
      active => doa_valid,
      clk => clk,
      config_adr(7 downto 0) => config_data_adr_out(7 downto 0),
      config_data(31 downto 16) => B"0000000000000000",
      config_data(15 downto 0) => config_data_adr_out(23 downto 8),
      config_wr => det_sig_i_i_1_n_0,
      data(143 downto 0) => doa_data(143 downto 0),
      reset => '0',
      signal_counter(8 downto 0) => NLW_det_sig_i_signal_counter_UNCONNECTED(8 downto 0),
      signal_done => NLW_det_sig_i_signal_done_UNCONNECTED,
      signal_sample(23 downto 0) => NLW_det_sig_i_signal_sample_UNCONNECTED(23 downto 0)
    );
det_sig_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cfg_empty,
      O => det_sig_i_i_1_n_0
    );
fifo_config_i: component ps_comp_high_0_0_fifo_config
     port map (
      din(39 downto 8) => config_data(31 downto 0),
      din(7 downto 0) => config_adr(7 downto 0),
      dout(39 downto 0) => config_data_adr_out(39 downto 0),
      empty => cfg_empty,
      full => NLW_fifo_config_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => cfg_rd,
      rd_rst_busy => NLW_fifo_config_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => config_clk,
      wr_en => config_wr,
      wr_rst_busy => NLW_fifo_config_i_wr_rst_busy_UNCONNECTED
    );
fifo_doa_i: component ps_comp_high_0_0_fifo_doa
     port map (
      din(143 downto 0) => fifo_doa_data(143 downto 0),
      dout(143 downto 0) => doa_out_data(143 downto 0),
      empty => doa_empty,
      full => NLW_fifo_doa_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => doa_rd,
      rd_rst_busy => NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => fifo_clk,
      wr_en => fifo_wr,
      wr_rst_busy => NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED
    );
fifo_raw_i: component ps_comp_high_0_0_fifo_raw_high
     port map (
      din(383 downto 0) => fifo_sample_data(383 downto 0),
      dout(383 downto 0) => NLW_fifo_raw_i_dout_UNCONNECTED(383 downto 0),
      empty => fifo_sample_empty,
      full => NLW_fifo_raw_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => sample_rd,
      rd_rst_busy => NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => fifo_clk,
      wr_en => fifo_wr,
      wr_rst_busy => NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_high_0_0 is
  port (
    fifo_clk : in STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    fifo_sample_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    fifo_doa_data : in STD_LOGIC_VECTOR ( 143 downto 0 );
    config_clk : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_comp_high_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_comp_high_0_0 : entity is "ps_comp_high_0_0,comp_high,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_comp_high_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_comp_high_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_comp_high_0_0 : entity is "comp_high,Vivado 2025.1";
end ps_comp_high_0_0;

architecture STRUCTURE of ps_comp_high_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of config_clk : signal is "xilinx.com:signal:clock:1.0 config_clk CLK";
  attribute X_INTERFACE_MODE of config_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of config_clk : signal is "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_clk : signal is "xilinx.com:signal:clock:1.0 fifo_clk CLK";
  attribute X_INTERFACE_MODE of fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of fifo_clk : signal is "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_comp_high_0_0_comp_high
     port map (
      clk => clk,
      config_adr(7 downto 0) => config_adr(7 downto 0),
      config_clk => config_clk,
      config_data(31 downto 0) => config_data(31 downto 0),
      config_wr => config_wr,
      fifo_clk => fifo_clk,
      fifo_doa_data(143 downto 0) => fifo_doa_data(143 downto 0),
      fifo_sample_data(383 downto 0) => fifo_sample_data(383 downto 0),
      fifo_wr => fifo_wr,
      reset => reset
    );
end STRUCTURE;
