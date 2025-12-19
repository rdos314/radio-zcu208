-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Dec 19 22:30:39 2025
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
    signal_sample : out STD_LOGIC_VECTOR ( 31 downto 0 );
    signal_counter : out STD_LOGIC_VECTOR ( 9 downto 0 );
    signal_done : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_high_0_0_det_signal : entity is "det_signal";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_comp_high_0_0_det_signal : entity is "soft";
end ps_comp_high_0_0_det_signal;

architecture STRUCTURE of ps_comp_high_0_0_det_signal is
  component ps_comp_high_0_0_ila_3 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe34 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_comp_high_0_0_ila_3;
  signal acc_reset : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of acc_reset : signal is std.standard.true;
  signal curr_signal_counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute MARK_DEBUG of curr_signal_counter : signal is std.standard.true;
  signal curr_signal_sample : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of curr_signal_sample : signal is std.standard.true;
  signal \det_signal.acc_reset_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[0]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[10]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[11]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[12]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[13]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[14]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[16]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[17]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[18]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[19]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[1]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[20]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[21]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[22]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[23]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[24]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[25]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[26]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[27]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[28]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[29]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[2]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[30]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[31]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[3]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[4]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[5]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[6]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[8]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.curr_signal_sample[9]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[16]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \det_signal.diff_env_E_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_E_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_N[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[16]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \det_signal.diff_env_N_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_N_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_W[15]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[15]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[15]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[15]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[15]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[15]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[15]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[15]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[16]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \det_signal.diff_env_W_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_env_W_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[12]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg00_out\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \det_signal.diff_err_EW_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_EW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[12]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg0\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \det_signal.diff_err_NE_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_NE_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[12]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[7]_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[7]_i_4_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[7]_i_5_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[7]_i_6_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[7]_i_7_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[7]_i_8_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW[7]_i_9_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg0\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \det_signal.diff_err_NW_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.diff_err_NW_reg[7]_i_1_n_7\ : STD_LOGIC;
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
  signal \det_signal.diff_phase_E_reg02_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
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
  signal \det_signal.diff_phase_N_reg04_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
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
  signal \det_signal.diff_phase_W_reg00_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
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
  signal \det_signal.err_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.err_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.err_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.err_ov_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.err_ov_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.max_doa_diff[11]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[0]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[10]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[11]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[1]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[2]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[3]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[4]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[5]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[6]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[7]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[8]\ : STD_LOGIC;
  signal \det_signal.max_doa_diff_reg_n_0_[9]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[0]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[10]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[11]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[12]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[13]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[14]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[15]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[1]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[2]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[3]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[4]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[5]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[6]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[7]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[8]\ : STD_LOGIC;
  signal \det_signal.min_env_reg_n_0_[9]\ : STD_LOGIC;
  signal \det_signal.proc_signal_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.run_reg[0]__0\ : STD_LOGIC;
  signal \det_signal.run_reg[1]__0\ : STD_LOGIC;
  signal \det_signal.run_reg[2]__0\ : STD_LOGIC;
  signal \det_signal.sample_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.sample_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_10\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_11\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_12\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_13\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_14\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_15\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_8\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[31]_i_2_n_9\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \det_signal.sample_counter_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \det_signal.signal_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \det_signal.start_proc_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.valid_count_i_1_n_0\ : STD_LOGIC;
  signal \det_signal.valid_count_i_3_n_0\ : STD_LOGIC;
  signal \det_signal.valid_env_reg0\ : STD_LOGIC;
  signal \det_signal.valid_err_reg0\ : STD_LOGIC;
  signal diff_env_E : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG of diff_env_E : signal is std.standard.true;
  signal diff_env_N : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG of diff_env_N : signal is std.standard.true;
  signal diff_env_W : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG of diff_env_W : signal is std.standard.true;
  signal diff_err_EW : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute MARK_DEBUG of diff_err_EW : signal is std.standard.true;
  signal diff_err_NE : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute MARK_DEBUG of diff_err_NE : signal is std.standard.true;
  signal diff_err_NW : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute MARK_DEBUG of diff_err_NW : signal is std.standard.true;
  signal diff_phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of diff_phase_E : signal is std.standard.true;
  signal diff_phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of diff_phase_N : signal is std.standard.true;
  signal diff_phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of diff_phase_W : signal is std.standard.true;
  signal env_E : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG of env_E : signal is std.standard.true;
  signal env_N : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG of env_N : signal is std.standard.true;
  signal env_W : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute MARK_DEBUG of env_W : signal is std.standard.true;
  signal err_EW : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute MARK_DEBUG of err_EW : signal is std.standard.true;
  signal err_NE : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute MARK_DEBUG of err_NE : signal is std.standard.true;
  signal err_NW : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute MARK_DEBUG of err_NW : signal is std.standard.true;
  signal err_count : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of err_count : signal is std.standard.true;
  signal err_count0 : STD_LOGIC;
  signal err_ov : STD_LOGIC;
  attribute MARK_DEBUG of err_ov : signal is std.standard.true;
  signal has_signal : STD_LOGIC;
  attribute MARK_DEBUG of has_signal : signal is std.standard.true;
  signal has_signal4_out : STD_LOGIC;
  signal max_doa_diff : STD_LOGIC;
  signal min_env : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_E : signal is std.standard.true;
  signal phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_N : signal is std.standard.true;
  signal phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_W : signal is std.standard.true;
  signal prev_phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prev_phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal prev_phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal proc_done : STD_LOGIC;
  attribute MARK_DEBUG of proc_done : signal is std.standard.true;
  signal proc_signal : STD_LOGIC;
  attribute MARK_DEBUG of proc_signal : signal is std.standard.true;
  signal sample_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of sample_counter : signal is std.standard.true;
  signal \^signal_done\ : STD_LOGIC;
  attribute MARK_DEBUG of signal_done : signal is std.standard.true;
  signal start_proc : STD_LOGIC;
  attribute MARK_DEBUG of start_proc : signal is std.standard.true;
  signal valid_count : STD_LOGIC;
  attribute MARK_DEBUG of valid_count : signal is std.standard.true;
  signal valid_count3_out : STD_LOGIC;
  signal valid_env : STD_LOGIC;
  attribute MARK_DEBUG of valid_env : signal is std.standard.true;
  signal valid_err : STD_LOGIC;
  attribute MARK_DEBUG of valid_err : signal is std.standard.true;
  signal \NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_det_signal.diff_err_EW_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_det_signal.diff_err_NE_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_det_signal.diff_err_NW_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
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
  signal \NLW_det_signal.sample_counter_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP : string;
  attribute KEEP of \det_signal.acc_reset_reg\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_counter_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[15]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[20]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[20]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[21]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[21]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[22]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[22]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[23]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[23]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[24]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[24]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[25]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[25]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[26]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[26]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[27]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[27]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[28]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[28]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[29]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[29]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[30]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[30]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[31]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[31]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.curr_signal_sample_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.curr_signal_sample_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_E_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[16]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[16]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_env_E_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_E_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_N_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[16]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[16]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_env_N_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_N_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_W_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[16]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[16]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_env_W_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_env_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_env_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_env_W_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[12]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_err_EW_reg[12]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_err_EW_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_err_EW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_err_EW_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_EW_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_EW_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[12]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_err_NE_reg[12]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_err_NE_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_err_NE_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_err_NE_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NE_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NE_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[12]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_err_NW_reg[12]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_err_NW_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_err_NW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.diff_err_NW_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_err_NW_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_err_NW_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[15]_i_10\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_E_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[19]_i_6\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_E_reg[7]_i_10\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_E_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[15]_i_10\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_N_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[19]_i_6\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_N_reg[7]_i_10\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_N_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[15]_i_10\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_W_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[19]_i_6\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_signal.diff_phase_W_reg[7]_i_10\ : label is 35;
  attribute KEEP of \det_signal.diff_phase_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.diff_phase_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.diff_phase_W_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[15]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_E_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[15]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_N_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[15]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.env_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.env_W_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.err_EW_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_EW_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.err_NE_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NE_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.err_NW_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_NW_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.err_count_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.err_count_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.err_ov_reg\ : label is "yes";
  attribute mark_debug_string of \det_signal.err_ov_reg\ : label is "yes";
  attribute KEEP of \det_signal.has_signal_reg\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[15]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.phase_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_E_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[15]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.phase_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_N_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[15]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[16]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[17]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[18]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[19]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[7]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.phase_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \det_signal.phase_W_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.proc_done_reg\ : label is "yes";
  attribute KEEP of \det_signal.proc_signal_reg\ : label is "yes";
  attribute mark_debug_string of \det_signal.proc_signal_reg\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[0]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[10]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[11]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[12]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[13]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[14]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.sample_counter_reg[15]_i_1\ : label is 35;
  attribute KEEP of \det_signal.sample_counter_reg[16]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[17]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[18]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[19]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[1]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[20]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[21]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[22]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.sample_counter_reg[23]_i_1\ : label is 35;
  attribute KEEP of \det_signal.sample_counter_reg[24]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[25]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[26]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[27]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[28]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[29]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[2]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[30]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[31]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.sample_counter_reg[31]_i_2\ : label is 35;
  attribute KEEP of \det_signal.sample_counter_reg[3]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[4]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[5]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[6]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \det_signal.sample_counter_reg[7]_i_1\ : label is 35;
  attribute KEEP of \det_signal.sample_counter_reg[8]\ : label is "yes";
  attribute KEEP of \det_signal.sample_counter_reg[9]\ : label is "yes";
  attribute KEEP of \det_signal.signal_done_reg\ : label is "yes";
  attribute KEEP of \det_signal.start_proc_reg\ : label is "yes";
  attribute KEEP of \det_signal.valid_count_reg\ : label is "yes";
  attribute mark_debug_string of \det_signal.valid_count_reg\ : label is "yes";
  attribute KEEP of \det_signal.valid_env_reg\ : label is "yes";
  attribute mark_debug_string of \det_signal.valid_env_reg\ : label is "yes";
  attribute KEEP of \det_signal.valid_err_reg\ : label is "yes";
  attribute mark_debug_string of \det_signal.valid_err_reg\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_3,ila,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
begin
  signal_done <= \^signal_done\;
\det_signal.acc_reset_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008AFFAA00000000"
    )
        port map (
      I0 => acc_reset,
      I1 => err_ov,
      I2 => valid_count,
      I3 => err_count0,
      I4 => has_signal,
      I5 => \det_signal.run_reg[2]__0\,
      O => \det_signal.acc_reset_i_1_n_0\
    );
\det_signal.acc_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.acc_reset_i_1_n_0\,
      Q => acc_reset,
      R => '0'
    );
\det_signal.curr_signal_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_signal_counter(0),
      O => \p_1_in__0\(0)
    );
\det_signal.curr_signal_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => curr_signal_counter(0),
      I1 => curr_signal_counter(1),
      O => \p_1_in__0\(1)
    );
\det_signal.curr_signal_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => curr_signal_counter(0),
      I1 => curr_signal_counter(1),
      I2 => curr_signal_counter(2),
      O => \p_1_in__0\(2)
    );
\det_signal.curr_signal_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => curr_signal_counter(1),
      I1 => curr_signal_counter(0),
      I2 => curr_signal_counter(2),
      I3 => curr_signal_counter(3),
      O => \p_1_in__0\(3)
    );
\det_signal.curr_signal_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => curr_signal_counter(2),
      I1 => curr_signal_counter(0),
      I2 => curr_signal_counter(1),
      I3 => curr_signal_counter(3),
      I4 => curr_signal_counter(4),
      O => \p_1_in__0\(4)
    );
\det_signal.curr_signal_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => curr_signal_counter(3),
      I1 => curr_signal_counter(1),
      I2 => curr_signal_counter(0),
      I3 => curr_signal_counter(2),
      I4 => curr_signal_counter(4),
      I5 => curr_signal_counter(5),
      O => \p_1_in__0\(5)
    );
\det_signal.curr_signal_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \det_signal.curr_signal_counter[9]_i_3_n_0\,
      I1 => curr_signal_counter(6),
      O => \p_1_in__0\(6)
    );
\det_signal.curr_signal_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \det_signal.curr_signal_counter[9]_i_3_n_0\,
      I1 => curr_signal_counter(6),
      I2 => curr_signal_counter(7),
      O => \p_1_in__0\(7)
    );
\det_signal.curr_signal_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => curr_signal_counter(6),
      I1 => \det_signal.curr_signal_counter[9]_i_3_n_0\,
      I2 => curr_signal_counter(7),
      I3 => curr_signal_counter(8),
      O => \p_1_in__0\(8)
    );
\det_signal.curr_signal_counter[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => has_signal,
      O => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => curr_signal_counter(7),
      I1 => \det_signal.curr_signal_counter[9]_i_3_n_0\,
      I2 => curr_signal_counter(6),
      I3 => curr_signal_counter(8),
      I4 => curr_signal_counter(9),
      O => \p_1_in__0\(9)
    );
\det_signal.curr_signal_counter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => curr_signal_counter(5),
      I1 => curr_signal_counter(3),
      I2 => curr_signal_counter(1),
      I3 => curr_signal_counter(0),
      I4 => curr_signal_counter(2),
      I5 => curr_signal_counter(4),
      O => \det_signal.curr_signal_counter[9]_i_3_n_0\
    );
\det_signal.curr_signal_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(0),
      Q => curr_signal_counter(0),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => curr_signal_counter(1),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(2),
      Q => curr_signal_counter(2),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(3),
      Q => curr_signal_counter(3),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(4),
      Q => curr_signal_counter(4),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(5),
      Q => curr_signal_counter(5),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(6),
      Q => curr_signal_counter(6),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(7),
      Q => curr_signal_counter(7),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(8),
      Q => curr_signal_counter(8),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(9),
      Q => curr_signal_counter(9),
      R => \det_signal.curr_signal_counter[9]_i_1_n_0\
    );
\det_signal.curr_signal_sample[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(0),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(0),
      O => \det_signal.curr_signal_sample[0]_i_1_n_0\
    );
\det_signal.curr_signal_sample[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(10),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(10),
      O => \det_signal.curr_signal_sample[10]_i_1_n_0\
    );
\det_signal.curr_signal_sample[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(11),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(11),
      O => \det_signal.curr_signal_sample[11]_i_1_n_0\
    );
\det_signal.curr_signal_sample[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(12),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(12),
      O => \det_signal.curr_signal_sample[12]_i_1_n_0\
    );
\det_signal.curr_signal_sample[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(13),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(13),
      O => \det_signal.curr_signal_sample[13]_i_1_n_0\
    );
\det_signal.curr_signal_sample[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(14),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(14),
      O => \det_signal.curr_signal_sample[14]_i_1_n_0\
    );
\det_signal.curr_signal_sample[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(15),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(15),
      O => \det_signal.curr_signal_sample[15]_i_1_n_0\
    );
\det_signal.curr_signal_sample[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(16),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(16),
      O => \det_signal.curr_signal_sample[16]_i_1_n_0\
    );
\det_signal.curr_signal_sample[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(17),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(17),
      O => \det_signal.curr_signal_sample[17]_i_1_n_0\
    );
\det_signal.curr_signal_sample[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(18),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(18),
      O => \det_signal.curr_signal_sample[18]_i_1_n_0\
    );
\det_signal.curr_signal_sample[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(19),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(19),
      O => \det_signal.curr_signal_sample[19]_i_1_n_0\
    );
\det_signal.curr_signal_sample[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(1),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(1),
      O => \det_signal.curr_signal_sample[1]_i_1_n_0\
    );
\det_signal.curr_signal_sample[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(20),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(20),
      O => \det_signal.curr_signal_sample[20]_i_1_n_0\
    );
\det_signal.curr_signal_sample[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(21),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(21),
      O => \det_signal.curr_signal_sample[21]_i_1_n_0\
    );
\det_signal.curr_signal_sample[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(22),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(22),
      O => \det_signal.curr_signal_sample[22]_i_1_n_0\
    );
\det_signal.curr_signal_sample[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(23),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(23),
      O => \det_signal.curr_signal_sample[23]_i_1_n_0\
    );
\det_signal.curr_signal_sample[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(24),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(24),
      O => \det_signal.curr_signal_sample[24]_i_1_n_0\
    );
\det_signal.curr_signal_sample[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(25),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(25),
      O => \det_signal.curr_signal_sample[25]_i_1_n_0\
    );
\det_signal.curr_signal_sample[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(26),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(26),
      O => \det_signal.curr_signal_sample[26]_i_1_n_0\
    );
\det_signal.curr_signal_sample[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(27),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(27),
      O => \det_signal.curr_signal_sample[27]_i_1_n_0\
    );
\det_signal.curr_signal_sample[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(28),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(28),
      O => \det_signal.curr_signal_sample[28]_i_1_n_0\
    );
\det_signal.curr_signal_sample[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(29),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(29),
      O => \det_signal.curr_signal_sample[29]_i_1_n_0\
    );
\det_signal.curr_signal_sample[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(2),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(2),
      O => \det_signal.curr_signal_sample[2]_i_1_n_0\
    );
\det_signal.curr_signal_sample[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(30),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(30),
      O => \det_signal.curr_signal_sample[30]_i_1_n_0\
    );
\det_signal.curr_signal_sample[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(31),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(31),
      O => \det_signal.curr_signal_sample[31]_i_1_n_0\
    );
\det_signal.curr_signal_sample[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(3),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(3),
      O => \det_signal.curr_signal_sample[3]_i_1_n_0\
    );
\det_signal.curr_signal_sample[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(4),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(4),
      O => \det_signal.curr_signal_sample[4]_i_1_n_0\
    );
\det_signal.curr_signal_sample[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(5),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(5),
      O => \det_signal.curr_signal_sample[5]_i_1_n_0\
    );
\det_signal.curr_signal_sample[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(6),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(6),
      O => \det_signal.curr_signal_sample[6]_i_1_n_0\
    );
\det_signal.curr_signal_sample[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(7),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(7),
      O => \det_signal.curr_signal_sample[7]_i_1_n_0\
    );
\det_signal.curr_signal_sample[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(8),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(8),
      O => \det_signal.curr_signal_sample[8]_i_1_n_0\
    );
\det_signal.curr_signal_sample[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => has_signal,
      I1 => sample_counter(9),
      I2 => valid_env,
      I3 => valid_err,
      I4 => valid_count,
      I5 => curr_signal_sample(9),
      O => \det_signal.curr_signal_sample[9]_i_1_n_0\
    );
\det_signal.curr_signal_sample_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[0]_i_1_n_0\,
      Q => curr_signal_sample(0),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[10]_i_1_n_0\,
      Q => curr_signal_sample(10),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[11]_i_1_n_0\,
      Q => curr_signal_sample(11),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[12]_i_1_n_0\,
      Q => curr_signal_sample(12),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[13]_i_1_n_0\,
      Q => curr_signal_sample(13),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[14]_i_1_n_0\,
      Q => curr_signal_sample(14),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[15]_i_1_n_0\,
      Q => curr_signal_sample(15),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[16]_i_1_n_0\,
      Q => curr_signal_sample(16),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[17]_i_1_n_0\,
      Q => curr_signal_sample(17),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[18]_i_1_n_0\,
      Q => curr_signal_sample(18),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[19]_i_1_n_0\,
      Q => curr_signal_sample(19),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[1]_i_1_n_0\,
      Q => curr_signal_sample(1),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[20]_i_1_n_0\,
      Q => curr_signal_sample(20),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[21]_i_1_n_0\,
      Q => curr_signal_sample(21),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[22]_i_1_n_0\,
      Q => curr_signal_sample(22),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[23]_i_1_n_0\,
      Q => curr_signal_sample(23),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[24]_i_1_n_0\,
      Q => curr_signal_sample(24),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[25]_i_1_n_0\,
      Q => curr_signal_sample(25),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[26]_i_1_n_0\,
      Q => curr_signal_sample(26),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[27]_i_1_n_0\,
      Q => curr_signal_sample(27),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[28]_i_1_n_0\,
      Q => curr_signal_sample(28),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[29]_i_1_n_0\,
      Q => curr_signal_sample(29),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[2]_i_1_n_0\,
      Q => curr_signal_sample(2),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[30]_i_1_n_0\,
      Q => curr_signal_sample(30),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[31]_i_1_n_0\,
      Q => curr_signal_sample(31),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[3]_i_1_n_0\,
      Q => curr_signal_sample(3),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[4]_i_1_n_0\,
      Q => curr_signal_sample(4),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[5]_i_1_n_0\,
      Q => curr_signal_sample(5),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[6]_i_1_n_0\,
      Q => curr_signal_sample(6),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[7]_i_1_n_0\,
      Q => curr_signal_sample(7),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[8]_i_1_n_0\,
      Q => curr_signal_sample(8),
      R => '0'
    );
\det_signal.curr_signal_sample_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[2]__0\,
      D => \det_signal.curr_signal_sample[9]_i_1_n_0\,
      Q => curr_signal_sample(9),
      R => '0'
    );
\det_signal.diff_env_E[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[15]\,
      I1 => env_E(15),
      O => \det_signal.diff_env_E[15]_i_2_n_0\
    );
\det_signal.diff_env_E[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[14]\,
      I1 => env_E(14),
      O => \det_signal.diff_env_E[15]_i_3_n_0\
    );
\det_signal.diff_env_E[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[13]\,
      I1 => env_E(13),
      O => \det_signal.diff_env_E[15]_i_4_n_0\
    );
\det_signal.diff_env_E[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[12]\,
      I1 => env_E(12),
      O => \det_signal.diff_env_E[15]_i_5_n_0\
    );
\det_signal.diff_env_E[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[11]\,
      I1 => env_E(11),
      O => \det_signal.diff_env_E[15]_i_6_n_0\
    );
\det_signal.diff_env_E[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[10]\,
      I1 => env_E(10),
      O => \det_signal.diff_env_E[15]_i_7_n_0\
    );
\det_signal.diff_env_E[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[9]\,
      I1 => env_E(9),
      O => \det_signal.diff_env_E[15]_i_8_n_0\
    );
\det_signal.diff_env_E[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[8]\,
      I1 => env_E(8),
      O => \det_signal.diff_env_E[15]_i_9_n_0\
    );
\det_signal.diff_env_E[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_E(16),
      O => \det_signal.diff_env_E[16]_i_2_n_0\
    );
\det_signal.diff_env_E[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[7]\,
      I1 => env_E(7),
      O => \det_signal.diff_env_E[7]_i_2_n_0\
    );
\det_signal.diff_env_E[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[6]\,
      I1 => env_E(6),
      O => \det_signal.diff_env_E[7]_i_3_n_0\
    );
\det_signal.diff_env_E[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[5]\,
      I1 => env_E(5),
      O => \det_signal.diff_env_E[7]_i_4_n_0\
    );
\det_signal.diff_env_E[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[4]\,
      I1 => env_E(4),
      O => \det_signal.diff_env_E[7]_i_5_n_0\
    );
\det_signal.diff_env_E[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[3]\,
      I1 => env_E(3),
      O => \det_signal.diff_env_E[7]_i_6_n_0\
    );
\det_signal.diff_env_E[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[2]\,
      I1 => env_E(2),
      O => \det_signal.diff_env_E[7]_i_7_n_0\
    );
\det_signal.diff_env_E[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[1]\,
      I1 => env_E(1),
      O => \det_signal.diff_env_E[7]_i_8_n_0\
    );
\det_signal.diff_env_E[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[0]\,
      I1 => env_E(0),
      O => \det_signal.diff_env_E[7]_i_9_n_0\
    );
\det_signal.diff_env_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(0),
      Q => diff_env_E(0),
      R => '0'
    );
\det_signal.diff_env_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(10),
      Q => diff_env_E(10),
      R => '0'
    );
\det_signal.diff_env_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(11),
      Q => diff_env_E(11),
      R => '0'
    );
\det_signal.diff_env_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(12),
      Q => diff_env_E(12),
      R => '0'
    );
\det_signal.diff_env_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(13),
      Q => diff_env_E(13),
      R => '0'
    );
\det_signal.diff_env_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(14),
      Q => diff_env_E(14),
      R => '0'
    );
\det_signal.diff_env_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(15),
      Q => diff_env_E(15),
      R => '0'
    );
\det_signal.diff_env_E_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_E_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_E_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.diff_env_E_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.diff_env_E_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.diff_env_E_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.diff_env_E_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.diff_env_E_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.diff_env_E_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.diff_env_E_reg[15]_i_1_n_7\,
      DI(7) => \det_signal.min_env_reg_n_0_[15]\,
      DI(6) => \det_signal.min_env_reg_n_0_[14]\,
      DI(5) => \det_signal.min_env_reg_n_0_[13]\,
      DI(4) => \det_signal.min_env_reg_n_0_[12]\,
      DI(3) => \det_signal.min_env_reg_n_0_[11]\,
      DI(2) => \det_signal.min_env_reg_n_0_[10]\,
      DI(1) => \det_signal.min_env_reg_n_0_[9]\,
      DI(0) => \det_signal.min_env_reg_n_0_[8]\,
      O(7 downto 0) => \det_signal.diff_env_E_reg0\(15 downto 8),
      S(7) => \det_signal.diff_env_E[15]_i_2_n_0\,
      S(6) => \det_signal.diff_env_E[15]_i_3_n_0\,
      S(5) => \det_signal.diff_env_E[15]_i_4_n_0\,
      S(4) => \det_signal.diff_env_E[15]_i_5_n_0\,
      S(3) => \det_signal.diff_env_E[15]_i_6_n_0\,
      S(2) => \det_signal.diff_env_E[15]_i_7_n_0\,
      S(1) => \det_signal.diff_env_E[15]_i_8_n_0\,
      S(0) => \det_signal.diff_env_E[15]_i_9_n_0\
    );
\det_signal.diff_env_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(16),
      Q => diff_env_E(16),
      R => '0'
    );
\det_signal.diff_env_E_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_E_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => \det_signal.diff_env_E_reg0\(16),
      S(7 downto 1) => B"0000000",
      S(0) => \det_signal.diff_env_E[16]_i_2_n_0\
    );
\det_signal.diff_env_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(1),
      Q => diff_env_E(1),
      R => '0'
    );
\det_signal.diff_env_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(2),
      Q => diff_env_E(2),
      R => '0'
    );
\det_signal.diff_env_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(3),
      Q => diff_env_E(3),
      R => '0'
    );
\det_signal.diff_env_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(4),
      Q => diff_env_E(4),
      R => '0'
    );
\det_signal.diff_env_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(5),
      Q => diff_env_E(5),
      R => '0'
    );
\det_signal.diff_env_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(6),
      Q => diff_env_E(6),
      R => '0'
    );
\det_signal.diff_env_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(7),
      Q => diff_env_E(7),
      R => '0'
    );
\det_signal.diff_env_E_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_E_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_env_E_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_env_E_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_env_E_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_env_E_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_env_E_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_env_E_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_env_E_reg[7]_i_1_n_7\,
      DI(7) => \det_signal.min_env_reg_n_0_[7]\,
      DI(6) => \det_signal.min_env_reg_n_0_[6]\,
      DI(5) => \det_signal.min_env_reg_n_0_[5]\,
      DI(4) => \det_signal.min_env_reg_n_0_[4]\,
      DI(3) => \det_signal.min_env_reg_n_0_[3]\,
      DI(2) => \det_signal.min_env_reg_n_0_[2]\,
      DI(1) => \det_signal.min_env_reg_n_0_[1]\,
      DI(0) => \det_signal.min_env_reg_n_0_[0]\,
      O(7 downto 0) => \det_signal.diff_env_E_reg0\(7 downto 0),
      S(7) => \det_signal.diff_env_E[7]_i_2_n_0\,
      S(6) => \det_signal.diff_env_E[7]_i_3_n_0\,
      S(5) => \det_signal.diff_env_E[7]_i_4_n_0\,
      S(4) => \det_signal.diff_env_E[7]_i_5_n_0\,
      S(3) => \det_signal.diff_env_E[7]_i_6_n_0\,
      S(2) => \det_signal.diff_env_E[7]_i_7_n_0\,
      S(1) => \det_signal.diff_env_E[7]_i_8_n_0\,
      S(0) => \det_signal.diff_env_E[7]_i_9_n_0\
    );
\det_signal.diff_env_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(8),
      Q => diff_env_E(8),
      R => '0'
    );
\det_signal.diff_env_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_E_reg0\(9),
      Q => diff_env_E(9),
      R => '0'
    );
\det_signal.diff_env_N[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[15]\,
      I1 => env_N(15),
      O => \det_signal.diff_env_N[15]_i_2_n_0\
    );
\det_signal.diff_env_N[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[14]\,
      I1 => env_N(14),
      O => \det_signal.diff_env_N[15]_i_3_n_0\
    );
\det_signal.diff_env_N[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[13]\,
      I1 => env_N(13),
      O => \det_signal.diff_env_N[15]_i_4_n_0\
    );
\det_signal.diff_env_N[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[12]\,
      I1 => env_N(12),
      O => \det_signal.diff_env_N[15]_i_5_n_0\
    );
\det_signal.diff_env_N[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[11]\,
      I1 => env_N(11),
      O => \det_signal.diff_env_N[15]_i_6_n_0\
    );
\det_signal.diff_env_N[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[10]\,
      I1 => env_N(10),
      O => \det_signal.diff_env_N[15]_i_7_n_0\
    );
\det_signal.diff_env_N[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[9]\,
      I1 => env_N(9),
      O => \det_signal.diff_env_N[15]_i_8_n_0\
    );
\det_signal.diff_env_N[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[8]\,
      I1 => env_N(8),
      O => \det_signal.diff_env_N[15]_i_9_n_0\
    );
\det_signal.diff_env_N[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_N(16),
      O => \det_signal.diff_env_N[16]_i_2_n_0\
    );
\det_signal.diff_env_N[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[7]\,
      I1 => env_N(7),
      O => \det_signal.diff_env_N[7]_i_2_n_0\
    );
\det_signal.diff_env_N[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[6]\,
      I1 => env_N(6),
      O => \det_signal.diff_env_N[7]_i_3_n_0\
    );
\det_signal.diff_env_N[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[5]\,
      I1 => env_N(5),
      O => \det_signal.diff_env_N[7]_i_4_n_0\
    );
\det_signal.diff_env_N[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[4]\,
      I1 => env_N(4),
      O => \det_signal.diff_env_N[7]_i_5_n_0\
    );
\det_signal.diff_env_N[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[3]\,
      I1 => env_N(3),
      O => \det_signal.diff_env_N[7]_i_6_n_0\
    );
\det_signal.diff_env_N[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[2]\,
      I1 => env_N(2),
      O => \det_signal.diff_env_N[7]_i_7_n_0\
    );
\det_signal.diff_env_N[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[1]\,
      I1 => env_N(1),
      O => \det_signal.diff_env_N[7]_i_8_n_0\
    );
\det_signal.diff_env_N[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[0]\,
      I1 => env_N(0),
      O => \det_signal.diff_env_N[7]_i_9_n_0\
    );
\det_signal.diff_env_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(0),
      Q => diff_env_N(0),
      R => '0'
    );
\det_signal.diff_env_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(10),
      Q => diff_env_N(10),
      R => '0'
    );
\det_signal.diff_env_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(11),
      Q => diff_env_N(11),
      R => '0'
    );
\det_signal.diff_env_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(12),
      Q => diff_env_N(12),
      R => '0'
    );
\det_signal.diff_env_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(13),
      Q => diff_env_N(13),
      R => '0'
    );
\det_signal.diff_env_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(14),
      Q => diff_env_N(14),
      R => '0'
    );
\det_signal.diff_env_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(15),
      Q => diff_env_N(15),
      R => '0'
    );
\det_signal.diff_env_N_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_N_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_N_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.diff_env_N_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.diff_env_N_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.diff_env_N_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.diff_env_N_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.diff_env_N_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.diff_env_N_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.diff_env_N_reg[15]_i_1_n_7\,
      DI(7) => \det_signal.min_env_reg_n_0_[15]\,
      DI(6) => \det_signal.min_env_reg_n_0_[14]\,
      DI(5) => \det_signal.min_env_reg_n_0_[13]\,
      DI(4) => \det_signal.min_env_reg_n_0_[12]\,
      DI(3) => \det_signal.min_env_reg_n_0_[11]\,
      DI(2) => \det_signal.min_env_reg_n_0_[10]\,
      DI(1) => \det_signal.min_env_reg_n_0_[9]\,
      DI(0) => \det_signal.min_env_reg_n_0_[8]\,
      O(7 downto 0) => \det_signal.diff_env_N_reg0\(15 downto 8),
      S(7) => \det_signal.diff_env_N[15]_i_2_n_0\,
      S(6) => \det_signal.diff_env_N[15]_i_3_n_0\,
      S(5) => \det_signal.diff_env_N[15]_i_4_n_0\,
      S(4) => \det_signal.diff_env_N[15]_i_5_n_0\,
      S(3) => \det_signal.diff_env_N[15]_i_6_n_0\,
      S(2) => \det_signal.diff_env_N[15]_i_7_n_0\,
      S(1) => \det_signal.diff_env_N[15]_i_8_n_0\,
      S(0) => \det_signal.diff_env_N[15]_i_9_n_0\
    );
\det_signal.diff_env_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(16),
      Q => diff_env_N(16),
      R => '0'
    );
\det_signal.diff_env_N_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_N_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => \det_signal.diff_env_N_reg0\(16),
      S(7 downto 1) => B"0000000",
      S(0) => \det_signal.diff_env_N[16]_i_2_n_0\
    );
\det_signal.diff_env_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(1),
      Q => diff_env_N(1),
      R => '0'
    );
\det_signal.diff_env_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(2),
      Q => diff_env_N(2),
      R => '0'
    );
\det_signal.diff_env_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(3),
      Q => diff_env_N(3),
      R => '0'
    );
\det_signal.diff_env_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(4),
      Q => diff_env_N(4),
      R => '0'
    );
\det_signal.diff_env_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(5),
      Q => diff_env_N(5),
      R => '0'
    );
\det_signal.diff_env_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(6),
      Q => diff_env_N(6),
      R => '0'
    );
\det_signal.diff_env_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(7),
      Q => diff_env_N(7),
      R => '0'
    );
\det_signal.diff_env_N_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_N_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_env_N_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_env_N_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_env_N_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_env_N_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_env_N_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_env_N_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_env_N_reg[7]_i_1_n_7\,
      DI(7) => \det_signal.min_env_reg_n_0_[7]\,
      DI(6) => \det_signal.min_env_reg_n_0_[6]\,
      DI(5) => \det_signal.min_env_reg_n_0_[5]\,
      DI(4) => \det_signal.min_env_reg_n_0_[4]\,
      DI(3) => \det_signal.min_env_reg_n_0_[3]\,
      DI(2) => \det_signal.min_env_reg_n_0_[2]\,
      DI(1) => \det_signal.min_env_reg_n_0_[1]\,
      DI(0) => \det_signal.min_env_reg_n_0_[0]\,
      O(7 downto 0) => \det_signal.diff_env_N_reg0\(7 downto 0),
      S(7) => \det_signal.diff_env_N[7]_i_2_n_0\,
      S(6) => \det_signal.diff_env_N[7]_i_3_n_0\,
      S(5) => \det_signal.diff_env_N[7]_i_4_n_0\,
      S(4) => \det_signal.diff_env_N[7]_i_5_n_0\,
      S(3) => \det_signal.diff_env_N[7]_i_6_n_0\,
      S(2) => \det_signal.diff_env_N[7]_i_7_n_0\,
      S(1) => \det_signal.diff_env_N[7]_i_8_n_0\,
      S(0) => \det_signal.diff_env_N[7]_i_9_n_0\
    );
\det_signal.diff_env_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(8),
      Q => diff_env_N(8),
      R => '0'
    );
\det_signal.diff_env_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_N_reg0\(9),
      Q => diff_env_N(9),
      R => '0'
    );
\det_signal.diff_env_W[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[15]\,
      I1 => env_W(15),
      O => \det_signal.diff_env_W[15]_i_2_n_0\
    );
\det_signal.diff_env_W[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[14]\,
      I1 => env_W(14),
      O => \det_signal.diff_env_W[15]_i_3_n_0\
    );
\det_signal.diff_env_W[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[13]\,
      I1 => env_W(13),
      O => \det_signal.diff_env_W[15]_i_4_n_0\
    );
\det_signal.diff_env_W[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[12]\,
      I1 => env_W(12),
      O => \det_signal.diff_env_W[15]_i_5_n_0\
    );
\det_signal.diff_env_W[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[11]\,
      I1 => env_W(11),
      O => \det_signal.diff_env_W[15]_i_6_n_0\
    );
\det_signal.diff_env_W[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[10]\,
      I1 => env_W(10),
      O => \det_signal.diff_env_W[15]_i_7_n_0\
    );
\det_signal.diff_env_W[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[9]\,
      I1 => env_W(9),
      O => \det_signal.diff_env_W[15]_i_8_n_0\
    );
\det_signal.diff_env_W[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[8]\,
      I1 => env_W(8),
      O => \det_signal.diff_env_W[15]_i_9_n_0\
    );
\det_signal.diff_env_W[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_W(16),
      O => \det_signal.diff_env_W[16]_i_2_n_0\
    );
\det_signal.diff_env_W[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[7]\,
      I1 => env_W(7),
      O => \det_signal.diff_env_W[7]_i_2_n_0\
    );
\det_signal.diff_env_W[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[6]\,
      I1 => env_W(6),
      O => \det_signal.diff_env_W[7]_i_3_n_0\
    );
\det_signal.diff_env_W[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[5]\,
      I1 => env_W(5),
      O => \det_signal.diff_env_W[7]_i_4_n_0\
    );
\det_signal.diff_env_W[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[4]\,
      I1 => env_W(4),
      O => \det_signal.diff_env_W[7]_i_5_n_0\
    );
\det_signal.diff_env_W[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[3]\,
      I1 => env_W(3),
      O => \det_signal.diff_env_W[7]_i_6_n_0\
    );
\det_signal.diff_env_W[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[2]\,
      I1 => env_W(2),
      O => \det_signal.diff_env_W[7]_i_7_n_0\
    );
\det_signal.diff_env_W[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[1]\,
      I1 => env_W(1),
      O => \det_signal.diff_env_W[7]_i_8_n_0\
    );
\det_signal.diff_env_W[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \det_signal.min_env_reg_n_0_[0]\,
      I1 => env_W(0),
      O => \det_signal.diff_env_W[7]_i_9_n_0\
    );
\det_signal.diff_env_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(0),
      Q => diff_env_W(0),
      R => '0'
    );
\det_signal.diff_env_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(10),
      Q => diff_env_W(10),
      R => '0'
    );
\det_signal.diff_env_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(11),
      Q => diff_env_W(11),
      R => '0'
    );
\det_signal.diff_env_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(12),
      Q => diff_env_W(12),
      R => '0'
    );
\det_signal.diff_env_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(13),
      Q => diff_env_W(13),
      R => '0'
    );
\det_signal.diff_env_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(14),
      Q => diff_env_W(14),
      R => '0'
    );
\det_signal.diff_env_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(15),
      Q => diff_env_W(15),
      R => '0'
    );
\det_signal.diff_env_W_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_W_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_W_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.diff_env_W_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.diff_env_W_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.diff_env_W_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.diff_env_W_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.diff_env_W_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.diff_env_W_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.diff_env_W_reg[15]_i_1_n_7\,
      DI(7) => \det_signal.min_env_reg_n_0_[15]\,
      DI(6) => \det_signal.min_env_reg_n_0_[14]\,
      DI(5) => \det_signal.min_env_reg_n_0_[13]\,
      DI(4) => \det_signal.min_env_reg_n_0_[12]\,
      DI(3) => \det_signal.min_env_reg_n_0_[11]\,
      DI(2) => \det_signal.min_env_reg_n_0_[10]\,
      DI(1) => \det_signal.min_env_reg_n_0_[9]\,
      DI(0) => \det_signal.min_env_reg_n_0_[8]\,
      O(7 downto 0) => \det_signal.diff_env_W_reg0\(15 downto 8),
      S(7) => \det_signal.diff_env_W[15]_i_2_n_0\,
      S(6) => \det_signal.diff_env_W[15]_i_3_n_0\,
      S(5) => \det_signal.diff_env_W[15]_i_4_n_0\,
      S(4) => \det_signal.diff_env_W[15]_i_5_n_0\,
      S(3) => \det_signal.diff_env_W[15]_i_6_n_0\,
      S(2) => \det_signal.diff_env_W[15]_i_7_n_0\,
      S(1) => \det_signal.diff_env_W[15]_i_8_n_0\,
      S(0) => \det_signal.diff_env_W[15]_i_9_n_0\
    );
\det_signal.diff_env_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(16),
      Q => diff_env_W(16),
      R => '0'
    );
\det_signal.diff_env_W_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_env_W_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => \det_signal.diff_env_W_reg0\(16),
      S(7 downto 1) => B"0000000",
      S(0) => \det_signal.diff_env_W[16]_i_2_n_0\
    );
\det_signal.diff_env_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(1),
      Q => diff_env_W(1),
      R => '0'
    );
\det_signal.diff_env_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(2),
      Q => diff_env_W(2),
      R => '0'
    );
\det_signal.diff_env_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(3),
      Q => diff_env_W(3),
      R => '0'
    );
\det_signal.diff_env_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(4),
      Q => diff_env_W(4),
      R => '0'
    );
\det_signal.diff_env_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(5),
      Q => diff_env_W(5),
      R => '0'
    );
\det_signal.diff_env_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(6),
      Q => diff_env_W(6),
      R => '0'
    );
\det_signal.diff_env_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(7),
      Q => diff_env_W(7),
      R => '0'
    );
\det_signal.diff_env_W_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_env_W_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_env_W_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_env_W_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_env_W_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_env_W_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_env_W_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_env_W_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_env_W_reg[7]_i_1_n_7\,
      DI(7) => \det_signal.min_env_reg_n_0_[7]\,
      DI(6) => \det_signal.min_env_reg_n_0_[6]\,
      DI(5) => \det_signal.min_env_reg_n_0_[5]\,
      DI(4) => \det_signal.min_env_reg_n_0_[4]\,
      DI(3) => \det_signal.min_env_reg_n_0_[3]\,
      DI(2) => \det_signal.min_env_reg_n_0_[2]\,
      DI(1) => \det_signal.min_env_reg_n_0_[1]\,
      DI(0) => \det_signal.min_env_reg_n_0_[0]\,
      O(7 downto 0) => \det_signal.diff_env_W_reg0\(7 downto 0),
      S(7) => \det_signal.diff_env_W[7]_i_2_n_0\,
      S(6) => \det_signal.diff_env_W[7]_i_3_n_0\,
      S(5) => \det_signal.diff_env_W[7]_i_4_n_0\,
      S(4) => \det_signal.diff_env_W[7]_i_5_n_0\,
      S(3) => \det_signal.diff_env_W[7]_i_6_n_0\,
      S(2) => \det_signal.diff_env_W[7]_i_7_n_0\,
      S(1) => \det_signal.diff_env_W[7]_i_8_n_0\,
      S(0) => \det_signal.diff_env_W[7]_i_9_n_0\
    );
\det_signal.diff_env_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(8),
      Q => diff_env_W(8),
      R => '0'
    );
\det_signal.diff_env_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_env_W_reg0\(9),
      Q => diff_env_W(9),
      R => '0'
    );
\det_signal.diff_err_EW[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => err_EW(12),
      O => \det_signal.diff_err_EW[12]_i_2_n_0\
    );
\det_signal.diff_err_EW[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(11),
      I1 => \det_signal.max_doa_diff_reg_n_0_[11]\,
      O => \det_signal.diff_err_EW[12]_i_3_n_0\
    );
\det_signal.diff_err_EW[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(10),
      I1 => \det_signal.max_doa_diff_reg_n_0_[10]\,
      O => \det_signal.diff_err_EW[12]_i_4_n_0\
    );
\det_signal.diff_err_EW[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(9),
      I1 => \det_signal.max_doa_diff_reg_n_0_[9]\,
      O => \det_signal.diff_err_EW[12]_i_5_n_0\
    );
\det_signal.diff_err_EW[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(8),
      I1 => \det_signal.max_doa_diff_reg_n_0_[8]\,
      O => \det_signal.diff_err_EW[12]_i_6_n_0\
    );
\det_signal.diff_err_EW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(7),
      I1 => \det_signal.max_doa_diff_reg_n_0_[7]\,
      O => \det_signal.diff_err_EW[7]_i_2_n_0\
    );
\det_signal.diff_err_EW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(6),
      I1 => \det_signal.max_doa_diff_reg_n_0_[6]\,
      O => \det_signal.diff_err_EW[7]_i_3_n_0\
    );
\det_signal.diff_err_EW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(5),
      I1 => \det_signal.max_doa_diff_reg_n_0_[5]\,
      O => \det_signal.diff_err_EW[7]_i_4_n_0\
    );
\det_signal.diff_err_EW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(4),
      I1 => \det_signal.max_doa_diff_reg_n_0_[4]\,
      O => \det_signal.diff_err_EW[7]_i_5_n_0\
    );
\det_signal.diff_err_EW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(3),
      I1 => \det_signal.max_doa_diff_reg_n_0_[3]\,
      O => \det_signal.diff_err_EW[7]_i_6_n_0\
    );
\det_signal.diff_err_EW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(2),
      I1 => \det_signal.max_doa_diff_reg_n_0_[2]\,
      O => \det_signal.diff_err_EW[7]_i_7_n_0\
    );
\det_signal.diff_err_EW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(1),
      I1 => \det_signal.max_doa_diff_reg_n_0_[1]\,
      O => \det_signal.diff_err_EW[7]_i_8_n_0\
    );
\det_signal.diff_err_EW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_EW(0),
      I1 => \det_signal.max_doa_diff_reg_n_0_[0]\,
      O => \det_signal.diff_err_EW[7]_i_9_n_0\
    );
\det_signal.diff_err_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(0),
      Q => diff_err_EW(0),
      R => '0'
    );
\det_signal.diff_err_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(10),
      Q => diff_err_EW(10),
      R => '0'
    );
\det_signal.diff_err_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(11),
      Q => diff_err_EW(11),
      R => '0'
    );
\det_signal.diff_err_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(12),
      Q => diff_err_EW(12),
      R => '0'
    );
\det_signal.diff_err_EW_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_err_EW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_det_signal.diff_err_EW_reg[12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \det_signal.diff_err_EW_reg[12]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_EW_reg[12]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_EW_reg[12]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_EW_reg[12]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => err_EW(11 downto 8),
      O(7 downto 5) => \NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => \det_signal.diff_err_EW_reg00_out\(12 downto 8),
      S(7 downto 5) => B"000",
      S(4) => \det_signal.diff_err_EW[12]_i_2_n_0\,
      S(3) => \det_signal.diff_err_EW[12]_i_3_n_0\,
      S(2) => \det_signal.diff_err_EW[12]_i_4_n_0\,
      S(1) => \det_signal.diff_err_EW[12]_i_5_n_0\,
      S(0) => \det_signal.diff_err_EW[12]_i_6_n_0\
    );
\det_signal.diff_err_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(1),
      Q => diff_err_EW(1),
      R => '0'
    );
\det_signal.diff_err_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(2),
      Q => diff_err_EW(2),
      R => '0'
    );
\det_signal.diff_err_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(3),
      Q => diff_err_EW(3),
      R => '0'
    );
\det_signal.diff_err_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(4),
      Q => diff_err_EW(4),
      R => '0'
    );
\det_signal.diff_err_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(5),
      Q => diff_err_EW(5),
      R => '0'
    );
\det_signal.diff_err_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(6),
      Q => diff_err_EW(6),
      R => '0'
    );
\det_signal.diff_err_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(7),
      Q => diff_err_EW(7),
      R => '0'
    );
\det_signal.diff_err_EW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_err_EW_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_err_EW_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_err_EW_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_err_EW_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_err_EW_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_EW_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_EW_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_EW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => err_EW(7 downto 0),
      O(7 downto 0) => \det_signal.diff_err_EW_reg00_out\(7 downto 0),
      S(7) => \det_signal.diff_err_EW[7]_i_2_n_0\,
      S(6) => \det_signal.diff_err_EW[7]_i_3_n_0\,
      S(5) => \det_signal.diff_err_EW[7]_i_4_n_0\,
      S(4) => \det_signal.diff_err_EW[7]_i_5_n_0\,
      S(3) => \det_signal.diff_err_EW[7]_i_6_n_0\,
      S(2) => \det_signal.diff_err_EW[7]_i_7_n_0\,
      S(1) => \det_signal.diff_err_EW[7]_i_8_n_0\,
      S(0) => \det_signal.diff_err_EW[7]_i_9_n_0\
    );
\det_signal.diff_err_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(8),
      Q => diff_err_EW(8),
      R => '0'
    );
\det_signal.diff_err_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_EW_reg00_out\(9),
      Q => diff_err_EW(9),
      R => '0'
    );
\det_signal.diff_err_NE[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => err_NE(12),
      O => \det_signal.diff_err_NE[12]_i_2_n_0\
    );
\det_signal.diff_err_NE[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(11),
      I1 => \det_signal.max_doa_diff_reg_n_0_[11]\,
      O => \det_signal.diff_err_NE[12]_i_3_n_0\
    );
\det_signal.diff_err_NE[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(10),
      I1 => \det_signal.max_doa_diff_reg_n_0_[10]\,
      O => \det_signal.diff_err_NE[12]_i_4_n_0\
    );
\det_signal.diff_err_NE[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(9),
      I1 => \det_signal.max_doa_diff_reg_n_0_[9]\,
      O => \det_signal.diff_err_NE[12]_i_5_n_0\
    );
\det_signal.diff_err_NE[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(8),
      I1 => \det_signal.max_doa_diff_reg_n_0_[8]\,
      O => \det_signal.diff_err_NE[12]_i_6_n_0\
    );
\det_signal.diff_err_NE[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(7),
      I1 => \det_signal.max_doa_diff_reg_n_0_[7]\,
      O => \det_signal.diff_err_NE[7]_i_2_n_0\
    );
\det_signal.diff_err_NE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(6),
      I1 => \det_signal.max_doa_diff_reg_n_0_[6]\,
      O => \det_signal.diff_err_NE[7]_i_3_n_0\
    );
\det_signal.diff_err_NE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(5),
      I1 => \det_signal.max_doa_diff_reg_n_0_[5]\,
      O => \det_signal.diff_err_NE[7]_i_4_n_0\
    );
\det_signal.diff_err_NE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(4),
      I1 => \det_signal.max_doa_diff_reg_n_0_[4]\,
      O => \det_signal.diff_err_NE[7]_i_5_n_0\
    );
\det_signal.diff_err_NE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(3),
      I1 => \det_signal.max_doa_diff_reg_n_0_[3]\,
      O => \det_signal.diff_err_NE[7]_i_6_n_0\
    );
\det_signal.diff_err_NE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(2),
      I1 => \det_signal.max_doa_diff_reg_n_0_[2]\,
      O => \det_signal.diff_err_NE[7]_i_7_n_0\
    );
\det_signal.diff_err_NE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(1),
      I1 => \det_signal.max_doa_diff_reg_n_0_[1]\,
      O => \det_signal.diff_err_NE[7]_i_8_n_0\
    );
\det_signal.diff_err_NE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NE(0),
      I1 => \det_signal.max_doa_diff_reg_n_0_[0]\,
      O => \det_signal.diff_err_NE[7]_i_9_n_0\
    );
\det_signal.diff_err_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(0),
      Q => diff_err_NE(0),
      R => '0'
    );
\det_signal.diff_err_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(10),
      Q => diff_err_NE(10),
      R => '0'
    );
\det_signal.diff_err_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(11),
      Q => diff_err_NE(11),
      R => '0'
    );
\det_signal.diff_err_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(12),
      Q => diff_err_NE(12),
      R => '0'
    );
\det_signal.diff_err_NE_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_err_NE_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_det_signal.diff_err_NE_reg[12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \det_signal.diff_err_NE_reg[12]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_NE_reg[12]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_NE_reg[12]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_NE_reg[12]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => err_NE(11 downto 8),
      O(7 downto 5) => \NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => \det_signal.diff_err_NE_reg0\(12 downto 8),
      S(7 downto 5) => B"000",
      S(4) => \det_signal.diff_err_NE[12]_i_2_n_0\,
      S(3) => \det_signal.diff_err_NE[12]_i_3_n_0\,
      S(2) => \det_signal.diff_err_NE[12]_i_4_n_0\,
      S(1) => \det_signal.diff_err_NE[12]_i_5_n_0\,
      S(0) => \det_signal.diff_err_NE[12]_i_6_n_0\
    );
\det_signal.diff_err_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(1),
      Q => diff_err_NE(1),
      R => '0'
    );
\det_signal.diff_err_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(2),
      Q => diff_err_NE(2),
      R => '0'
    );
\det_signal.diff_err_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(3),
      Q => diff_err_NE(3),
      R => '0'
    );
\det_signal.diff_err_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(4),
      Q => diff_err_NE(4),
      R => '0'
    );
\det_signal.diff_err_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(5),
      Q => diff_err_NE(5),
      R => '0'
    );
\det_signal.diff_err_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(6),
      Q => diff_err_NE(6),
      R => '0'
    );
\det_signal.diff_err_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(7),
      Q => diff_err_NE(7),
      R => '0'
    );
\det_signal.diff_err_NE_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_err_NE_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_err_NE_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_err_NE_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_err_NE_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_err_NE_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_NE_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_NE_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_NE_reg[7]_i_1_n_7\,
      DI(7 downto 0) => err_NE(7 downto 0),
      O(7 downto 0) => \det_signal.diff_err_NE_reg0\(7 downto 0),
      S(7) => \det_signal.diff_err_NE[7]_i_2_n_0\,
      S(6) => \det_signal.diff_err_NE[7]_i_3_n_0\,
      S(5) => \det_signal.diff_err_NE[7]_i_4_n_0\,
      S(4) => \det_signal.diff_err_NE[7]_i_5_n_0\,
      S(3) => \det_signal.diff_err_NE[7]_i_6_n_0\,
      S(2) => \det_signal.diff_err_NE[7]_i_7_n_0\,
      S(1) => \det_signal.diff_err_NE[7]_i_8_n_0\,
      S(0) => \det_signal.diff_err_NE[7]_i_9_n_0\
    );
\det_signal.diff_err_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(8),
      Q => diff_err_NE(8),
      R => '0'
    );
\det_signal.diff_err_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NE_reg0\(9),
      Q => diff_err_NE(9),
      R => '0'
    );
\det_signal.diff_err_NW[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => err_NW(12),
      O => \det_signal.diff_err_NW[12]_i_2_n_0\
    );
\det_signal.diff_err_NW[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(11),
      I1 => \det_signal.max_doa_diff_reg_n_0_[11]\,
      O => \det_signal.diff_err_NW[12]_i_3_n_0\
    );
\det_signal.diff_err_NW[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(10),
      I1 => \det_signal.max_doa_diff_reg_n_0_[10]\,
      O => \det_signal.diff_err_NW[12]_i_4_n_0\
    );
\det_signal.diff_err_NW[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(9),
      I1 => \det_signal.max_doa_diff_reg_n_0_[9]\,
      O => \det_signal.diff_err_NW[12]_i_5_n_0\
    );
\det_signal.diff_err_NW[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(8),
      I1 => \det_signal.max_doa_diff_reg_n_0_[8]\,
      O => \det_signal.diff_err_NW[12]_i_6_n_0\
    );
\det_signal.diff_err_NW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(7),
      I1 => \det_signal.max_doa_diff_reg_n_0_[7]\,
      O => \det_signal.diff_err_NW[7]_i_2_n_0\
    );
\det_signal.diff_err_NW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(6),
      I1 => \det_signal.max_doa_diff_reg_n_0_[6]\,
      O => \det_signal.diff_err_NW[7]_i_3_n_0\
    );
\det_signal.diff_err_NW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(5),
      I1 => \det_signal.max_doa_diff_reg_n_0_[5]\,
      O => \det_signal.diff_err_NW[7]_i_4_n_0\
    );
\det_signal.diff_err_NW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(4),
      I1 => \det_signal.max_doa_diff_reg_n_0_[4]\,
      O => \det_signal.diff_err_NW[7]_i_5_n_0\
    );
\det_signal.diff_err_NW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(3),
      I1 => \det_signal.max_doa_diff_reg_n_0_[3]\,
      O => \det_signal.diff_err_NW[7]_i_6_n_0\
    );
\det_signal.diff_err_NW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(2),
      I1 => \det_signal.max_doa_diff_reg_n_0_[2]\,
      O => \det_signal.diff_err_NW[7]_i_7_n_0\
    );
\det_signal.diff_err_NW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(1),
      I1 => \det_signal.max_doa_diff_reg_n_0_[1]\,
      O => \det_signal.diff_err_NW[7]_i_8_n_0\
    );
\det_signal.diff_err_NW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => err_NW(0),
      I1 => \det_signal.max_doa_diff_reg_n_0_[0]\,
      O => \det_signal.diff_err_NW[7]_i_9_n_0\
    );
\det_signal.diff_err_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(0),
      Q => diff_err_NW(0),
      R => '0'
    );
\det_signal.diff_err_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(10),
      Q => diff_err_NW(10),
      R => '0'
    );
\det_signal.diff_err_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(11),
      Q => diff_err_NW(11),
      R => '0'
    );
\det_signal.diff_err_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(12),
      Q => diff_err_NW(12),
      R => '0'
    );
\det_signal.diff_err_NW_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.diff_err_NW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_det_signal.diff_err_NW_reg[12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \det_signal.diff_err_NW_reg[12]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_NW_reg[12]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_NW_reg[12]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_NW_reg[12]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => err_NW(11 downto 8),
      O(7 downto 5) => \NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => \det_signal.diff_err_NW_reg0\(12 downto 8),
      S(7 downto 5) => B"000",
      S(4) => \det_signal.diff_err_NW[12]_i_2_n_0\,
      S(3) => \det_signal.diff_err_NW[12]_i_3_n_0\,
      S(2) => \det_signal.diff_err_NW[12]_i_4_n_0\,
      S(1) => \det_signal.diff_err_NW[12]_i_5_n_0\,
      S(0) => \det_signal.diff_err_NW[12]_i_6_n_0\
    );
\det_signal.diff_err_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(1),
      Q => diff_err_NW(1),
      R => '0'
    );
\det_signal.diff_err_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(2),
      Q => diff_err_NW(2),
      R => '0'
    );
\det_signal.diff_err_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(3),
      Q => diff_err_NW(3),
      R => '0'
    );
\det_signal.diff_err_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(4),
      Q => diff_err_NW(4),
      R => '0'
    );
\det_signal.diff_err_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(5),
      Q => diff_err_NW(5),
      R => '0'
    );
\det_signal.diff_err_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(6),
      Q => diff_err_NW(6),
      R => '0'
    );
\det_signal.diff_err_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(7),
      Q => diff_err_NW(7),
      R => '0'
    );
\det_signal.diff_err_NW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \det_signal.diff_err_NW_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.diff_err_NW_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.diff_err_NW_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.diff_err_NW_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.diff_err_NW_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.diff_err_NW_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.diff_err_NW_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.diff_err_NW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => err_NW(7 downto 0),
      O(7 downto 0) => \det_signal.diff_err_NW_reg0\(7 downto 0),
      S(7) => \det_signal.diff_err_NW[7]_i_2_n_0\,
      S(6) => \det_signal.diff_err_NW[7]_i_3_n_0\,
      S(5) => \det_signal.diff_err_NW[7]_i_4_n_0\,
      S(4) => \det_signal.diff_err_NW[7]_i_5_n_0\,
      S(3) => \det_signal.diff_err_NW[7]_i_6_n_0\,
      S(2) => \det_signal.diff_err_NW[7]_i_7_n_0\,
      S(1) => \det_signal.diff_err_NW[7]_i_8_n_0\,
      S(0) => \det_signal.diff_err_NW[7]_i_9_n_0\
    );
\det_signal.diff_err_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(8),
      Q => diff_err_NW(8),
      R => '0'
    );
\det_signal.diff_err_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[0]__0\,
      D => \det_signal.diff_err_NW_reg0\(9),
      Q => diff_err_NW(9),
      R => '0'
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(0),
      Q => diff_phase_E(0),
      R => '0'
    );
\det_signal.diff_phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(10),
      Q => diff_phase_E(10),
      R => '0'
    );
\det_signal.diff_phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(11),
      Q => diff_phase_E(11),
      R => '0'
    );
\det_signal.diff_phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(12),
      Q => diff_phase_E(12),
      R => '0'
    );
\det_signal.diff_phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(13),
      Q => diff_phase_E(13),
      R => '0'
    );
\det_signal.diff_phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(14),
      Q => diff_phase_E(14),
      R => '0'
    );
\det_signal.diff_phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(15),
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
      O(7 downto 0) => \det_signal.diff_phase_E_reg02_out\(15 downto 8),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(16),
      Q => diff_phase_E(16),
      R => '0'
    );
\det_signal.diff_phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(17),
      Q => diff_phase_E(17),
      R => '0'
    );
\det_signal.diff_phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(18),
      Q => diff_phase_E(18),
      R => '0'
    );
\det_signal.diff_phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(19),
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
      O(3 downto 0) => \det_signal.diff_phase_E_reg02_out\(19 downto 16),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(1),
      Q => diff_phase_E(1),
      R => '0'
    );
\det_signal.diff_phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(2),
      Q => diff_phase_E(2),
      R => '0'
    );
\det_signal.diff_phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(3),
      Q => diff_phase_E(3),
      R => '0'
    );
\det_signal.diff_phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(4),
      Q => diff_phase_E(4),
      R => '0'
    );
\det_signal.diff_phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(5),
      Q => diff_phase_E(5),
      R => '0'
    );
\det_signal.diff_phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(6),
      Q => diff_phase_E(6),
      R => '0'
    );
\det_signal.diff_phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(7),
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
      O(7 downto 0) => \det_signal.diff_phase_E_reg02_out\(7 downto 0),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(8),
      Q => diff_phase_E(8),
      R => '0'
    );
\det_signal.diff_phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_E_reg02_out\(9),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(0),
      Q => diff_phase_N(0),
      R => '0'
    );
\det_signal.diff_phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(10),
      Q => diff_phase_N(10),
      R => '0'
    );
\det_signal.diff_phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(11),
      Q => diff_phase_N(11),
      R => '0'
    );
\det_signal.diff_phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(12),
      Q => diff_phase_N(12),
      R => '0'
    );
\det_signal.diff_phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(13),
      Q => diff_phase_N(13),
      R => '0'
    );
\det_signal.diff_phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(14),
      Q => diff_phase_N(14),
      R => '0'
    );
\det_signal.diff_phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(15),
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
      O(7 downto 0) => \det_signal.diff_phase_N_reg04_out\(15 downto 8),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(16),
      Q => diff_phase_N(16),
      R => '0'
    );
\det_signal.diff_phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(17),
      Q => diff_phase_N(17),
      R => '0'
    );
\det_signal.diff_phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(18),
      Q => diff_phase_N(18),
      R => '0'
    );
\det_signal.diff_phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(19),
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
      O(3 downto 0) => \det_signal.diff_phase_N_reg04_out\(19 downto 16),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(1),
      Q => diff_phase_N(1),
      R => '0'
    );
\det_signal.diff_phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(2),
      Q => diff_phase_N(2),
      R => '0'
    );
\det_signal.diff_phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(3),
      Q => diff_phase_N(3),
      R => '0'
    );
\det_signal.diff_phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(4),
      Q => diff_phase_N(4),
      R => '0'
    );
\det_signal.diff_phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(5),
      Q => diff_phase_N(5),
      R => '0'
    );
\det_signal.diff_phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(6),
      Q => diff_phase_N(6),
      R => '0'
    );
\det_signal.diff_phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(7),
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
      O(7 downto 0) => \det_signal.diff_phase_N_reg04_out\(7 downto 0),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(8),
      Q => diff_phase_N(8),
      R => '0'
    );
\det_signal.diff_phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_N_reg04_out\(9),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(0),
      Q => diff_phase_W(0),
      R => '0'
    );
\det_signal.diff_phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(10),
      Q => diff_phase_W(10),
      R => '0'
    );
\det_signal.diff_phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(11),
      Q => diff_phase_W(11),
      R => '0'
    );
\det_signal.diff_phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(12),
      Q => diff_phase_W(12),
      R => '0'
    );
\det_signal.diff_phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(13),
      Q => diff_phase_W(13),
      R => '0'
    );
\det_signal.diff_phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(14),
      Q => diff_phase_W(14),
      R => '0'
    );
\det_signal.diff_phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(15),
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
      O(7 downto 0) => \det_signal.diff_phase_W_reg00_out\(15 downto 8),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(16),
      Q => diff_phase_W(16),
      R => '0'
    );
\det_signal.diff_phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(17),
      Q => diff_phase_W(17),
      R => '0'
    );
\det_signal.diff_phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(18),
      Q => diff_phase_W(18),
      R => '0'
    );
\det_signal.diff_phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(19),
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
      O(3 downto 0) => \det_signal.diff_phase_W_reg00_out\(19 downto 16),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(1),
      Q => diff_phase_W(1),
      R => '0'
    );
\det_signal.diff_phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(2),
      Q => diff_phase_W(2),
      R => '0'
    );
\det_signal.diff_phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(3),
      Q => diff_phase_W(3),
      R => '0'
    );
\det_signal.diff_phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(4),
      Q => diff_phase_W(4),
      R => '0'
    );
\det_signal.diff_phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(5),
      Q => diff_phase_W(5),
      R => '0'
    );
\det_signal.diff_phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(6),
      Q => diff_phase_W(6),
      R => '0'
    );
\det_signal.diff_phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(7),
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
      O(7 downto 0) => \det_signal.diff_phase_W_reg00_out\(7 downto 0),
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
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(8),
      Q => diff_phase_W(8),
      R => '0'
    );
\det_signal.diff_phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.diff_phase_W_reg00_out\(9),
      Q => diff_phase_W(9),
      R => '0'
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
\det_signal.err_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \det_signal.run_reg[2]__0\,
      I1 => has_signal,
      I2 => valid_count,
      I3 => err_ov,
      I4 => err_count(0),
      O => \det_signal.err_count[0]_i_1_n_0\
    );
\det_signal.err_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \det_signal.run_reg[2]__0\,
      I1 => valid_count,
      I2 => valid_err,
      I3 => valid_env,
      O => \det_signal.err_count[1]_i_1_n_0\
    );
\det_signal.err_count[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8288888888888888"
    )
        port map (
      I0 => \det_signal.run_reg[2]__0\,
      I1 => err_count(1),
      I2 => err_ov,
      I3 => valid_count,
      I4 => has_signal,
      I5 => err_count(0),
      O => \det_signal.err_count[1]_i_2_n_0\
    );
\det_signal.err_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.err_count[0]_i_1_n_0\,
      Q => err_count(0),
      R => \det_signal.err_count[1]_i_1_n_0\
    );
\det_signal.err_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.err_count[1]_i_2_n_0\,
      Q => err_count(1),
      R => \det_signal.err_count[1]_i_1_n_0\
    );
\det_signal.err_ov_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCCAAAA"
    )
        port map (
      I0 => err_ov,
      I1 => \det_signal.err_ov_i_2_n_0\,
      I2 => err_count(0),
      I3 => err_count(1),
      I4 => \det_signal.run_reg[1]__0\,
      O => \det_signal.err_ov_i_1_n_0\
    );
\det_signal.err_ov_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => '1',
      I1 => \det_signal.run_reg[1]__0\,
      O => \det_signal.err_ov_i_2_n_0\
    );
\det_signal.err_ov_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.err_ov_i_1_n_0\,
      Q => err_ov,
      R => '0'
    );
\det_signal.has_signal_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0200020002000"
    )
        port map (
      I0 => \det_signal.run_reg[2]__0\,
      I1 => err_ov,
      I2 => valid_count,
      I3 => has_signal,
      I4 => valid_env,
      I5 => valid_err,
      O => has_signal4_out
    );
\det_signal.has_signal_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => has_signal4_out,
      Q => has_signal,
      R => '0'
    );
\det_signal.max_doa_diff[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => config_wr,
      I1 => \det_signal.max_doa_diff[11]_i_2_n_0\,
      I2 => config_adr(2),
      I3 => config_adr(0),
      I4 => config_adr(1),
      O => max_doa_diff
    );
\det_signal.max_doa_diff[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => config_adr(7),
      I1 => config_adr(4),
      I2 => config_adr(3),
      I3 => config_adr(6),
      I4 => config_adr(5),
      O => \det_signal.max_doa_diff[11]_i_2_n_0\
    );
\det_signal.max_doa_diff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(0),
      Q => \det_signal.max_doa_diff_reg_n_0_[0]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(10),
      Q => \det_signal.max_doa_diff_reg_n_0_[10]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(11),
      Q => \det_signal.max_doa_diff_reg_n_0_[11]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(1),
      Q => \det_signal.max_doa_diff_reg_n_0_[1]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(2),
      Q => \det_signal.max_doa_diff_reg_n_0_[2]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(3),
      Q => \det_signal.max_doa_diff_reg_n_0_[3]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(4),
      Q => \det_signal.max_doa_diff_reg_n_0_[4]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(5),
      Q => \det_signal.max_doa_diff_reg_n_0_[5]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(6),
      Q => \det_signal.max_doa_diff_reg_n_0_[6]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(7),
      Q => \det_signal.max_doa_diff_reg_n_0_[7]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(8),
      Q => \det_signal.max_doa_diff_reg_n_0_[8]\,
      R => '0'
    );
\det_signal.max_doa_diff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_doa_diff,
      D => config_data(9),
      Q => \det_signal.max_doa_diff_reg_n_0_[9]\,
      R => '0'
    );
\det_signal.min_env[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => config_wr,
      I1 => \det_signal.max_doa_diff[11]_i_2_n_0\,
      I2 => config_adr(1),
      I3 => config_adr(0),
      I4 => config_adr(2),
      O => min_env
    );
\det_signal.min_env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(0),
      Q => \det_signal.min_env_reg_n_0_[0]\,
      R => '0'
    );
\det_signal.min_env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(10),
      Q => \det_signal.min_env_reg_n_0_[10]\,
      R => '0'
    );
\det_signal.min_env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(11),
      Q => \det_signal.min_env_reg_n_0_[11]\,
      R => '0'
    );
\det_signal.min_env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(12),
      Q => \det_signal.min_env_reg_n_0_[12]\,
      R => '0'
    );
\det_signal.min_env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(13),
      Q => \det_signal.min_env_reg_n_0_[13]\,
      R => '0'
    );
\det_signal.min_env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(14),
      Q => \det_signal.min_env_reg_n_0_[14]\,
      R => '0'
    );
\det_signal.min_env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(15),
      Q => \det_signal.min_env_reg_n_0_[15]\,
      R => '0'
    );
\det_signal.min_env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(1),
      Q => \det_signal.min_env_reg_n_0_[1]\,
      R => '0'
    );
\det_signal.min_env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(2),
      Q => \det_signal.min_env_reg_n_0_[2]\,
      R => '0'
    );
\det_signal.min_env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(3),
      Q => \det_signal.min_env_reg_n_0_[3]\,
      R => '0'
    );
\det_signal.min_env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(4),
      Q => \det_signal.min_env_reg_n_0_[4]\,
      R => '0'
    );
\det_signal.min_env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(5),
      Q => \det_signal.min_env_reg_n_0_[5]\,
      R => '0'
    );
\det_signal.min_env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(6),
      Q => \det_signal.min_env_reg_n_0_[6]\,
      R => '0'
    );
\det_signal.min_env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(7),
      Q => \det_signal.min_env_reg_n_0_[7]\,
      R => '0'
    );
\det_signal.min_env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(8),
      Q => \det_signal.min_env_reg_n_0_[8]\,
      R => '0'
    );
\det_signal.min_env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env,
      D => config_data(9),
      Q => \det_signal.min_env_reg_n_0_[9]\,
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
\det_signal.proc_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => '1',
      Q => proc_done,
      R => '0'
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
      Q => \det_signal.run_reg[1]__0\,
      R => '0'
    );
\det_signal.run_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.run_reg[1]__0\,
      Q => \det_signal.run_reg[2]__0\,
      R => '0'
    );
\det_signal.sample_counter[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \det_signal.run_reg[2]__0\,
      O => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(0),
      O => \det_signal.sample_counter[7]_i_2_n_0\
    );
\det_signal.sample_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[7]_i_1_n_15\,
      Q => sample_counter(0),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[15]_i_1_n_13\,
      Q => sample_counter(10),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[15]_i_1_n_12\,
      Q => sample_counter(11),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[15]_i_1_n_11\,
      Q => sample_counter(12),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[15]_i_1_n_10\,
      Q => sample_counter(13),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[15]_i_1_n_9\,
      Q => sample_counter(14),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[15]_i_1_n_8\,
      Q => sample_counter(15),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.sample_counter_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.sample_counter_reg[15]_i_1_n_0\,
      CO(6) => \det_signal.sample_counter_reg[15]_i_1_n_1\,
      CO(5) => \det_signal.sample_counter_reg[15]_i_1_n_2\,
      CO(4) => \det_signal.sample_counter_reg[15]_i_1_n_3\,
      CO(3) => \det_signal.sample_counter_reg[15]_i_1_n_4\,
      CO(2) => \det_signal.sample_counter_reg[15]_i_1_n_5\,
      CO(1) => \det_signal.sample_counter_reg[15]_i_1_n_6\,
      CO(0) => \det_signal.sample_counter_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.sample_counter_reg[15]_i_1_n_8\,
      O(6) => \det_signal.sample_counter_reg[15]_i_1_n_9\,
      O(5) => \det_signal.sample_counter_reg[15]_i_1_n_10\,
      O(4) => \det_signal.sample_counter_reg[15]_i_1_n_11\,
      O(3) => \det_signal.sample_counter_reg[15]_i_1_n_12\,
      O(2) => \det_signal.sample_counter_reg[15]_i_1_n_13\,
      O(1) => \det_signal.sample_counter_reg[15]_i_1_n_14\,
      O(0) => \det_signal.sample_counter_reg[15]_i_1_n_15\,
      S(7 downto 0) => sample_counter(15 downto 8)
    );
\det_signal.sample_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[23]_i_1_n_15\,
      Q => sample_counter(16),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[23]_i_1_n_14\,
      Q => sample_counter(17),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[23]_i_1_n_13\,
      Q => sample_counter(18),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[23]_i_1_n_12\,
      Q => sample_counter(19),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[7]_i_1_n_14\,
      Q => sample_counter(1),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[23]_i_1_n_11\,
      Q => sample_counter(20),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[23]_i_1_n_10\,
      Q => sample_counter(21),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[23]_i_1_n_9\,
      Q => sample_counter(22),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[23]_i_1_n_8\,
      Q => sample_counter(23),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.sample_counter_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \det_signal.sample_counter_reg[23]_i_1_n_0\,
      CO(6) => \det_signal.sample_counter_reg[23]_i_1_n_1\,
      CO(5) => \det_signal.sample_counter_reg[23]_i_1_n_2\,
      CO(4) => \det_signal.sample_counter_reg[23]_i_1_n_3\,
      CO(3) => \det_signal.sample_counter_reg[23]_i_1_n_4\,
      CO(2) => \det_signal.sample_counter_reg[23]_i_1_n_5\,
      CO(1) => \det_signal.sample_counter_reg[23]_i_1_n_6\,
      CO(0) => \det_signal.sample_counter_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.sample_counter_reg[23]_i_1_n_8\,
      O(6) => \det_signal.sample_counter_reg[23]_i_1_n_9\,
      O(5) => \det_signal.sample_counter_reg[23]_i_1_n_10\,
      O(4) => \det_signal.sample_counter_reg[23]_i_1_n_11\,
      O(3) => \det_signal.sample_counter_reg[23]_i_1_n_12\,
      O(2) => \det_signal.sample_counter_reg[23]_i_1_n_13\,
      O(1) => \det_signal.sample_counter_reg[23]_i_1_n_14\,
      O(0) => \det_signal.sample_counter_reg[23]_i_1_n_15\,
      S(7 downto 0) => sample_counter(23 downto 16)
    );
\det_signal.sample_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[31]_i_2_n_15\,
      Q => sample_counter(24),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[31]_i_2_n_14\,
      Q => sample_counter(25),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[31]_i_2_n_13\,
      Q => sample_counter(26),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[31]_i_2_n_12\,
      Q => sample_counter(27),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[31]_i_2_n_11\,
      Q => sample_counter(28),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[31]_i_2_n_10\,
      Q => sample_counter(29),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[7]_i_1_n_13\,
      Q => sample_counter(2),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[31]_i_2_n_9\,
      Q => sample_counter(30),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[31]_i_2_n_8\,
      Q => sample_counter(31),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \det_signal.sample_counter_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_det_signal.sample_counter_reg[31]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \det_signal.sample_counter_reg[31]_i_2_n_1\,
      CO(5) => \det_signal.sample_counter_reg[31]_i_2_n_2\,
      CO(4) => \det_signal.sample_counter_reg[31]_i_2_n_3\,
      CO(3) => \det_signal.sample_counter_reg[31]_i_2_n_4\,
      CO(2) => \det_signal.sample_counter_reg[31]_i_2_n_5\,
      CO(1) => \det_signal.sample_counter_reg[31]_i_2_n_6\,
      CO(0) => \det_signal.sample_counter_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \det_signal.sample_counter_reg[31]_i_2_n_8\,
      O(6) => \det_signal.sample_counter_reg[31]_i_2_n_9\,
      O(5) => \det_signal.sample_counter_reg[31]_i_2_n_10\,
      O(4) => \det_signal.sample_counter_reg[31]_i_2_n_11\,
      O(3) => \det_signal.sample_counter_reg[31]_i_2_n_12\,
      O(2) => \det_signal.sample_counter_reg[31]_i_2_n_13\,
      O(1) => \det_signal.sample_counter_reg[31]_i_2_n_14\,
      O(0) => \det_signal.sample_counter_reg[31]_i_2_n_15\,
      S(7 downto 0) => sample_counter(31 downto 24)
    );
\det_signal.sample_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[7]_i_1_n_12\,
      Q => sample_counter(3),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[7]_i_1_n_11\,
      Q => sample_counter(4),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[7]_i_1_n_10\,
      Q => sample_counter(5),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[7]_i_1_n_9\,
      Q => sample_counter(6),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[7]_i_1_n_8\,
      Q => sample_counter(7),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \det_signal.sample_counter_reg[7]_i_1_n_0\,
      CO(6) => \det_signal.sample_counter_reg[7]_i_1_n_1\,
      CO(5) => \det_signal.sample_counter_reg[7]_i_1_n_2\,
      CO(4) => \det_signal.sample_counter_reg[7]_i_1_n_3\,
      CO(3) => \det_signal.sample_counter_reg[7]_i_1_n_4\,
      CO(2) => \det_signal.sample_counter_reg[7]_i_1_n_5\,
      CO(1) => \det_signal.sample_counter_reg[7]_i_1_n_6\,
      CO(0) => \det_signal.sample_counter_reg[7]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => sample_counter(0),
      O(7) => \det_signal.sample_counter_reg[7]_i_1_n_8\,
      O(6) => \det_signal.sample_counter_reg[7]_i_1_n_9\,
      O(5) => \det_signal.sample_counter_reg[7]_i_1_n_10\,
      O(4) => \det_signal.sample_counter_reg[7]_i_1_n_11\,
      O(3) => \det_signal.sample_counter_reg[7]_i_1_n_12\,
      O(2) => \det_signal.sample_counter_reg[7]_i_1_n_13\,
      O(1) => \det_signal.sample_counter_reg[7]_i_1_n_14\,
      O(0) => \det_signal.sample_counter_reg[7]_i_1_n_15\,
      S(7 downto 1) => sample_counter(7 downto 1),
      S(0) => \det_signal.sample_counter[7]_i_2_n_0\
    );
\det_signal.sample_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[15]_i_1_n_15\,
      Q => sample_counter(8),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.sample_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.sample_counter_reg[15]_i_1_n_14\,
      Q => sample_counter(9),
      R => \det_signal.sample_counter[31]_i_1_n_0\
    );
\det_signal.signal_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(0),
      Q => \det_signal.signal_counter_reg_n_0_[0]\,
      R => '0'
    );
\det_signal.signal_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(1),
      Q => \det_signal.signal_counter_reg_n_0_[1]\,
      R => '0'
    );
\det_signal.signal_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(2),
      Q => \det_signal.signal_counter_reg_n_0_[2]\,
      R => '0'
    );
\det_signal.signal_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(3),
      Q => \det_signal.signal_counter_reg_n_0_[3]\,
      R => '0'
    );
\det_signal.signal_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(4),
      Q => \det_signal.signal_counter_reg_n_0_[4]\,
      R => '0'
    );
\det_signal.signal_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(5),
      Q => \det_signal.signal_counter_reg_n_0_[5]\,
      R => '0'
    );
\det_signal.signal_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(6),
      Q => \det_signal.signal_counter_reg_n_0_[6]\,
      R => '0'
    );
\det_signal.signal_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(7),
      Q => \det_signal.signal_counter_reg_n_0_[7]\,
      R => '0'
    );
\det_signal.signal_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(8),
      Q => \det_signal.signal_counter_reg_n_0_[8]\,
      R => '0'
    );
\det_signal.signal_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_signal,
      D => curr_signal_counter(9),
      Q => \det_signal.signal_counter_reg_n_0_[9]\,
      R => '0'
    );
\det_signal.signal_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => proc_signal,
      Q => \^signal_done\,
      R => '0'
    );
\det_signal.start_proc_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BFB000000000"
    )
        port map (
      I0 => err_ov,
      I1 => valid_count,
      I2 => has_signal,
      I3 => start_proc,
      I4 => err_count0,
      I5 => \det_signal.run_reg[2]__0\,
      O => \det_signal.start_proc_i_1_n_0\
    );
\det_signal.start_proc_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => valid_env,
      I1 => valid_err,
      I2 => valid_count,
      O => err_count0
    );
\det_signal.start_proc_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \det_signal.start_proc_i_1_n_0\,
      Q => start_proc,
      R => '0'
    );
\det_signal.valid_count_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => valid_count,
      I1 => \det_signal.run_reg[1]__0\,
      I2 => valid_count3_out,
      O => \det_signal.valid_count_i_1_n_0\
    );
\det_signal.valid_count_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \det_signal.run_reg[1]__0\,
      I1 => \det_signal.valid_count_i_3_n_0\,
      I2 => \det_signal.signal_counter_reg_n_0_[6]\,
      I3 => \det_signal.signal_counter_reg_n_0_[8]\,
      I4 => \det_signal.signal_counter_reg_n_0_[7]\,
      I5 => \det_signal.signal_counter_reg_n_0_[9]\,
      O => valid_count3_out
    );
\det_signal.valid_count_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \det_signal.signal_counter_reg_n_0_[0]\,
      I1 => \det_signal.signal_counter_reg_n_0_[2]\,
      I2 => \det_signal.signal_counter_reg_n_0_[1]\,
      I3 => \det_signal.signal_counter_reg_n_0_[3]\,
      I4 => \det_signal.signal_counter_reg_n_0_[5]\,
      I5 => \det_signal.signal_counter_reg_n_0_[4]\,
      O => \det_signal.valid_count_i_3_n_0\
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
      I0 => diff_env_N(16),
      I1 => diff_env_E(16),
      I2 => diff_env_W(16),
      O => \det_signal.valid_env_reg0\
    );
\det_signal.valid_env_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.valid_env_reg0\,
      Q => valid_env,
      R => '0'
    );
\det_signal.valid_err_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => diff_err_NE(12),
      I1 => diff_err_NW(12),
      I2 => diff_err_EW(12),
      O => \det_signal.valid_err_reg0\
    );
\det_signal.valid_err_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \det_signal.run_reg[1]__0\,
      D => \det_signal.valid_err_reg0\,
      Q => valid_err,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => err_NW(12)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => err_EW(12)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => err_NE(12)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => env_E(16)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => env_W(16)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => env_N(16)
    );
ila_i: component ps_comp_high_0_0_ila_3
     port map (
      clk => clk,
      probe0(0) => config_wr,
      probe1(7 downto 0) => config_adr(7 downto 0),
      probe10(19 downto 0) => phase_E(19 downto 0),
      probe11(16 downto 0) => diff_env_E(16 downto 0),
      probe12(19 downto 0) => diff_phase_E(19 downto 0),
      probe13(16 downto 0) => env_W(16 downto 0),
      probe14(19 downto 0) => phase_W(19 downto 0),
      probe15(16 downto 0) => diff_env_W(16 downto 0),
      probe16(19 downto 0) => diff_phase_W(19 downto 0),
      probe17(11 downto 0) => err_NE(11 downto 0),
      probe18(12 downto 0) => err_NW(12 downto 0),
      probe19(12 downto 0) => err_EW(12 downto 0),
      probe2(31 downto 0) => config_data(31 downto 0),
      probe20(12 downto 0) => diff_err_NE(12 downto 0),
      probe21(12 downto 0) => diff_err_NW(12 downto 0),
      probe22(12 downto 0) => diff_err_EW(12 downto 0),
      probe23(0) => valid_env,
      probe24(0) => valid_err,
      probe25(0) => valid_count,
      probe26(0) => err_ov,
      probe27(0) => has_signal,
      probe28(31 downto 0) => curr_signal_sample(31 downto 0),
      probe29(9 downto 0) => curr_signal_counter(9 downto 0),
      probe3(0) => active,
      probe30(1 downto 0) => err_count(1 downto 0),
      probe31(0) => acc_reset,
      probe32(0) => start_proc,
      probe33(0) => proc_signal,
      probe34(0) => proc_done,
      probe35(0) => \^signal_done\,
      probe4(31 downto 0) => sample_counter(31 downto 0),
      probe5(16 downto 0) => env_N(16 downto 0),
      probe6(19 downto 0) => phase_N(19 downto 0),
      probe7(16 downto 0) => diff_env_N(16 downto 0),
      probe8(19 downto 0) => diff_phase_N(19 downto 0),
      probe9(16 downto 0) => env_E(16 downto 0)
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
  signal NLW_det_sig_i_signal_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_det_sig_i_signal_sample_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute SOFT_HLUTNM of \comp_high.doa_delay[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \comp_high.doa_delay[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \comp_high.doa_delay[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \comp_high.doa_delay[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \comp_high.fifo_sample_delay[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \comp_high.fifo_sample_delay[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \comp_high.fifo_sample_delay[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \comp_high.fifo_sample_delay[4]_i_1\ : label is "soft_lutpair1";
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
      config_data(31 downto 0) => config_data_adr_out(39 downto 8),
      config_wr => det_sig_i_i_1_n_0,
      data(143 downto 0) => doa_data(143 downto 0),
      reset => '0',
      signal_counter(9 downto 0) => NLW_det_sig_i_signal_counter_UNCONNECTED(9 downto 0),
      signal_done => NLW_det_sig_i_signal_done_UNCONNECTED,
      signal_sample(31 downto 0) => NLW_det_sig_i_signal_sample_UNCONNECTED(31 downto 0)
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
