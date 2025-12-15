-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Dec 15 22:26:08 2025
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
entity ps_freq_low_46_0_0_phase_err is
  port (
    clk : in STD_LOGIC;
    active : in STD_LOGIC;
    env_in_N : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_in_N : in STD_LOGIC_VECTOR ( 19 downto 0 );
    env_in_E : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_in_E : in STD_LOGIC_VECTOR ( 19 downto 0 );
    env_in_W : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_in_W : in STD_LOGIC_VECTOR ( 19 downto 0 );
    valid : out STD_LOGIC;
    env_out_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_out_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_out_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_out_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_out_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_out_W : out STD_LOGIC_VECTOR ( 19 downto 0 );
    err_NE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    err_NW : out STD_LOGIC_VECTOR ( 11 downto 0 );
    err_EW : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_freq_low_46_0_0_phase_err : entity is "phase_err";
end ps_freq_low_46_0_0_phase_err;

architecture STRUCTURE of ps_freq_low_46_0_0_phase_err is
  signal diff_EW : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal diff_NE : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal diff_NW : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \phase_err.diff_EW[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[12]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[13]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[14]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[16]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[17]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[18]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[12]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[13]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[14]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[16]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[17]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[18]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[11]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[11]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[11]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[11]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[11]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[11]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[16]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[17]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[18]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[19]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[16]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[17]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[18]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[19]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[16]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[17]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[18]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[19]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.prev_NE[18]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[19]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[19]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[19]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[19]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[19]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[19]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[19]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[19]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[19]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[19]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[19]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[19]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[18]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[18]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[18]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[0]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[10]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[11]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[12]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[13]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[14]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[15]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[16]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[17]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[18]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[1]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[2]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[3]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[4]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[5]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[6]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[7]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[8]\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg_n_0_[9]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[18]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[18]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[18]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[0]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[10]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[11]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[1]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[2]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[3]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[4]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[5]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[6]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[7]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[8]\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg_n_0_[9]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[18]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[18]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[18]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[0]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[10]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[11]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[12]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[13]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[14]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[15]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[16]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[17]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[18]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[1]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[2]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[3]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[4]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[5]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[6]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[7]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[8]\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg_n_0_[9]\ : STD_LOGIC;
  signal prev_EW : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal prev_NE : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal prev_NW : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal raw_diff_EW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_diff_EW00_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_diff_NE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_diff_NE01_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_diff_NW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_diff_NW0 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_err_EW00_out : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal raw_err_NE02_out : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal raw_err_NW01_out : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal valid_1 : STD_LOGIC;
  signal valid_2 : STD_LOGIC;
  signal valid_3 : STD_LOGIC;
  signal \NLW_phase_err.raw_diff_EW_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_diff_EW_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_phase_err.raw_diff_NE_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_diff_NE_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_phase_err.raw_diff_NW_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_diff_NW_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_phase_err.raw_err_EW_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_phase_err.raw_err_EW_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_err_NE_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_phase_err.raw_err_NE_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_err_NW_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_phase_err.raw_err_NW_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \phase_err.diff_EW[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[10]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[12]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[14]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[16]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \phase_err.diff_EW[9]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \phase_err.diff_NE[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[17]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \phase_err.diff_NW[9]_i_1\ : label is "soft_lutpair10";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \phase_err.env_E_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name : string;
  attribute srl_name of \phase_err.env_E_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[9]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[9]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[9]_srl3 ";
  attribute SOFT_HLUTNM of \phase_err.err_EW[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \phase_err.err_EW[10]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \phase_err.err_EW[11]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \phase_err.err_EW[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \phase_err.err_EW[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \phase_err.err_EW[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \phase_err.err_EW[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \phase_err.err_EW[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \phase_err.err_EW[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \phase_err.err_EW[7]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \phase_err.err_EW[8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \phase_err.err_EW[9]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \phase_err.err_NE[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \phase_err.err_NE[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \phase_err.err_NE[11]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \phase_err.err_NE[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \phase_err.err_NE[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \phase_err.err_NE[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \phase_err.err_NE[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \phase_err.err_NE[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \phase_err.err_NE[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \phase_err.err_NE[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \phase_err.err_NE[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \phase_err.err_NE[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \phase_err.err_NW[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \phase_err.err_NW[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \phase_err.err_NW[11]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \phase_err.err_NW[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \phase_err.err_NW[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \phase_err.err_NW[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \phase_err.err_NW[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \phase_err.err_NW[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \phase_err.err_NW[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \phase_err.err_NW[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \phase_err.err_NW[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \phase_err.err_NW[9]_i_1\ : label is "soft_lutpair34";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[16]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[16]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[16]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[17]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[17]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[17]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[18]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[18]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[18]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[19]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[19]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[19]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_E_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg ";
  attribute srl_name of \phase_err.phase_E_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_E_3_reg[9]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[16]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[16]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[16]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[17]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[17]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[17]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[18]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[18]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[18]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[19]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[19]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[19]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_N_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg ";
  attribute srl_name of \phase_err.phase_N_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_N_3_reg[9]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[16]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[16]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[16]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[17]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[17]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[17]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[18]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[18]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[18]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[19]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[19]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[19]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.phase_W_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg ";
  attribute srl_name of \phase_err.phase_W_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.phase_W_3_reg[9]_srl3 ";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_EW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_EW_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_EW_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NE_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NE_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NE_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NW_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NW_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_EW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_EW_reg[18]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_EW_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NE_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NE_reg[18]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NE_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NW_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NW_reg[18]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NW_reg[7]_i_1\ : label is 35;
begin
\phase_err.diff_EW[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(0),
      O => \phase_err.diff_EW[0]_i_1_n_0\
    );
\phase_err.diff_EW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(10),
      O => \phase_err.diff_EW[10]_i_1_n_0\
    );
\phase_err.diff_EW[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(11),
      O => \phase_err.diff_EW[11]_i_1_n_0\
    );
\phase_err.diff_EW[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(12),
      O => \phase_err.diff_EW[12]_i_1_n_0\
    );
\phase_err.diff_EW[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(13),
      O => \phase_err.diff_EW[13]_i_1_n_0\
    );
\phase_err.diff_EW[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(14),
      O => \phase_err.diff_EW[14]_i_1_n_0\
    );
\phase_err.diff_EW[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(15),
      O => \phase_err.diff_EW[15]_i_1_n_0\
    );
\phase_err.diff_EW[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(16),
      O => \phase_err.diff_EW[16]_i_1_n_0\
    );
\phase_err.diff_EW[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(17),
      O => \phase_err.diff_EW[17]_i_1_n_0\
    );
\phase_err.diff_EW[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(18),
      O => \phase_err.diff_EW[18]_i_1_n_0\
    );
\phase_err.diff_EW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(1),
      O => \phase_err.diff_EW[1]_i_1_n_0\
    );
\phase_err.diff_EW[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(2),
      O => \phase_err.diff_EW[2]_i_1_n_0\
    );
\phase_err.diff_EW[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(3),
      O => \phase_err.diff_EW[3]_i_1_n_0\
    );
\phase_err.diff_EW[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(4),
      O => \phase_err.diff_EW[4]_i_1_n_0\
    );
\phase_err.diff_EW[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(5),
      O => \phase_err.diff_EW[5]_i_1_n_0\
    );
\phase_err.diff_EW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(6),
      O => \phase_err.diff_EW[6]_i_1_n_0\
    );
\phase_err.diff_EW[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(7),
      O => \phase_err.diff_EW[7]_i_1_n_0\
    );
\phase_err.diff_EW[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(8),
      O => \phase_err.diff_EW[8]_i_1_n_0\
    );
\phase_err.diff_EW[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(9),
      O => \phase_err.diff_EW[9]_i_1_n_0\
    );
\phase_err.diff_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[0]_i_1_n_0\,
      Q => diff_EW(0),
      R => '0'
    );
\phase_err.diff_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[10]_i_1_n_0\,
      Q => diff_EW(10),
      R => '0'
    );
\phase_err.diff_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[11]_i_1_n_0\,
      Q => diff_EW(11),
      R => '0'
    );
\phase_err.diff_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[12]_i_1_n_0\,
      Q => diff_EW(12),
      R => '0'
    );
\phase_err.diff_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[13]_i_1_n_0\,
      Q => diff_EW(13),
      R => '0'
    );
\phase_err.diff_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[14]_i_1_n_0\,
      Q => diff_EW(14),
      R => '0'
    );
\phase_err.diff_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[15]_i_1_n_0\,
      Q => diff_EW(15),
      R => '0'
    );
\phase_err.diff_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[16]_i_1_n_0\,
      Q => diff_EW(16),
      R => '0'
    );
\phase_err.diff_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[17]_i_1_n_0\,
      Q => diff_EW(17),
      R => '0'
    );
\phase_err.diff_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[18]_i_1_n_0\,
      Q => diff_EW(18),
      R => '0'
    );
\phase_err.diff_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[1]_i_1_n_0\,
      Q => diff_EW(1),
      R => '0'
    );
\phase_err.diff_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[2]_i_1_n_0\,
      Q => diff_EW(2),
      R => '0'
    );
\phase_err.diff_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[3]_i_1_n_0\,
      Q => diff_EW(3),
      R => '0'
    );
\phase_err.diff_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[4]_i_1_n_0\,
      Q => diff_EW(4),
      R => '0'
    );
\phase_err.diff_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[5]_i_1_n_0\,
      Q => diff_EW(5),
      R => '0'
    );
\phase_err.diff_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[6]_i_1_n_0\,
      Q => diff_EW(6),
      R => '0'
    );
\phase_err.diff_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[7]_i_1_n_0\,
      Q => diff_EW(7),
      R => '0'
    );
\phase_err.diff_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[8]_i_1_n_0\,
      Q => diff_EW(8),
      R => '0'
    );
\phase_err.diff_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[9]_i_1_n_0\,
      Q => diff_EW(9),
      R => '0'
    );
\phase_err.diff_NE[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(0),
      O => p_0_in(0)
    );
\phase_err.diff_NE[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(10),
      O => p_0_in(10)
    );
\phase_err.diff_NE[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(11),
      O => p_0_in(11)
    );
\phase_err.diff_NE[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(12),
      O => p_0_in(12)
    );
\phase_err.diff_NE[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(13),
      O => p_0_in(13)
    );
\phase_err.diff_NE[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(14),
      O => p_0_in(14)
    );
\phase_err.diff_NE[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(15),
      O => p_0_in(15)
    );
\phase_err.diff_NE[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(16),
      O => p_0_in(16)
    );
\phase_err.diff_NE[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(17),
      O => p_0_in(17)
    );
\phase_err.diff_NE[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(18),
      O => p_0_in(18)
    );
\phase_err.diff_NE[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(1),
      O => p_0_in(1)
    );
\phase_err.diff_NE[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(2),
      O => p_0_in(2)
    );
\phase_err.diff_NE[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(3),
      O => p_0_in(3)
    );
\phase_err.diff_NE[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(4),
      O => p_0_in(4)
    );
\phase_err.diff_NE[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(5),
      O => p_0_in(5)
    );
\phase_err.diff_NE[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(6),
      O => p_0_in(6)
    );
\phase_err.diff_NE[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(7),
      O => p_0_in(7)
    );
\phase_err.diff_NE[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(8),
      O => p_0_in(8)
    );
\phase_err.diff_NE[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(9),
      O => p_0_in(9)
    );
\phase_err.diff_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => diff_NE(0),
      R => '0'
    );
\phase_err.diff_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(10),
      Q => diff_NE(10),
      R => '0'
    );
\phase_err.diff_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(11),
      Q => diff_NE(11),
      R => '0'
    );
\phase_err.diff_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(12),
      Q => diff_NE(12),
      R => '0'
    );
\phase_err.diff_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(13),
      Q => diff_NE(13),
      R => '0'
    );
\phase_err.diff_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(14),
      Q => diff_NE(14),
      R => '0'
    );
\phase_err.diff_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(15),
      Q => diff_NE(15),
      R => '0'
    );
\phase_err.diff_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(16),
      Q => diff_NE(16),
      R => '0'
    );
\phase_err.diff_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(17),
      Q => diff_NE(17),
      R => '0'
    );
\phase_err.diff_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(18),
      Q => diff_NE(18),
      R => '0'
    );
\phase_err.diff_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => diff_NE(1),
      R => '0'
    );
\phase_err.diff_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => diff_NE(2),
      R => '0'
    );
\phase_err.diff_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => diff_NE(3),
      R => '0'
    );
\phase_err.diff_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => diff_NE(4),
      R => '0'
    );
\phase_err.diff_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => diff_NE(5),
      R => '0'
    );
\phase_err.diff_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => diff_NE(6),
      R => '0'
    );
\phase_err.diff_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => diff_NE(7),
      R => '0'
    );
\phase_err.diff_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => diff_NE(8),
      R => '0'
    );
\phase_err.diff_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => diff_NE(9),
      R => '0'
    );
\phase_err.diff_NW[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(0),
      O => \phase_err.diff_NW[0]_i_1_n_0\
    );
\phase_err.diff_NW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(10),
      O => \phase_err.diff_NW[10]_i_1_n_0\
    );
\phase_err.diff_NW[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(11),
      O => \phase_err.diff_NW[11]_i_1_n_0\
    );
\phase_err.diff_NW[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(12),
      O => \phase_err.diff_NW[12]_i_1_n_0\
    );
\phase_err.diff_NW[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(13),
      O => \phase_err.diff_NW[13]_i_1_n_0\
    );
\phase_err.diff_NW[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(14),
      O => \phase_err.diff_NW[14]_i_1_n_0\
    );
\phase_err.diff_NW[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(15),
      O => \phase_err.diff_NW[15]_i_1_n_0\
    );
\phase_err.diff_NW[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(16),
      O => \phase_err.diff_NW[16]_i_1_n_0\
    );
\phase_err.diff_NW[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(17),
      O => \phase_err.diff_NW[17]_i_1_n_0\
    );
\phase_err.diff_NW[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(18),
      O => \phase_err.diff_NW[18]_i_1_n_0\
    );
\phase_err.diff_NW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(1),
      O => \phase_err.diff_NW[1]_i_1_n_0\
    );
\phase_err.diff_NW[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(2),
      O => \phase_err.diff_NW[2]_i_1_n_0\
    );
\phase_err.diff_NW[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(3),
      O => \phase_err.diff_NW[3]_i_1_n_0\
    );
\phase_err.diff_NW[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(4),
      O => \phase_err.diff_NW[4]_i_1_n_0\
    );
\phase_err.diff_NW[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(5),
      O => \phase_err.diff_NW[5]_i_1_n_0\
    );
\phase_err.diff_NW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(6),
      O => \phase_err.diff_NW[6]_i_1_n_0\
    );
\phase_err.diff_NW[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(7),
      O => \phase_err.diff_NW[7]_i_1_n_0\
    );
\phase_err.diff_NW[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(8),
      O => \phase_err.diff_NW[8]_i_1_n_0\
    );
\phase_err.diff_NW[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(9),
      O => \phase_err.diff_NW[9]_i_1_n_0\
    );
\phase_err.diff_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[0]_i_1_n_0\,
      Q => diff_NW(0),
      R => '0'
    );
\phase_err.diff_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[10]_i_1_n_0\,
      Q => diff_NW(10),
      R => '0'
    );
\phase_err.diff_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[11]_i_1_n_0\,
      Q => diff_NW(11),
      R => '0'
    );
\phase_err.diff_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[12]_i_1_n_0\,
      Q => diff_NW(12),
      R => '0'
    );
\phase_err.diff_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[13]_i_1_n_0\,
      Q => diff_NW(13),
      R => '0'
    );
\phase_err.diff_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[14]_i_1_n_0\,
      Q => diff_NW(14),
      R => '0'
    );
\phase_err.diff_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[15]_i_1_n_0\,
      Q => diff_NW(15),
      R => '0'
    );
\phase_err.diff_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[16]_i_1_n_0\,
      Q => diff_NW(16),
      R => '0'
    );
\phase_err.diff_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[17]_i_1_n_0\,
      Q => diff_NW(17),
      R => '0'
    );
\phase_err.diff_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[18]_i_1_n_0\,
      Q => diff_NW(18),
      R => '0'
    );
\phase_err.diff_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[1]_i_1_n_0\,
      Q => diff_NW(1),
      R => '0'
    );
\phase_err.diff_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[2]_i_1_n_0\,
      Q => diff_NW(2),
      R => '0'
    );
\phase_err.diff_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[3]_i_1_n_0\,
      Q => diff_NW(3),
      R => '0'
    );
\phase_err.diff_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[4]_i_1_n_0\,
      Q => diff_NW(4),
      R => '0'
    );
\phase_err.diff_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[5]_i_1_n_0\,
      Q => diff_NW(5),
      R => '0'
    );
\phase_err.diff_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[6]_i_1_n_0\,
      Q => diff_NW(6),
      R => '0'
    );
\phase_err.diff_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[7]_i_1_n_0\,
      Q => diff_NW(7),
      R => '0'
    );
\phase_err.diff_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[8]_i_1_n_0\,
      Q => diff_NW(8),
      R => '0'
    );
\phase_err.diff_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[9]_i_1_n_0\,
      Q => diff_NW(9),
      R => '0'
    );
\phase_err.env_E_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(0),
      Q => \phase_err.env_E_3_reg[0]_srl3_n_0\
    );
\phase_err.env_E_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(10),
      Q => \phase_err.env_E_3_reg[10]_srl3_n_0\
    );
\phase_err.env_E_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(11),
      Q => \phase_err.env_E_3_reg[11]_srl3_n_0\
    );
\phase_err.env_E_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(12),
      Q => \phase_err.env_E_3_reg[12]_srl3_n_0\
    );
\phase_err.env_E_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(13),
      Q => \phase_err.env_E_3_reg[13]_srl3_n_0\
    );
\phase_err.env_E_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(14),
      Q => \phase_err.env_E_3_reg[14]_srl3_n_0\
    );
\phase_err.env_E_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(15),
      Q => \phase_err.env_E_3_reg[15]_srl3_n_0\
    );
\phase_err.env_E_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(1),
      Q => \phase_err.env_E_3_reg[1]_srl3_n_0\
    );
\phase_err.env_E_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(2),
      Q => \phase_err.env_E_3_reg[2]_srl3_n_0\
    );
\phase_err.env_E_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(3),
      Q => \phase_err.env_E_3_reg[3]_srl3_n_0\
    );
\phase_err.env_E_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(4),
      Q => \phase_err.env_E_3_reg[4]_srl3_n_0\
    );
\phase_err.env_E_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(5),
      Q => \phase_err.env_E_3_reg[5]_srl3_n_0\
    );
\phase_err.env_E_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(6),
      Q => \phase_err.env_E_3_reg[6]_srl3_n_0\
    );
\phase_err.env_E_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(7),
      Q => \phase_err.env_E_3_reg[7]_srl3_n_0\
    );
\phase_err.env_E_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(8),
      Q => \phase_err.env_E_3_reg[8]_srl3_n_0\
    );
\phase_err.env_E_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(9),
      Q => \phase_err.env_E_3_reg[9]_srl3_n_0\
    );
\phase_err.env_N_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(0),
      Q => \phase_err.env_N_3_reg[0]_srl3_n_0\
    );
\phase_err.env_N_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(10),
      Q => \phase_err.env_N_3_reg[10]_srl3_n_0\
    );
\phase_err.env_N_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(11),
      Q => \phase_err.env_N_3_reg[11]_srl3_n_0\
    );
\phase_err.env_N_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(12),
      Q => \phase_err.env_N_3_reg[12]_srl3_n_0\
    );
\phase_err.env_N_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(13),
      Q => \phase_err.env_N_3_reg[13]_srl3_n_0\
    );
\phase_err.env_N_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(14),
      Q => \phase_err.env_N_3_reg[14]_srl3_n_0\
    );
\phase_err.env_N_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(15),
      Q => \phase_err.env_N_3_reg[15]_srl3_n_0\
    );
\phase_err.env_N_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(1),
      Q => \phase_err.env_N_3_reg[1]_srl3_n_0\
    );
\phase_err.env_N_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(2),
      Q => \phase_err.env_N_3_reg[2]_srl3_n_0\
    );
\phase_err.env_N_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(3),
      Q => \phase_err.env_N_3_reg[3]_srl3_n_0\
    );
\phase_err.env_N_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(4),
      Q => \phase_err.env_N_3_reg[4]_srl3_n_0\
    );
\phase_err.env_N_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(5),
      Q => \phase_err.env_N_3_reg[5]_srl3_n_0\
    );
\phase_err.env_N_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(6),
      Q => \phase_err.env_N_3_reg[6]_srl3_n_0\
    );
\phase_err.env_N_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(7),
      Q => \phase_err.env_N_3_reg[7]_srl3_n_0\
    );
\phase_err.env_N_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(8),
      Q => \phase_err.env_N_3_reg[8]_srl3_n_0\
    );
\phase_err.env_N_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(9),
      Q => \phase_err.env_N_3_reg[9]_srl3_n_0\
    );
\phase_err.env_W_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(0),
      Q => \phase_err.env_W_3_reg[0]_srl3_n_0\
    );
\phase_err.env_W_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(10),
      Q => \phase_err.env_W_3_reg[10]_srl3_n_0\
    );
\phase_err.env_W_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(11),
      Q => \phase_err.env_W_3_reg[11]_srl3_n_0\
    );
\phase_err.env_W_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(12),
      Q => \phase_err.env_W_3_reg[12]_srl3_n_0\
    );
\phase_err.env_W_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(13),
      Q => \phase_err.env_W_3_reg[13]_srl3_n_0\
    );
\phase_err.env_W_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(14),
      Q => \phase_err.env_W_3_reg[14]_srl3_n_0\
    );
\phase_err.env_W_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(15),
      Q => \phase_err.env_W_3_reg[15]_srl3_n_0\
    );
\phase_err.env_W_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(1),
      Q => \phase_err.env_W_3_reg[1]_srl3_n_0\
    );
\phase_err.env_W_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(2),
      Q => \phase_err.env_W_3_reg[2]_srl3_n_0\
    );
\phase_err.env_W_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(3),
      Q => \phase_err.env_W_3_reg[3]_srl3_n_0\
    );
\phase_err.env_W_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(4),
      Q => \phase_err.env_W_3_reg[4]_srl3_n_0\
    );
\phase_err.env_W_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(5),
      Q => \phase_err.env_W_3_reg[5]_srl3_n_0\
    );
\phase_err.env_W_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(6),
      Q => \phase_err.env_W_3_reg[6]_srl3_n_0\
    );
\phase_err.env_W_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(7),
      Q => \phase_err.env_W_3_reg[7]_srl3_n_0\
    );
\phase_err.env_W_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(8),
      Q => \phase_err.env_W_3_reg[8]_srl3_n_0\
    );
\phase_err.env_W_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(9),
      Q => \phase_err.env_W_3_reg[9]_srl3_n_0\
    );
\phase_err.env_out_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[0]_srl3_n_0\,
      Q => env_out_E(0),
      R => '0'
    );
\phase_err.env_out_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[10]_srl3_n_0\,
      Q => env_out_E(10),
      R => '0'
    );
\phase_err.env_out_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[11]_srl3_n_0\,
      Q => env_out_E(11),
      R => '0'
    );
\phase_err.env_out_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[12]_srl3_n_0\,
      Q => env_out_E(12),
      R => '0'
    );
\phase_err.env_out_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[13]_srl3_n_0\,
      Q => env_out_E(13),
      R => '0'
    );
\phase_err.env_out_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[14]_srl3_n_0\,
      Q => env_out_E(14),
      R => '0'
    );
\phase_err.env_out_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[15]_srl3_n_0\,
      Q => env_out_E(15),
      R => '0'
    );
\phase_err.env_out_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[1]_srl3_n_0\,
      Q => env_out_E(1),
      R => '0'
    );
\phase_err.env_out_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[2]_srl3_n_0\,
      Q => env_out_E(2),
      R => '0'
    );
\phase_err.env_out_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[3]_srl3_n_0\,
      Q => env_out_E(3),
      R => '0'
    );
\phase_err.env_out_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[4]_srl3_n_0\,
      Q => env_out_E(4),
      R => '0'
    );
\phase_err.env_out_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[5]_srl3_n_0\,
      Q => env_out_E(5),
      R => '0'
    );
\phase_err.env_out_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[6]_srl3_n_0\,
      Q => env_out_E(6),
      R => '0'
    );
\phase_err.env_out_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[7]_srl3_n_0\,
      Q => env_out_E(7),
      R => '0'
    );
\phase_err.env_out_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[8]_srl3_n_0\,
      Q => env_out_E(8),
      R => '0'
    );
\phase_err.env_out_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[9]_srl3_n_0\,
      Q => env_out_E(9),
      R => '0'
    );
\phase_err.env_out_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[0]_srl3_n_0\,
      Q => env_out_N(0),
      R => '0'
    );
\phase_err.env_out_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[10]_srl3_n_0\,
      Q => env_out_N(10),
      R => '0'
    );
\phase_err.env_out_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[11]_srl3_n_0\,
      Q => env_out_N(11),
      R => '0'
    );
\phase_err.env_out_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[12]_srl3_n_0\,
      Q => env_out_N(12),
      R => '0'
    );
\phase_err.env_out_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[13]_srl3_n_0\,
      Q => env_out_N(13),
      R => '0'
    );
\phase_err.env_out_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[14]_srl3_n_0\,
      Q => env_out_N(14),
      R => '0'
    );
\phase_err.env_out_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[15]_srl3_n_0\,
      Q => env_out_N(15),
      R => '0'
    );
\phase_err.env_out_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[1]_srl3_n_0\,
      Q => env_out_N(1),
      R => '0'
    );
\phase_err.env_out_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[2]_srl3_n_0\,
      Q => env_out_N(2),
      R => '0'
    );
\phase_err.env_out_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[3]_srl3_n_0\,
      Q => env_out_N(3),
      R => '0'
    );
\phase_err.env_out_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[4]_srl3_n_0\,
      Q => env_out_N(4),
      R => '0'
    );
\phase_err.env_out_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[5]_srl3_n_0\,
      Q => env_out_N(5),
      R => '0'
    );
\phase_err.env_out_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[6]_srl3_n_0\,
      Q => env_out_N(6),
      R => '0'
    );
\phase_err.env_out_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[7]_srl3_n_0\,
      Q => env_out_N(7),
      R => '0'
    );
\phase_err.env_out_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[8]_srl3_n_0\,
      Q => env_out_N(8),
      R => '0'
    );
\phase_err.env_out_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[9]_srl3_n_0\,
      Q => env_out_N(9),
      R => '0'
    );
\phase_err.env_out_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[0]_srl3_n_0\,
      Q => env_out_W(0),
      R => '0'
    );
\phase_err.env_out_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[10]_srl3_n_0\,
      Q => env_out_W(10),
      R => '0'
    );
\phase_err.env_out_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[11]_srl3_n_0\,
      Q => env_out_W(11),
      R => '0'
    );
\phase_err.env_out_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[12]_srl3_n_0\,
      Q => env_out_W(12),
      R => '0'
    );
\phase_err.env_out_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[13]_srl3_n_0\,
      Q => env_out_W(13),
      R => '0'
    );
\phase_err.env_out_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[14]_srl3_n_0\,
      Q => env_out_W(14),
      R => '0'
    );
\phase_err.env_out_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[15]_srl3_n_0\,
      Q => env_out_W(15),
      R => '0'
    );
\phase_err.env_out_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[1]_srl3_n_0\,
      Q => env_out_W(1),
      R => '0'
    );
\phase_err.env_out_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[2]_srl3_n_0\,
      Q => env_out_W(2),
      R => '0'
    );
\phase_err.env_out_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[3]_srl3_n_0\,
      Q => env_out_W(3),
      R => '0'
    );
\phase_err.env_out_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[4]_srl3_n_0\,
      Q => env_out_W(4),
      R => '0'
    );
\phase_err.env_out_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[5]_srl3_n_0\,
      Q => env_out_W(5),
      R => '0'
    );
\phase_err.env_out_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[6]_srl3_n_0\,
      Q => env_out_W(6),
      R => '0'
    );
\phase_err.env_out_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[7]_srl3_n_0\,
      Q => env_out_W(7),
      R => '0'
    );
\phase_err.env_out_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[8]_srl3_n_0\,
      Q => env_out_W(8),
      R => '0'
    );
\phase_err.env_out_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[9]_srl3_n_0\,
      Q => env_out_W(9),
      R => '0'
    );
\phase_err.err_EW[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[0]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[0]_i_1_n_0\
    );
\phase_err.err_EW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[10]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[10]_i_1_n_0\
    );
\phase_err.err_EW[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFE"
    )
        port map (
      I0 => \phase_err.err_EW[11]_i_3_n_0\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      I2 => \phase_err.raw_err_EW_reg_n_0_[14]\,
      I3 => \phase_err.raw_err_EW_reg_n_0_[13]\,
      O => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[11]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[11]_i_2_n_0\
    );
\phase_err.err_EW[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[16]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[15]\,
      I2 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      I3 => \phase_err.raw_err_EW_reg_n_0_[18]\,
      I4 => \phase_err.raw_err_EW_reg_n_0_[17]\,
      O => \phase_err.err_EW[11]_i_3_n_0\
    );
\phase_err.err_EW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[1]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[1]_i_1_n_0\
    );
\phase_err.err_EW[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[2]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[2]_i_1_n_0\
    );
\phase_err.err_EW[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[3]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[3]_i_1_n_0\
    );
\phase_err.err_EW[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[4]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[4]_i_1_n_0\
    );
\phase_err.err_EW[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[5]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[5]_i_1_n_0\
    );
\phase_err.err_EW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[6]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[6]_i_1_n_0\
    );
\phase_err.err_EW[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[7]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[7]_i_1_n_0\
    );
\phase_err.err_EW[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[8]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[8]_i_1_n_0\
    );
\phase_err.err_EW[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_EW_reg_n_0_[9]\,
      I1 => \phase_err.raw_err_EW_reg_n_0_[12]\,
      O => \phase_err.err_EW[9]_i_1_n_0\
    );
\phase_err.err_EW_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[0]_i_1_n_0\,
      Q => err_EW(0),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[10]_i_1_n_0\,
      Q => err_EW(10),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[11]_i_2_n_0\,
      Q => err_EW(11),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[1]_i_1_n_0\,
      Q => err_EW(1),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[2]_i_1_n_0\,
      Q => err_EW(2),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[3]_i_1_n_0\,
      Q => err_EW(3),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[4]_i_1_n_0\,
      Q => err_EW(4),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[5]_i_1_n_0\,
      Q => err_EW(5),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[6]_i_1_n_0\,
      Q => err_EW(6),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[7]_i_1_n_0\,
      Q => err_EW(7),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[8]_i_1_n_0\,
      Q => err_EW(8),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[9]_i_1_n_0\,
      Q => err_EW(9),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_NE[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[0]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[0]_i_1_n_0\
    );
\phase_err.err_NE[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[10]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[10]_i_1_n_0\
    );
\phase_err.err_NE[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFE"
    )
        port map (
      I0 => \phase_err.err_NE[11]_i_3_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[11]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[11]_i_2_n_0\
    );
\phase_err.err_NE[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(6),
      I4 => sel0(5),
      O => \phase_err.err_NE[11]_i_3_n_0\
    );
\phase_err.err_NE[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[1]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[1]_i_1_n_0\
    );
\phase_err.err_NE[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[2]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[2]_i_1_n_0\
    );
\phase_err.err_NE[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[3]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[3]_i_1_n_0\
    );
\phase_err.err_NE[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[4]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[4]_i_1_n_0\
    );
\phase_err.err_NE[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[5]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[5]_i_1_n_0\
    );
\phase_err.err_NE[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[6]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[6]_i_1_n_0\
    );
\phase_err.err_NE[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[7]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[7]_i_1_n_0\
    );
\phase_err.err_NE[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[8]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[8]_i_1_n_0\
    );
\phase_err.err_NE[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NE_reg_n_0_[9]\,
      I1 => sel0(0),
      O => \phase_err.err_NE[9]_i_1_n_0\
    );
\phase_err.err_NE_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[0]_i_1_n_0\,
      Q => err_NE(0),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[10]_i_1_n_0\,
      Q => err_NE(10),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[11]_i_2_n_0\,
      Q => err_NE(11),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[1]_i_1_n_0\,
      Q => err_NE(1),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[2]_i_1_n_0\,
      Q => err_NE(2),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[3]_i_1_n_0\,
      Q => err_NE(3),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[4]_i_1_n_0\,
      Q => err_NE(4),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[5]_i_1_n_0\,
      Q => err_NE(5),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[6]_i_1_n_0\,
      Q => err_NE(6),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[7]_i_1_n_0\,
      Q => err_NE(7),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[8]_i_1_n_0\,
      Q => err_NE(8),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[9]_i_1_n_0\,
      Q => err_NE(9),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NW[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[0]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[0]_i_1_n_0\
    );
\phase_err.err_NW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[10]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[10]_i_1_n_0\
    );
\phase_err.err_NW[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFE"
    )
        port map (
      I0 => \phase_err.err_NW[11]_i_3_n_0\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      I2 => \phase_err.raw_err_NW_reg_n_0_[14]\,
      I3 => \phase_err.raw_err_NW_reg_n_0_[13]\,
      O => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[11]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[11]_i_2_n_0\
    );
\phase_err.err_NW[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[16]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[15]\,
      I2 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      I3 => \phase_err.raw_err_NW_reg_n_0_[18]\,
      I4 => \phase_err.raw_err_NW_reg_n_0_[17]\,
      O => \phase_err.err_NW[11]_i_3_n_0\
    );
\phase_err.err_NW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[1]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[1]_i_1_n_0\
    );
\phase_err.err_NW[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[2]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[2]_i_1_n_0\
    );
\phase_err.err_NW[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[3]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[3]_i_1_n_0\
    );
\phase_err.err_NW[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[4]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[4]_i_1_n_0\
    );
\phase_err.err_NW[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[5]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[5]_i_1_n_0\
    );
\phase_err.err_NW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[6]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[6]_i_1_n_0\
    );
\phase_err.err_NW[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[7]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[7]_i_1_n_0\
    );
\phase_err.err_NW[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[8]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[8]_i_1_n_0\
    );
\phase_err.err_NW[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_err.raw_err_NW_reg_n_0_[9]\,
      I1 => \phase_err.raw_err_NW_reg_n_0_[12]\,
      O => \phase_err.err_NW[9]_i_1_n_0\
    );
\phase_err.err_NW_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[0]_i_1_n_0\,
      Q => err_NW(0),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[10]_i_1_n_0\,
      Q => err_NW(10),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[11]_i_2_n_0\,
      Q => err_NW(11),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[1]_i_1_n_0\,
      Q => err_NW(1),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[2]_i_1_n_0\,
      Q => err_NW(2),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[3]_i_1_n_0\,
      Q => err_NW(3),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[4]_i_1_n_0\,
      Q => err_NW(4),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[5]_i_1_n_0\,
      Q => err_NW(5),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[6]_i_1_n_0\,
      Q => err_NW(6),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[7]_i_1_n_0\,
      Q => err_NW(7),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[8]_i_1_n_0\,
      Q => err_NW(8),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[9]_i_1_n_0\,
      Q => err_NW(9),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.phase_E_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(0),
      Q => \phase_err.phase_E_3_reg[0]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(10),
      Q => \phase_err.phase_E_3_reg[10]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(11),
      Q => \phase_err.phase_E_3_reg[11]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(12),
      Q => \phase_err.phase_E_3_reg[12]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(13),
      Q => \phase_err.phase_E_3_reg[13]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(14),
      Q => \phase_err.phase_E_3_reg[14]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(15),
      Q => \phase_err.phase_E_3_reg[15]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[16]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(16),
      Q => \phase_err.phase_E_3_reg[16]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[17]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(17),
      Q => \phase_err.phase_E_3_reg[17]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[18]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(18),
      Q => \phase_err.phase_E_3_reg[18]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[19]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(19),
      Q => \phase_err.phase_E_3_reg[19]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(1),
      Q => \phase_err.phase_E_3_reg[1]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(2),
      Q => \phase_err.phase_E_3_reg[2]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(3),
      Q => \phase_err.phase_E_3_reg[3]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(4),
      Q => \phase_err.phase_E_3_reg[4]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(5),
      Q => \phase_err.phase_E_3_reg[5]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(6),
      Q => \phase_err.phase_E_3_reg[6]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(7),
      Q => \phase_err.phase_E_3_reg[7]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(8),
      Q => \phase_err.phase_E_3_reg[8]_srl3_n_0\
    );
\phase_err.phase_E_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(9),
      Q => \phase_err.phase_E_3_reg[9]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(0),
      Q => \phase_err.phase_N_3_reg[0]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(10),
      Q => \phase_err.phase_N_3_reg[10]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(11),
      Q => \phase_err.phase_N_3_reg[11]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(12),
      Q => \phase_err.phase_N_3_reg[12]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(13),
      Q => \phase_err.phase_N_3_reg[13]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(14),
      Q => \phase_err.phase_N_3_reg[14]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(15),
      Q => \phase_err.phase_N_3_reg[15]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[16]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(16),
      Q => \phase_err.phase_N_3_reg[16]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[17]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(17),
      Q => \phase_err.phase_N_3_reg[17]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[18]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(18),
      Q => \phase_err.phase_N_3_reg[18]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[19]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(19),
      Q => \phase_err.phase_N_3_reg[19]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(1),
      Q => \phase_err.phase_N_3_reg[1]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(2),
      Q => \phase_err.phase_N_3_reg[2]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(3),
      Q => \phase_err.phase_N_3_reg[3]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(4),
      Q => \phase_err.phase_N_3_reg[4]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(5),
      Q => \phase_err.phase_N_3_reg[5]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(6),
      Q => \phase_err.phase_N_3_reg[6]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(7),
      Q => \phase_err.phase_N_3_reg[7]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(8),
      Q => \phase_err.phase_N_3_reg[8]_srl3_n_0\
    );
\phase_err.phase_N_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(9),
      Q => \phase_err.phase_N_3_reg[9]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(0),
      Q => \phase_err.phase_W_3_reg[0]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(10),
      Q => \phase_err.phase_W_3_reg[10]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(11),
      Q => \phase_err.phase_W_3_reg[11]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(12),
      Q => \phase_err.phase_W_3_reg[12]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(13),
      Q => \phase_err.phase_W_3_reg[13]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(14),
      Q => \phase_err.phase_W_3_reg[14]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(15),
      Q => \phase_err.phase_W_3_reg[15]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[16]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(16),
      Q => \phase_err.phase_W_3_reg[16]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[17]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(17),
      Q => \phase_err.phase_W_3_reg[17]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[18]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(18),
      Q => \phase_err.phase_W_3_reg[18]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[19]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(19),
      Q => \phase_err.phase_W_3_reg[19]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(1),
      Q => \phase_err.phase_W_3_reg[1]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(2),
      Q => \phase_err.phase_W_3_reg[2]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(3),
      Q => \phase_err.phase_W_3_reg[3]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(4),
      Q => \phase_err.phase_W_3_reg[4]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(5),
      Q => \phase_err.phase_W_3_reg[5]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(6),
      Q => \phase_err.phase_W_3_reg[6]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(7),
      Q => \phase_err.phase_W_3_reg[7]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(8),
      Q => \phase_err.phase_W_3_reg[8]_srl3_n_0\
    );
\phase_err.phase_W_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(9),
      Q => \phase_err.phase_W_3_reg[9]_srl3_n_0\
    );
\phase_err.phase_out_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[0]_srl3_n_0\,
      Q => phase_out_E(0),
      R => '0'
    );
\phase_err.phase_out_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[10]_srl3_n_0\,
      Q => phase_out_E(10),
      R => '0'
    );
\phase_err.phase_out_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[11]_srl3_n_0\,
      Q => phase_out_E(11),
      R => '0'
    );
\phase_err.phase_out_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[12]_srl3_n_0\,
      Q => phase_out_E(12),
      R => '0'
    );
\phase_err.phase_out_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[13]_srl3_n_0\,
      Q => phase_out_E(13),
      R => '0'
    );
\phase_err.phase_out_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[14]_srl3_n_0\,
      Q => phase_out_E(14),
      R => '0'
    );
\phase_err.phase_out_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[15]_srl3_n_0\,
      Q => phase_out_E(15),
      R => '0'
    );
\phase_err.phase_out_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[16]_srl3_n_0\,
      Q => phase_out_E(16),
      R => '0'
    );
\phase_err.phase_out_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[17]_srl3_n_0\,
      Q => phase_out_E(17),
      R => '0'
    );
\phase_err.phase_out_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[18]_srl3_n_0\,
      Q => phase_out_E(18),
      R => '0'
    );
\phase_err.phase_out_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[19]_srl3_n_0\,
      Q => phase_out_E(19),
      R => '0'
    );
\phase_err.phase_out_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[1]_srl3_n_0\,
      Q => phase_out_E(1),
      R => '0'
    );
\phase_err.phase_out_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[2]_srl3_n_0\,
      Q => phase_out_E(2),
      R => '0'
    );
\phase_err.phase_out_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[3]_srl3_n_0\,
      Q => phase_out_E(3),
      R => '0'
    );
\phase_err.phase_out_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[4]_srl3_n_0\,
      Q => phase_out_E(4),
      R => '0'
    );
\phase_err.phase_out_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[5]_srl3_n_0\,
      Q => phase_out_E(5),
      R => '0'
    );
\phase_err.phase_out_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[6]_srl3_n_0\,
      Q => phase_out_E(6),
      R => '0'
    );
\phase_err.phase_out_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[7]_srl3_n_0\,
      Q => phase_out_E(7),
      R => '0'
    );
\phase_err.phase_out_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[8]_srl3_n_0\,
      Q => phase_out_E(8),
      R => '0'
    );
\phase_err.phase_out_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_3_reg[9]_srl3_n_0\,
      Q => phase_out_E(9),
      R => '0'
    );
\phase_err.phase_out_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[0]_srl3_n_0\,
      Q => phase_out_N(0),
      R => '0'
    );
\phase_err.phase_out_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[10]_srl3_n_0\,
      Q => phase_out_N(10),
      R => '0'
    );
\phase_err.phase_out_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[11]_srl3_n_0\,
      Q => phase_out_N(11),
      R => '0'
    );
\phase_err.phase_out_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[12]_srl3_n_0\,
      Q => phase_out_N(12),
      R => '0'
    );
\phase_err.phase_out_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[13]_srl3_n_0\,
      Q => phase_out_N(13),
      R => '0'
    );
\phase_err.phase_out_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[14]_srl3_n_0\,
      Q => phase_out_N(14),
      R => '0'
    );
\phase_err.phase_out_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[15]_srl3_n_0\,
      Q => phase_out_N(15),
      R => '0'
    );
\phase_err.phase_out_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[16]_srl3_n_0\,
      Q => phase_out_N(16),
      R => '0'
    );
\phase_err.phase_out_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[17]_srl3_n_0\,
      Q => phase_out_N(17),
      R => '0'
    );
\phase_err.phase_out_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[18]_srl3_n_0\,
      Q => phase_out_N(18),
      R => '0'
    );
\phase_err.phase_out_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[19]_srl3_n_0\,
      Q => phase_out_N(19),
      R => '0'
    );
\phase_err.phase_out_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[1]_srl3_n_0\,
      Q => phase_out_N(1),
      R => '0'
    );
\phase_err.phase_out_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[2]_srl3_n_0\,
      Q => phase_out_N(2),
      R => '0'
    );
\phase_err.phase_out_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[3]_srl3_n_0\,
      Q => phase_out_N(3),
      R => '0'
    );
\phase_err.phase_out_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[4]_srl3_n_0\,
      Q => phase_out_N(4),
      R => '0'
    );
\phase_err.phase_out_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[5]_srl3_n_0\,
      Q => phase_out_N(5),
      R => '0'
    );
\phase_err.phase_out_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[6]_srl3_n_0\,
      Q => phase_out_N(6),
      R => '0'
    );
\phase_err.phase_out_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[7]_srl3_n_0\,
      Q => phase_out_N(7),
      R => '0'
    );
\phase_err.phase_out_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[8]_srl3_n_0\,
      Q => phase_out_N(8),
      R => '0'
    );
\phase_err.phase_out_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_3_reg[9]_srl3_n_0\,
      Q => phase_out_N(9),
      R => '0'
    );
\phase_err.phase_out_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[0]_srl3_n_0\,
      Q => phase_out_W(0),
      R => '0'
    );
\phase_err.phase_out_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[10]_srl3_n_0\,
      Q => phase_out_W(10),
      R => '0'
    );
\phase_err.phase_out_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[11]_srl3_n_0\,
      Q => phase_out_W(11),
      R => '0'
    );
\phase_err.phase_out_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[12]_srl3_n_0\,
      Q => phase_out_W(12),
      R => '0'
    );
\phase_err.phase_out_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[13]_srl3_n_0\,
      Q => phase_out_W(13),
      R => '0'
    );
\phase_err.phase_out_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[14]_srl3_n_0\,
      Q => phase_out_W(14),
      R => '0'
    );
\phase_err.phase_out_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[15]_srl3_n_0\,
      Q => phase_out_W(15),
      R => '0'
    );
\phase_err.phase_out_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[16]_srl3_n_0\,
      Q => phase_out_W(16),
      R => '0'
    );
\phase_err.phase_out_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[17]_srl3_n_0\,
      Q => phase_out_W(17),
      R => '0'
    );
\phase_err.phase_out_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[18]_srl3_n_0\,
      Q => phase_out_W(18),
      R => '0'
    );
\phase_err.phase_out_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[19]_srl3_n_0\,
      Q => phase_out_W(19),
      R => '0'
    );
\phase_err.phase_out_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[1]_srl3_n_0\,
      Q => phase_out_W(1),
      R => '0'
    );
\phase_err.phase_out_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[2]_srl3_n_0\,
      Q => phase_out_W(2),
      R => '0'
    );
\phase_err.phase_out_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[3]_srl3_n_0\,
      Q => phase_out_W(3),
      R => '0'
    );
\phase_err.phase_out_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[4]_srl3_n_0\,
      Q => phase_out_W(4),
      R => '0'
    );
\phase_err.phase_out_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[5]_srl3_n_0\,
      Q => phase_out_W(5),
      R => '0'
    );
\phase_err.phase_out_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[6]_srl3_n_0\,
      Q => phase_out_W(6),
      R => '0'
    );
\phase_err.phase_out_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[7]_srl3_n_0\,
      Q => phase_out_W(7),
      R => '0'
    );
\phase_err.phase_out_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[8]_srl3_n_0\,
      Q => phase_out_W(8),
      R => '0'
    );
\phase_err.phase_out_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_3_reg[9]_srl3_n_0\,
      Q => phase_out_W(9),
      R => '0'
    );
\phase_err.prev_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(0),
      Q => prev_EW(0),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(10),
      Q => prev_EW(10),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(11),
      Q => prev_EW(11),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(12),
      Q => prev_EW(12),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(13),
      Q => prev_EW(13),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(14),
      Q => prev_EW(14),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(15),
      Q => prev_EW(15),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(16),
      Q => prev_EW(16),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(17),
      Q => prev_EW(17),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(18),
      Q => prev_EW(18),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(1),
      Q => prev_EW(1),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(2),
      Q => prev_EW(2),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(3),
      Q => prev_EW(3),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(4),
      Q => prev_EW(4),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(5),
      Q => prev_EW(5),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(6),
      Q => prev_EW(6),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(7),
      Q => prev_EW(7),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(8),
      Q => prev_EW(8),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(9),
      Q => prev_EW(9),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => valid_2,
      O => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(0),
      Q => prev_NE(0),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(10),
      Q => prev_NE(10),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(11),
      Q => prev_NE(11),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(12),
      Q => prev_NE(12),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(13),
      Q => prev_NE(13),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(14),
      Q => prev_NE(14),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(15),
      Q => prev_NE(15),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(16),
      Q => prev_NE(16),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(17),
      Q => prev_NE(17),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(18),
      Q => prev_NE(18),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(1),
      Q => prev_NE(1),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(2),
      Q => prev_NE(2),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(3),
      Q => prev_NE(3),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(4),
      Q => prev_NE(4),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(5),
      Q => prev_NE(5),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(6),
      Q => prev_NE(6),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(7),
      Q => prev_NE(7),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(8),
      Q => prev_NE(8),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(9),
      Q => prev_NE(9),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(0),
      Q => prev_NW(0),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(10),
      Q => prev_NW(10),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(11),
      Q => prev_NW(11),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(12),
      Q => prev_NW(12),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(13),
      Q => prev_NW(13),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(14),
      Q => prev_NW(14),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(15),
      Q => prev_NW(15),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(16),
      Q => prev_NW(16),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(17),
      Q => prev_NW(17),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(18),
      Q => prev_NW(18),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(1),
      Q => prev_NW(1),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(2),
      Q => prev_NW(2),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(3),
      Q => prev_NW(3),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(4),
      Q => prev_NW(4),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(5),
      Q => prev_NW(5),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(6),
      Q => prev_NW(6),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(7),
      Q => prev_NW(7),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(8),
      Q => prev_NW(8),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(9),
      Q => prev_NW(9),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.raw_diff_EW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(15),
      I1 => phase_in_W(15),
      O => \phase_err.raw_diff_EW[15]_i_2_n_0\
    );
\phase_err.raw_diff_EW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(14),
      I1 => phase_in_W(14),
      O => \phase_err.raw_diff_EW[15]_i_3_n_0\
    );
\phase_err.raw_diff_EW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(13),
      I1 => phase_in_W(13),
      O => \phase_err.raw_diff_EW[15]_i_4_n_0\
    );
\phase_err.raw_diff_EW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(12),
      I1 => phase_in_W(12),
      O => \phase_err.raw_diff_EW[15]_i_5_n_0\
    );
\phase_err.raw_diff_EW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(11),
      I1 => phase_in_W(11),
      O => \phase_err.raw_diff_EW[15]_i_6_n_0\
    );
\phase_err.raw_diff_EW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(10),
      I1 => phase_in_W(10),
      O => \phase_err.raw_diff_EW[15]_i_7_n_0\
    );
\phase_err.raw_diff_EW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(9),
      I1 => phase_in_W(9),
      O => \phase_err.raw_diff_EW[15]_i_8_n_0\
    );
\phase_err.raw_diff_EW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(8),
      I1 => phase_in_W(8),
      O => \phase_err.raw_diff_EW[15]_i_9_n_0\
    );
\phase_err.raw_diff_EW[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(19),
      I1 => phase_in_W(19),
      O => \phase_err.raw_diff_EW[19]_i_2_n_0\
    );
\phase_err.raw_diff_EW[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(18),
      I1 => phase_in_W(18),
      O => \phase_err.raw_diff_EW[19]_i_3_n_0\
    );
\phase_err.raw_diff_EW[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(17),
      I1 => phase_in_W(17),
      O => \phase_err.raw_diff_EW[19]_i_4_n_0\
    );
\phase_err.raw_diff_EW[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(16),
      I1 => phase_in_W(16),
      O => \phase_err.raw_diff_EW[19]_i_5_n_0\
    );
\phase_err.raw_diff_EW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(7),
      I1 => phase_in_W(7),
      O => \phase_err.raw_diff_EW[7]_i_2_n_0\
    );
\phase_err.raw_diff_EW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(6),
      I1 => phase_in_W(6),
      O => \phase_err.raw_diff_EW[7]_i_3_n_0\
    );
\phase_err.raw_diff_EW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(5),
      I1 => phase_in_W(5),
      O => \phase_err.raw_diff_EW[7]_i_4_n_0\
    );
\phase_err.raw_diff_EW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(4),
      I1 => phase_in_W(4),
      O => \phase_err.raw_diff_EW[7]_i_5_n_0\
    );
\phase_err.raw_diff_EW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(3),
      I1 => phase_in_W(3),
      O => \phase_err.raw_diff_EW[7]_i_6_n_0\
    );
\phase_err.raw_diff_EW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(2),
      I1 => phase_in_W(2),
      O => \phase_err.raw_diff_EW[7]_i_7_n_0\
    );
\phase_err.raw_diff_EW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(1),
      I1 => phase_in_W(1),
      O => \phase_err.raw_diff_EW[7]_i_8_n_0\
    );
\phase_err.raw_diff_EW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(0),
      I1 => phase_in_W(0),
      O => \phase_err.raw_diff_EW[7]_i_9_n_0\
    );
\phase_err.raw_diff_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(0),
      Q => raw_diff_EW(0),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(10),
      Q => raw_diff_EW(10),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(11),
      Q => raw_diff_EW(11),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(12),
      Q => raw_diff_EW(12),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(13),
      Q => raw_diff_EW(13),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(14),
      Q => raw_diff_EW(14),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(15),
      Q => raw_diff_EW(15),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_EW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_EW_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_EW_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_EW_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_EW_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_EW_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_EW_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_EW_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_EW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_in_E(15 downto 8),
      O(7 downto 0) => raw_diff_EW00_out(15 downto 8),
      S(7) => \phase_err.raw_diff_EW[15]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_EW[15]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_EW[15]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_EW[15]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_EW[15]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_EW[15]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_EW[15]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_EW[15]_i_9_n_0\
    );
\phase_err.raw_diff_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(16),
      Q => raw_diff_EW(16),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(17),
      Q => raw_diff_EW(17),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(18),
      Q => raw_diff_EW(18),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(19),
      Q => raw_diff_EW(19),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_EW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_phase_err.raw_diff_EW_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \phase_err.raw_diff_EW_reg[19]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_EW_reg[19]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_EW_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_in_E(18 downto 16),
      O(7 downto 4) => \NLW_phase_err.raw_diff_EW_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => raw_diff_EW00_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \phase_err.raw_diff_EW[19]_i_2_n_0\,
      S(2) => \phase_err.raw_diff_EW[19]_i_3_n_0\,
      S(1) => \phase_err.raw_diff_EW[19]_i_4_n_0\,
      S(0) => \phase_err.raw_diff_EW[19]_i_5_n_0\
    );
\phase_err.raw_diff_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(1),
      Q => raw_diff_EW(1),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(2),
      Q => raw_diff_EW(2),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(3),
      Q => raw_diff_EW(3),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(4),
      Q => raw_diff_EW(4),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(5),
      Q => raw_diff_EW(5),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(6),
      Q => raw_diff_EW(6),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(7),
      Q => raw_diff_EW(7),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_EW_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_EW_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_EW_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_EW_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_EW_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_EW_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_EW_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_EW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_in_E(7 downto 0),
      O(7 downto 0) => raw_diff_EW00_out(7 downto 0),
      S(7) => \phase_err.raw_diff_EW[7]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_EW[7]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_EW[7]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_EW[7]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_EW[7]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_EW[7]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_EW[7]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_EW[7]_i_9_n_0\
    );
\phase_err.raw_diff_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(8),
      Q => raw_diff_EW(8),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_EW00_out(9),
      Q => raw_diff_EW(9),
      R => '0'
    );
\phase_err.raw_diff_NE[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(15),
      I1 => phase_in_E(15),
      O => \phase_err.raw_diff_NE[15]_i_2_n_0\
    );
\phase_err.raw_diff_NE[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(14),
      I1 => phase_in_E(14),
      O => \phase_err.raw_diff_NE[15]_i_3_n_0\
    );
\phase_err.raw_diff_NE[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(13),
      I1 => phase_in_E(13),
      O => \phase_err.raw_diff_NE[15]_i_4_n_0\
    );
\phase_err.raw_diff_NE[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(12),
      I1 => phase_in_E(12),
      O => \phase_err.raw_diff_NE[15]_i_5_n_0\
    );
\phase_err.raw_diff_NE[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(11),
      I1 => phase_in_E(11),
      O => \phase_err.raw_diff_NE[15]_i_6_n_0\
    );
\phase_err.raw_diff_NE[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(10),
      I1 => phase_in_E(10),
      O => \phase_err.raw_diff_NE[15]_i_7_n_0\
    );
\phase_err.raw_diff_NE[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(9),
      I1 => phase_in_E(9),
      O => \phase_err.raw_diff_NE[15]_i_8_n_0\
    );
\phase_err.raw_diff_NE[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(8),
      I1 => phase_in_E(8),
      O => \phase_err.raw_diff_NE[15]_i_9_n_0\
    );
\phase_err.raw_diff_NE[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(19),
      I1 => phase_in_E(19),
      O => \phase_err.raw_diff_NE[19]_i_2_n_0\
    );
\phase_err.raw_diff_NE[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(18),
      I1 => phase_in_E(18),
      O => \phase_err.raw_diff_NE[19]_i_3_n_0\
    );
\phase_err.raw_diff_NE[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(17),
      I1 => phase_in_E(17),
      O => \phase_err.raw_diff_NE[19]_i_4_n_0\
    );
\phase_err.raw_diff_NE[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(16),
      I1 => phase_in_E(16),
      O => \phase_err.raw_diff_NE[19]_i_5_n_0\
    );
\phase_err.raw_diff_NE[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(7),
      I1 => phase_in_E(7),
      O => \phase_err.raw_diff_NE[7]_i_2_n_0\
    );
\phase_err.raw_diff_NE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(6),
      I1 => phase_in_E(6),
      O => \phase_err.raw_diff_NE[7]_i_3_n_0\
    );
\phase_err.raw_diff_NE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(5),
      I1 => phase_in_E(5),
      O => \phase_err.raw_diff_NE[7]_i_4_n_0\
    );
\phase_err.raw_diff_NE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(4),
      I1 => phase_in_E(4),
      O => \phase_err.raw_diff_NE[7]_i_5_n_0\
    );
\phase_err.raw_diff_NE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(3),
      I1 => phase_in_E(3),
      O => \phase_err.raw_diff_NE[7]_i_6_n_0\
    );
\phase_err.raw_diff_NE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(2),
      I1 => phase_in_E(2),
      O => \phase_err.raw_diff_NE[7]_i_7_n_0\
    );
\phase_err.raw_diff_NE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(1),
      I1 => phase_in_E(1),
      O => \phase_err.raw_diff_NE[7]_i_8_n_0\
    );
\phase_err.raw_diff_NE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(0),
      I1 => phase_in_E(0),
      O => \phase_err.raw_diff_NE[7]_i_9_n_0\
    );
\phase_err.raw_diff_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(0),
      Q => raw_diff_NE(0),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(10),
      Q => raw_diff_NE(10),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(11),
      Q => raw_diff_NE(11),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(12),
      Q => raw_diff_NE(12),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(13),
      Q => raw_diff_NE(13),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(14),
      Q => raw_diff_NE(14),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(15),
      Q => raw_diff_NE(15),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_NE_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_NE_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_NE_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_NE_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_NE_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_NE_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_NE_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NE_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NE_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_in_N(15 downto 8),
      O(7 downto 0) => raw_diff_NE01_out(15 downto 8),
      S(7) => \phase_err.raw_diff_NE[15]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_NE[15]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_NE[15]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_NE[15]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_NE[15]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_NE[15]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_NE[15]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_NE[15]_i_9_n_0\
    );
\phase_err.raw_diff_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(16),
      Q => raw_diff_NE(16),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(17),
      Q => raw_diff_NE(17),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(18),
      Q => raw_diff_NE(18),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(19),
      Q => raw_diff_NE(19),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_NE_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_phase_err.raw_diff_NE_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \phase_err.raw_diff_NE_reg[19]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NE_reg[19]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NE_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_in_N(18 downto 16),
      O(7 downto 4) => \NLW_phase_err.raw_diff_NE_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => raw_diff_NE01_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \phase_err.raw_diff_NE[19]_i_2_n_0\,
      S(2) => \phase_err.raw_diff_NE[19]_i_3_n_0\,
      S(1) => \phase_err.raw_diff_NE[19]_i_4_n_0\,
      S(0) => \phase_err.raw_diff_NE[19]_i_5_n_0\
    );
\phase_err.raw_diff_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(1),
      Q => raw_diff_NE(1),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(2),
      Q => raw_diff_NE(2),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(3),
      Q => raw_diff_NE(3),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(4),
      Q => raw_diff_NE(4),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(5),
      Q => raw_diff_NE(5),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(6),
      Q => raw_diff_NE(6),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(7),
      Q => raw_diff_NE(7),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_NE_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_NE_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_NE_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_NE_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_NE_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_NE_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NE_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NE_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_in_N(7 downto 0),
      O(7 downto 0) => raw_diff_NE01_out(7 downto 0),
      S(7) => \phase_err.raw_diff_NE[7]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_NE[7]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_NE[7]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_NE[7]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_NE[7]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_NE[7]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_NE[7]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_NE[7]_i_9_n_0\
    );
\phase_err.raw_diff_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(8),
      Q => raw_diff_NE(8),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NE01_out(9),
      Q => raw_diff_NE(9),
      R => '0'
    );
\phase_err.raw_diff_NW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(15),
      I1 => phase_in_W(15),
      O => \phase_err.raw_diff_NW[15]_i_2_n_0\
    );
\phase_err.raw_diff_NW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(14),
      I1 => phase_in_W(14),
      O => \phase_err.raw_diff_NW[15]_i_3_n_0\
    );
\phase_err.raw_diff_NW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(13),
      I1 => phase_in_W(13),
      O => \phase_err.raw_diff_NW[15]_i_4_n_0\
    );
\phase_err.raw_diff_NW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(12),
      I1 => phase_in_W(12),
      O => \phase_err.raw_diff_NW[15]_i_5_n_0\
    );
\phase_err.raw_diff_NW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(11),
      I1 => phase_in_W(11),
      O => \phase_err.raw_diff_NW[15]_i_6_n_0\
    );
\phase_err.raw_diff_NW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(10),
      I1 => phase_in_W(10),
      O => \phase_err.raw_diff_NW[15]_i_7_n_0\
    );
\phase_err.raw_diff_NW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(9),
      I1 => phase_in_W(9),
      O => \phase_err.raw_diff_NW[15]_i_8_n_0\
    );
\phase_err.raw_diff_NW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(8),
      I1 => phase_in_W(8),
      O => \phase_err.raw_diff_NW[15]_i_9_n_0\
    );
\phase_err.raw_diff_NW[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(19),
      I1 => phase_in_W(19),
      O => \phase_err.raw_diff_NW[19]_i_2_n_0\
    );
\phase_err.raw_diff_NW[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(18),
      I1 => phase_in_W(18),
      O => \phase_err.raw_diff_NW[19]_i_3_n_0\
    );
\phase_err.raw_diff_NW[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(17),
      I1 => phase_in_W(17),
      O => \phase_err.raw_diff_NW[19]_i_4_n_0\
    );
\phase_err.raw_diff_NW[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(16),
      I1 => phase_in_W(16),
      O => \phase_err.raw_diff_NW[19]_i_5_n_0\
    );
\phase_err.raw_diff_NW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(7),
      I1 => phase_in_W(7),
      O => \phase_err.raw_diff_NW[7]_i_2_n_0\
    );
\phase_err.raw_diff_NW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(6),
      I1 => phase_in_W(6),
      O => \phase_err.raw_diff_NW[7]_i_3_n_0\
    );
\phase_err.raw_diff_NW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(5),
      I1 => phase_in_W(5),
      O => \phase_err.raw_diff_NW[7]_i_4_n_0\
    );
\phase_err.raw_diff_NW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(4),
      I1 => phase_in_W(4),
      O => \phase_err.raw_diff_NW[7]_i_5_n_0\
    );
\phase_err.raw_diff_NW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(3),
      I1 => phase_in_W(3),
      O => \phase_err.raw_diff_NW[7]_i_6_n_0\
    );
\phase_err.raw_diff_NW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(2),
      I1 => phase_in_W(2),
      O => \phase_err.raw_diff_NW[7]_i_7_n_0\
    );
\phase_err.raw_diff_NW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(1),
      I1 => phase_in_W(1),
      O => \phase_err.raw_diff_NW[7]_i_8_n_0\
    );
\phase_err.raw_diff_NW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(0),
      I1 => phase_in_W(0),
      O => \phase_err.raw_diff_NW[7]_i_9_n_0\
    );
\phase_err.raw_diff_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(0),
      Q => raw_diff_NW(0),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(10),
      Q => raw_diff_NW(10),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(11),
      Q => raw_diff_NW(11),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(12),
      Q => raw_diff_NW(12),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(13),
      Q => raw_diff_NW(13),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(14),
      Q => raw_diff_NW(14),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(15),
      Q => raw_diff_NW(15),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_NW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_NW_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_NW_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_NW_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_NW_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_NW_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_NW_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NW_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_in_N(15 downto 8),
      O(7 downto 0) => raw_diff_NW0(15 downto 8),
      S(7) => \phase_err.raw_diff_NW[15]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_NW[15]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_NW[15]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_NW[15]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_NW[15]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_NW[15]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_NW[15]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_NW[15]_i_9_n_0\
    );
\phase_err.raw_diff_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(16),
      Q => raw_diff_NW(16),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(17),
      Q => raw_diff_NW(17),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(18),
      Q => raw_diff_NW(18),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(19),
      Q => raw_diff_NW(19),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_NW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_phase_err.raw_diff_NW_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \phase_err.raw_diff_NW_reg[19]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NW_reg[19]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NW_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_in_N(18 downto 16),
      O(7 downto 4) => \NLW_phase_err.raw_diff_NW_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => raw_diff_NW0(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \phase_err.raw_diff_NW[19]_i_2_n_0\,
      S(2) => \phase_err.raw_diff_NW[19]_i_3_n_0\,
      S(1) => \phase_err.raw_diff_NW[19]_i_4_n_0\,
      S(0) => \phase_err.raw_diff_NW[19]_i_5_n_0\
    );
\phase_err.raw_diff_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(1),
      Q => raw_diff_NW(1),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(2),
      Q => raw_diff_NW(2),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(3),
      Q => raw_diff_NW(3),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(4),
      Q => raw_diff_NW(4),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(5),
      Q => raw_diff_NW(5),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(6),
      Q => raw_diff_NW(6),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(7),
      Q => raw_diff_NW(7),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_NW_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_NW_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_NW_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_NW_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_NW_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_NW_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NW_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_in_N(7 downto 0),
      O(7 downto 0) => raw_diff_NW0(7 downto 0),
      S(7) => \phase_err.raw_diff_NW[7]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_NW[7]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_NW[7]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_NW[7]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_NW[7]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_NW[7]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_NW[7]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_NW[7]_i_9_n_0\
    );
\phase_err.raw_diff_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(8),
      Q => raw_diff_NW(8),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_diff_NW0(9),
      Q => raw_diff_NW(9),
      R => '0'
    );
\phase_err.raw_err_EW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(15),
      I1 => prev_EW(15),
      O => \phase_err.raw_err_EW[15]_i_2_n_0\
    );
\phase_err.raw_err_EW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(14),
      I1 => prev_EW(14),
      O => \phase_err.raw_err_EW[15]_i_3_n_0\
    );
\phase_err.raw_err_EW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(13),
      I1 => prev_EW(13),
      O => \phase_err.raw_err_EW[15]_i_4_n_0\
    );
\phase_err.raw_err_EW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(12),
      I1 => prev_EW(12),
      O => \phase_err.raw_err_EW[15]_i_5_n_0\
    );
\phase_err.raw_err_EW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(11),
      I1 => prev_EW(11),
      O => \phase_err.raw_err_EW[15]_i_6_n_0\
    );
\phase_err.raw_err_EW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(10),
      I1 => prev_EW(10),
      O => \phase_err.raw_err_EW[15]_i_7_n_0\
    );
\phase_err.raw_err_EW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(9),
      I1 => prev_EW(9),
      O => \phase_err.raw_err_EW[15]_i_8_n_0\
    );
\phase_err.raw_err_EW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(8),
      I1 => prev_EW(8),
      O => \phase_err.raw_err_EW[15]_i_9_n_0\
    );
\phase_err.raw_err_EW[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(18),
      I1 => prev_EW(18),
      O => \phase_err.raw_err_EW[18]_i_2_n_0\
    );
\phase_err.raw_err_EW[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(17),
      I1 => prev_EW(17),
      O => \phase_err.raw_err_EW[18]_i_3_n_0\
    );
\phase_err.raw_err_EW[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(16),
      I1 => prev_EW(16),
      O => \phase_err.raw_err_EW[18]_i_4_n_0\
    );
\phase_err.raw_err_EW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(7),
      I1 => prev_EW(7),
      O => \phase_err.raw_err_EW[7]_i_2_n_0\
    );
\phase_err.raw_err_EW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(6),
      I1 => prev_EW(6),
      O => \phase_err.raw_err_EW[7]_i_3_n_0\
    );
\phase_err.raw_err_EW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(5),
      I1 => prev_EW(5),
      O => \phase_err.raw_err_EW[7]_i_4_n_0\
    );
\phase_err.raw_err_EW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(4),
      I1 => prev_EW(4),
      O => \phase_err.raw_err_EW[7]_i_5_n_0\
    );
\phase_err.raw_err_EW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(3),
      I1 => prev_EW(3),
      O => \phase_err.raw_err_EW[7]_i_6_n_0\
    );
\phase_err.raw_err_EW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(2),
      I1 => prev_EW(2),
      O => \phase_err.raw_err_EW[7]_i_7_n_0\
    );
\phase_err.raw_err_EW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(1),
      I1 => prev_EW(1),
      O => \phase_err.raw_err_EW[7]_i_8_n_0\
    );
\phase_err.raw_err_EW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(0),
      I1 => prev_EW(0),
      O => \phase_err.raw_err_EW[7]_i_9_n_0\
    );
\phase_err.raw_err_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(0),
      Q => \phase_err.raw_err_EW_reg_n_0_[0]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(10),
      Q => \phase_err.raw_err_EW_reg_n_0_[10]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(11),
      Q => \phase_err.raw_err_EW_reg_n_0_[11]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(12),
      Q => \phase_err.raw_err_EW_reg_n_0_[12]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(13),
      Q => \phase_err.raw_err_EW_reg_n_0_[13]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(14),
      Q => \phase_err.raw_err_EW_reg_n_0_[14]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(15),
      Q => \phase_err.raw_err_EW_reg_n_0_[15]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_EW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_EW_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_EW_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_EW_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_EW_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_EW_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_EW_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_EW_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_EW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => diff_EW(15 downto 8),
      O(7 downto 0) => raw_err_EW00_out(15 downto 8),
      S(7) => \phase_err.raw_err_EW[15]_i_2_n_0\,
      S(6) => \phase_err.raw_err_EW[15]_i_3_n_0\,
      S(5) => \phase_err.raw_err_EW[15]_i_4_n_0\,
      S(4) => \phase_err.raw_err_EW[15]_i_5_n_0\,
      S(3) => \phase_err.raw_err_EW[15]_i_6_n_0\,
      S(2) => \phase_err.raw_err_EW[15]_i_7_n_0\,
      S(1) => \phase_err.raw_err_EW[15]_i_8_n_0\,
      S(0) => \phase_err.raw_err_EW[15]_i_9_n_0\
    );
\phase_err.raw_err_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(16),
      Q => \phase_err.raw_err_EW_reg_n_0_[16]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(17),
      Q => \phase_err.raw_err_EW_reg_n_0_[17]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(18),
      Q => \phase_err.raw_err_EW_reg_n_0_[18]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[18]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_EW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_phase_err.raw_err_EW_reg[18]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \phase_err.raw_err_EW_reg[18]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_EW_reg[18]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => diff_EW(17 downto 16),
      O(7 downto 3) => \NLW_phase_err.raw_err_EW_reg[18]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => raw_err_EW00_out(18 downto 16),
      S(7 downto 3) => B"00000",
      S(2) => \phase_err.raw_err_EW[18]_i_2_n_0\,
      S(1) => \phase_err.raw_err_EW[18]_i_3_n_0\,
      S(0) => \phase_err.raw_err_EW[18]_i_4_n_0\
    );
\phase_err.raw_err_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(1),
      Q => \phase_err.raw_err_EW_reg_n_0_[1]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(2),
      Q => \phase_err.raw_err_EW_reg_n_0_[2]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(3),
      Q => \phase_err.raw_err_EW_reg_n_0_[3]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(4),
      Q => \phase_err.raw_err_EW_reg_n_0_[4]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(5),
      Q => \phase_err.raw_err_EW_reg_n_0_[5]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(6),
      Q => \phase_err.raw_err_EW_reg_n_0_[6]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(7),
      Q => \phase_err.raw_err_EW_reg_n_0_[7]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_EW_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_EW_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_EW_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_EW_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_EW_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_EW_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_EW_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_EW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => diff_EW(7 downto 0),
      O(7 downto 0) => raw_err_EW00_out(7 downto 0),
      S(7) => \phase_err.raw_err_EW[7]_i_2_n_0\,
      S(6) => \phase_err.raw_err_EW[7]_i_3_n_0\,
      S(5) => \phase_err.raw_err_EW[7]_i_4_n_0\,
      S(4) => \phase_err.raw_err_EW[7]_i_5_n_0\,
      S(3) => \phase_err.raw_err_EW[7]_i_6_n_0\,
      S(2) => \phase_err.raw_err_EW[7]_i_7_n_0\,
      S(1) => \phase_err.raw_err_EW[7]_i_8_n_0\,
      S(0) => \phase_err.raw_err_EW[7]_i_9_n_0\
    );
\phase_err.raw_err_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(8),
      Q => \phase_err.raw_err_EW_reg_n_0_[8]\,
      R => '0'
    );
\phase_err.raw_err_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_EW00_out(9),
      Q => \phase_err.raw_err_EW_reg_n_0_[9]\,
      R => '0'
    );
\phase_err.raw_err_NE[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(15),
      I1 => prev_NE(15),
      O => \phase_err.raw_err_NE[15]_i_2_n_0\
    );
\phase_err.raw_err_NE[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(14),
      I1 => prev_NE(14),
      O => \phase_err.raw_err_NE[15]_i_3_n_0\
    );
\phase_err.raw_err_NE[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(13),
      I1 => prev_NE(13),
      O => \phase_err.raw_err_NE[15]_i_4_n_0\
    );
\phase_err.raw_err_NE[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(12),
      I1 => prev_NE(12),
      O => \phase_err.raw_err_NE[15]_i_5_n_0\
    );
\phase_err.raw_err_NE[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(11),
      I1 => prev_NE(11),
      O => \phase_err.raw_err_NE[15]_i_6_n_0\
    );
\phase_err.raw_err_NE[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(10),
      I1 => prev_NE(10),
      O => \phase_err.raw_err_NE[15]_i_7_n_0\
    );
\phase_err.raw_err_NE[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(9),
      I1 => prev_NE(9),
      O => \phase_err.raw_err_NE[15]_i_8_n_0\
    );
\phase_err.raw_err_NE[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(8),
      I1 => prev_NE(8),
      O => \phase_err.raw_err_NE[15]_i_9_n_0\
    );
\phase_err.raw_err_NE[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(18),
      I1 => prev_NE(18),
      O => \phase_err.raw_err_NE[18]_i_2_n_0\
    );
\phase_err.raw_err_NE[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(17),
      I1 => prev_NE(17),
      O => \phase_err.raw_err_NE[18]_i_3_n_0\
    );
\phase_err.raw_err_NE[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(16),
      I1 => prev_NE(16),
      O => \phase_err.raw_err_NE[18]_i_4_n_0\
    );
\phase_err.raw_err_NE[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(7),
      I1 => prev_NE(7),
      O => \phase_err.raw_err_NE[7]_i_2_n_0\
    );
\phase_err.raw_err_NE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(6),
      I1 => prev_NE(6),
      O => \phase_err.raw_err_NE[7]_i_3_n_0\
    );
\phase_err.raw_err_NE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(5),
      I1 => prev_NE(5),
      O => \phase_err.raw_err_NE[7]_i_4_n_0\
    );
\phase_err.raw_err_NE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(4),
      I1 => prev_NE(4),
      O => \phase_err.raw_err_NE[7]_i_5_n_0\
    );
\phase_err.raw_err_NE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(3),
      I1 => prev_NE(3),
      O => \phase_err.raw_err_NE[7]_i_6_n_0\
    );
\phase_err.raw_err_NE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(2),
      I1 => prev_NE(2),
      O => \phase_err.raw_err_NE[7]_i_7_n_0\
    );
\phase_err.raw_err_NE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(1),
      I1 => prev_NE(1),
      O => \phase_err.raw_err_NE[7]_i_8_n_0\
    );
\phase_err.raw_err_NE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(0),
      I1 => prev_NE(0),
      O => \phase_err.raw_err_NE[7]_i_9_n_0\
    );
\phase_err.raw_err_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(0),
      Q => \phase_err.raw_err_NE_reg_n_0_[0]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(10),
      Q => \phase_err.raw_err_NE_reg_n_0_[10]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(11),
      Q => \phase_err.raw_err_NE_reg_n_0_[11]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(12),
      Q => sel0(0),
      R => '0'
    );
\phase_err.raw_err_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(13),
      Q => sel0(1),
      R => '0'
    );
\phase_err.raw_err_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(14),
      Q => sel0(2),
      R => '0'
    );
\phase_err.raw_err_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(15),
      Q => sel0(3),
      R => '0'
    );
\phase_err.raw_err_NE_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_NE_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_NE_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_NE_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_NE_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_NE_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_NE_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_NE_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_NE_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NE_reg[15]_i_1_n_7\,
      DI(7 downto 0) => diff_NE(15 downto 8),
      O(7 downto 0) => raw_err_NE02_out(15 downto 8),
      S(7) => \phase_err.raw_err_NE[15]_i_2_n_0\,
      S(6) => \phase_err.raw_err_NE[15]_i_3_n_0\,
      S(5) => \phase_err.raw_err_NE[15]_i_4_n_0\,
      S(4) => \phase_err.raw_err_NE[15]_i_5_n_0\,
      S(3) => \phase_err.raw_err_NE[15]_i_6_n_0\,
      S(2) => \phase_err.raw_err_NE[15]_i_7_n_0\,
      S(1) => \phase_err.raw_err_NE[15]_i_8_n_0\,
      S(0) => \phase_err.raw_err_NE[15]_i_9_n_0\
    );
\phase_err.raw_err_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(16),
      Q => sel0(4),
      R => '0'
    );
\phase_err.raw_err_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(17),
      Q => sel0(5),
      R => '0'
    );
\phase_err.raw_err_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(18),
      Q => sel0(6),
      R => '0'
    );
\phase_err.raw_err_NE_reg[18]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_NE_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_phase_err.raw_err_NE_reg[18]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \phase_err.raw_err_NE_reg[18]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NE_reg[18]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => diff_NE(17 downto 16),
      O(7 downto 3) => \NLW_phase_err.raw_err_NE_reg[18]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => raw_err_NE02_out(18 downto 16),
      S(7 downto 3) => B"00000",
      S(2) => \phase_err.raw_err_NE[18]_i_2_n_0\,
      S(1) => \phase_err.raw_err_NE[18]_i_3_n_0\,
      S(0) => \phase_err.raw_err_NE[18]_i_4_n_0\
    );
\phase_err.raw_err_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(1),
      Q => \phase_err.raw_err_NE_reg_n_0_[1]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(2),
      Q => \phase_err.raw_err_NE_reg_n_0_[2]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(3),
      Q => \phase_err.raw_err_NE_reg_n_0_[3]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(4),
      Q => \phase_err.raw_err_NE_reg_n_0_[4]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(5),
      Q => \phase_err.raw_err_NE_reg_n_0_[5]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(6),
      Q => \phase_err.raw_err_NE_reg_n_0_[6]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(7),
      Q => \phase_err.raw_err_NE_reg_n_0_[7]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_NE_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_NE_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_NE_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_NE_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_NE_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_NE_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_NE_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NE_reg[7]_i_1_n_7\,
      DI(7 downto 0) => diff_NE(7 downto 0),
      O(7 downto 0) => raw_err_NE02_out(7 downto 0),
      S(7) => \phase_err.raw_err_NE[7]_i_2_n_0\,
      S(6) => \phase_err.raw_err_NE[7]_i_3_n_0\,
      S(5) => \phase_err.raw_err_NE[7]_i_4_n_0\,
      S(4) => \phase_err.raw_err_NE[7]_i_5_n_0\,
      S(3) => \phase_err.raw_err_NE[7]_i_6_n_0\,
      S(2) => \phase_err.raw_err_NE[7]_i_7_n_0\,
      S(1) => \phase_err.raw_err_NE[7]_i_8_n_0\,
      S(0) => \phase_err.raw_err_NE[7]_i_9_n_0\
    );
\phase_err.raw_err_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(8),
      Q => \phase_err.raw_err_NE_reg_n_0_[8]\,
      R => '0'
    );
\phase_err.raw_err_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NE02_out(9),
      Q => \phase_err.raw_err_NE_reg_n_0_[9]\,
      R => '0'
    );
\phase_err.raw_err_NW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(15),
      I1 => prev_NW(15),
      O => \phase_err.raw_err_NW[15]_i_2_n_0\
    );
\phase_err.raw_err_NW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(14),
      I1 => prev_NW(14),
      O => \phase_err.raw_err_NW[15]_i_3_n_0\
    );
\phase_err.raw_err_NW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(13),
      I1 => prev_NW(13),
      O => \phase_err.raw_err_NW[15]_i_4_n_0\
    );
\phase_err.raw_err_NW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(12),
      I1 => prev_NW(12),
      O => \phase_err.raw_err_NW[15]_i_5_n_0\
    );
\phase_err.raw_err_NW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(11),
      I1 => prev_NW(11),
      O => \phase_err.raw_err_NW[15]_i_6_n_0\
    );
\phase_err.raw_err_NW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(10),
      I1 => prev_NW(10),
      O => \phase_err.raw_err_NW[15]_i_7_n_0\
    );
\phase_err.raw_err_NW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(9),
      I1 => prev_NW(9),
      O => \phase_err.raw_err_NW[15]_i_8_n_0\
    );
\phase_err.raw_err_NW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(8),
      I1 => prev_NW(8),
      O => \phase_err.raw_err_NW[15]_i_9_n_0\
    );
\phase_err.raw_err_NW[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(18),
      I1 => prev_NW(18),
      O => \phase_err.raw_err_NW[18]_i_2_n_0\
    );
\phase_err.raw_err_NW[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(17),
      I1 => prev_NW(17),
      O => \phase_err.raw_err_NW[18]_i_3_n_0\
    );
\phase_err.raw_err_NW[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(16),
      I1 => prev_NW(16),
      O => \phase_err.raw_err_NW[18]_i_4_n_0\
    );
\phase_err.raw_err_NW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(7),
      I1 => prev_NW(7),
      O => \phase_err.raw_err_NW[7]_i_2_n_0\
    );
\phase_err.raw_err_NW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(6),
      I1 => prev_NW(6),
      O => \phase_err.raw_err_NW[7]_i_3_n_0\
    );
\phase_err.raw_err_NW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(5),
      I1 => prev_NW(5),
      O => \phase_err.raw_err_NW[7]_i_4_n_0\
    );
\phase_err.raw_err_NW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(4),
      I1 => prev_NW(4),
      O => \phase_err.raw_err_NW[7]_i_5_n_0\
    );
\phase_err.raw_err_NW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(3),
      I1 => prev_NW(3),
      O => \phase_err.raw_err_NW[7]_i_6_n_0\
    );
\phase_err.raw_err_NW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(2),
      I1 => prev_NW(2),
      O => \phase_err.raw_err_NW[7]_i_7_n_0\
    );
\phase_err.raw_err_NW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(1),
      I1 => prev_NW(1),
      O => \phase_err.raw_err_NW[7]_i_8_n_0\
    );
\phase_err.raw_err_NW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(0),
      I1 => prev_NW(0),
      O => \phase_err.raw_err_NW[7]_i_9_n_0\
    );
\phase_err.raw_err_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(0),
      Q => \phase_err.raw_err_NW_reg_n_0_[0]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(10),
      Q => \phase_err.raw_err_NW_reg_n_0_[10]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(11),
      Q => \phase_err.raw_err_NW_reg_n_0_[11]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(12),
      Q => \phase_err.raw_err_NW_reg_n_0_[12]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(13),
      Q => \phase_err.raw_err_NW_reg_n_0_[13]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(14),
      Q => \phase_err.raw_err_NW_reg_n_0_[14]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(15),
      Q => \phase_err.raw_err_NW_reg_n_0_[15]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_NW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_NW_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_NW_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_NW_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_NW_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_NW_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_NW_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_NW_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => diff_NW(15 downto 8),
      O(7 downto 0) => raw_err_NW01_out(15 downto 8),
      S(7) => \phase_err.raw_err_NW[15]_i_2_n_0\,
      S(6) => \phase_err.raw_err_NW[15]_i_3_n_0\,
      S(5) => \phase_err.raw_err_NW[15]_i_4_n_0\,
      S(4) => \phase_err.raw_err_NW[15]_i_5_n_0\,
      S(3) => \phase_err.raw_err_NW[15]_i_6_n_0\,
      S(2) => \phase_err.raw_err_NW[15]_i_7_n_0\,
      S(1) => \phase_err.raw_err_NW[15]_i_8_n_0\,
      S(0) => \phase_err.raw_err_NW[15]_i_9_n_0\
    );
\phase_err.raw_err_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(16),
      Q => \phase_err.raw_err_NW_reg_n_0_[16]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(17),
      Q => \phase_err.raw_err_NW_reg_n_0_[17]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(18),
      Q => \phase_err.raw_err_NW_reg_n_0_[18]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[18]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_NW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_phase_err.raw_err_NW_reg[18]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \phase_err.raw_err_NW_reg[18]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NW_reg[18]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => diff_NW(17 downto 16),
      O(7 downto 3) => \NLW_phase_err.raw_err_NW_reg[18]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => raw_err_NW01_out(18 downto 16),
      S(7 downto 3) => B"00000",
      S(2) => \phase_err.raw_err_NW[18]_i_2_n_0\,
      S(1) => \phase_err.raw_err_NW[18]_i_3_n_0\,
      S(0) => \phase_err.raw_err_NW[18]_i_4_n_0\
    );
\phase_err.raw_err_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(1),
      Q => \phase_err.raw_err_NW_reg_n_0_[1]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(2),
      Q => \phase_err.raw_err_NW_reg_n_0_[2]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(3),
      Q => \phase_err.raw_err_NW_reg_n_0_[3]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(4),
      Q => \phase_err.raw_err_NW_reg_n_0_[4]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(5),
      Q => \phase_err.raw_err_NW_reg_n_0_[5]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(6),
      Q => \phase_err.raw_err_NW_reg_n_0_[6]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(7),
      Q => \phase_err.raw_err_NW_reg_n_0_[7]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_NW_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_NW_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_NW_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_NW_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_NW_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_NW_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_NW_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => diff_NW(7 downto 0),
      O(7 downto 0) => raw_err_NW01_out(7 downto 0),
      S(7) => \phase_err.raw_err_NW[7]_i_2_n_0\,
      S(6) => \phase_err.raw_err_NW[7]_i_3_n_0\,
      S(5) => \phase_err.raw_err_NW[7]_i_4_n_0\,
      S(4) => \phase_err.raw_err_NW[7]_i_5_n_0\,
      S(3) => \phase_err.raw_err_NW[7]_i_6_n_0\,
      S(2) => \phase_err.raw_err_NW[7]_i_7_n_0\,
      S(1) => \phase_err.raw_err_NW[7]_i_8_n_0\,
      S(0) => \phase_err.raw_err_NW[7]_i_9_n_0\
    );
\phase_err.raw_err_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(8),
      Q => \phase_err.raw_err_NW_reg_n_0_[8]\,
      R => '0'
    );
\phase_err.raw_err_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => raw_err_NW01_out(9),
      Q => \phase_err.raw_err_NW_reg_n_0_[9]\,
      R => '0'
    );
\phase_err.valid_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active,
      Q => valid_1,
      R => '0'
    );
\phase_err.valid_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_1,
      Q => valid_2,
      R => '0'
    );
\phase_err.valid_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_2,
      Q => valid_3,
      R => '0'
    );
\phase_err.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_3,
      Q => valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0_morlet_to_phase_env is
  port (
    valid_W : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_1\ : in STD_LOGIC
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
  signal \^valid_w\ : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
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
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_1__1\ : label is "soft_lutpair49";
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
  valid_W <= \^valid_w\;
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
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[3]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.delay[4]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_1\,
      I4 => \morlet_to_phase_env.delay_reg\(4),
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
      INIT => X"7555555555555554"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_1\,
      I1 => \morlet_to_phase_env.delay_reg\(2),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.env[15]_i_1__1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\,
      Q => Q(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\,
      Q => Q(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\,
      Q => Q(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\,
      Q => Q(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\,
      Q => Q(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\,
      Q => Q(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\,
      Q => Q(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\,
      Q => Q(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\,
      Q => Q(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\,
      Q => Q(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\,
      Q => Q(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\,
      Q => Q(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\,
      Q => Q(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\,
      Q => Q(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\,
      Q => Q(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\,
      Q => Q(9),
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
      Q => \morlet_to_phase_env.phase_reg[19]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(10),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(11),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(12),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(13),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(14),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(15),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(16),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(17),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(18),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(19),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(1),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(2),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(3),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(4),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(5),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(6),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(7),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(8),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(9),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF040404FF04"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2__1_n_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.valid_i_3__1_n_0\,
      I4 => \morlet_to_phase_env.phase_reg[19]_1\,
      I5 => \^valid_w\,
      O => \morlet_to_phase_env.valid_i_1__1_n_0\
    );
\morlet_to_phase_env.valid_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.valid_i_2__1_n_0\
    );
\morlet_to_phase_env.valid_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.valid_i_3__1_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1__1_n_0\,
      Q => \^valid_w\,
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
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
tan2_i: component cordic_atan2_16_HD7
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ is
  port (
    active : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_1\ : in STD_LOGIC;
    valid_E : in STD_LOGIC;
    valid_W : in STD_LOGIC
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
  signal valid_N : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
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
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_2\ : label is "soft_lutpair47";
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
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(0),
      O => delay0
    );
\morlet_to_phase_env.delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
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
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_1\,
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
      INIT => X"7555555555555554"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_1\,
      I1 => \morlet_to_phase_env.delay_reg\(2),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.env[15]_i_1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(0),
      Q => Q(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(10),
      Q => Q(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(11),
      Q => Q(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(12),
      Q => Q(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(13),
      Q => Q(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(14),
      Q => Q(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(15),
      Q => Q(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(1),
      Q => Q(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(2),
      Q => Q(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(3),
      Q => Q(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(4),
      Q => Q(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(5),
      Q => Q(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(6),
      Q => Q(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(7),
      Q => Q(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(8),
      Q => Q(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(9),
      Q => Q(9),
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
      Q => \morlet_to_phase_env.phase_reg[19]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(10),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(11),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(12),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(13),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(14),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(15),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(16),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(17),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(18),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(19),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(1),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(2),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(3),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(4),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(5),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(6),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(7),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(8),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(9),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF040404FF04"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2_n_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.valid_i_3_n_0\,
      I4 => \morlet_to_phase_env.phase_reg[19]_1\,
      I5 => valid_N,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.valid_i_2_n_0\
    );
\morlet_to_phase_env.valid_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.valid_i_3_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => valid_N,
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
phase_err_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => valid_N,
      I1 => valid_E,
      I2 => valid_W,
      O => active
    );
sqrt_i: component ps_freq_low_46_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
tan2_i: component ps_freq_low_46_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ is
  port (
    valid_E : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_1\ : in STD_LOGIC
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
  signal \^valid_e\ : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
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
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_1__0\ : label is "soft_lutpair45";
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
  valid_E <= \^valid_e\;
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
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[3]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.delay[4]_i_1_n_0\
    );
\morlet_to_phase_env.delay[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_1\,
      I4 => \morlet_to_phase_env.delay_reg\(4),
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
      INIT => X"7555555555555554"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_1\,
      I1 => \morlet_to_phase_env.delay_reg\(2),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.env[15]_i_1__0_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\,
      Q => Q(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\,
      Q => Q(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\,
      Q => Q(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\,
      Q => Q(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\,
      Q => Q(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\,
      Q => Q(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\,
      Q => Q(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\,
      Q => Q(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\,
      Q => Q(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\,
      Q => Q(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\,
      Q => Q(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\,
      Q => Q(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\,
      Q => Q(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\,
      Q => Q(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\,
      Q => Q(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\,
      Q => Q(9),
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
      Q => \morlet_to_phase_env.phase_reg[19]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(10),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(11),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(12),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(13),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(14),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(15),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(16),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(17),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(18),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(19),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(1),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(2),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(3),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(4),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(5),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(6),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(7),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(8),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(9),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF040404FF04"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2__0_n_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.valid_i_3__0_n_0\,
      I4 => \morlet_to_phase_env.phase_reg[19]_1\,
      I5 => \^valid_e\,
      O => \morlet_to_phase_env.valid_i_1__0_n_0\
    );
\morlet_to_phase_env.valid_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.valid_i_2__0_n_0\
    );
\morlet_to_phase_env.valid_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.valid_i_3__0_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1__0_n_0\,
      Q => \^valid_e\,
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
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
tan2_i: component ps_freq_low_46_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0_freq_low_46 is
  port (
    fifo_clk : in STD_LOGIC;
    raw_wr : in STD_LOGIC;
    raw_data : in STD_LOGIC_VECTOR ( 191 downto 0 );
    freq_wr : in STD_LOGIC;
    freq_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doa_wr : out STD_LOGIC;
    sample_data : out STD_LOGIC_VECTOR ( 191 downto 0 );
    doa_data : out STD_LOGIC_VECTOR ( 143 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_freq_low_46_0_0_freq_low_46 : entity is "freq_low_46";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_freq_low_46_0_0_freq_low_46 : entity is "soft";
end ps_freq_low_46_0_0_freq_low_46;

architecture STRUCTURE of ps_freq_low_46_0_0_freq_low_46 is
  component ps_freq_low_46_0_0_fifo_doa_low is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 47 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 47 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_freq_low_46_0_0_fifo_doa_low;
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
    probe5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_freq_low_46_0_0_ila_0;
  signal E : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal N : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal W : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal active0 : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal \^doa_wr\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of doa_wr : signal is std.standard.true;
  signal envE : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envE : signal is std.standard.true;
  signal envN : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envN : signal is std.standard.true;
  signal envW : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of envW : signal is std.standard.true;
  signal env_E : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_N : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_W : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal errEW : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal errNE : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal errNW : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fir_freq_low_re_N_i_i_1_n_0 : STD_LOGIC;
  signal fir_im_E : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_im_N : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_im_W : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_E : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_N : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_W : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal freq_fifo_data : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal freq_fifo_empty : STD_LOGIC;
  signal freq_fifo_rd : STD_LOGIC;
  attribute MARK_DEBUG of freq_fifo_rd : signal is std.standard.true;
  signal freq_fifo_valid : STD_LOGIC;
  signal freq_fifo_valid0 : STD_LOGIC;
  signal \freq_low_46.curr_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_10_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_11_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_12_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_13_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_14_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_5_n_0\ : STD_LOGIC;
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
  signal \freq_low_46.freq_fifo_rd_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \freq_low_46.morlet_active_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.morlet_active_reg_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_6_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal freq_rd_delay0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal phaseE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phaseN : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phaseW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_E0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_E0 : signal is std.standard.true;
  signal raw_N0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_N0 : signal is std.standard.true;
  signal raw_W0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_W0 : signal is std.standard.true;
  signal raw_fifo_data : STD_LOGIC_VECTOR ( 191 downto 16 );
  signal raw_fifo_empty : STD_LOGIC;
  attribute MARK_DEBUG of raw_fifo_empty : signal is std.standard.true;
  signal start_delay0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal valid : STD_LOGIC;
  signal valid_E : STD_LOGIC;
  signal valid_W : STD_LOGIC;
  signal NLW_fifo_freq_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_freq_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_freq_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE of fifo_freq_i : label is "fifo_doa_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_freq_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_freq_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_raw_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
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
  attribute KEEP of \freq_low_46.doa_wr_reg\ : label is "yes";
  attribute KEEP of \freq_low_46.freq_fifo_rd_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \freq_low_46.freq_rd_delay[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \freq_low_46.freq_rd_delay[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \freq_low_46.freq_rd_delay[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \freq_low_46.freq_rd_delay[4]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[4]_i_1\ : label is "soft_lutpair51";
  attribute CHECK_LICENSE_TYPE of ila_0_i : label is "ila_0,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_0_i : label is "yes";
  attribute x_core_info of ila_0_i : label is "ila,Vivado 2025.1";
  attribute KEEP_HIERARCHY of phase_err_i : label is "soft";
begin
  doa_wr <= \^doa_wr\;
fifo_freq_i: component ps_freq_low_46_0_0_fifo_doa_low
     port map (
      din(47 downto 0) => freq_data(47 downto 0),
      dout(47 downto 0) => freq_fifo_data(47 downto 0),
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
fifo_raw_i: component ps_freq_low_46_0_0_fifo_raw_low
     port map (
      din(191 downto 0) => raw_data(191 downto 0),
      dout(191 downto 144) => raw_fifo_data(191 downto 144),
      dout(143 downto 128) => raw_W0(15 downto 0),
      dout(127 downto 80) => raw_fifo_data(127 downto 80),
      dout(79 downto 64) => raw_E0(15 downto 0),
      dout(63 downto 16) => raw_fifo_data(63 downto 16),
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
      Q(15 downto 0) => env_E(15 downto 0),
      clk => clk,
      \morlet_to_phase_env.phase_reg[19]_0\(19 downto 0) => phase_E(19 downto 0),
      \morlet_to_phase_env.phase_reg[19]_1\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_E(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_E(36 downto 13),
      valid_E => valid_E
    );
freq_N_i: entity work.\ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\
     port map (
      Q(15 downto 0) => env_N(15 downto 0),
      active => active0,
      clk => clk,
      \morlet_to_phase_env.phase_reg[19]_0\(19 downto 0) => phase_N(19 downto 0),
      \morlet_to_phase_env.phase_reg[19]_1\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_N(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_N(36 downto 13),
      valid_E => valid_E,
      valid_W => valid_W
    );
freq_W_i: entity work.ps_freq_low_46_0_0_morlet_to_phase_env
     port map (
      Q(15 downto 0) => env_W(15 downto 0),
      clk => clk,
      \morlet_to_phase_env.phase_reg[19]_0\(19 downto 0) => phase_W(19 downto 0),
      \morlet_to_phase_env.phase_reg[19]_1\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_W(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_W(36 downto 13),
      valid_W => valid_W
    );
\freq_low_46.E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(16),
      Q => E(0),
      R => '0'
    );
\freq_low_46.E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(26),
      Q => E(10),
      R => '0'
    );
\freq_low_46.E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(27),
      Q => E(11),
      R => '0'
    );
\freq_low_46.E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(28),
      Q => E(12),
      R => '0'
    );
\freq_low_46.E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(29),
      Q => E(13),
      R => '0'
    );
\freq_low_46.E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(30),
      Q => E(14),
      R => '0'
    );
\freq_low_46.E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(31),
      Q => E(15),
      R => '0'
    );
\freq_low_46.E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(17),
      Q => E(1),
      R => '0'
    );
\freq_low_46.E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(18),
      Q => E(2),
      R => '0'
    );
\freq_low_46.E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(19),
      Q => E(3),
      R => '0'
    );
\freq_low_46.E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(20),
      Q => E(4),
      R => '0'
    );
\freq_low_46.E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(21),
      Q => E(5),
      R => '0'
    );
\freq_low_46.E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(22),
      Q => E(6),
      R => '0'
    );
\freq_low_46.E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(23),
      Q => E(7),
      R => '0'
    );
\freq_low_46.E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(24),
      Q => E(8),
      R => '0'
    );
\freq_low_46.E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(25),
      Q => E(9),
      R => '0'
    );
\freq_low_46.N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(0),
      Q => N(0),
      R => '0'
    );
\freq_low_46.N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(10),
      Q => N(10),
      R => '0'
    );
\freq_low_46.N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(11),
      Q => N(11),
      R => '0'
    );
\freq_low_46.N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(12),
      Q => N(12),
      R => '0'
    );
\freq_low_46.N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(13),
      Q => N(13),
      R => '0'
    );
\freq_low_46.N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(14),
      Q => N(14),
      R => '0'
    );
\freq_low_46.N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(15),
      Q => N(15),
      R => '0'
    );
\freq_low_46.N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(1),
      Q => N(1),
      R => '0'
    );
\freq_low_46.N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(2),
      Q => N(2),
      R => '0'
    );
\freq_low_46.N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(3),
      Q => N(3),
      R => '0'
    );
\freq_low_46.N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(4),
      Q => N(4),
      R => '0'
    );
\freq_low_46.N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(5),
      Q => N(5),
      R => '0'
    );
\freq_low_46.N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(6),
      Q => N(6),
      R => '0'
    );
\freq_low_46.N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(7),
      Q => N(7),
      R => '0'
    );
\freq_low_46.N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(8),
      Q => N(8),
      R => '0'
    );
\freq_low_46.N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(9),
      Q => N(9),
      R => '0'
    );
\freq_low_46.W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(32),
      Q => W(0),
      R => '0'
    );
\freq_low_46.W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(42),
      Q => W(10),
      R => '0'
    );
\freq_low_46.W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(43),
      Q => W(11),
      R => '0'
    );
\freq_low_46.W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(44),
      Q => W(12),
      R => '0'
    );
\freq_low_46.W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(45),
      Q => W(13),
      R => '0'
    );
\freq_low_46.W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(46),
      Q => W(14),
      R => '0'
    );
\freq_low_46.W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(47),
      Q => W(15),
      R => '0'
    );
\freq_low_46.W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(33),
      Q => W(1),
      R => '0'
    );
\freq_low_46.W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(34),
      Q => W(2),
      R => '0'
    );
\freq_low_46.W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(35),
      Q => W(3),
      R => '0'
    );
\freq_low_46.W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(36),
      Q => W(4),
      R => '0'
    );
\freq_low_46.W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(37),
      Q => W(5),
      R => '0'
    );
\freq_low_46.W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(38),
      Q => W(6),
      R => '0'
    );
\freq_low_46.W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(39),
      Q => W(7),
      R => '0'
    );
\freq_low_46.W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(40),
      Q => W(8),
      R => '0'
    );
\freq_low_46.W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
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
\freq_low_46.curr_delay[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(4),
      I2 => \freq_low_46.start_delay_reg\(3),
      I3 => \freq_low_46.start_delay_reg\(1),
      I4 => \freq_low_46.curr_delay[7]_i_4_n_0\,
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
      INIT => X"FFFE"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(5),
      I1 => \freq_low_46.curr_delay_reg\(4),
      I2 => \freq_low_46.curr_delay_reg\(7),
      I3 => \freq_low_46.curr_delay_reg\(6),
      O => \freq_low_46.curr_delay[7]_i_14_n_0\
    );
\freq_low_46.curr_delay[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I1 => freq_fifo_valid,
      I2 => data0,
      O => \freq_low_46.curr_delay[7]_i_2_n_0\
    );
\freq_low_46.curr_delay[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(2),
      I1 => \freq_low_46.start_delay_reg\(7),
      I2 => freq_fifo_valid,
      I3 => \freq_low_46.start_delay_reg\(6),
      I4 => \freq_low_46.start_delay_reg\(5),
      O => \freq_low_46.curr_delay[7]_i_4_n_0\
    );
\freq_low_46.curr_delay[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(2),
      I2 => \freq_low_46.start_delay_reg\(6),
      I3 => \freq_low_46.start_delay_reg\(5),
      I4 => \freq_low_46.start_delay_reg\(7),
      I5 => \freq_low_46.start_delay[7]_i_4_n_0\,
      O => \freq_low_46.curr_delay[7]_i_5_n_0\
    );
\freq_low_46.curr_delay[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(2),
      I1 => \freq_low_46.curr_delay_reg\(3),
      I2 => \freq_low_46.curr_delay_reg\(0),
      I3 => \freq_low_46.curr_delay_reg\(1),
      I4 => \freq_low_46.curr_delay[7]_i_14_n_0\,
      O => data0
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
\freq_low_46.doa_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(0),
      Q => doa_data(0),
      R => '0'
    );
\freq_low_46.doa_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(12),
      Q => doa_data(100),
      R => '0'
    );
\freq_low_46.doa_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(13),
      Q => doa_data(101),
      R => '0'
    );
\freq_low_46.doa_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(14),
      Q => doa_data(102),
      R => '0'
    );
\freq_low_46.doa_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(15),
      Q => doa_data(103),
      R => '0'
    );
\freq_low_46.doa_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(16),
      Q => doa_data(104),
      R => '0'
    );
\freq_low_46.doa_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(17),
      Q => doa_data(105),
      R => '0'
    );
\freq_low_46.doa_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(18),
      Q => doa_data(106),
      R => '0'
    );
\freq_low_46.doa_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(19),
      Q => doa_data(107),
      R => '0'
    );
\freq_low_46.doa_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(0),
      Q => doa_data(108),
      R => '0'
    );
\freq_low_46.doa_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(1),
      Q => doa_data(109),
      R => '0'
    );
\freq_low_46.doa_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(10),
      Q => doa_data(10),
      R => '0'
    );
\freq_low_46.doa_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(2),
      Q => doa_data(110),
      R => '0'
    );
\freq_low_46.doa_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(3),
      Q => doa_data(111),
      R => '0'
    );
\freq_low_46.doa_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(4),
      Q => doa_data(112),
      R => '0'
    );
\freq_low_46.doa_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(5),
      Q => doa_data(113),
      R => '0'
    );
\freq_low_46.doa_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(6),
      Q => doa_data(114),
      R => '0'
    );
\freq_low_46.doa_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(7),
      Q => doa_data(115),
      R => '0'
    );
\freq_low_46.doa_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(8),
      Q => doa_data(116),
      R => '0'
    );
\freq_low_46.doa_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(9),
      Q => doa_data(117),
      R => '0'
    );
\freq_low_46.doa_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(10),
      Q => doa_data(118),
      R => '0'
    );
\freq_low_46.doa_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNE(11),
      Q => doa_data(119),
      R => '0'
    );
\freq_low_46.doa_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(11),
      Q => doa_data(11),
      R => '0'
    );
\freq_low_46.doa_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(0),
      Q => doa_data(120),
      R => '0'
    );
\freq_low_46.doa_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(1),
      Q => doa_data(121),
      R => '0'
    );
\freq_low_46.doa_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(2),
      Q => doa_data(122),
      R => '0'
    );
\freq_low_46.doa_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(3),
      Q => doa_data(123),
      R => '0'
    );
\freq_low_46.doa_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(4),
      Q => doa_data(124),
      R => '0'
    );
\freq_low_46.doa_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(5),
      Q => doa_data(125),
      R => '0'
    );
\freq_low_46.doa_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(6),
      Q => doa_data(126),
      R => '0'
    );
\freq_low_46.doa_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(7),
      Q => doa_data(127),
      R => '0'
    );
\freq_low_46.doa_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(8),
      Q => doa_data(128),
      R => '0'
    );
\freq_low_46.doa_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(9),
      Q => doa_data(129),
      R => '0'
    );
\freq_low_46.doa_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(12),
      Q => doa_data(12),
      R => '0'
    );
\freq_low_46.doa_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(10),
      Q => doa_data(130),
      R => '0'
    );
\freq_low_46.doa_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errNW(11),
      Q => doa_data(131),
      R => '0'
    );
\freq_low_46.doa_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(0),
      Q => doa_data(132),
      R => '0'
    );
\freq_low_46.doa_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(1),
      Q => doa_data(133),
      R => '0'
    );
\freq_low_46.doa_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(2),
      Q => doa_data(134),
      R => '0'
    );
\freq_low_46.doa_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(3),
      Q => doa_data(135),
      R => '0'
    );
\freq_low_46.doa_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(4),
      Q => doa_data(136),
      R => '0'
    );
\freq_low_46.doa_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(5),
      Q => doa_data(137),
      R => '0'
    );
\freq_low_46.doa_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(6),
      Q => doa_data(138),
      R => '0'
    );
\freq_low_46.doa_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(7),
      Q => doa_data(139),
      R => '0'
    );
\freq_low_46.doa_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(13),
      Q => doa_data(13),
      R => '0'
    );
\freq_low_46.doa_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(8),
      Q => doa_data(140),
      R => '0'
    );
\freq_low_46.doa_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(9),
      Q => doa_data(141),
      R => '0'
    );
\freq_low_46.doa_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(10),
      Q => doa_data(142),
      R => '0'
    );
\freq_low_46.doa_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => errEW(11),
      Q => doa_data(143),
      R => '0'
    );
\freq_low_46.doa_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(14),
      Q => doa_data(14),
      R => '0'
    );
\freq_low_46.doa_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(15),
      Q => doa_data(15),
      R => '0'
    );
\freq_low_46.doa_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(0),
      Q => doa_data(16),
      R => '0'
    );
\freq_low_46.doa_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(1),
      Q => doa_data(17),
      R => '0'
    );
\freq_low_46.doa_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(2),
      Q => doa_data(18),
      R => '0'
    );
\freq_low_46.doa_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(3),
      Q => doa_data(19),
      R => '0'
    );
\freq_low_46.doa_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(1),
      Q => doa_data(1),
      R => '0'
    );
\freq_low_46.doa_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(4),
      Q => doa_data(20),
      R => '0'
    );
\freq_low_46.doa_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(5),
      Q => doa_data(21),
      R => '0'
    );
\freq_low_46.doa_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(6),
      Q => doa_data(22),
      R => '0'
    );
\freq_low_46.doa_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(7),
      Q => doa_data(23),
      R => '0'
    );
\freq_low_46.doa_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(8),
      Q => doa_data(24),
      R => '0'
    );
\freq_low_46.doa_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(9),
      Q => doa_data(25),
      R => '0'
    );
\freq_low_46.doa_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(10),
      Q => doa_data(26),
      R => '0'
    );
\freq_low_46.doa_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(11),
      Q => doa_data(27),
      R => '0'
    );
\freq_low_46.doa_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(12),
      Q => doa_data(28),
      R => '0'
    );
\freq_low_46.doa_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(13),
      Q => doa_data(29),
      R => '0'
    );
\freq_low_46.doa_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(2),
      Q => doa_data(2),
      R => '0'
    );
\freq_low_46.doa_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(14),
      Q => doa_data(30),
      R => '0'
    );
\freq_low_46.doa_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(15),
      Q => doa_data(31),
      R => '0'
    );
\freq_low_46.doa_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(16),
      Q => doa_data(32),
      R => '0'
    );
\freq_low_46.doa_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(17),
      Q => doa_data(33),
      R => '0'
    );
\freq_low_46.doa_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(18),
      Q => doa_data(34),
      R => '0'
    );
\freq_low_46.doa_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(19),
      Q => doa_data(35),
      R => '0'
    );
\freq_low_46.doa_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(0),
      Q => doa_data(36),
      R => '0'
    );
\freq_low_46.doa_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(1),
      Q => doa_data(37),
      R => '0'
    );
\freq_low_46.doa_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(2),
      Q => doa_data(38),
      R => '0'
    );
\freq_low_46.doa_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(3),
      Q => doa_data(39),
      R => '0'
    );
\freq_low_46.doa_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(3),
      Q => doa_data(3),
      R => '0'
    );
\freq_low_46.doa_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(4),
      Q => doa_data(40),
      R => '0'
    );
\freq_low_46.doa_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(5),
      Q => doa_data(41),
      R => '0'
    );
\freq_low_46.doa_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(6),
      Q => doa_data(42),
      R => '0'
    );
\freq_low_46.doa_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(7),
      Q => doa_data(43),
      R => '0'
    );
\freq_low_46.doa_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(8),
      Q => doa_data(44),
      R => '0'
    );
\freq_low_46.doa_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(9),
      Q => doa_data(45),
      R => '0'
    );
\freq_low_46.doa_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(10),
      Q => doa_data(46),
      R => '0'
    );
\freq_low_46.doa_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(11),
      Q => doa_data(47),
      R => '0'
    );
\freq_low_46.doa_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(12),
      Q => doa_data(48),
      R => '0'
    );
\freq_low_46.doa_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(13),
      Q => doa_data(49),
      R => '0'
    );
\freq_low_46.doa_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(4),
      Q => doa_data(4),
      R => '0'
    );
\freq_low_46.doa_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(14),
      Q => doa_data(50),
      R => '0'
    );
\freq_low_46.doa_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(15),
      Q => doa_data(51),
      R => '0'
    );
\freq_low_46.doa_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(0),
      Q => doa_data(52),
      R => '0'
    );
\freq_low_46.doa_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(1),
      Q => doa_data(53),
      R => '0'
    );
\freq_low_46.doa_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(2),
      Q => doa_data(54),
      R => '0'
    );
\freq_low_46.doa_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(3),
      Q => doa_data(55),
      R => '0'
    );
\freq_low_46.doa_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(4),
      Q => doa_data(56),
      R => '0'
    );
\freq_low_46.doa_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(5),
      Q => doa_data(57),
      R => '0'
    );
\freq_low_46.doa_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(6),
      Q => doa_data(58),
      R => '0'
    );
\freq_low_46.doa_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(7),
      Q => doa_data(59),
      R => '0'
    );
\freq_low_46.doa_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(5),
      Q => doa_data(5),
      R => '0'
    );
\freq_low_46.doa_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(8),
      Q => doa_data(60),
      R => '0'
    );
\freq_low_46.doa_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(9),
      Q => doa_data(61),
      R => '0'
    );
\freq_low_46.doa_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(10),
      Q => doa_data(62),
      R => '0'
    );
\freq_low_46.doa_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(11),
      Q => doa_data(63),
      R => '0'
    );
\freq_low_46.doa_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(12),
      Q => doa_data(64),
      R => '0'
    );
\freq_low_46.doa_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(13),
      Q => doa_data(65),
      R => '0'
    );
\freq_low_46.doa_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(14),
      Q => doa_data(66),
      R => '0'
    );
\freq_low_46.doa_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(15),
      Q => doa_data(67),
      R => '0'
    );
\freq_low_46.doa_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(16),
      Q => doa_data(68),
      R => '0'
    );
\freq_low_46.doa_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(17),
      Q => doa_data(69),
      R => '0'
    );
\freq_low_46.doa_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(6),
      Q => doa_data(6),
      R => '0'
    );
\freq_low_46.doa_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(18),
      Q => doa_data(70),
      R => '0'
    );
\freq_low_46.doa_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(19),
      Q => doa_data(71),
      R => '0'
    );
\freq_low_46.doa_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(0),
      Q => doa_data(72),
      R => '0'
    );
\freq_low_46.doa_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(1),
      Q => doa_data(73),
      R => '0'
    );
\freq_low_46.doa_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(2),
      Q => doa_data(74),
      R => '0'
    );
\freq_low_46.doa_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(3),
      Q => doa_data(75),
      R => '0'
    );
\freq_low_46.doa_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(4),
      Q => doa_data(76),
      R => '0'
    );
\freq_low_46.doa_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(5),
      Q => doa_data(77),
      R => '0'
    );
\freq_low_46.doa_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(6),
      Q => doa_data(78),
      R => '0'
    );
\freq_low_46.doa_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(7),
      Q => doa_data(79),
      R => '0'
    );
\freq_low_46.doa_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(7),
      Q => doa_data(7),
      R => '0'
    );
\freq_low_46.doa_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(8),
      Q => doa_data(80),
      R => '0'
    );
\freq_low_46.doa_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(9),
      Q => doa_data(81),
      R => '0'
    );
\freq_low_46.doa_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(10),
      Q => doa_data(82),
      R => '0'
    );
\freq_low_46.doa_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(11),
      Q => doa_data(83),
      R => '0'
    );
\freq_low_46.doa_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(12),
      Q => doa_data(84),
      R => '0'
    );
\freq_low_46.doa_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(13),
      Q => doa_data(85),
      R => '0'
    );
\freq_low_46.doa_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(14),
      Q => doa_data(86),
      R => '0'
    );
\freq_low_46.doa_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(15),
      Q => doa_data(87),
      R => '0'
    );
\freq_low_46.doa_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(0),
      Q => doa_data(88),
      R => '0'
    );
\freq_low_46.doa_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(1),
      Q => doa_data(89),
      R => '0'
    );
\freq_low_46.doa_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(8),
      Q => doa_data(8),
      R => '0'
    );
\freq_low_46.doa_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(2),
      Q => doa_data(90),
      R => '0'
    );
\freq_low_46.doa_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(3),
      Q => doa_data(91),
      R => '0'
    );
\freq_low_46.doa_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(4),
      Q => doa_data(92),
      R => '0'
    );
\freq_low_46.doa_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(5),
      Q => doa_data(93),
      R => '0'
    );
\freq_low_46.doa_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(6),
      Q => doa_data(94),
      R => '0'
    );
\freq_low_46.doa_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(7),
      Q => doa_data(95),
      R => '0'
    );
\freq_low_46.doa_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(8),
      Q => doa_data(96),
      R => '0'
    );
\freq_low_46.doa_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(9),
      Q => doa_data(97),
      R => '0'
    );
\freq_low_46.doa_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(10),
      Q => doa_data(98),
      R => '0'
    );
\freq_low_46.doa_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(11),
      Q => doa_data(99),
      R => '0'
    );
\freq_low_46.doa_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(9),
      Q => doa_data(9),
      R => '0'
    );
\freq_low_46.doa_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid,
      Q => \^doa_wr\,
      R => '0'
    );
\freq_low_46.freq_fifo_rd_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => freq_fifo_empty,
      I1 => \freq_low_46.freq_rd_delay_reg\(4),
      I2 => \freq_low_46.freq_rd_delay_reg\(3),
      I3 => \freq_low_46.freq_rd_delay_reg\(1),
      I4 => \freq_low_46.freq_rd_delay_reg\(0),
      I5 => \freq_low_46.freq_rd_delay_reg\(2),
      O => \freq_low_46.freq_fifo_rd_i_1_n_0\
    );
\freq_low_46.freq_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_low_46.freq_fifo_rd_i_1_n_0\,
      Q => freq_fifo_rd,
      R => '0'
    );
\freq_low_46.freq_fifo_valid_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => freq_fifo_rd,
      I1 => freq_fifo_empty,
      O => freq_fifo_valid0
    );
\freq_low_46.freq_fifo_valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => freq_fifo_valid0,
      Q => freq_fifo_valid,
      R => '0'
    );
\freq_low_46.freq_rd_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \freq_low_46.freq_rd_delay_reg\(0),
      O => freq_rd_delay0(0)
    );
\freq_low_46.freq_rd_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \freq_low_46.freq_rd_delay_reg\(0),
      I1 => \freq_low_46.freq_rd_delay_reg\(1),
      O => \freq_low_46.freq_rd_delay[1]_i_1_n_0\
    );
\freq_low_46.freq_rd_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \freq_low_46.freq_rd_delay_reg\(1),
      I1 => \freq_low_46.freq_rd_delay_reg\(0),
      I2 => \freq_low_46.freq_rd_delay_reg\(2),
      O => \freq_low_46.freq_rd_delay[2]_i_1_n_0\
    );
\freq_low_46.freq_rd_delay[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \freq_low_46.freq_rd_delay_reg\(2),
      I1 => \freq_low_46.freq_rd_delay_reg\(0),
      I2 => \freq_low_46.freq_rd_delay_reg\(1),
      I3 => \freq_low_46.freq_rd_delay_reg\(3),
      O => \freq_low_46.freq_rd_delay[3]_i_1_n_0\
    );
\freq_low_46.freq_rd_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \freq_low_46.freq_rd_delay_reg\(3),
      I1 => \freq_low_46.freq_rd_delay_reg\(1),
      I2 => \freq_low_46.freq_rd_delay_reg\(0),
      I3 => \freq_low_46.freq_rd_delay_reg\(2),
      I4 => \freq_low_46.freq_rd_delay_reg\(4),
      O => \freq_low_46.freq_rd_delay[4]_i_1_n_0\
    );
\freq_low_46.freq_rd_delay[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \freq_low_46.freq_rd_delay_reg\(3),
      I1 => \freq_low_46.freq_rd_delay_reg\(1),
      I2 => \freq_low_46.freq_rd_delay_reg\(0),
      I3 => \freq_low_46.freq_rd_delay_reg\(2),
      I4 => \freq_low_46.freq_rd_delay_reg\(4),
      O => \freq_low_46.freq_rd_delay[4]_i_2_n_0\
    );
\freq_low_46.freq_rd_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_low_46.freq_rd_delay[4]_i_1_n_0\,
      D => freq_rd_delay0(0),
      Q => \freq_low_46.freq_rd_delay_reg\(0),
      S => freq_fifo_empty
    );
\freq_low_46.freq_rd_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_low_46.freq_rd_delay[4]_i_1_n_0\,
      D => \freq_low_46.freq_rd_delay[1]_i_1_n_0\,
      Q => \freq_low_46.freq_rd_delay_reg\(1),
      S => freq_fifo_empty
    );
\freq_low_46.freq_rd_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_low_46.freq_rd_delay[4]_i_1_n_0\,
      D => \freq_low_46.freq_rd_delay[2]_i_1_n_0\,
      Q => \freq_low_46.freq_rd_delay_reg\(2),
      S => freq_fifo_empty
    );
\freq_low_46.freq_rd_delay_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_low_46.freq_rd_delay[4]_i_1_n_0\,
      D => \freq_low_46.freq_rd_delay[3]_i_1_n_0\,
      Q => \freq_low_46.freq_rd_delay_reg\(3),
      S => freq_fifo_empty
    );
\freq_low_46.freq_rd_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_low_46.freq_rd_delay[4]_i_1_n_0\,
      D => \freq_low_46.freq_rd_delay[4]_i_2_n_0\,
      Q => \freq_low_46.freq_rd_delay_reg\(4),
      S => freq_fifo_empty
    );
\freq_low_46.morlet_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I1 => freq_fifo_valid,
      I2 => data0,
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
\freq_low_46.sample_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(0),
      Q => sample_data(0),
      R => '0'
    );
\freq_low_46.sample_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(100),
      Q => sample_data(100),
      R => '0'
    );
\freq_low_46.sample_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(101),
      Q => sample_data(101),
      R => '0'
    );
\freq_low_46.sample_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(102),
      Q => sample_data(102),
      R => '0'
    );
\freq_low_46.sample_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(103),
      Q => sample_data(103),
      R => '0'
    );
\freq_low_46.sample_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(104),
      Q => sample_data(104),
      R => '0'
    );
\freq_low_46.sample_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(105),
      Q => sample_data(105),
      R => '0'
    );
\freq_low_46.sample_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(106),
      Q => sample_data(106),
      R => '0'
    );
\freq_low_46.sample_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(107),
      Q => sample_data(107),
      R => '0'
    );
\freq_low_46.sample_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(108),
      Q => sample_data(108),
      R => '0'
    );
\freq_low_46.sample_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(109),
      Q => sample_data(109),
      R => '0'
    );
\freq_low_46.sample_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(10),
      Q => sample_data(10),
      R => '0'
    );
\freq_low_46.sample_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(110),
      Q => sample_data(110),
      R => '0'
    );
\freq_low_46.sample_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(111),
      Q => sample_data(111),
      R => '0'
    );
\freq_low_46.sample_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(112),
      Q => sample_data(112),
      R => '0'
    );
\freq_low_46.sample_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(113),
      Q => sample_data(113),
      R => '0'
    );
\freq_low_46.sample_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(114),
      Q => sample_data(114),
      R => '0'
    );
\freq_low_46.sample_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(115),
      Q => sample_data(115),
      R => '0'
    );
\freq_low_46.sample_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(116),
      Q => sample_data(116),
      R => '0'
    );
\freq_low_46.sample_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(117),
      Q => sample_data(117),
      R => '0'
    );
\freq_low_46.sample_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(118),
      Q => sample_data(118),
      R => '0'
    );
\freq_low_46.sample_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(119),
      Q => sample_data(119),
      R => '0'
    );
\freq_low_46.sample_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(11),
      Q => sample_data(11),
      R => '0'
    );
\freq_low_46.sample_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(120),
      Q => sample_data(120),
      R => '0'
    );
\freq_low_46.sample_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(121),
      Q => sample_data(121),
      R => '0'
    );
\freq_low_46.sample_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(122),
      Q => sample_data(122),
      R => '0'
    );
\freq_low_46.sample_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(123),
      Q => sample_data(123),
      R => '0'
    );
\freq_low_46.sample_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(124),
      Q => sample_data(124),
      R => '0'
    );
\freq_low_46.sample_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(125),
      Q => sample_data(125),
      R => '0'
    );
\freq_low_46.sample_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(126),
      Q => sample_data(126),
      R => '0'
    );
\freq_low_46.sample_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(127),
      Q => sample_data(127),
      R => '0'
    );
\freq_low_46.sample_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(0),
      Q => sample_data(128),
      R => '0'
    );
\freq_low_46.sample_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(1),
      Q => sample_data(129),
      R => '0'
    );
\freq_low_46.sample_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(12),
      Q => sample_data(12),
      R => '0'
    );
\freq_low_46.sample_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(2),
      Q => sample_data(130),
      R => '0'
    );
\freq_low_46.sample_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(3),
      Q => sample_data(131),
      R => '0'
    );
\freq_low_46.sample_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(4),
      Q => sample_data(132),
      R => '0'
    );
\freq_low_46.sample_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(5),
      Q => sample_data(133),
      R => '0'
    );
\freq_low_46.sample_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(6),
      Q => sample_data(134),
      R => '0'
    );
\freq_low_46.sample_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(7),
      Q => sample_data(135),
      R => '0'
    );
\freq_low_46.sample_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(8),
      Q => sample_data(136),
      R => '0'
    );
\freq_low_46.sample_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(9),
      Q => sample_data(137),
      R => '0'
    );
\freq_low_46.sample_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(10),
      Q => sample_data(138),
      R => '0'
    );
\freq_low_46.sample_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(11),
      Q => sample_data(139),
      R => '0'
    );
\freq_low_46.sample_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(13),
      Q => sample_data(13),
      R => '0'
    );
\freq_low_46.sample_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(12),
      Q => sample_data(140),
      R => '0'
    );
\freq_low_46.sample_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(13),
      Q => sample_data(141),
      R => '0'
    );
\freq_low_46.sample_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(14),
      Q => sample_data(142),
      R => '0'
    );
\freq_low_46.sample_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_W0(15),
      Q => sample_data(143),
      R => '0'
    );
\freq_low_46.sample_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(144),
      Q => sample_data(144),
      R => '0'
    );
\freq_low_46.sample_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(145),
      Q => sample_data(145),
      R => '0'
    );
\freq_low_46.sample_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(146),
      Q => sample_data(146),
      R => '0'
    );
\freq_low_46.sample_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(147),
      Q => sample_data(147),
      R => '0'
    );
\freq_low_46.sample_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(148),
      Q => sample_data(148),
      R => '0'
    );
\freq_low_46.sample_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(149),
      Q => sample_data(149),
      R => '0'
    );
\freq_low_46.sample_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(14),
      Q => sample_data(14),
      R => '0'
    );
\freq_low_46.sample_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(150),
      Q => sample_data(150),
      R => '0'
    );
\freq_low_46.sample_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(151),
      Q => sample_data(151),
      R => '0'
    );
\freq_low_46.sample_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(152),
      Q => sample_data(152),
      R => '0'
    );
\freq_low_46.sample_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(153),
      Q => sample_data(153),
      R => '0'
    );
\freq_low_46.sample_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(154),
      Q => sample_data(154),
      R => '0'
    );
\freq_low_46.sample_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(155),
      Q => sample_data(155),
      R => '0'
    );
\freq_low_46.sample_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(156),
      Q => sample_data(156),
      R => '0'
    );
\freq_low_46.sample_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(157),
      Q => sample_data(157),
      R => '0'
    );
\freq_low_46.sample_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(158),
      Q => sample_data(158),
      R => '0'
    );
\freq_low_46.sample_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(159),
      Q => sample_data(159),
      R => '0'
    );
\freq_low_46.sample_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(15),
      Q => sample_data(15),
      R => '0'
    );
\freq_low_46.sample_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(160),
      Q => sample_data(160),
      R => '0'
    );
\freq_low_46.sample_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(161),
      Q => sample_data(161),
      R => '0'
    );
\freq_low_46.sample_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(162),
      Q => sample_data(162),
      R => '0'
    );
\freq_low_46.sample_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(163),
      Q => sample_data(163),
      R => '0'
    );
\freq_low_46.sample_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(164),
      Q => sample_data(164),
      R => '0'
    );
\freq_low_46.sample_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(165),
      Q => sample_data(165),
      R => '0'
    );
\freq_low_46.sample_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(166),
      Q => sample_data(166),
      R => '0'
    );
\freq_low_46.sample_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(167),
      Q => sample_data(167),
      R => '0'
    );
\freq_low_46.sample_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(168),
      Q => sample_data(168),
      R => '0'
    );
\freq_low_46.sample_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(169),
      Q => sample_data(169),
      R => '0'
    );
\freq_low_46.sample_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(16),
      Q => sample_data(16),
      R => '0'
    );
\freq_low_46.sample_data_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(170),
      Q => sample_data(170),
      R => '0'
    );
\freq_low_46.sample_data_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(171),
      Q => sample_data(171),
      R => '0'
    );
\freq_low_46.sample_data_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(172),
      Q => sample_data(172),
      R => '0'
    );
\freq_low_46.sample_data_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(173),
      Q => sample_data(173),
      R => '0'
    );
\freq_low_46.sample_data_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(174),
      Q => sample_data(174),
      R => '0'
    );
\freq_low_46.sample_data_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(175),
      Q => sample_data(175),
      R => '0'
    );
\freq_low_46.sample_data_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(176),
      Q => sample_data(176),
      R => '0'
    );
\freq_low_46.sample_data_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(177),
      Q => sample_data(177),
      R => '0'
    );
\freq_low_46.sample_data_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(178),
      Q => sample_data(178),
      R => '0'
    );
\freq_low_46.sample_data_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(179),
      Q => sample_data(179),
      R => '0'
    );
\freq_low_46.sample_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(17),
      Q => sample_data(17),
      R => '0'
    );
\freq_low_46.sample_data_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(180),
      Q => sample_data(180),
      R => '0'
    );
\freq_low_46.sample_data_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(181),
      Q => sample_data(181),
      R => '0'
    );
\freq_low_46.sample_data_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(182),
      Q => sample_data(182),
      R => '0'
    );
\freq_low_46.sample_data_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(183),
      Q => sample_data(183),
      R => '0'
    );
\freq_low_46.sample_data_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(184),
      Q => sample_data(184),
      R => '0'
    );
\freq_low_46.sample_data_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(185),
      Q => sample_data(185),
      R => '0'
    );
\freq_low_46.sample_data_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(186),
      Q => sample_data(186),
      R => '0'
    );
\freq_low_46.sample_data_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(187),
      Q => sample_data(187),
      R => '0'
    );
\freq_low_46.sample_data_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(188),
      Q => sample_data(188),
      R => '0'
    );
\freq_low_46.sample_data_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(189),
      Q => sample_data(189),
      R => '0'
    );
\freq_low_46.sample_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(18),
      Q => sample_data(18),
      R => '0'
    );
\freq_low_46.sample_data_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(190),
      Q => sample_data(190),
      R => '0'
    );
\freq_low_46.sample_data_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(191),
      Q => sample_data(191),
      R => '0'
    );
\freq_low_46.sample_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(19),
      Q => sample_data(19),
      R => '0'
    );
\freq_low_46.sample_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(1),
      Q => sample_data(1),
      R => '0'
    );
\freq_low_46.sample_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(20),
      Q => sample_data(20),
      R => '0'
    );
\freq_low_46.sample_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(21),
      Q => sample_data(21),
      R => '0'
    );
\freq_low_46.sample_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(22),
      Q => sample_data(22),
      R => '0'
    );
\freq_low_46.sample_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(23),
      Q => sample_data(23),
      R => '0'
    );
\freq_low_46.sample_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(24),
      Q => sample_data(24),
      R => '0'
    );
\freq_low_46.sample_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(25),
      Q => sample_data(25),
      R => '0'
    );
\freq_low_46.sample_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(26),
      Q => sample_data(26),
      R => '0'
    );
\freq_low_46.sample_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(27),
      Q => sample_data(27),
      R => '0'
    );
\freq_low_46.sample_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(28),
      Q => sample_data(28),
      R => '0'
    );
\freq_low_46.sample_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(29),
      Q => sample_data(29),
      R => '0'
    );
\freq_low_46.sample_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(2),
      Q => sample_data(2),
      R => '0'
    );
\freq_low_46.sample_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(30),
      Q => sample_data(30),
      R => '0'
    );
\freq_low_46.sample_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(31),
      Q => sample_data(31),
      R => '0'
    );
\freq_low_46.sample_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(32),
      Q => sample_data(32),
      R => '0'
    );
\freq_low_46.sample_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(33),
      Q => sample_data(33),
      R => '0'
    );
\freq_low_46.sample_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(34),
      Q => sample_data(34),
      R => '0'
    );
\freq_low_46.sample_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(35),
      Q => sample_data(35),
      R => '0'
    );
\freq_low_46.sample_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(36),
      Q => sample_data(36),
      R => '0'
    );
\freq_low_46.sample_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(37),
      Q => sample_data(37),
      R => '0'
    );
\freq_low_46.sample_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(38),
      Q => sample_data(38),
      R => '0'
    );
\freq_low_46.sample_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(39),
      Q => sample_data(39),
      R => '0'
    );
\freq_low_46.sample_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(3),
      Q => sample_data(3),
      R => '0'
    );
\freq_low_46.sample_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(40),
      Q => sample_data(40),
      R => '0'
    );
\freq_low_46.sample_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(41),
      Q => sample_data(41),
      R => '0'
    );
\freq_low_46.sample_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(42),
      Q => sample_data(42),
      R => '0'
    );
\freq_low_46.sample_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(43),
      Q => sample_data(43),
      R => '0'
    );
\freq_low_46.sample_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(44),
      Q => sample_data(44),
      R => '0'
    );
\freq_low_46.sample_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(45),
      Q => sample_data(45),
      R => '0'
    );
\freq_low_46.sample_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(46),
      Q => sample_data(46),
      R => '0'
    );
\freq_low_46.sample_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(47),
      Q => sample_data(47),
      R => '0'
    );
\freq_low_46.sample_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(48),
      Q => sample_data(48),
      R => '0'
    );
\freq_low_46.sample_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(49),
      Q => sample_data(49),
      R => '0'
    );
\freq_low_46.sample_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(4),
      Q => sample_data(4),
      R => '0'
    );
\freq_low_46.sample_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(50),
      Q => sample_data(50),
      R => '0'
    );
\freq_low_46.sample_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(51),
      Q => sample_data(51),
      R => '0'
    );
\freq_low_46.sample_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(52),
      Q => sample_data(52),
      R => '0'
    );
\freq_low_46.sample_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(53),
      Q => sample_data(53),
      R => '0'
    );
\freq_low_46.sample_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(54),
      Q => sample_data(54),
      R => '0'
    );
\freq_low_46.sample_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(55),
      Q => sample_data(55),
      R => '0'
    );
\freq_low_46.sample_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(56),
      Q => sample_data(56),
      R => '0'
    );
\freq_low_46.sample_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(57),
      Q => sample_data(57),
      R => '0'
    );
\freq_low_46.sample_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(58),
      Q => sample_data(58),
      R => '0'
    );
\freq_low_46.sample_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(59),
      Q => sample_data(59),
      R => '0'
    );
\freq_low_46.sample_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(5),
      Q => sample_data(5),
      R => '0'
    );
\freq_low_46.sample_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(60),
      Q => sample_data(60),
      R => '0'
    );
\freq_low_46.sample_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(61),
      Q => sample_data(61),
      R => '0'
    );
\freq_low_46.sample_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(62),
      Q => sample_data(62),
      R => '0'
    );
\freq_low_46.sample_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(63),
      Q => sample_data(63),
      R => '0'
    );
\freq_low_46.sample_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(0),
      Q => sample_data(64),
      R => '0'
    );
\freq_low_46.sample_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(1),
      Q => sample_data(65),
      R => '0'
    );
\freq_low_46.sample_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(2),
      Q => sample_data(66),
      R => '0'
    );
\freq_low_46.sample_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(3),
      Q => sample_data(67),
      R => '0'
    );
\freq_low_46.sample_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(4),
      Q => sample_data(68),
      R => '0'
    );
\freq_low_46.sample_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(5),
      Q => sample_data(69),
      R => '0'
    );
\freq_low_46.sample_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(6),
      Q => sample_data(6),
      R => '0'
    );
\freq_low_46.sample_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(6),
      Q => sample_data(70),
      R => '0'
    );
\freq_low_46.sample_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(7),
      Q => sample_data(71),
      R => '0'
    );
\freq_low_46.sample_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(8),
      Q => sample_data(72),
      R => '0'
    );
\freq_low_46.sample_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(9),
      Q => sample_data(73),
      R => '0'
    );
\freq_low_46.sample_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(10),
      Q => sample_data(74),
      R => '0'
    );
\freq_low_46.sample_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(11),
      Q => sample_data(75),
      R => '0'
    );
\freq_low_46.sample_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(12),
      Q => sample_data(76),
      R => '0'
    );
\freq_low_46.sample_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(13),
      Q => sample_data(77),
      R => '0'
    );
\freq_low_46.sample_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(14),
      Q => sample_data(78),
      R => '0'
    );
\freq_low_46.sample_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_E0(15),
      Q => sample_data(79),
      R => '0'
    );
\freq_low_46.sample_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(7),
      Q => sample_data(7),
      R => '0'
    );
\freq_low_46.sample_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(80),
      Q => sample_data(80),
      R => '0'
    );
\freq_low_46.sample_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(81),
      Q => sample_data(81),
      R => '0'
    );
\freq_low_46.sample_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(82),
      Q => sample_data(82),
      R => '0'
    );
\freq_low_46.sample_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(83),
      Q => sample_data(83),
      R => '0'
    );
\freq_low_46.sample_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(84),
      Q => sample_data(84),
      R => '0'
    );
\freq_low_46.sample_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(85),
      Q => sample_data(85),
      R => '0'
    );
\freq_low_46.sample_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(86),
      Q => sample_data(86),
      R => '0'
    );
\freq_low_46.sample_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(87),
      Q => sample_data(87),
      R => '0'
    );
\freq_low_46.sample_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(88),
      Q => sample_data(88),
      R => '0'
    );
\freq_low_46.sample_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(89),
      Q => sample_data(89),
      R => '0'
    );
\freq_low_46.sample_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(8),
      Q => sample_data(8),
      R => '0'
    );
\freq_low_46.sample_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(90),
      Q => sample_data(90),
      R => '0'
    );
\freq_low_46.sample_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(91),
      Q => sample_data(91),
      R => '0'
    );
\freq_low_46.sample_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(92),
      Q => sample_data(92),
      R => '0'
    );
\freq_low_46.sample_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(93),
      Q => sample_data(93),
      R => '0'
    );
\freq_low_46.sample_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(94),
      Q => sample_data(94),
      R => '0'
    );
\freq_low_46.sample_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(95),
      Q => sample_data(95),
      R => '0'
    );
\freq_low_46.sample_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(96),
      Q => sample_data(96),
      R => '0'
    );
\freq_low_46.sample_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(97),
      Q => sample_data(97),
      R => '0'
    );
\freq_low_46.sample_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(98),
      Q => sample_data(98),
      R => '0'
    );
\freq_low_46.sample_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(99),
      Q => sample_data(99),
      R => '0'
    );
\freq_low_46.sample_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_N0(9),
      Q => sample_data(9),
      R => '0'
    );
\freq_low_46.start_delay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100010FFFFAAAA"
    )
        port map (
      I0 => \freq_low_46.start_delay[7]_i_4_n_0\,
      I1 => \freq_low_46.start_delay[7]_i_7_n_0\,
      I2 => \freq_low_46.start_delay_reg\(2),
      I3 => \freq_low_46.start_delay[7]_i_6_n_0\,
      I4 => \freq_low_46.curr_delay[7]_i_4_n_0\,
      I5 => \freq_low_46.start_delay_reg\(0),
      O => \freq_low_46.start_delay[0]_i_1_n_0\
    );
\freq_low_46.start_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(1),
      O => start_delay0(1)
    );
\freq_low_46.start_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(1),
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => \freq_low_46.start_delay_reg\(2),
      O => start_delay0(2)
    );
\freq_low_46.start_delay[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(2),
      I2 => \freq_low_46.start_delay_reg\(1),
      I3 => \freq_low_46.start_delay_reg\(3),
      O => start_delay0(3)
    );
\freq_low_46.start_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(3),
      I1 => \freq_low_46.start_delay_reg\(1),
      I2 => \freq_low_46.start_delay_reg\(2),
      I3 => \freq_low_46.start_delay_reg\(0),
      I4 => \freq_low_46.start_delay_reg\(4),
      O => start_delay0(4)
    );
\freq_low_46.start_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(4),
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => \freq_low_46.start_delay_reg\(2),
      I3 => \freq_low_46.start_delay_reg\(1),
      I4 => \freq_low_46.start_delay_reg\(3),
      I5 => \freq_low_46.start_delay_reg\(5),
      O => start_delay0(5)
    );
\freq_low_46.start_delay[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \freq_low_46.start_delay[7]_i_8_n_0\,
      I1 => \freq_low_46.start_delay_reg\(4),
      I2 => \freq_low_46.start_delay_reg\(5),
      I3 => \freq_low_46.start_delay_reg\(6),
      O => start_delay0(6)
    );
\freq_low_46.start_delay[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EFEE"
    )
        port map (
      I0 => \freq_low_46.start_delay[7]_i_4_n_0\,
      I1 => \freq_low_46.start_delay[7]_i_5_n_0\,
      I2 => \freq_low_46.start_delay_reg\(0),
      I3 => \freq_low_46.curr_delay[7]_i_4_n_0\,
      I4 => freq_fifo_valid,
      I5 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      O => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEE2EE"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_4_n_0\,
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => \freq_low_46.start_delay[7]_i_6_n_0\,
      I3 => \freq_low_46.start_delay_reg\(2),
      I4 => \freq_low_46.start_delay[7]_i_7_n_0\,
      I5 => \freq_low_46.start_delay[7]_i_4_n_0\,
      O => \freq_low_46.start_delay[7]_i_2_n_0\
    );
\freq_low_46.start_delay[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \freq_low_46.start_delay[7]_i_8_n_0\,
      I1 => \freq_low_46.start_delay_reg\(4),
      I2 => \freq_low_46.start_delay_reg\(6),
      I3 => \freq_low_46.start_delay_reg\(5),
      I4 => \freq_low_46.start_delay_reg\(7),
      O => start_delay0(7)
    );
\freq_low_46.start_delay[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(4),
      I1 => \freq_low_46.start_delay_reg\(3),
      I2 => \freq_low_46.start_delay_reg\(1),
      O => \freq_low_46.start_delay[7]_i_4_n_0\
    );
\freq_low_46.start_delay[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000001FF0000"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_low_46.start_delay[7]_i_9_n_0\,
      I2 => \freq_low_46.curr_delay[7]_i_14_n_0\,
      I3 => \freq_low_46.start_delay_reg\(2),
      I4 => \freq_low_46.start_delay_reg\(0),
      I5 => \freq_low_46.start_delay[7]_i_7_n_0\,
      O => \freq_low_46.start_delay[7]_i_5_n_0\
    );
\freq_low_46.start_delay[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_14_n_0\,
      I1 => \freq_low_46.curr_delay_reg\(1),
      I2 => \freq_low_46.curr_delay_reg\(0),
      I3 => \freq_low_46.curr_delay_reg\(3),
      I4 => \freq_low_46.curr_delay_reg\(2),
      I5 => freq_fifo_valid,
      O => \freq_low_46.start_delay[7]_i_6_n_0\
    );
\freq_low_46.start_delay[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(6),
      I1 => \freq_low_46.start_delay_reg\(5),
      I2 => \freq_low_46.start_delay_reg\(7),
      O => \freq_low_46.start_delay[7]_i_7_n_0\
    );
\freq_low_46.start_delay[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(2),
      I2 => \freq_low_46.start_delay_reg\(1),
      I3 => \freq_low_46.start_delay_reg\(3),
      O => \freq_low_46.start_delay[7]_i_8_n_0\
    );
\freq_low_46.start_delay[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(1),
      I1 => \freq_low_46.curr_delay_reg\(0),
      I2 => \freq_low_46.curr_delay_reg\(3),
      I3 => \freq_low_46.curr_delay_reg\(2),
      O => \freq_low_46.start_delay[7]_i_9_n_0\
    );
\freq_low_46.start_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_low_46.start_delay[0]_i_1_n_0\,
      Q => \freq_low_46.start_delay_reg\(0),
      R => '0'
    );
\freq_low_46.start_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(1),
      Q => \freq_low_46.start_delay_reg\(1),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(2),
      Q => \freq_low_46.start_delay_reg\(2),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(3),
      Q => \freq_low_46.start_delay_reg\(3),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(4),
      Q => \freq_low_46.start_delay_reg\(4),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(5),
      Q => \freq_low_46.start_delay_reg\(5),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(6),
      Q => \freq_low_46.start_delay_reg\(6),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(7),
      Q => \freq_low_46.start_delay_reg\(7),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
ila_0_i: component ps_freq_low_46_0_0_ila_0
     port map (
      clk => clk,
      probe0(0) => \^doa_wr\,
      probe1(0) => freq_fifo_rd,
      probe2(0) => raw_fifo_empty,
      probe3(15 downto 0) => envN(15 downto 0),
      probe4(15 downto 0) => raw_N0(15 downto 0),
      probe5(15 downto 0) => envE(15 downto 0),
      probe6(15 downto 0) => raw_E0(15 downto 0),
      probe7(15 downto 0) => envW(15 downto 0),
      probe8(15 downto 0) => raw_W0(15 downto 0)
    );
phase_err_i: entity work.ps_freq_low_46_0_0_phase_err
     port map (
      active => active0,
      clk => clk,
      env_in_E(15 downto 0) => env_E(15 downto 0),
      env_in_N(15 downto 0) => env_N(15 downto 0),
      env_in_W(15 downto 0) => env_W(15 downto 0),
      env_out_E(15 downto 0) => envE(15 downto 0),
      env_out_N(15 downto 0) => envN(15 downto 0),
      env_out_W(15 downto 0) => envW(15 downto 0),
      err_EW(11 downto 0) => errEW(11 downto 0),
      err_NE(11 downto 0) => errNE(11 downto 0),
      err_NW(11 downto 0) => errNW(11 downto 0),
      phase_in_E(19 downto 0) => phase_E(19 downto 0),
      phase_in_N(19 downto 0) => phase_N(19 downto 0),
      phase_in_W(19 downto 0) => phase_W(19 downto 0),
      phase_out_E(19 downto 0) => phaseE(19 downto 0),
      phase_out_N(19 downto 0) => phaseN(19 downto 0),
      phase_out_W(19 downto 0) => phaseW(19 downto 0),
      valid => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0 is
  port (
    fifo_clk : in STD_LOGIC;
    raw_wr : in STD_LOGIC;
    raw_data : in STD_LOGIC_VECTOR ( 191 downto 0 );
    freq_wr : in STD_LOGIC;
    freq_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doa_wr : out STD_LOGIC;
    sample_data : out STD_LOGIC_VECTOR ( 191 downto 0 );
    doa_data : out STD_LOGIC_VECTOR ( 143 downto 0 )
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
  attribute X_INTERFACE_INFO of fifo_clk : signal is "xilinx.com:signal:clock:1.0 fifo_clk CLK";
  attribute X_INTERFACE_MODE of fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of fifo_clk : signal is "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_freq_low_46_0_0_freq_low_46
     port map (
      clk => clk,
      doa_data(143 downto 0) => doa_data(143 downto 0),
      doa_wr => doa_wr,
      fifo_clk => fifo_clk,
      freq_data(47 downto 0) => freq_data(47 downto 0),
      freq_wr => freq_wr,
      raw_data(191 downto 0) => raw_data(191 downto 0),
      raw_wr => raw_wr,
      reset => reset,
      sample_data(191 downto 0) => sample_data(191 downto 0)
    );
end STRUCTURE;
