-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sun May 10 23:36:34 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_datamover_1_0/ps_axi_datamover_1_0_sim_netlist.vhdl
-- Design      : ps_axi_datamover_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_pcc is
  port (
    sig_mmap_reset_reg : out STD_LOGIC;
    sig_mstr2addr_burst : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_calc2dm_calc_err : out STD_LOGIC;
    sig_mstr2data_cmd_valid : out STD_LOGIC;
    sig_mstr2addr_cmd_valid : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 44 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_sm_halt_reg_reg_0 : out STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    \sig_addr_cntr_im0_msh_reg[15]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 53 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_SRL_FIFO.sig_wr_fifo\ : in STD_LOGIC;
    \USE_SRL_FIFO.sig_wr_fifo_0\ : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    sig_cmd2addr_valid_reg_0 : in STD_LOGIC;
    sig_cmd2data_valid_reg_0 : in STD_LOGIC;
    sig_inhibit_rdy_n_1 : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_pcc : entity is "axi_datamover_pcc";
end ps_axi_datamover_1_0_axi_datamover_pcc;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_pcc is
  signal \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_end_addr_us__37\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_length_adjust_us__3\ : STD_LOGIC;
  signal \I_STRT_STRB_GEN/sig_end_offset_un\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^in\ : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal sig_addr_aligned_im0 : STD_LOGIC;
  signal sig_addr_aligned_ireg1 : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[13]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[15]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[15]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_2_n_0\ : STD_LOGIC;
  signal sig_addr_cntr_im0_msh_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_addr_cntr_incr_ireg2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0[15]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[12]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[13]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[14]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_addr_cntr_lsh_kh : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_adjusted_addr_incr_im1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \sig_adjusted_addr_incr_ireg2[7]_i_10_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_11_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_12_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_13_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_6_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_7_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_8_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_9_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[9]_i_2_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[9]_i_3_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_brst_cnt_eq_one_im0 : STD_LOGIC;
  signal sig_brst_cnt_eq_one_ireg1 : STD_LOGIC;
  signal sig_brst_cnt_eq_zero_im0 : STD_LOGIC;
  signal sig_brst_cnt_eq_zero_ireg1 : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_10_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_11_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_12_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_13_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_10_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_11_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_12_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_13_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_14_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_15_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_16_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_17_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[12]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[13]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[14]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[15]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_ireg1 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_ireg1_i_2_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_ireg1_i_3_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_ireg1_i_4_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_ireg1_i_5_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_ireg1_i_6_n_0 : STD_LOGIC;
  signal sig_btt_is_zero : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_10_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_11_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_12_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_13_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_14_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_8_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_9_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_3 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_4 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_5 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_6 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_7 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_ireg1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_ireg1_i_2_n_0 : STD_LOGIC;
  signal sig_bytes_to_mbaa_im0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal sig_bytes_to_mbaa_ireg1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\ : STD_LOGIC;
  signal \^sig_calc2dm_calc_err\ : STD_LOGIC;
  signal sig_calc_error_pushed : STD_LOGIC;
  signal sig_calc_error_pushed_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg0 : STD_LOGIC;
  signal sig_calc_error_reg_i_2_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_3_n_0 : STD_LOGIC;
  signal sig_cmd2addr_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2data_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_reg_n_0 : STD_LOGIC;
  signal sig_finish_addr_offset_im1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_finish_addr_offset_ireg2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sig_finish_addr_offset_ireg2[3]_i_2_n_0\ : STD_LOGIC;
  signal sig_first_xfer_im0 : STD_LOGIC;
  signal sig_first_xfer_im0_i_1_n_0 : STD_LOGIC;
  signal sig_input_cache_type_reg0 : STD_LOGIC;
  signal sig_input_eof_reg_reg_n_0 : STD_LOGIC;
  signal sig_input_reg_empty : STD_LOGIC;
  signal sig_ld_xfer_reg : STD_LOGIC;
  signal sig_ld_xfer_reg_i_1_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg_tmp : STD_LOGIC;
  signal sig_ld_xfer_reg_tmp_i_1_n_0 : STD_LOGIC;
  signal \^sig_mmap_reset_reg\ : STD_LOGIC;
  signal \^sig_mstr2addr_burst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig_mstr2addr_cmd_valid\ : STD_LOGIC;
  signal \^sig_mstr2data_cmd_valid\ : STD_LOGIC;
  signal sig_no_btt_residue_im0 : STD_LOGIC;
  signal sig_no_btt_residue_ireg1 : STD_LOGIC;
  signal sig_no_btt_residue_ireg1_i_2_n_0 : STD_LOGIC;
  signal sig_parent_done : STD_LOGIC;
  signal sig_parent_done_i_1_n_0 : STD_LOGIC;
  signal sig_predict_addr_lsh_im2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_predict_addr_lsh_ireg3 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[15]_i_3_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[15]_i_4_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_6_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_7_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_8_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_9_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal sig_sm_halt_ns : STD_LOGIC;
  signal sig_sm_halt_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg_ns : STD_LOGIC;
  signal sig_sm_ld_calc2_reg : STD_LOGIC;
  signal sig_sm_ld_calc3_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg_ns : STD_LOGIC;
  signal sig_strbgen_addr_ireg2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_strbgen_bytes_ireg2 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \sig_strbgen_bytes_ireg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[4]\ : STD_LOGIC;
  signal sig_xfer_end_strb_ireg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_xfer_end_strb_ireg3[10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[12]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[13]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[14]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[9]_i_1_n_0\ : STD_LOGIC;
  signal sig_xfer_len_eq_0_im2 : STD_LOGIC;
  signal sig_xfer_len_eq_0_ireg3 : STD_LOGIC;
  signal sig_xfer_len_eq_0_ireg3_i_2_n_0 : STD_LOGIC;
  signal sig_xfer_len_eq_0_ireg3_i_3_n_0 : STD_LOGIC;
  signal sig_xfer_reg_empty : STD_LOGIC;
  signal sig_xfer_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_strt_strb_im2 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal sig_xfer_strt_strb_ireg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_xfer_strt_strb_ireg3[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[10]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[12]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[14]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_10_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_11_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_12_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_13_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_14_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_15_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[9]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_sig_adjusted_addr_incr_ireg2_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_sig_adjusted_addr_incr_ireg2_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_sig_btt_cntr_im0_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sig_btt_lt_b2mbaa_im01_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[5]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[6]_i_1\ : label is "soft_lutpair46";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[0]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[1]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[5]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[6]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[7]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute SOFT_HLUTNM of \data_reg[3][10]_srl4_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_reg[3][11]_srl4_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_reg[3][12]_srl4_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_reg[3][13]_srl4_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_reg[3][14]_srl4_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_reg[3][15]_srl4_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_reg[3][16]_srl4_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_reg[3][17]_srl4_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_reg[3][17]_srl4_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_reg[3][18]_srl4_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_reg[3][18]_srl4_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_reg[3][19]_srl4_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_reg[3][19]_srl4_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_reg[3][1]_srl4_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_reg[3][20]_srl4_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_reg[3][20]_srl4_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_reg[3][21]_srl4_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_reg[3][22]_srl4_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_reg[3][23]_srl4_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_reg[3][23]_srl4_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \data_reg[3][24]_srl4_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_reg[3][24]_srl4_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \data_reg[3][25]_srl4_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_reg[3][25]_srl4_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \data_reg[3][26]_srl4_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_reg[3][26]_srl4_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \data_reg[3][27]_srl4_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_reg[3][27]_srl4_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \data_reg[3][28]_srl4_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_reg[3][28]_srl4_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \data_reg[3][29]_srl4_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_reg[3][29]_srl4_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \data_reg[3][30]_srl4_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_reg[3][30]_srl4_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \data_reg[3][31]_srl4_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_reg[3][31]_srl4_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \data_reg[3][32]_srl4_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_reg[3][32]_srl4_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \data_reg[3][33]_srl4_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_reg[3][33]_srl4_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \data_reg[3][34]_srl4_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_reg[3][34]_srl4_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \data_reg[3][35]_srl4_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_reg[3][35]_srl4_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \data_reg[3][36]_srl4_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_reg[3][36]_srl4_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \data_reg[3][37]_srl4_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \data_reg[3][38]_srl4_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \data_reg[3][39]_srl4_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \data_reg[3][40]_srl4_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \data_reg[3][41]_srl4_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \data_reg[3][42]_srl4_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \data_reg[3][43]_srl4_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \data_reg[3][44]_srl4_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \data_reg[3][45]_srl4_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \data_reg[3][46]_srl4_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \data_reg[3][47]_srl4_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \data_reg[3][48]_srl4_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \data_reg[3][49]_srl4_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \data_reg[3][50]_srl4_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \data_reg[3][51]_srl4_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \data_reg[3][52]_srl4_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \data_reg[3][53]_srl4_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \data_reg[3][54]_srl4_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \data_reg[3][5]_srl4_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_reg[3][6]_srl4_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_reg[3][7]_srl4_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_reg[3][8]_srl4_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_reg[3][9]_srl4_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sig_addr_cntr_im0_msh[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sig_addr_cntr_im0_msh[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sig_addr_cntr_im0_msh[13]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sig_addr_cntr_im0_msh[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sig_addr_cntr_im0_msh[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sig_addr_cntr_im0_msh[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sig_addr_cntr_incr_ireg2[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sig_addr_cntr_incr_ireg2[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[10]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[11]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[12]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[13]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[14]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[15]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[7]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[8]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sig_addr_cntr_lsh_im0[9]_i_1\ : label is "soft_lutpair50";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of sig_btt_lt_b2mbaa_im01_carry : label is 11;
  attribute SOFT_HLUTNM of sig_btt_lt_b2mbaa_im01_carry_i_12 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of sig_btt_lt_b2mbaa_im01_carry_i_14 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sig_bytes_to_mbaa_ireg1[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \sig_bytes_to_mbaa_ireg1[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \sig_bytes_to_mbaa_ireg1[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sig_bytes_to_mbaa_ireg1[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sig_bytes_to_mbaa_ireg1[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sig_bytes_to_mbaa_ireg1[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sig_bytes_to_mbaa_ireg1[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sig_bytes_to_mbaa_ireg1[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sig_calc_error_pushed_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sig_finish_addr_offset_ireg2[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sig_finish_addr_offset_ireg2[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sig_finish_addr_offset_ireg2[3]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of sig_last_addr_offset_im2 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of sig_ld_xfer_reg_i_1 : label is "soft_lutpair33";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sig_predict_addr_lsh_ireg3_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sig_predict_addr_lsh_ireg3_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of sig_sm_ld_calc1_reg_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of sig_sm_pop_input_reg_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sig_strbgen_bytes_ireg2[3]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[11]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[9]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of sig_xfer_reg_empty_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[10]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[13]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[14]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_10\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_11\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_12\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_14\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_16\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[9]_i_2\ : label is "soft_lutpair73";
begin
  \in\(44 downto 0) <= \^in\(44 downto 0);
  sig_calc2dm_calc_err <= \^sig_calc2dm_calc_err\;
  sig_mmap_reset_reg <= \^sig_mmap_reset_reg\;
  sig_mstr2addr_burst(0) <= \^sig_mstr2addr_burst\(0);
  sig_mstr2addr_cmd_valid <= \^sig_mstr2addr_cmd_valid\;
  sig_mstr2data_cmd_valid <= \^sig_mstr2data_cmd_valid\;
\FSM_onehot_sig_pcc_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAABAAA"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      I1 => sig_calc_error_pushed,
      I2 => sig_parent_done,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I4 => sig_calc_error_reg0,
      I5 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      O => \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I2 => sig_sm_ld_calc3_reg,
      O => \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      O => \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F020F02FF320F02"
    )
        port map (
      I0 => sig_cmd2dre_valid_reg_n_0,
      I1 => \^sig_mstr2data_cmd_valid\,
      I2 => \^sig_mstr2addr_cmd_valid\,
      I3 => \USE_SRL_FIFO.sig_wr_fifo_0\,
      I4 => sig_inhibit_rdy_n,
      I5 => sig_cmd2addr_valid_reg_0,
      O => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      O => \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      S => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      R => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      R => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      R => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      R => \^sig_mmap_reset_reg\
    );
\addr_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FEFFFEFF0100"
    )
        port map (
      I0 => sig_sm_halt_reg,
      I1 => sig_calc_error_pushed,
      I2 => Q(1),
      I3 => sig_input_reg_empty,
      I4 => \USE_SRL_FIFO.sig_wr_fifo\,
      I5 => Q(0),
      O => D(0)
    );
\addr_i[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => sig_sm_halt_reg,
      I1 => sig_calc_error_pushed,
      I2 => Q(1),
      I3 => sig_input_reg_empty,
      O => sig_sm_halt_reg_reg_0
    );
\data_reg[3][10]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(10),
      I4 => sig_xfer_end_strb_ireg3(10),
      O => \^in\(36)
    );
\data_reg[3][11]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(9),
      I4 => sig_xfer_end_strb_ireg3(9),
      O => \^in\(35)
    );
\data_reg[3][12]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(8),
      I4 => sig_xfer_end_strb_ireg3(8),
      O => \^in\(34)
    );
\data_reg[3][13]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(7),
      I4 => sig_xfer_end_strb_ireg3(7),
      O => \^in\(33)
    );
\data_reg[3][14]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(6),
      I4 => sig_xfer_end_strb_ireg3(6),
      O => \^in\(32)
    );
\data_reg[3][15]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(5),
      I4 => sig_xfer_end_strb_ireg3(5),
      O => \^in\(31)
    );
\data_reg[3][16]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(4),
      I4 => sig_xfer_end_strb_ireg3(4),
      O => \^in\(30)
    );
\data_reg[3][17]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      I1 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      I2 => sig_xfer_len_eq_0_ireg3_i_3_n_0,
      I3 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      I4 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      O => \^in\(9)
    );
\data_reg[3][17]_srl4_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(3),
      I4 => sig_xfer_end_strb_ireg3(3),
      O => \^in\(29)
    );
\data_reg[3][18]_srl4_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      I1 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      I2 => sig_xfer_len_eq_0_ireg3_i_3_n_0,
      I3 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      O => \^in\(8)
    );
\data_reg[3][18]_srl4_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(2),
      I4 => sig_xfer_end_strb_ireg3(2),
      O => \^in\(28)
    );
\data_reg[3][19]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      I1 => sig_xfer_len_eq_0_ireg3_i_3_n_0,
      I2 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      O => \^in\(7)
    );
\data_reg[3][19]_srl4_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(1),
      I4 => sig_xfer_end_strb_ireg3(1),
      O => \^in\(27)
    );
\data_reg[3][1]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_calc2dm_calc_err\,
      I1 => \^in\(43),
      O => \^in\(44)
    );
\data_reg[3][20]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      I1 => sig_xfer_len_eq_0_ireg3_i_3_n_0,
      O => \^in\(6)
    );
\data_reg[3][20]_srl4_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(0),
      I4 => sig_xfer_end_strb_ireg3(0),
      O => \^in\(26)
    );
\data_reg[3][21]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(15),
      I1 => sig_first_xfer_im0,
      O => \^in\(25)
    );
\data_reg[3][21]_srl4_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      I1 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      I2 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      I3 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      I4 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      I5 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      O => \^in\(5)
    );
\data_reg[3][22]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(14),
      I1 => sig_first_xfer_im0,
      O => \^in\(24)
    );
\data_reg[3][22]_srl4_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      I1 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      I2 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      I3 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      I4 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      O => \^in\(4)
    );
\data_reg[3][23]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(13),
      I1 => sig_first_xfer_im0,
      O => \^in\(23)
    );
\data_reg[3][23]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(15),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(31),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(31)
    );
\data_reg[3][24]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(12),
      I1 => sig_first_xfer_im0,
      O => \^in\(22)
    );
\data_reg[3][24]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(14),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(30),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(30)
    );
\data_reg[3][25]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(11),
      I1 => sig_first_xfer_im0,
      O => \^in\(21)
    );
\data_reg[3][25]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(13),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(29),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(29)
    );
\data_reg[3][26]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(10),
      I1 => sig_first_xfer_im0,
      O => \^in\(20)
    );
\data_reg[3][26]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(12),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(28),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(28)
    );
\data_reg[3][27]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(9),
      I1 => sig_first_xfer_im0,
      O => \^in\(19)
    );
\data_reg[3][27]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(11),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(27),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(27)
    );
\data_reg[3][28]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(8),
      I1 => sig_first_xfer_im0,
      O => \^in\(18)
    );
\data_reg[3][28]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(10),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(26),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(26)
    );
\data_reg[3][29]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(7),
      I1 => sig_first_xfer_im0,
      O => \^in\(17)
    );
\data_reg[3][29]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(9),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(25),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(25)
    );
\data_reg[3][2]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F110FFFFF11FFFF"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1,
      I1 => sig_btt_eq_b2mbaa_ireg1,
      I2 => sig_brst_cnt_eq_one_ireg1,
      I3 => sig_no_btt_residue_ireg1,
      I4 => sig_brst_cnt_eq_zero_ireg1,
      I5 => sig_addr_aligned_ireg1,
      O => \^in\(43)
    );
\data_reg[3][30]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(6),
      I1 => sig_first_xfer_im0,
      O => \^in\(16)
    );
\data_reg[3][30]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(8),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(24),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(24)
    );
\data_reg[3][31]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(5),
      I1 => sig_first_xfer_im0,
      O => \^in\(15)
    );
\data_reg[3][31]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(7),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(23),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(23)
    );
\data_reg[3][32]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(4),
      I1 => sig_first_xfer_im0,
      O => \^in\(14)
    );
\data_reg[3][32]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(6),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(22),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(22)
    );
\data_reg[3][33]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(3),
      I1 => sig_first_xfer_im0,
      O => \^in\(13)
    );
\data_reg[3][33]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(5),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(21),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(21)
    );
\data_reg[3][34]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(2),
      I1 => sig_first_xfer_im0,
      O => \^in\(12)
    );
\data_reg[3][34]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(4),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(20),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(20)
    );
\data_reg[3][35]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(1),
      I1 => sig_first_xfer_im0,
      O => \^in\(11)
    );
\data_reg[3][35]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(3),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(19),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(19)
    );
\data_reg[3][36]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(0),
      I1 => sig_first_xfer_im0,
      O => \^in\(10)
    );
\data_reg[3][36]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(2),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(18),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(18)
    );
\data_reg[3][37]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(1),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(17),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(17)
    );
\data_reg[3][38]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(0),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(16),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(16)
    );
\data_reg[3][39]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(15),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(15)
    );
\data_reg[3][3]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_input_eof_reg_reg_n_0,
      I1 => \^in\(43),
      O => \^in\(42)
    );
\data_reg[3][40]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(14),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(14)
    );
\data_reg[3][41]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(13),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(13)
    );
\data_reg[3][42]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(12),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(12)
    );
\data_reg[3][43]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(11),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(11)
    );
\data_reg[3][44]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(10),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(10)
    );
\data_reg[3][45]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(9),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(9)
    );
\data_reg[3][46]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(8),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(8)
    );
\data_reg[3][47]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(7),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(7)
    );
\data_reg[3][48]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(6),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(6)
    );
\data_reg[3][49]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(5),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(5)
    );
\data_reg[3][50]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(4),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(4)
    );
\data_reg[3][51]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(3),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(3)
    );
\data_reg[3][52]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(2),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(2)
    );
\data_reg[3][53]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(1),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(1)
    );
\data_reg[3][54]_srl4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(0),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(0)
    );
\data_reg[3][5]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(15),
      I4 => sig_xfer_end_strb_ireg3(15),
      O => \^in\(41)
    );
\data_reg[3][6]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(14),
      I4 => sig_xfer_end_strb_ireg3(14),
      O => \^in\(40)
    );
\data_reg[3][7]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(13),
      I4 => sig_xfer_end_strb_ireg3(13),
      O => \^in\(39)
    );
\data_reg[3][8]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(12),
      I4 => sig_xfer_end_strb_ireg3(12),
      O => \^in\(38)
    );
\data_reg[3][9]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FEA2A"
    )
        port map (
      I0 => \^in\(43),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_strt_strb_ireg3(11),
      I4 => sig_xfer_end_strb_ireg3(11),
      O => \^in\(37)
    );
s2mm_err_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_calc2dm_calc_err\,
      I1 => sig_data2all_tlast_error,
      O => s2mm_err
    );
sig_addr_aligned_ireg1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I4 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      I5 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      O => sig_addr_aligned_im0
    );
sig_addr_aligned_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_addr_aligned_im0,
      Q => sig_addr_aligned_ireg1,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \out\(34),
      I1 => sig_calc_error_reg0,
      I2 => sig_addr_cntr_im0_msh_reg(0),
      O => p_0_in(0)
    );
\sig_addr_cntr_im0_msh[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACF30"
    )
        port map (
      I0 => \out\(44),
      I1 => \sig_addr_cntr_im0_msh[11]_i_2_n_0\,
      I2 => sig_addr_cntr_im0_msh_reg(9),
      I3 => sig_addr_cntr_im0_msh_reg(10),
      I4 => sig_calc_error_reg0,
      O => p_0_in(10)
    );
\sig_addr_cntr_im0_msh[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF9AAA00009AAA"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(11),
      I1 => \sig_addr_cntr_im0_msh[11]_i_2_n_0\,
      I2 => sig_addr_cntr_im0_msh_reg(9),
      I3 => sig_addr_cntr_im0_msh_reg(10),
      I4 => sig_calc_error_reg0,
      I5 => \out\(45),
      O => p_0_in(11)
    );
\sig_addr_cntr_im0_msh[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(7),
      I1 => sig_addr_cntr_im0_msh_reg(5),
      I2 => \sig_addr_cntr_im0_msh[7]_i_2_n_0\,
      I3 => sig_addr_cntr_im0_msh_reg(6),
      I4 => sig_addr_cntr_im0_msh_reg(8),
      O => \sig_addr_cntr_im0_msh[11]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6A006A"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(12),
      I1 => \sig_addr_cntr_im0_msh[13]_i_2_n_0\,
      I2 => sig_addr_cntr_im0_msh_reg(11),
      I3 => sig_calc_error_reg0,
      I4 => \out\(46),
      O => p_0_in(12)
    );
\sig_addr_cntr_im0_msh[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6AAA00006AAA"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(13),
      I1 => sig_addr_cntr_im0_msh_reg(12),
      I2 => sig_addr_cntr_im0_msh_reg(11),
      I3 => \sig_addr_cntr_im0_msh[13]_i_2_n_0\,
      I4 => sig_calc_error_reg0,
      I5 => \out\(47),
      O => p_0_in(13)
    );
\sig_addr_cntr_im0_msh[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(10),
      I1 => sig_addr_cntr_im0_msh_reg(9),
      I2 => \sig_addr_cntr_im0_msh[11]_i_2_n_0\,
      O => \sig_addr_cntr_im0_msh[13]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(14),
      I1 => \sig_addr_cntr_im0_msh[15]_i_3_n_0\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(48),
      O => p_0_in(14)
    );
\sig_addr_cntr_im0_msh[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      I1 => p_1_in,
      I2 => sig_predict_addr_lsh_ireg3(15),
      I3 => sig_calc_error_reg0,
      O => \sig_addr_cntr_im0_msh[15]_i_1_n_0\
    );
\sig_addr_cntr_im0_msh[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(15),
      I1 => sig_addr_cntr_im0_msh_reg(14),
      I2 => \sig_addr_cntr_im0_msh[15]_i_3_n_0\,
      I3 => sig_calc_error_reg0,
      I4 => \out\(49),
      O => p_0_in(15)
    );
\sig_addr_cntr_im0_msh[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(12),
      I1 => sig_addr_cntr_im0_msh_reg(11),
      I2 => \sig_addr_cntr_im0_msh[11]_i_2_n_0\,
      I3 => sig_addr_cntr_im0_msh_reg(9),
      I4 => sig_addr_cntr_im0_msh_reg(10),
      I5 => sig_addr_cntr_im0_msh_reg(13),
      O => \sig_addr_cntr_im0_msh[15]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(1),
      I1 => sig_addr_cntr_im0_msh_reg(0),
      I2 => sig_calc_error_reg0,
      I3 => \out\(35),
      O => p_0_in(1)
    );
\sig_addr_cntr_im0_msh[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6A006A"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(2),
      I1 => sig_addr_cntr_im0_msh_reg(0),
      I2 => sig_addr_cntr_im0_msh_reg(1),
      I3 => sig_calc_error_reg0,
      I4 => \out\(36),
      O => p_0_in(2)
    );
\sig_addr_cntr_im0_msh[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6AAA00006AAA"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(3),
      I1 => sig_addr_cntr_im0_msh_reg(1),
      I2 => sig_addr_cntr_im0_msh_reg(0),
      I3 => sig_addr_cntr_im0_msh_reg(2),
      I4 => sig_calc_error_reg0,
      I5 => \out\(37),
      O => p_0_in(3)
    );
\sig_addr_cntr_im0_msh[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACC3C"
    )
        port map (
      I0 => \out\(38),
      I1 => sig_addr_cntr_im0_msh_reg(4),
      I2 => sig_addr_cntr_im0_msh_reg(3),
      I3 => \sig_addr_cntr_im0_msh[4]_i_2_n_0\,
      I4 => sig_calc_error_reg0,
      O => p_0_in(4)
    );
\sig_addr_cntr_im0_msh[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(1),
      I1 => sig_addr_cntr_im0_msh_reg(0),
      I2 => sig_addr_cntr_im0_msh_reg(2),
      O => \sig_addr_cntr_im0_msh[4]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(5),
      I1 => \sig_addr_cntr_im0_msh[7]_i_2_n_0\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(39),
      O => p_0_in(5)
    );
\sig_addr_cntr_im0_msh[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(6),
      I1 => sig_addr_cntr_im0_msh_reg(5),
      I2 => \sig_addr_cntr_im0_msh[7]_i_2_n_0\,
      I3 => sig_calc_error_reg0,
      I4 => \out\(40),
      O => p_0_in(6)
    );
\sig_addr_cntr_im0_msh[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA6AA0000A6AA"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(7),
      I1 => sig_addr_cntr_im0_msh_reg(6),
      I2 => \sig_addr_cntr_im0_msh[7]_i_2_n_0\,
      I3 => sig_addr_cntr_im0_msh_reg(5),
      I4 => sig_calc_error_reg0,
      I5 => \out\(41),
      O => p_0_in(7)
    );
\sig_addr_cntr_im0_msh[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(3),
      I1 => sig_addr_cntr_im0_msh_reg(1),
      I2 => sig_addr_cntr_im0_msh_reg(0),
      I3 => sig_addr_cntr_im0_msh_reg(2),
      I4 => sig_addr_cntr_im0_msh_reg(4),
      O => \sig_addr_cntr_im0_msh[7]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACC3CCCCC"
    )
        port map (
      I0 => \out\(42),
      I1 => sig_addr_cntr_im0_msh_reg(8),
      I2 => sig_addr_cntr_im0_msh_reg(7),
      I3 => \sig_addr_cntr_im0_msh[8]_i_2_n_0\,
      I4 => sig_addr_cntr_im0_msh_reg(6),
      I5 => sig_calc_error_reg0,
      O => p_0_in(8)
    );
\sig_addr_cntr_im0_msh[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(4),
      I1 => sig_addr_cntr_im0_msh_reg(2),
      I2 => sig_addr_cntr_im0_msh_reg(0),
      I3 => sig_addr_cntr_im0_msh_reg(1),
      I4 => sig_addr_cntr_im0_msh_reg(3),
      I5 => sig_addr_cntr_im0_msh_reg(5),
      O => \sig_addr_cntr_im0_msh[8]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(9),
      I1 => \sig_addr_cntr_im0_msh[11]_i_2_n_0\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(43),
      O => p_0_in(9)
    );
\sig_addr_cntr_im0_msh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(0),
      Q => sig_addr_cntr_im0_msh_reg(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(10),
      Q => sig_addr_cntr_im0_msh_reg(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(11),
      Q => sig_addr_cntr_im0_msh_reg(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(12),
      Q => sig_addr_cntr_im0_msh_reg(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(13),
      Q => sig_addr_cntr_im0_msh_reg(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(14),
      Q => sig_addr_cntr_im0_msh_reg(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(15),
      Q => sig_addr_cntr_im0_msh_reg(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(1),
      Q => sig_addr_cntr_im0_msh_reg(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(2),
      Q => sig_addr_cntr_im0_msh_reg(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(3),
      Q => sig_addr_cntr_im0_msh_reg(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(4),
      Q => sig_addr_cntr_im0_msh_reg(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(5),
      Q => sig_addr_cntr_im0_msh_reg(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(6),
      Q => sig_addr_cntr_im0_msh_reg(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(7),
      Q => sig_addr_cntr_im0_msh_reg(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(8),
      Q => sig_addr_cntr_im0_msh_reg(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[15]_i_1_n_0\,
      D => p_0_in(9),
      Q => sig_addr_cntr_im0_msh_reg(9),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I1 => sig_bytes_to_mbaa_ireg1(0),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => sig_first_xfer_im0,
      I1 => sig_addr_aligned_ireg1,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I1 => sig_bytes_to_mbaa_ireg1(1),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I1 => sig_bytes_to_mbaa_ireg1(2),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I1 => sig_bytes_to_mbaa_ireg1(3),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I1 => sig_bytes_to_mbaa_ireg1(4),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_bytes_to_mbaa_ireg1(5),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I1 => sig_bytes_to_mbaa_ireg1(6),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I1 => sig_bytes_to_mbaa_ireg1(7),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I1 => sig_bytes_to_mbaa_ireg1(8),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => sig_bytes_to_mbaa_ireg1(9),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(9),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(18),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(0),
      O => \p_1_in__0\(0)
    );
\sig_addr_cntr_lsh_im0[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(28),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(10),
      O => \p_1_in__0\(10)
    );
\sig_addr_cntr_lsh_im0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(29),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(11),
      O => \p_1_in__0\(11)
    );
\sig_addr_cntr_lsh_im0[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(30),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(12),
      O => \p_1_in__0\(12)
    );
\sig_addr_cntr_lsh_im0[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(31),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(13),
      O => \p_1_in__0\(13)
    );
\sig_addr_cntr_lsh_im0[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(32),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(14),
      O => \p_1_in__0\(14)
    );
\sig_addr_cntr_lsh_im0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_calc_error_reg0,
      I1 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      O => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\
    );
\sig_addr_cntr_lsh_im0[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(33),
      I1 => sig_calc_error_reg0,
      I2 => sig_predict_addr_lsh_ireg3(15),
      O => \p_1_in__0\(15)
    );
\sig_addr_cntr_lsh_im0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(19),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(1),
      O => \p_1_in__0\(1)
    );
\sig_addr_cntr_lsh_im0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(20),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(2),
      O => \p_1_in__0\(2)
    );
\sig_addr_cntr_lsh_im0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(21),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(3),
      O => \p_1_in__0\(3)
    );
\sig_addr_cntr_lsh_im0[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(22),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(4),
      O => \p_1_in__0\(4)
    );
\sig_addr_cntr_lsh_im0[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(23),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(5),
      O => \p_1_in__0\(5)
    );
\sig_addr_cntr_lsh_im0[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(24),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(6),
      O => \p_1_in__0\(6)
    );
\sig_addr_cntr_lsh_im0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(25),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(7),
      O => \p_1_in__0\(7)
    );
\sig_addr_cntr_lsh_im0[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(26),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(8),
      O => \p_1_in__0\(8)
    );
\sig_addr_cntr_lsh_im0[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(27),
      I1 => sig_calc_error_reg0,
      I2 => \sig_predict_addr_lsh_ireg3__0\(9),
      O => \p_1_in__0\(9)
    );
\sig_addr_cntr_lsh_im0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(0),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(10),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(11),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(12),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(13),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(14),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(15),
      Q => p_1_in,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(1),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(2),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(4),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(6),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(8),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(9),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(18),
      Q => sig_addr_cntr_lsh_kh(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(28),
      Q => sig_addr_cntr_lsh_kh(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(29),
      Q => sig_addr_cntr_lsh_kh(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(30),
      Q => sig_addr_cntr_lsh_kh(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(31),
      Q => sig_addr_cntr_lsh_kh(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(32),
      Q => sig_addr_cntr_lsh_kh(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(33),
      Q => sig_addr_cntr_lsh_kh(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(34),
      Q => sig_addr_cntr_lsh_kh(16),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(35),
      Q => sig_addr_cntr_lsh_kh(17),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(36),
      Q => sig_addr_cntr_lsh_kh(18),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(37),
      Q => sig_addr_cntr_lsh_kh(19),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(19),
      Q => sig_addr_cntr_lsh_kh(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(38),
      Q => sig_addr_cntr_lsh_kh(20),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(39),
      Q => sig_addr_cntr_lsh_kh(21),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(40),
      Q => sig_addr_cntr_lsh_kh(22),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(41),
      Q => sig_addr_cntr_lsh_kh(23),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(42),
      Q => sig_addr_cntr_lsh_kh(24),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(43),
      Q => sig_addr_cntr_lsh_kh(25),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(44),
      Q => sig_addr_cntr_lsh_kh(26),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(45),
      Q => sig_addr_cntr_lsh_kh(27),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(46),
      Q => sig_addr_cntr_lsh_kh(28),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(47),
      Q => sig_addr_cntr_lsh_kh(29),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(20),
      Q => sig_addr_cntr_lsh_kh(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(48),
      Q => sig_addr_cntr_lsh_kh(30),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(49),
      Q => sig_addr_cntr_lsh_kh(31),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(21),
      Q => sig_addr_cntr_lsh_kh(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(22),
      Q => sig_addr_cntr_lsh_kh(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(23),
      Q => sig_addr_cntr_lsh_kh(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(24),
      Q => sig_addr_cntr_lsh_kh(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(25),
      Q => sig_addr_cntr_lsh_kh(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(26),
      Q => sig_addr_cntr_lsh_kh(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(27),
      Q => sig_addr_cntr_lsh_kh(9),
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15BFEA40"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1,
      I1 => sig_first_xfer_im0,
      I2 => sig_bytes_to_mbaa_ireg1(3),
      I3 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_10_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15BFEA40"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1,
      I1 => sig_first_xfer_im0,
      I2 => sig_bytes_to_mbaa_ireg1(2),
      I3 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_11_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15BFEA40"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1,
      I1 => sig_first_xfer_im0,
      I2 => sig_bytes_to_mbaa_ireg1(1),
      I3 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_12_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15BFEA40"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1,
      I1 => sig_first_xfer_im0,
      I2 => sig_bytes_to_mbaa_ireg1(0),
      I3 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_13_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I1 => sig_bytes_to_mbaa_ireg1(3),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I1 => sig_bytes_to_mbaa_ireg1(2),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I1 => sig_bytes_to_mbaa_ireg1(1),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I1 => sig_bytes_to_mbaa_ireg1(0),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I1 => sig_bytes_to_mbaa_ireg1(7),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_6_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I1 => sig_bytes_to_mbaa_ireg1(6),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_7_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_bytes_to_mbaa_ireg1(5),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_8_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I1 => sig_bytes_to_mbaa_ireg1(4),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_9_n_0\
    );
\sig_adjusted_addr_incr_ireg2[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => sig_bytes_to_mbaa_ireg1(9),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[9]_i_2_n_0\
    );
\sig_adjusted_addr_incr_ireg2[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I1 => sig_bytes_to_mbaa_ireg1(8),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_adjusted_addr_incr_ireg2[9]_i_3_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(0),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(1),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(2),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(3),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(4),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(5),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(6),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(7),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\,
      CO(6) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1\,
      CO(5) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2\,
      CO(4) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3\,
      CO(3) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_4\,
      CO(2) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_5\,
      CO(1) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_6\,
      CO(0) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\,
      DI(2) => \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\,
      DI(1) => \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\,
      DI(0) => \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\,
      O(7 downto 0) => sig_adjusted_addr_incr_im1(7 downto 0),
      S(7) => \sig_adjusted_addr_incr_ireg2[7]_i_6_n_0\,
      S(6) => \sig_adjusted_addr_incr_ireg2[7]_i_7_n_0\,
      S(5) => \sig_adjusted_addr_incr_ireg2[7]_i_8_n_0\,
      S(4) => \sig_adjusted_addr_incr_ireg2[7]_i_9_n_0\,
      S(3) => \sig_adjusted_addr_incr_ireg2[7]_i_10_n_0\,
      S(2) => \sig_adjusted_addr_incr_ireg2[7]_i_11_n_0\,
      S(1) => \sig_adjusted_addr_incr_ireg2[7]_i_12_n_0\,
      S(0) => \sig_adjusted_addr_incr_ireg2[7]_i_13_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(8),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(9),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_sig_adjusted_addr_incr_ireg2_reg[9]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \sig_adjusted_addr_incr_ireg2_reg[9]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_sig_adjusted_addr_incr_ireg2_reg[9]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => sig_adjusted_addr_incr_im1(9 downto 8),
      S(7 downto 2) => B"000000",
      S(1) => \sig_adjusted_addr_incr_ireg2[9]_i_2_n_0\,
      S(0) => \sig_adjusted_addr_incr_ireg2[9]_i_3_n_0\
    );
sig_brst_cnt_eq_one_ireg1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      O => sig_brst_cnt_eq_one_im0
    );
sig_brst_cnt_eq_one_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_brst_cnt_eq_one_im0,
      Q => sig_brst_cnt_eq_one_ireg1,
      R => \^sig_mmap_reset_reg\
    );
sig_brst_cnt_eq_zero_ireg1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      O => sig_brst_cnt_eq_zero_im0
    );
sig_brst_cnt_eq_zero_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_brst_cnt_eq_zero_im0,
      Q => sig_brst_cnt_eq_zero_ireg1,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I1 => sig_calc_error_reg0,
      I2 => \out\(11),
      O => \sig_btt_cntr_im0[15]_i_10_n_0\
    );
\sig_btt_cntr_im0[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(10),
      I1 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(10),
      O => \sig_btt_cntr_im0[15]_i_11_n_0\
    );
\sig_btt_cntr_im0[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(9),
      I1 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(9),
      O => \sig_btt_cntr_im0[15]_i_12_n_0\
    );
\sig_btt_cntr_im0[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(8),
      I1 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(8),
      O => \sig_btt_cntr_im0[15]_i_13_n_0\
    );
\sig_btt_cntr_im0[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => Q(1),
      I2 => \^sig_calc2dm_calc_err\,
      I3 => sig_sm_halt_reg,
      O => \sig_btt_cntr_im0[15]_i_2_n_0\
    );
\sig_btt_cntr_im0[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(10),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[15]_i_3_n_0\
    );
\sig_btt_cntr_im0[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(9),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[15]_i_4_n_0\
    );
\sig_btt_cntr_im0[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(8),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[15]_i_5_n_0\
    );
\sig_btt_cntr_im0[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I1 => sig_calc_error_reg0,
      I2 => \out\(15),
      O => \sig_btt_cntr_im0[15]_i_6_n_0\
    );
\sig_btt_cntr_im0[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I1 => sig_calc_error_reg0,
      I2 => \out\(14),
      O => \sig_btt_cntr_im0[15]_i_7_n_0\
    );
\sig_btt_cntr_im0[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I1 => sig_calc_error_reg0,
      I2 => \out\(13),
      O => \sig_btt_cntr_im0[15]_i_8_n_0\
    );
\sig_btt_cntr_im0[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I1 => sig_calc_error_reg0,
      I2 => \out\(12),
      O => \sig_btt_cntr_im0[15]_i_9_n_0\
    );
\sig_btt_cntr_im0[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(7),
      I1 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(7),
      O => \sig_btt_cntr_im0[7]_i_10_n_0\
    );
\sig_btt_cntr_im0[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(6),
      I1 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(6),
      O => \sig_btt_cntr_im0[7]_i_11_n_0\
    );
\sig_btt_cntr_im0[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(5),
      I1 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(5),
      O => \sig_btt_cntr_im0[7]_i_12_n_0\
    );
\sig_btt_cntr_im0[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(4),
      I1 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(4),
      O => \sig_btt_cntr_im0[7]_i_13_n_0\
    );
\sig_btt_cntr_im0[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(3),
      I1 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(3),
      O => \sig_btt_cntr_im0[7]_i_14_n_0\
    );
\sig_btt_cntr_im0[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(2),
      I1 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(2),
      O => \sig_btt_cntr_im0[7]_i_15_n_0\
    );
\sig_btt_cntr_im0[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(1),
      I1 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(1),
      O => \sig_btt_cntr_im0[7]_i_16_n_0\
    );
\sig_btt_cntr_im0[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(0),
      I1 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(0),
      O => \sig_btt_cntr_im0[7]_i_17_n_0\
    );
\sig_btt_cntr_im0[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(7),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[7]_i_2_n_0\
    );
\sig_btt_cntr_im0[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(6),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[7]_i_3_n_0\
    );
\sig_btt_cntr_im0[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(5),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[7]_i_4_n_0\
    );
\sig_btt_cntr_im0[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(4),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[7]_i_5_n_0\
    );
\sig_btt_cntr_im0[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(3),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[7]_i_6_n_0\
    );
\sig_btt_cntr_im0[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(2),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[7]_i_7_n_0\
    );
\sig_btt_cntr_im0[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(1),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[7]_i_8_n_0\
    );
\sig_btt_cntr_im0[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(0),
      I1 => sig_calc_error_reg0,
      O => \sig_btt_cntr_im0[7]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_15\,
      Q => \sig_btt_cntr_im0_reg_n_0_[0]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_13\,
      Q => \sig_btt_cntr_im0_reg_n_0_[10]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_12\,
      Q => \sig_btt_cntr_im0_reg_n_0_[11]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_11\,
      Q => \sig_btt_cntr_im0_reg_n_0_[12]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_10\,
      Q => \sig_btt_cntr_im0_reg_n_0_[13]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_9\,
      Q => \sig_btt_cntr_im0_reg_n_0_[14]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_8\,
      Q => \sig_btt_cntr_im0_reg_n_0_[15]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sig_btt_cntr_im0_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_sig_btt_cntr_im0_reg[15]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \sig_btt_cntr_im0_reg[15]_i_1_n_1\,
      CO(5) => \sig_btt_cntr_im0_reg[15]_i_1_n_2\,
      CO(4) => \sig_btt_cntr_im0_reg[15]_i_1_n_3\,
      CO(3) => \sig_btt_cntr_im0_reg[15]_i_1_n_4\,
      CO(2) => \sig_btt_cntr_im0_reg[15]_i_1_n_5\,
      CO(1) => \sig_btt_cntr_im0_reg[15]_i_1_n_6\,
      CO(0) => \sig_btt_cntr_im0_reg[15]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \sig_btt_cntr_im0[15]_i_2_n_0\,
      DI(5) => \sig_btt_cntr_im0[15]_i_2_n_0\,
      DI(4) => \sig_btt_cntr_im0[15]_i_2_n_0\,
      DI(3) => \sig_btt_cntr_im0[15]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[15]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[15]_i_4_n_0\,
      DI(0) => \sig_btt_cntr_im0[15]_i_5_n_0\,
      O(7) => \sig_btt_cntr_im0_reg[15]_i_1_n_8\,
      O(6) => \sig_btt_cntr_im0_reg[15]_i_1_n_9\,
      O(5) => \sig_btt_cntr_im0_reg[15]_i_1_n_10\,
      O(4) => \sig_btt_cntr_im0_reg[15]_i_1_n_11\,
      O(3) => \sig_btt_cntr_im0_reg[15]_i_1_n_12\,
      O(2) => \sig_btt_cntr_im0_reg[15]_i_1_n_13\,
      O(1) => \sig_btt_cntr_im0_reg[15]_i_1_n_14\,
      O(0) => \sig_btt_cntr_im0_reg[15]_i_1_n_15\,
      S(7) => \sig_btt_cntr_im0[15]_i_6_n_0\,
      S(6) => \sig_btt_cntr_im0[15]_i_7_n_0\,
      S(5) => \sig_btt_cntr_im0[15]_i_8_n_0\,
      S(4) => \sig_btt_cntr_im0[15]_i_9_n_0\,
      S(3) => \sig_btt_cntr_im0[15]_i_10_n_0\,
      S(2) => \sig_btt_cntr_im0[15]_i_11_n_0\,
      S(1) => \sig_btt_cntr_im0[15]_i_12_n_0\,
      S(0) => \sig_btt_cntr_im0[15]_i_13_n_0\
    );
\sig_btt_cntr_im0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_14\,
      Q => \sig_btt_cntr_im0_reg_n_0_[1]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_13\,
      Q => \sig_btt_cntr_im0_reg_n_0_[2]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_12\,
      Q => \sig_btt_cntr_im0_reg_n_0_[3]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_11\,
      Q => \sig_btt_cntr_im0_reg_n_0_[4]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_10\,
      Q => \sig_btt_cntr_im0_reg_n_0_[5]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_9\,
      Q => \sig_btt_cntr_im0_reg_n_0_[6]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_8\,
      Q => \sig_btt_cntr_im0_reg_n_0_[7]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sig_btt_cntr_im0[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sig_btt_cntr_im0_reg[7]_i_1_n_0\,
      CO(6) => \sig_btt_cntr_im0_reg[7]_i_1_n_1\,
      CO(5) => \sig_btt_cntr_im0_reg[7]_i_1_n_2\,
      CO(4) => \sig_btt_cntr_im0_reg[7]_i_1_n_3\,
      CO(3) => \sig_btt_cntr_im0_reg[7]_i_1_n_4\,
      CO(2) => \sig_btt_cntr_im0_reg[7]_i_1_n_5\,
      CO(1) => \sig_btt_cntr_im0_reg[7]_i_1_n_6\,
      CO(0) => \sig_btt_cntr_im0_reg[7]_i_1_n_7\,
      DI(7) => \sig_btt_cntr_im0[7]_i_2_n_0\,
      DI(6) => \sig_btt_cntr_im0[7]_i_3_n_0\,
      DI(5) => \sig_btt_cntr_im0[7]_i_4_n_0\,
      DI(4) => \sig_btt_cntr_im0[7]_i_5_n_0\,
      DI(3) => \sig_btt_cntr_im0[7]_i_6_n_0\,
      DI(2) => \sig_btt_cntr_im0[7]_i_7_n_0\,
      DI(1) => \sig_btt_cntr_im0[7]_i_8_n_0\,
      DI(0) => \sig_btt_cntr_im0[7]_i_9_n_0\,
      O(7) => \sig_btt_cntr_im0_reg[7]_i_1_n_8\,
      O(6) => \sig_btt_cntr_im0_reg[7]_i_1_n_9\,
      O(5) => \sig_btt_cntr_im0_reg[7]_i_1_n_10\,
      O(4) => \sig_btt_cntr_im0_reg[7]_i_1_n_11\,
      O(3) => \sig_btt_cntr_im0_reg[7]_i_1_n_12\,
      O(2) => \sig_btt_cntr_im0_reg[7]_i_1_n_13\,
      O(1) => \sig_btt_cntr_im0_reg[7]_i_1_n_14\,
      O(0) => \sig_btt_cntr_im0_reg[7]_i_1_n_15\,
      S(7) => \sig_btt_cntr_im0[7]_i_10_n_0\,
      S(6) => \sig_btt_cntr_im0[7]_i_11_n_0\,
      S(5) => \sig_btt_cntr_im0[7]_i_12_n_0\,
      S(4) => \sig_btt_cntr_im0[7]_i_13_n_0\,
      S(3) => \sig_btt_cntr_im0[7]_i_14_n_0\,
      S(2) => \sig_btt_cntr_im0[7]_i_15_n_0\,
      S(1) => \sig_btt_cntr_im0[7]_i_16_n_0\,
      S(0) => \sig_btt_cntr_im0[7]_i_17_n_0\
    );
\sig_btt_cntr_im0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_15\,
      Q => \sig_btt_cntr_im0_reg_n_0_[8]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_14\,
      Q => \sig_btt_cntr_im0_reg_n_0_[9]\,
      R => \^sig_mmap_reset_reg\
    );
sig_btt_eq_b2mbaa_ireg1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => sig_btt_eq_b2mbaa_ireg1_i_2_n_0,
      I1 => sig_addr_aligned_im0,
      I2 => sig_btt_eq_b2mbaa_ireg1_i_3_n_0,
      I3 => sig_btt_eq_b2mbaa_ireg1_i_4_n_0,
      I4 => sig_btt_eq_b2mbaa_ireg1_i_5_n_0,
      I5 => sig_btt_eq_b2mbaa_ireg1_i_6_n_0,
      O => sig_btt_eq_b2mbaa_im0
    );
sig_btt_eq_b2mbaa_ireg1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1114222844428881"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I3 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      O => sig_btt_eq_b2mbaa_ireg1_i_2_n_0
    );
sig_btt_eq_b2mbaa_ireg1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000482100000000"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I5 => sig_btt_lt_b2mbaa_ireg1_i_2_n_0,
      O => sig_btt_eq_b2mbaa_ireg1_i_3_n_0
    );
sig_btt_eq_b2mbaa_ireg1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"015402A85402A801"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      O => sig_btt_eq_b2mbaa_ireg1_i_4_n_0
    );
sig_btt_eq_b2mbaa_ireg1_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_btt_lt_b2mbaa_im01_carry_i_13_n_0,
      I2 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I3 => sig_btt_lt_b2mbaa_im01_carry_i_14_n_0,
      O => sig_btt_eq_b2mbaa_ireg1_i_5_n_0
    );
sig_btt_eq_b2mbaa_ireg1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1045208A45208A10"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I2 => sig_btt_lt_b2mbaa_im01_carry_i_12_n_0,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      O => sig_btt_eq_b2mbaa_ireg1_i_6_n_0
    );
sig_btt_eq_b2mbaa_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_btt_eq_b2mbaa_im0,
      Q => sig_btt_eq_b2mbaa_ireg1,
      R => \^sig_mmap_reset_reg\
    );
sig_btt_lt_b2mbaa_im01_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_sig_btt_lt_b2mbaa_im01_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => sig_btt_lt_b2mbaa_im01,
      CO(4) => sig_btt_lt_b2mbaa_im01_carry_n_3,
      CO(3) => sig_btt_lt_b2mbaa_im01_carry_n_4,
      CO(2) => sig_btt_lt_b2mbaa_im01_carry_n_5,
      CO(1) => sig_btt_lt_b2mbaa_im01_carry_n_6,
      CO(0) => sig_btt_lt_b2mbaa_im01_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => sig_addr_aligned_im0,
      DI(4) => sig_btt_lt_b2mbaa_im01_carry_i_1_n_0,
      DI(3) => sig_btt_lt_b2mbaa_im01_carry_i_2_n_0,
      DI(2) => sig_btt_lt_b2mbaa_im01_carry_i_3_n_0,
      DI(1) => sig_btt_lt_b2mbaa_im01_carry_i_4_n_0,
      DI(0) => sig_btt_lt_b2mbaa_im01_carry_i_5_n_0,
      O(7 downto 0) => NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => sig_btt_lt_b2mbaa_im01_carry_i_6_n_0,
      S(4) => sig_btt_lt_b2mbaa_im01_carry_i_7_n_0,
      S(3) => sig_btt_lt_b2mbaa_im01_carry_i_8_n_0,
      S(2) => sig_btt_lt_b2mbaa_im01_carry_i_9_n_0,
      S(1) => sig_btt_lt_b2mbaa_im01_carry_i_10_n_0,
      S(0) => sig_btt_lt_b2mbaa_im01_carry_i_11_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111141117177417"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I3 => sig_btt_lt_b2mbaa_im01_carry_i_12_n_0,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_1_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"015402A85402A801"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_10_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2481"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_11_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I2 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_12_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I5 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_13_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_14_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001111333377770"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I2 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I5 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_2_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1117"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_btt_lt_b2mbaa_im01_carry_i_13_n_0,
      I2 => sig_btt_lt_b2mbaa_im01_carry_i_14_n_0,
      I3 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_3_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011337373770"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I5 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_4_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1370"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_5_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_aligned_im0,
      O => sig_btt_lt_b2mbaa_im01_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1045208A45208A10"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I2 => sig_btt_lt_b2mbaa_im01_carry_i_12_n_0,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1114222844428881"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I3 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_8_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_btt_lt_b2mbaa_im01_carry_i_13_n_0,
      I2 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I3 => sig_btt_lt_b2mbaa_im01_carry_i_14_n_0,
      O => sig_btt_lt_b2mbaa_im01_carry_i_9_n_0
    );
sig_btt_lt_b2mbaa_ireg1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I1 => sig_btt_lt_b2mbaa_im01,
      I2 => sig_btt_lt_b2mbaa_ireg1_i_2_n_0,
      O => sig_btt_lt_b2mbaa_im0
    );
sig_btt_lt_b2mbaa_ireg1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      O => sig_btt_lt_b2mbaa_ireg1_i_2_n_0
    );
sig_btt_lt_b2mbaa_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_btt_lt_b2mbaa_im0,
      Q => sig_btt_lt_b2mbaa_ireg1,
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O => sig_bytes_to_mbaa_im0(1)
    );
\sig_bytes_to_mbaa_ireg1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => sig_bytes_to_mbaa_im0(2)
    );
\sig_bytes_to_mbaa_ireg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      O => sig_bytes_to_mbaa_im0(3)
    );
\sig_bytes_to_mbaa_ireg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      O => sig_bytes_to_mbaa_im0(4)
    );
\sig_bytes_to_mbaa_ireg1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I5 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      O => sig_bytes_to_mbaa_im0(5)
    );
\sig_bytes_to_mbaa_ireg1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I2 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      O => sig_bytes_to_mbaa_im0(6)
    );
\sig_bytes_to_mbaa_ireg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      O => sig_bytes_to_mbaa_im0(7)
    );
\sig_bytes_to_mbaa_ireg1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I2 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      O => sig_bytes_to_mbaa_im0(8)
    );
\sig_bytes_to_mbaa_ireg1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I4 => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\,
      I5 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      O => sig_bytes_to_mbaa_im0(9)
    );
\sig_bytes_to_mbaa_ireg1[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      O => \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      Q => sig_bytes_to_mbaa_ireg1(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(1),
      Q => sig_bytes_to_mbaa_ireg1(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(2),
      Q => sig_bytes_to_mbaa_ireg1(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(3),
      Q => sig_bytes_to_mbaa_ireg1(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(4),
      Q => sig_bytes_to_mbaa_ireg1(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(5),
      Q => sig_bytes_to_mbaa_ireg1(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(6),
      Q => sig_bytes_to_mbaa_ireg1(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(7),
      Q => sig_bytes_to_mbaa_ireg1(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(8),
      Q => sig_bytes_to_mbaa_ireg1(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(9),
      Q => sig_bytes_to_mbaa_ireg1(9),
      R => \^sig_mmap_reset_reg\
    );
sig_calc_error_pushed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^sig_calc2dm_calc_err\,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      I3 => sig_calc_error_pushed,
      O => sig_calc_error_pushed_i_1_n_0
    );
sig_calc_error_pushed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_calc_error_pushed_i_1_n_0,
      Q => sig_calc_error_pushed,
      R => \^sig_mmap_reset_reg\
    );
sig_calc_error_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sig_calc_error_reg_i_2_n_0,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(3),
      I4 => \out\(2),
      I5 => sig_calc_error_reg_i_3_n_0,
      O => sig_btt_is_zero
    );
sig_calc_error_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \out\(12),
      I1 => \out\(13),
      I2 => \out\(10),
      I3 => \out\(11),
      I4 => \out\(15),
      I5 => \out\(14),
      O => sig_calc_error_reg_i_2_n_0
    );
sig_calc_error_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \out\(6),
      I1 => \out\(7),
      I2 => \out\(4),
      I3 => \out\(5),
      I4 => \out\(9),
      I5 => \out\(8),
      O => sig_calc_error_reg_i_3_n_0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => sig_btt_is_zero,
      Q => \^sig_calc2dm_calc_err\,
      R => \^sig_mmap_reset_reg\
    );
sig_cmd2addr_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54540454"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_sm_ld_calc3_reg,
      I2 => \^sig_mstr2addr_cmd_valid\,
      I3 => sig_inhibit_rdy_n,
      I4 => sig_cmd2addr_valid_reg_0,
      O => sig_cmd2addr_valid_i_1_n_0
    );
sig_cmd2addr_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_cmd2addr_valid_i_1_n_0,
      Q => \^sig_mstr2addr_cmd_valid\,
      R => '0'
    );
sig_cmd2data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50445544"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_sm_ld_calc3_reg,
      I2 => sig_cmd2data_valid_reg_0,
      I3 => \^sig_mstr2data_cmd_valid\,
      I4 => sig_inhibit_rdy_n_1,
      O => sig_cmd2data_valid_i_1_n_0
    );
sig_cmd2data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_cmd2data_valid_i_1_n_0,
      Q => \^sig_mstr2data_cmd_valid\,
      R => '0'
    );
sig_cmd2dre_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_cmd2dre_valid_reg_n_0,
      I2 => sig_first_xfer_im0,
      I3 => sig_sm_ld_calc3_reg,
      O => sig_cmd2dre_valid_i_1_n_0
    );
sig_cmd2dre_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_cmd2dre_valid_i_1_n_0,
      Q => sig_cmd2dre_valid_reg_n_0,
      R => '0'
    );
\sig_finish_addr_offset_ireg2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56669AAA"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(0),
      I4 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      O => sig_finish_addr_offset_im1(0)
    );
\sig_finish_addr_offset_ireg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      I2 => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => sig_finish_addr_offset_im1(1)
    );
\sig_finish_addr_offset_ireg2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA4015BF15BFEA40"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1,
      I1 => sig_first_xfer_im0,
      I2 => sig_bytes_to_mbaa_ireg1(2),
      I3 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I5 => \sig_finish_addr_offset_ireg2[3]_i_2_n_0\,
      O => sig_finish_addr_offset_im1(2)
    );
\sig_finish_addr_offset_ireg2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I2 => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\,
      I3 => \sig_finish_addr_offset_ireg2[3]_i_2_n_0\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => sig_finish_addr_offset_im1(3)
    );
\sig_finish_addr_offset_ireg2[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      O => \sig_finish_addr_offset_ireg2[3]_i_2_n_0\
    );
\sig_finish_addr_offset_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_finish_addr_offset_im1(0),
      Q => sig_finish_addr_offset_ireg2(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_finish_addr_offset_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_finish_addr_offset_im1(1),
      Q => sig_finish_addr_offset_ireg2(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_finish_addr_offset_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_finish_addr_offset_im1(2),
      Q => sig_finish_addr_offset_ireg2(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_finish_addr_offset_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_finish_addr_offset_im1(3),
      Q => sig_finish_addr_offset_ireg2(3),
      R => \^sig_mmap_reset_reg\
    );
sig_first_xfer_im0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_calc_error_reg0,
      I2 => sig_first_xfer_im0,
      I3 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      O => sig_first_xfer_im0_i_1_n_0
    );
sig_first_xfer_im0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_first_xfer_im0_i_1_n_0,
      Q => sig_first_xfer_im0,
      R => '0'
    );
sig_input_burst_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(16),
      Q => \^sig_mstr2addr_burst\(0),
      R => sig_input_cache_type_reg0
    );
sig_input_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(17),
      Q => sig_input_eof_reg_reg_n_0,
      R => sig_input_cache_type_reg0
    );
sig_input_reg_empty_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => \^sig_mmap_reset_reg\,
      I2 => sig_sm_pop_input_reg,
      O => sig_input_cache_type_reg0
    );
sig_input_reg_empty_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => sig_sm_halt_reg,
      I1 => \^sig_calc2dm_calc_err\,
      I2 => Q(1),
      I3 => sig_input_reg_empty,
      O => sig_calc_error_reg0
    );
sig_input_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => '0',
      Q => sig_input_reg_empty,
      S => sig_input_cache_type_reg0
    );
\sig_input_tag_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(50),
      Q => \^in\(0),
      R => sig_input_cache_type_reg0
    );
\sig_input_tag_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(51),
      Q => \^in\(1),
      R => sig_input_cache_type_reg0
    );
\sig_input_tag_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(52),
      Q => \^in\(2),
      R => sig_input_cache_type_reg0
    );
\sig_input_tag_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(53),
      Q => \^in\(3),
      R => sig_input_cache_type_reg0
    );
sig_last_addr_offset_im2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => sel0(3)
    );
sig_ld_xfer_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_sm_ld_calc3_reg,
      I2 => sig_ld_xfer_reg,
      I3 => sig_xfer_reg_empty,
      O => sig_ld_xfer_reg_i_1_n_0
    );
sig_ld_xfer_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_ld_xfer_reg_i_1_n_0,
      Q => sig_ld_xfer_reg,
      R => '0'
    );
sig_ld_xfer_reg_tmp_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_sm_ld_calc3_reg,
      I2 => sig_ld_xfer_reg_tmp,
      I3 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      O => sig_ld_xfer_reg_tmp_i_1_n_0
    );
sig_ld_xfer_reg_tmp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_ld_xfer_reg_tmp_i_1_n_0,
      Q => sig_ld_xfer_reg_tmp,
      R => '0'
    );
sig_mmap_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => SR(0),
      Q => \^sig_mmap_reset_reg\,
      R => '0'
    );
sig_no_btt_residue_ireg1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I4 => sig_no_btt_residue_ireg1_i_2_n_0,
      O => sig_no_btt_residue_im0
    );
sig_no_btt_residue_ireg1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      O => sig_no_btt_residue_ireg1_i_2_n_0
    );
sig_no_btt_residue_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_no_btt_residue_im0,
      Q => sig_no_btt_residue_ireg1,
      R => \^sig_mmap_reset_reg\
    );
sig_parent_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001510"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => \^in\(43),
      I2 => sig_ld_xfer_reg_tmp,
      I3 => sig_parent_done,
      I4 => sig_calc_error_reg0,
      O => sig_parent_done_i_1_n_0
    );
sig_parent_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_parent_done_i_1_n_0,
      Q => sig_parent_done,
      R => '0'
    );
\sig_predict_addr_lsh_ireg3[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      I1 => sig_addr_cntr_incr_ireg2(10),
      O => \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I1 => sig_addr_cntr_incr_ireg2(9),
      O => \sig_predict_addr_lsh_ireg3[15]_i_3_n_0\
    );
\sig_predict_addr_lsh_ireg3[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I1 => sig_addr_cntr_incr_ireg2(8),
      O => \sig_predict_addr_lsh_ireg3[15]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => sig_addr_cntr_incr_ireg2(7),
      O => \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I1 => sig_addr_cntr_incr_ireg2(6),
      O => \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I1 => sig_addr_cntr_incr_ireg2(5),
      O => \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I1 => sig_addr_cntr_incr_ireg2(4),
      O => \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => sig_addr_cntr_incr_ireg2(3),
      O => \sig_predict_addr_lsh_ireg3[7]_i_6_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I1 => sig_addr_cntr_incr_ireg2(2),
      O => \sig_predict_addr_lsh_ireg3[7]_i_7_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => sig_addr_cntr_incr_ireg2(1),
      O => \sig_predict_addr_lsh_ireg3[7]_i_8_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => sig_addr_cntr_incr_ireg2(0),
      O => \sig_predict_addr_lsh_ireg3[7]_i_9_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(0),
      Q => \sig_predict_addr_lsh_ireg3__0\(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(10),
      Q => \sig_predict_addr_lsh_ireg3__0\(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(11),
      Q => \sig_predict_addr_lsh_ireg3__0\(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(12),
      Q => \sig_predict_addr_lsh_ireg3__0\(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(13),
      Q => \sig_predict_addr_lsh_ireg3__0\(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(14),
      Q => \sig_predict_addr_lsh_ireg3__0\(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(15),
      Q => sig_predict_addr_lsh_ireg3(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1\,
      CO(5) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2\,
      CO(4) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3\,
      CO(3) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_4\,
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_5\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_6\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      DI(5) => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      DI(4) => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      O(7 downto 0) => sig_predict_addr_lsh_im2(15 downto 8),
      S(7) => p_1_in,
      S(6) => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      S(5) => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      S(4) => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      S(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      S(2) => \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\,
      S(1) => \sig_predict_addr_lsh_ireg3[15]_i_3_n_0\,
      S(0) => \sig_predict_addr_lsh_ireg3[15]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(1),
      Q => \sig_predict_addr_lsh_ireg3__0\(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(2),
      Q => \sig_predict_addr_lsh_ireg3__0\(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(3),
      Q => \sig_predict_addr_lsh_ireg3__0\(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(4),
      Q => \sig_predict_addr_lsh_ireg3__0\(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(5),
      Q => \sig_predict_addr_lsh_ireg3__0\(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(6),
      Q => \sig_predict_addr_lsh_ireg3__0\(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(7),
      Q => \sig_predict_addr_lsh_ireg3__0\(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\,
      CO(6) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1\,
      CO(5) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2\,
      CO(4) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3\,
      CO(3) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_4\,
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_5\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_6\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_7\,
      DI(7) => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      DI(6) => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      DI(5) => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      DI(4) => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O(7 downto 0) => sig_predict_addr_lsh_im2(7 downto 0),
      S(7) => \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\,
      S(6) => \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\,
      S(5) => \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\,
      S(4) => \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\,
      S(3) => \sig_predict_addr_lsh_ireg3[7]_i_6_n_0\,
      S(2) => \sig_predict_addr_lsh_ireg3[7]_i_7_n_0\,
      S(1) => \sig_predict_addr_lsh_ireg3[7]_i_8_n_0\,
      S(0) => \sig_predict_addr_lsh_ireg3[7]_i_9_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(8),
      Q => \sig_predict_addr_lsh_ireg3__0\(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_predict_addr_lsh_im2(9),
      Q => \sig_predict_addr_lsh_ireg3__0\(9),
      R => \^sig_mmap_reset_reg\
    );
sig_sm_halt_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I2 => sig_calc_error_pushed,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      O => sig_sm_halt_ns
    );
sig_sm_halt_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_halt_ns,
      Q => sig_sm_halt_reg,
      S => \^sig_mmap_reset_reg\
    );
sig_sm_ld_calc1_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020202"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I1 => sig_calc_error_pushed,
      I2 => sig_parent_done,
      I3 => sig_calc_error_reg0,
      I4 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      O => sig_sm_ld_calc1_reg_ns
    );
sig_sm_ld_calc1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_ld_calc1_reg_ns,
      Q => sig_sm_ld_calc1_reg,
      R => \^sig_mmap_reset_reg\
    );
sig_sm_ld_calc2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_ld_calc1_reg,
      Q => sig_sm_ld_calc2_reg,
      R => \^sig_mmap_reset_reg\
    );
sig_sm_ld_calc3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_ld_calc2_reg,
      Q => sig_sm_ld_calc3_reg,
      R => \^sig_mmap_reset_reg\
    );
sig_sm_pop_input_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_parent_done,
      I2 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      O => sig_sm_pop_input_reg_ns
    );
sig_sm_pop_input_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_pop_input_reg_ns,
      Q => sig_sm_pop_input_reg,
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_addr_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      Q => sig_strbgen_addr_ireg2(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_addr_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      Q => sig_strbgen_addr_ireg2(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_addr_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      Q => sig_strbgen_addr_ireg2(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_addr_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      Q => sig_strbgen_addr_ireg2(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_bytes_ireg2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_strbgen_bytes_ireg2(4),
      I1 => \^sig_mmap_reset_reg\,
      O => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C8C8C80"
    )
        port map (
      I0 => sig_no_btt_residue_ireg1_i_2_n_0,
      I1 => sig_sm_ld_calc2_reg,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_strbgen_bytes_ireg2[3]_i_3_n_0\,
      I4 => \sig_strbgen_bytes_ireg2[3]_i_4_n_0\,
      O => sig_strbgen_bytes_ireg2(4)
    );
\sig_strbgen_bytes_ireg2[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(5),
      I1 => sig_bytes_to_mbaa_ireg1(4),
      I2 => sig_bytes_to_mbaa_ireg1(9),
      I3 => sig_bytes_to_mbaa_ireg1(7),
      O => \sig_strbgen_bytes_ireg2[3]_i_3_n_0\
    );
\sig_strbgen_bytes_ireg2[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(8),
      I1 => sig_bytes_to_mbaa_ireg1(6),
      I2 => sig_first_xfer_im0,
      I3 => sig_addr_aligned_ireg1,
      O => \sig_strbgen_bytes_ireg2[3]_i_4_n_0\
    );
\sig_strbgen_bytes_ireg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\,
      I1 => sig_sm_ld_calc2_reg,
      I2 => sig_strbgen_bytes_ireg2(4),
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      O => \sig_strbgen_bytes_ireg2[4]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      R => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      R => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      R => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      R => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_strbgen_bytes_ireg2[4]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA81"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[10]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA01"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[11]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8881"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(2),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(1),
      O => \sig_xfer_end_strb_ireg3[12]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8801"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[13]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[14]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[15]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[1]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[2]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[3]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(2),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(1),
      O => \sig_xfer_end_strb_ireg3[4]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEAB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[5]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[6]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[7]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA89"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[9]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => '1',
      Q => sig_xfer_end_strb_ireg3(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[10]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[11]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[12]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[13]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[14]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[15]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[1]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[2]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[3]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[4]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[5]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[6]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[7]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sel0(3),
      Q => sig_xfer_end_strb_ireg3(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_end_strb_ireg3[9]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(9),
      R => \^sig_mmap_reset_reg\
    );
sig_xfer_len_eq_0_ireg3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010001000000"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      I1 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      I2 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      I3 => sig_xfer_len_eq_0_ireg3_i_2_n_0,
      I4 => sig_xfer_len_eq_0_ireg3_i_3_n_0,
      I5 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      O => sig_xfer_len_eq_0_im2
    );
sig_xfer_len_eq_0_ireg3_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000155555554"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      I1 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      I2 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      I3 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      I4 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      I5 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      O => sig_xfer_len_eq_0_ireg3_i_2_n_0
    );
sig_xfer_len_eq_0_ireg3_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      I1 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      I2 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      I3 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      I4 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      I5 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      O => sig_xfer_len_eq_0_ireg3_i_3_n_0
    );
sig_xfer_len_eq_0_ireg3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_len_eq_0_im2,
      Q => sig_xfer_len_eq_0_ireg3,
      R => \^sig_mmap_reset_reg\
    );
sig_xfer_reg_empty_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFE"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      I2 => sig_xfer_reg_empty,
      I3 => sig_ld_xfer_reg,
      O => sig_xfer_reg_empty_i_1_n_0
    );
sig_xfer_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_xfer_reg_empty_i_1_n_0,
      Q => sig_xfer_reg_empty,
      R => '0'
    );
\sig_xfer_strt_strb_ireg3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(2),
      I1 => sig_strbgen_addr_ireg2(1),
      I2 => sig_strbgen_addr_ireg2(0),
      I3 => sig_strbgen_addr_ireg2(3),
      O => \sig_xfer_strt_strb_ireg3[0]_i_1_n_0\
    );
\sig_xfer_strt_strb_ireg3[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD00000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[10]_i_2_n_0\,
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(10)
    );
\sig_xfer_strt_strb_ireg3[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => sig_strbgen_addr_ireg2(1),
      I2 => sig_strbgen_addr_ireg2(2),
      O => \sig_xfer_strt_strb_ireg3[10]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7770707000000000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(2),
      I1 => sig_strbgen_addr_ireg2(3),
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(0),
      I5 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(11)
    );
\sig_xfer_strt_strb_ireg3[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FF000000000000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => sig_strbgen_addr_ireg2(0),
      I2 => sig_strbgen_addr_ireg2(1),
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      I5 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      O => \sig_xfer_strt_strb_ireg3[12]_i_1_n_0\
    );
\sig_xfer_strt_strb_ireg3[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D000D000D0000000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\,
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I5 => \I_STRT_STRB_GEN/sig_end_offset_un\(0),
      O => sig_xfer_strt_strb_im2(13)
    );
\sig_xfer_strt_strb_ireg3[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(2),
      I1 => sig_strbgen_addr_ireg2(1),
      O => \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0000000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[14]_i_2_n_0\,
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      O => sig_xfer_strt_strb_im2(14)
    );
\sig_xfer_strt_strb_ireg3[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => sig_strbgen_addr_ireg2(1),
      I2 => sig_strbgen_addr_ireg2(2),
      O => \sig_xfer_strt_strb_ireg3[14]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I1 => \I_STRT_STRB_GEN/sig_end_offset_un\(0),
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      O => \sig_xfer_strt_strb_ireg3[15]_i_1_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_10_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0011FFEF"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_11_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0505FAFB"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_12_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE189A00"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I2 => \I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_length_adjust_us__3\,
      I3 => sig_strbgen_addr_ireg2(1),
      I4 => sig_strbgen_addr_ireg2(0),
      O => \sig_xfer_strt_strb_ireg3[15]_i_13_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0F1"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_14_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA00AA00A8"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I5 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_15_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      O => \I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_length_adjust_us__3\
    );
\sig_xfer_strt_strb_ireg3[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1E7878E1"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I3 => sig_strbgen_addr_ireg2(3),
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      I5 => \I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_end_addr_us__37\(1),
      O => \I_STRT_STRB_GEN/sig_end_offset_un\(1)
    );
\sig_xfer_strt_strb_ireg3[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1E7878E1"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I3 => sig_strbgen_addr_ireg2(3),
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      I5 => \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\,
      O => \I_STRT_STRB_GEN/sig_end_offset_un\(0)
    );
\sig_xfer_strt_strb_ireg3[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77E7EEB"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I1 => sig_strbgen_addr_ireg2(3),
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I3 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      O => \I_STRT_STRB_GEN/sig_end_offset_un\(3)
    );
\sig_xfer_strt_strb_ireg3[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6FFFFA6FF65A6FF"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_10_n_0\,
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_11_n_0\,
      I2 => sig_strbgen_addr_ireg2(3),
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_12_n_0\,
      I5 => \sig_xfer_strt_strb_ireg3[15]_i_13_n_0\,
      O => \I_STRT_STRB_GEN/sig_end_offset_un\(2)
    );
\sig_xfer_strt_strb_ireg3[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFAFB"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA9EB81EB81A900"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_14_n_0\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_15_n_0\,
      I5 => sig_strbgen_addr_ireg2(1),
      O => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24DBDB24"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => \I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_length_adjust_us__3\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I4 => sig_strbgen_addr_ireg2(1),
      O => \I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_end_addr_us__37\(1)
    );
\sig_xfer_strt_strb_ireg3[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA55AA55AA56"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I5 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\
    );
\sig_xfer_strt_strb_ireg3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[9]_i_2_n_0\,
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(0),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I5 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(1)
    );
\sig_xfer_strt_strb_ireg3[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[10]_i_2_n_0\,
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(2)
    );
\sig_xfer_strt_strb_ireg3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111101010"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(2),
      I1 => sig_strbgen_addr_ireg2(3),
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(0),
      I5 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(3)
    );
\sig_xfer_strt_strb_ireg3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0155015501550000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => sig_strbgen_addr_ireg2(0),
      I2 => sig_strbgen_addr_ireg2(1),
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I5 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(4)
    );
\sig_xfer_strt_strb_ireg3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004400"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\,
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(0),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I5 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      O => sig_xfer_strt_strb_im2(5)
    );
\sig_xfer_strt_strb_ireg3[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[14]_i_2_n_0\,
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(6)
    );
\sig_xfer_strt_strb_ireg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I1 => \I_STRT_STRB_GEN/sig_end_offset_un\(0),
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      I4 => sig_strbgen_addr_ireg2(3),
      O => \sig_xfer_strt_strb_ireg3[7]_i_1_n_0\
    );
\sig_xfer_strt_strb_ireg3[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55570000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => sig_strbgen_addr_ireg2(0),
      I2 => sig_strbgen_addr_ireg2(1),
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(8)
    );
\sig_xfer_strt_strb_ireg3[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD000000000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[9]_i_2_n_0\,
      I2 => \I_STRT_STRB_GEN/sig_end_offset_un\(2),
      I3 => \I_STRT_STRB_GEN/sig_end_offset_un\(0),
      I4 => \I_STRT_STRB_GEN/sig_end_offset_un\(1),
      I5 => \I_STRT_STRB_GEN/sig_end_offset_un\(3),
      O => sig_xfer_strt_strb_im2(9)
    );
\sig_xfer_strt_strb_ireg3[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(2),
      I1 => sig_strbgen_addr_ireg2(1),
      O => \sig_xfer_strt_strb_ireg3[9]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_strt_strb_ireg3[0]_i_1_n_0\,
      Q => sig_xfer_strt_strb_ireg3(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(10),
      Q => sig_xfer_strt_strb_ireg3(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(11),
      Q => sig_xfer_strt_strb_ireg3(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_strt_strb_ireg3[12]_i_1_n_0\,
      Q => sig_xfer_strt_strb_ireg3(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(13),
      Q => sig_xfer_strt_strb_ireg3(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(14),
      Q => sig_xfer_strt_strb_ireg3(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_strt_strb_ireg3[15]_i_1_n_0\,
      Q => sig_xfer_strt_strb_ireg3(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(1),
      Q => sig_xfer_strt_strb_ireg3(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(2),
      Q => sig_xfer_strt_strb_ireg3(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(3),
      Q => sig_xfer_strt_strb_ireg3(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(4),
      Q => sig_xfer_strt_strb_ireg3(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(5),
      Q => sig_xfer_strt_strb_ireg3(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(6),
      Q => sig_xfer_strt_strb_ireg3(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => \sig_xfer_strt_strb_ireg3[7]_i_1_n_0\,
      Q => sig_xfer_strt_strb_ireg3(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(8),
      Q => sig_xfer_strt_strb_ireg3(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc3_reg,
      D => sig_xfer_strt_strb_im2(9),
      Q => sig_xfer_strt_strb_ireg3(9),
      R => \^sig_mmap_reset_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_reset is
  port (
    sig_cmd_stat_rst_int_reg_n : out STD_LOGIC;
    sig_mmap_rst_reg_n : out STD_LOGIC;
    sig_stream_rst_reg_n : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg_0 : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg_1 : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg_2 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_stream_rst_reg_n_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aresetn : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    sig_init_reg2 : in STD_LOGIC;
    sig_init_done : in STD_LOGIC;
    sig_init_done_0 : in STD_LOGIC;
    sig_init_done_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_reset : entity is "axi_datamover_reset";
end ps_axi_datamover_1_0_axi_datamover_reset;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_reset is
  signal \^sig_cmd_stat_rst_int_reg_n\ : STD_LOGIC;
  signal sig_cmd_stat_rst_user_reg_n_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_cmd_stat_rst_user_reg_n_cdc_from : signal is "true";
  signal \^sig_mmap_rst_reg_n\ : STD_LOGIC;
  signal \^sig_stream_rst_reg_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_i[3]_i_1\ : label is "soft_lutpair79";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_cmd_stat_rst_int_reg_n_reg : label is "no";
  attribute KEEP : string;
  attribute KEEP of sig_cmd_stat_rst_user_reg_n_cdc_from_reg : label is "yes";
  attribute equivalent_register_removal of sig_cmd_stat_rst_user_reg_n_cdc_from_reg : label is "no";
  attribute SOFT_HLUTNM of sig_init_done_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__2\ : label is "soft_lutpair79";
  attribute equivalent_register_removal of sig_mmap_rst_reg_n_reg : label is "no";
  attribute equivalent_register_removal of sig_stream_rst_reg_n_reg : label is "no";
begin
  sig_cmd_stat_rst_int_reg_n <= \^sig_cmd_stat_rst_int_reg_n\;
  sig_mmap_rst_reg_n <= \^sig_mmap_rst_reg_n\;
  sig_stream_rst_reg_n <= \^sig_stream_rst_reg_n\;
\addr_i[2]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_cmd_stat_rst_int_reg_n\,
      O => SS(0)
    );
\addr_i[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_mmap_rst_reg_n\,
      O => SR(0)
    );
sig_cmd_stat_rst_int_reg_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => m_axi_s2mm_aresetn,
      Q => \^sig_cmd_stat_rst_int_reg_n\,
      R => '0'
    );
sig_cmd_stat_rst_user_reg_n_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => m_axi_s2mm_aresetn,
      Q => sig_cmd_stat_rst_user_reg_n_cdc_from,
      R => '0'
    );
sig_init_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^sig_mmap_rst_reg_n\,
      I1 => sig_mmap_reset_reg,
      I2 => sig_init_reg2,
      I3 => sig_init_done,
      O => sig_mmap_rst_reg_n_reg_0
    );
\sig_init_done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^sig_mmap_rst_reg_n\,
      I1 => sig_mmap_reset_reg,
      I2 => sig_init_reg2,
      I3 => sig_init_done_0,
      O => sig_mmap_rst_reg_n_reg_1
    );
\sig_init_done_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^sig_mmap_rst_reg_n\,
      I1 => sig_mmap_reset_reg,
      I2 => sig_init_reg2,
      I3 => sig_init_done_1,
      O => sig_mmap_rst_reg_n_reg_2
    );
sig_mmap_rst_reg_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => m_axi_s2mm_aresetn,
      Q => \^sig_mmap_rst_reg_n\,
      R => '0'
    );
\sig_strb_reg_out[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_stream_rst_reg_n\,
      O => sig_stream_rst_reg_n_reg_0(0)
    );
sig_stream_rst_reg_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => m_axi_s2mm_aresetn,
      Q => \^sig_stream_rst_reg_n\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_skid2mm_buf is
  port (
    \out\ : out STD_LOGIC;
    sig_s_ready_out_reg_0 : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    sig_last_skid_reg : out STD_LOGIC;
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_data2skid_wlast : in STD_LOGIC;
    sig_last_skid_mux_out : in STD_LOGIC;
    sig_stream_rst_reg_n : in STD_LOGIC;
    sig_m_valid_out_reg_0 : in STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 127 downto 0 );
    \sig_strb_skid_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \sig_strb_reg_out_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_skid2mm_buf : entity is "axi_datamover_skid2mm_buf";
end ps_axi_datamover_1_0_axi_datamover_skid2mm_buf;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_skid2mm_buf is
  signal sig_data_reg_out_en : STD_LOGIC;
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_dup_i_1_n_0 : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_reset_reg : STD_LOGIC;
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  m_axi_s2mm_wvalid <= sig_m_valid_out;
  \out\ <= sig_s_ready_dup;
  sig_s_ready_out_reg_0 <= sig_s_ready_out;
\sig_data_reg_out[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[100]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(100),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(100),
      O => sig_data_skid_mux_out(100)
    );
\sig_data_reg_out[101]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(101),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(101),
      O => sig_data_skid_mux_out(101)
    );
\sig_data_reg_out[102]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(102),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(102),
      O => sig_data_skid_mux_out(102)
    );
\sig_data_reg_out[103]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(103),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(103),
      O => sig_data_skid_mux_out(103)
    );
\sig_data_reg_out[104]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(104),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(104),
      O => sig_data_skid_mux_out(104)
    );
\sig_data_reg_out[105]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(105),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(105),
      O => sig_data_skid_mux_out(105)
    );
\sig_data_reg_out[106]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(106),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(106),
      O => sig_data_skid_mux_out(106)
    );
\sig_data_reg_out[107]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(107),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(107),
      O => sig_data_skid_mux_out(107)
    );
\sig_data_reg_out[108]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(108),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(108),
      O => sig_data_skid_mux_out(108)
    );
\sig_data_reg_out[109]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(109),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(109),
      O => sig_data_skid_mux_out(109)
    );
\sig_data_reg_out[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[110]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(110),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(110),
      O => sig_data_skid_mux_out(110)
    );
\sig_data_reg_out[111]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(111),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(111),
      O => sig_data_skid_mux_out(111)
    );
\sig_data_reg_out[112]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(112),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(112),
      O => sig_data_skid_mux_out(112)
    );
\sig_data_reg_out[113]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(113),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(113),
      O => sig_data_skid_mux_out(113)
    );
\sig_data_reg_out[114]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(114),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(114),
      O => sig_data_skid_mux_out(114)
    );
\sig_data_reg_out[115]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(115),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(115),
      O => sig_data_skid_mux_out(115)
    );
\sig_data_reg_out[116]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(116),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(116),
      O => sig_data_skid_mux_out(116)
    );
\sig_data_reg_out[117]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(117),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(117),
      O => sig_data_skid_mux_out(117)
    );
\sig_data_reg_out[118]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(118),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(118),
      O => sig_data_skid_mux_out(118)
    );
\sig_data_reg_out[119]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(119),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(119),
      O => sig_data_skid_mux_out(119)
    );
\sig_data_reg_out[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[120]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(120),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(120),
      O => sig_data_skid_mux_out(120)
    );
\sig_data_reg_out[121]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(121),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(121),
      O => sig_data_skid_mux_out(121)
    );
\sig_data_reg_out[122]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(122),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(122),
      O => sig_data_skid_mux_out(122)
    );
\sig_data_reg_out[123]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(123),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(123),
      O => sig_data_skid_mux_out(123)
    );
\sig_data_reg_out[124]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(124),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(124),
      O => sig_data_skid_mux_out(124)
    );
\sig_data_reg_out[125]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(125),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(125),
      O => sig_data_skid_mux_out(125)
    );
\sig_data_reg_out[126]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(126),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(126),
      O => sig_data_skid_mux_out(126)
    );
\sig_data_reg_out[127]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axi_s2mm_wready,
      I1 => sig_m_valid_dup,
      O => sig_data_reg_out_en
    );
\sig_data_reg_out[127]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(127),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(127),
      O => sig_data_skid_mux_out(127)
    );
\sig_data_reg_out[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[32]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(32),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(32),
      O => sig_data_skid_mux_out(32)
    );
\sig_data_reg_out[33]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(33),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(33),
      O => sig_data_skid_mux_out(33)
    );
\sig_data_reg_out[34]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(34),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(34),
      O => sig_data_skid_mux_out(34)
    );
\sig_data_reg_out[35]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(35),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(35),
      O => sig_data_skid_mux_out(35)
    );
\sig_data_reg_out[36]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(36),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(36),
      O => sig_data_skid_mux_out(36)
    );
\sig_data_reg_out[37]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(37),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(37),
      O => sig_data_skid_mux_out(37)
    );
\sig_data_reg_out[38]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(38),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(38),
      O => sig_data_skid_mux_out(38)
    );
\sig_data_reg_out[39]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(39),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(39),
      O => sig_data_skid_mux_out(39)
    );
\sig_data_reg_out[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[40]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(40),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(40),
      O => sig_data_skid_mux_out(40)
    );
\sig_data_reg_out[41]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(41),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(41),
      O => sig_data_skid_mux_out(41)
    );
\sig_data_reg_out[42]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(42),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(42),
      O => sig_data_skid_mux_out(42)
    );
\sig_data_reg_out[43]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(43),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(43),
      O => sig_data_skid_mux_out(43)
    );
\sig_data_reg_out[44]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(44),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(44),
      O => sig_data_skid_mux_out(44)
    );
\sig_data_reg_out[45]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(45),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(45),
      O => sig_data_skid_mux_out(45)
    );
\sig_data_reg_out[46]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(46),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(46),
      O => sig_data_skid_mux_out(46)
    );
\sig_data_reg_out[47]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(47),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(47),
      O => sig_data_skid_mux_out(47)
    );
\sig_data_reg_out[48]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(48),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(48),
      O => sig_data_skid_mux_out(48)
    );
\sig_data_reg_out[49]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(49),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(49),
      O => sig_data_skid_mux_out(49)
    );
\sig_data_reg_out[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[50]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(50),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(50),
      O => sig_data_skid_mux_out(50)
    );
\sig_data_reg_out[51]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(51),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(51),
      O => sig_data_skid_mux_out(51)
    );
\sig_data_reg_out[52]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(52),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(52),
      O => sig_data_skid_mux_out(52)
    );
\sig_data_reg_out[53]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(53),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(53),
      O => sig_data_skid_mux_out(53)
    );
\sig_data_reg_out[54]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(54),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(54),
      O => sig_data_skid_mux_out(54)
    );
\sig_data_reg_out[55]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(55),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(55),
      O => sig_data_skid_mux_out(55)
    );
\sig_data_reg_out[56]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(56),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(56),
      O => sig_data_skid_mux_out(56)
    );
\sig_data_reg_out[57]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(57),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(57),
      O => sig_data_skid_mux_out(57)
    );
\sig_data_reg_out[58]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(58),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(58),
      O => sig_data_skid_mux_out(58)
    );
\sig_data_reg_out[59]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(59),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(59),
      O => sig_data_skid_mux_out(59)
    );
\sig_data_reg_out[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[60]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(60),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(60),
      O => sig_data_skid_mux_out(60)
    );
\sig_data_reg_out[61]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(61),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(61),
      O => sig_data_skid_mux_out(61)
    );
\sig_data_reg_out[62]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(62),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(62),
      O => sig_data_skid_mux_out(62)
    );
\sig_data_reg_out[63]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(63),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(63),
      O => sig_data_skid_mux_out(63)
    );
\sig_data_reg_out[64]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(64),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(64),
      O => sig_data_skid_mux_out(64)
    );
\sig_data_reg_out[65]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(65),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(65),
      O => sig_data_skid_mux_out(65)
    );
\sig_data_reg_out[66]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(66),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(66),
      O => sig_data_skid_mux_out(66)
    );
\sig_data_reg_out[67]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(67),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(67),
      O => sig_data_skid_mux_out(67)
    );
\sig_data_reg_out[68]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(68),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(68),
      O => sig_data_skid_mux_out(68)
    );
\sig_data_reg_out[69]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(69),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(69),
      O => sig_data_skid_mux_out(69)
    );
\sig_data_reg_out[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[70]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(70),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(70),
      O => sig_data_skid_mux_out(70)
    );
\sig_data_reg_out[71]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(71),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(71),
      O => sig_data_skid_mux_out(71)
    );
\sig_data_reg_out[72]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(72),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(72),
      O => sig_data_skid_mux_out(72)
    );
\sig_data_reg_out[73]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(73),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(73),
      O => sig_data_skid_mux_out(73)
    );
\sig_data_reg_out[74]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(74),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(74),
      O => sig_data_skid_mux_out(74)
    );
\sig_data_reg_out[75]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(75),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(75),
      O => sig_data_skid_mux_out(75)
    );
\sig_data_reg_out[76]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(76),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(76),
      O => sig_data_skid_mux_out(76)
    );
\sig_data_reg_out[77]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(77),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(77),
      O => sig_data_skid_mux_out(77)
    );
\sig_data_reg_out[78]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(78),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(78),
      O => sig_data_skid_mux_out(78)
    );
\sig_data_reg_out[79]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(79),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(79),
      O => sig_data_skid_mux_out(79)
    );
\sig_data_reg_out[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[80]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(80),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(80),
      O => sig_data_skid_mux_out(80)
    );
\sig_data_reg_out[81]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(81),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(81),
      O => sig_data_skid_mux_out(81)
    );
\sig_data_reg_out[82]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(82),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(82),
      O => sig_data_skid_mux_out(82)
    );
\sig_data_reg_out[83]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(83),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(83),
      O => sig_data_skid_mux_out(83)
    );
\sig_data_reg_out[84]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(84),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(84),
      O => sig_data_skid_mux_out(84)
    );
\sig_data_reg_out[85]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(85),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(85),
      O => sig_data_skid_mux_out(85)
    );
\sig_data_reg_out[86]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(86),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(86),
      O => sig_data_skid_mux_out(86)
    );
\sig_data_reg_out[87]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(87),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(87),
      O => sig_data_skid_mux_out(87)
    );
\sig_data_reg_out[88]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(88),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(88),
      O => sig_data_skid_mux_out(88)
    );
\sig_data_reg_out[89]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(89),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(89),
      O => sig_data_skid_mux_out(89)
    );
\sig_data_reg_out[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[90]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(90),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(90),
      O => sig_data_skid_mux_out(90)
    );
\sig_data_reg_out[91]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(91),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(91),
      O => sig_data_skid_mux_out(91)
    );
\sig_data_reg_out[92]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(92),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(92),
      O => sig_data_skid_mux_out(92)
    );
\sig_data_reg_out[93]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(93),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(93),
      O => sig_data_skid_mux_out(93)
    );
\sig_data_reg_out[94]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(94),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(94),
      O => sig_data_skid_mux_out(94)
    );
\sig_data_reg_out[95]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(95),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(95),
      O => sig_data_skid_mux_out(95)
    );
\sig_data_reg_out[96]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(96),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(96),
      O => sig_data_skid_mux_out(96)
    );
\sig_data_reg_out[97]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(97),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(97),
      O => sig_data_skid_mux_out(97)
    );
\sig_data_reg_out[98]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(98),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(98),
      O => sig_data_skid_mux_out(98)
    );
\sig_data_reg_out[99]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(99),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(99),
      O => sig_data_skid_mux_out(99)
    );
\sig_data_reg_out[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(0),
      Q => m_axi_s2mm_wdata(0),
      R => '0'
    );
\sig_data_reg_out_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(100),
      Q => m_axi_s2mm_wdata(100),
      R => '0'
    );
\sig_data_reg_out_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(101),
      Q => m_axi_s2mm_wdata(101),
      R => '0'
    );
\sig_data_reg_out_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(102),
      Q => m_axi_s2mm_wdata(102),
      R => '0'
    );
\sig_data_reg_out_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(103),
      Q => m_axi_s2mm_wdata(103),
      R => '0'
    );
\sig_data_reg_out_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(104),
      Q => m_axi_s2mm_wdata(104),
      R => '0'
    );
\sig_data_reg_out_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(105),
      Q => m_axi_s2mm_wdata(105),
      R => '0'
    );
\sig_data_reg_out_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(106),
      Q => m_axi_s2mm_wdata(106),
      R => '0'
    );
\sig_data_reg_out_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(107),
      Q => m_axi_s2mm_wdata(107),
      R => '0'
    );
\sig_data_reg_out_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(108),
      Q => m_axi_s2mm_wdata(108),
      R => '0'
    );
\sig_data_reg_out_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(109),
      Q => m_axi_s2mm_wdata(109),
      R => '0'
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(10),
      Q => m_axi_s2mm_wdata(10),
      R => '0'
    );
\sig_data_reg_out_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(110),
      Q => m_axi_s2mm_wdata(110),
      R => '0'
    );
\sig_data_reg_out_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(111),
      Q => m_axi_s2mm_wdata(111),
      R => '0'
    );
\sig_data_reg_out_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(112),
      Q => m_axi_s2mm_wdata(112),
      R => '0'
    );
\sig_data_reg_out_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(113),
      Q => m_axi_s2mm_wdata(113),
      R => '0'
    );
\sig_data_reg_out_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(114),
      Q => m_axi_s2mm_wdata(114),
      R => '0'
    );
\sig_data_reg_out_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(115),
      Q => m_axi_s2mm_wdata(115),
      R => '0'
    );
\sig_data_reg_out_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(116),
      Q => m_axi_s2mm_wdata(116),
      R => '0'
    );
\sig_data_reg_out_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(117),
      Q => m_axi_s2mm_wdata(117),
      R => '0'
    );
\sig_data_reg_out_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(118),
      Q => m_axi_s2mm_wdata(118),
      R => '0'
    );
\sig_data_reg_out_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(119),
      Q => m_axi_s2mm_wdata(119),
      R => '0'
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(11),
      Q => m_axi_s2mm_wdata(11),
      R => '0'
    );
\sig_data_reg_out_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(120),
      Q => m_axi_s2mm_wdata(120),
      R => '0'
    );
\sig_data_reg_out_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(121),
      Q => m_axi_s2mm_wdata(121),
      R => '0'
    );
\sig_data_reg_out_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(122),
      Q => m_axi_s2mm_wdata(122),
      R => '0'
    );
\sig_data_reg_out_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(123),
      Q => m_axi_s2mm_wdata(123),
      R => '0'
    );
\sig_data_reg_out_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(124),
      Q => m_axi_s2mm_wdata(124),
      R => '0'
    );
\sig_data_reg_out_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(125),
      Q => m_axi_s2mm_wdata(125),
      R => '0'
    );
\sig_data_reg_out_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(126),
      Q => m_axi_s2mm_wdata(126),
      R => '0'
    );
\sig_data_reg_out_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(127),
      Q => m_axi_s2mm_wdata(127),
      R => '0'
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(12),
      Q => m_axi_s2mm_wdata(12),
      R => '0'
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(13),
      Q => m_axi_s2mm_wdata(13),
      R => '0'
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(14),
      Q => m_axi_s2mm_wdata(14),
      R => '0'
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(15),
      Q => m_axi_s2mm_wdata(15),
      R => '0'
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(16),
      Q => m_axi_s2mm_wdata(16),
      R => '0'
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(17),
      Q => m_axi_s2mm_wdata(17),
      R => '0'
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(18),
      Q => m_axi_s2mm_wdata(18),
      R => '0'
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(19),
      Q => m_axi_s2mm_wdata(19),
      R => '0'
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(1),
      Q => m_axi_s2mm_wdata(1),
      R => '0'
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(20),
      Q => m_axi_s2mm_wdata(20),
      R => '0'
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(21),
      Q => m_axi_s2mm_wdata(21),
      R => '0'
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(22),
      Q => m_axi_s2mm_wdata(22),
      R => '0'
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(23),
      Q => m_axi_s2mm_wdata(23),
      R => '0'
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(24),
      Q => m_axi_s2mm_wdata(24),
      R => '0'
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(25),
      Q => m_axi_s2mm_wdata(25),
      R => '0'
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(26),
      Q => m_axi_s2mm_wdata(26),
      R => '0'
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(27),
      Q => m_axi_s2mm_wdata(27),
      R => '0'
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(28),
      Q => m_axi_s2mm_wdata(28),
      R => '0'
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(29),
      Q => m_axi_s2mm_wdata(29),
      R => '0'
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(2),
      Q => m_axi_s2mm_wdata(2),
      R => '0'
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(30),
      Q => m_axi_s2mm_wdata(30),
      R => '0'
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(31),
      Q => m_axi_s2mm_wdata(31),
      R => '0'
    );
\sig_data_reg_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(32),
      Q => m_axi_s2mm_wdata(32),
      R => '0'
    );
\sig_data_reg_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(33),
      Q => m_axi_s2mm_wdata(33),
      R => '0'
    );
\sig_data_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(34),
      Q => m_axi_s2mm_wdata(34),
      R => '0'
    );
\sig_data_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(35),
      Q => m_axi_s2mm_wdata(35),
      R => '0'
    );
\sig_data_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(36),
      Q => m_axi_s2mm_wdata(36),
      R => '0'
    );
\sig_data_reg_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(37),
      Q => m_axi_s2mm_wdata(37),
      R => '0'
    );
\sig_data_reg_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(38),
      Q => m_axi_s2mm_wdata(38),
      R => '0'
    );
\sig_data_reg_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(39),
      Q => m_axi_s2mm_wdata(39),
      R => '0'
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(3),
      Q => m_axi_s2mm_wdata(3),
      R => '0'
    );
\sig_data_reg_out_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(40),
      Q => m_axi_s2mm_wdata(40),
      R => '0'
    );
\sig_data_reg_out_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(41),
      Q => m_axi_s2mm_wdata(41),
      R => '0'
    );
\sig_data_reg_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(42),
      Q => m_axi_s2mm_wdata(42),
      R => '0'
    );
\sig_data_reg_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(43),
      Q => m_axi_s2mm_wdata(43),
      R => '0'
    );
\sig_data_reg_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(44),
      Q => m_axi_s2mm_wdata(44),
      R => '0'
    );
\sig_data_reg_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(45),
      Q => m_axi_s2mm_wdata(45),
      R => '0'
    );
\sig_data_reg_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(46),
      Q => m_axi_s2mm_wdata(46),
      R => '0'
    );
\sig_data_reg_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(47),
      Q => m_axi_s2mm_wdata(47),
      R => '0'
    );
\sig_data_reg_out_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(48),
      Q => m_axi_s2mm_wdata(48),
      R => '0'
    );
\sig_data_reg_out_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(49),
      Q => m_axi_s2mm_wdata(49),
      R => '0'
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(4),
      Q => m_axi_s2mm_wdata(4),
      R => '0'
    );
\sig_data_reg_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(50),
      Q => m_axi_s2mm_wdata(50),
      R => '0'
    );
\sig_data_reg_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(51),
      Q => m_axi_s2mm_wdata(51),
      R => '0'
    );
\sig_data_reg_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(52),
      Q => m_axi_s2mm_wdata(52),
      R => '0'
    );
\sig_data_reg_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(53),
      Q => m_axi_s2mm_wdata(53),
      R => '0'
    );
\sig_data_reg_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(54),
      Q => m_axi_s2mm_wdata(54),
      R => '0'
    );
\sig_data_reg_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(55),
      Q => m_axi_s2mm_wdata(55),
      R => '0'
    );
\sig_data_reg_out_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(56),
      Q => m_axi_s2mm_wdata(56),
      R => '0'
    );
\sig_data_reg_out_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(57),
      Q => m_axi_s2mm_wdata(57),
      R => '0'
    );
\sig_data_reg_out_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(58),
      Q => m_axi_s2mm_wdata(58),
      R => '0'
    );
\sig_data_reg_out_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(59),
      Q => m_axi_s2mm_wdata(59),
      R => '0'
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(5),
      Q => m_axi_s2mm_wdata(5),
      R => '0'
    );
\sig_data_reg_out_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(60),
      Q => m_axi_s2mm_wdata(60),
      R => '0'
    );
\sig_data_reg_out_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(61),
      Q => m_axi_s2mm_wdata(61),
      R => '0'
    );
\sig_data_reg_out_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(62),
      Q => m_axi_s2mm_wdata(62),
      R => '0'
    );
\sig_data_reg_out_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(63),
      Q => m_axi_s2mm_wdata(63),
      R => '0'
    );
\sig_data_reg_out_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(64),
      Q => m_axi_s2mm_wdata(64),
      R => '0'
    );
\sig_data_reg_out_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(65),
      Q => m_axi_s2mm_wdata(65),
      R => '0'
    );
\sig_data_reg_out_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(66),
      Q => m_axi_s2mm_wdata(66),
      R => '0'
    );
\sig_data_reg_out_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(67),
      Q => m_axi_s2mm_wdata(67),
      R => '0'
    );
\sig_data_reg_out_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(68),
      Q => m_axi_s2mm_wdata(68),
      R => '0'
    );
\sig_data_reg_out_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(69),
      Q => m_axi_s2mm_wdata(69),
      R => '0'
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(6),
      Q => m_axi_s2mm_wdata(6),
      R => '0'
    );
\sig_data_reg_out_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(70),
      Q => m_axi_s2mm_wdata(70),
      R => '0'
    );
\sig_data_reg_out_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(71),
      Q => m_axi_s2mm_wdata(71),
      R => '0'
    );
\sig_data_reg_out_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(72),
      Q => m_axi_s2mm_wdata(72),
      R => '0'
    );
\sig_data_reg_out_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(73),
      Q => m_axi_s2mm_wdata(73),
      R => '0'
    );
\sig_data_reg_out_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(74),
      Q => m_axi_s2mm_wdata(74),
      R => '0'
    );
\sig_data_reg_out_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(75),
      Q => m_axi_s2mm_wdata(75),
      R => '0'
    );
\sig_data_reg_out_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(76),
      Q => m_axi_s2mm_wdata(76),
      R => '0'
    );
\sig_data_reg_out_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(77),
      Q => m_axi_s2mm_wdata(77),
      R => '0'
    );
\sig_data_reg_out_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(78),
      Q => m_axi_s2mm_wdata(78),
      R => '0'
    );
\sig_data_reg_out_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(79),
      Q => m_axi_s2mm_wdata(79),
      R => '0'
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(7),
      Q => m_axi_s2mm_wdata(7),
      R => '0'
    );
\sig_data_reg_out_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(80),
      Q => m_axi_s2mm_wdata(80),
      R => '0'
    );
\sig_data_reg_out_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(81),
      Q => m_axi_s2mm_wdata(81),
      R => '0'
    );
\sig_data_reg_out_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(82),
      Q => m_axi_s2mm_wdata(82),
      R => '0'
    );
\sig_data_reg_out_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(83),
      Q => m_axi_s2mm_wdata(83),
      R => '0'
    );
\sig_data_reg_out_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(84),
      Q => m_axi_s2mm_wdata(84),
      R => '0'
    );
\sig_data_reg_out_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(85),
      Q => m_axi_s2mm_wdata(85),
      R => '0'
    );
\sig_data_reg_out_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(86),
      Q => m_axi_s2mm_wdata(86),
      R => '0'
    );
\sig_data_reg_out_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(87),
      Q => m_axi_s2mm_wdata(87),
      R => '0'
    );
\sig_data_reg_out_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(88),
      Q => m_axi_s2mm_wdata(88),
      R => '0'
    );
\sig_data_reg_out_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(89),
      Q => m_axi_s2mm_wdata(89),
      R => '0'
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(8),
      Q => m_axi_s2mm_wdata(8),
      R => '0'
    );
\sig_data_reg_out_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(90),
      Q => m_axi_s2mm_wdata(90),
      R => '0'
    );
\sig_data_reg_out_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(91),
      Q => m_axi_s2mm_wdata(91),
      R => '0'
    );
\sig_data_reg_out_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(92),
      Q => m_axi_s2mm_wdata(92),
      R => '0'
    );
\sig_data_reg_out_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(93),
      Q => m_axi_s2mm_wdata(93),
      R => '0'
    );
\sig_data_reg_out_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(94),
      Q => m_axi_s2mm_wdata(94),
      R => '0'
    );
\sig_data_reg_out_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(95),
      Q => m_axi_s2mm_wdata(95),
      R => '0'
    );
\sig_data_reg_out_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(96),
      Q => m_axi_s2mm_wdata(96),
      R => '0'
    );
\sig_data_reg_out_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(97),
      Q => m_axi_s2mm_wdata(97),
      R => '0'
    );
\sig_data_reg_out_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(98),
      Q => m_axi_s2mm_wdata(98),
      R => '0'
    );
\sig_data_reg_out_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(99),
      Q => m_axi_s2mm_wdata(99),
      R => '0'
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(9),
      Q => m_axi_s2mm_wdata(9),
      R => '0'
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(0),
      Q => sig_data_skid_reg(0),
      R => '0'
    );
\sig_data_skid_reg_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(100),
      Q => sig_data_skid_reg(100),
      R => '0'
    );
\sig_data_skid_reg_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(101),
      Q => sig_data_skid_reg(101),
      R => '0'
    );
\sig_data_skid_reg_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(102),
      Q => sig_data_skid_reg(102),
      R => '0'
    );
\sig_data_skid_reg_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(103),
      Q => sig_data_skid_reg(103),
      R => '0'
    );
\sig_data_skid_reg_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(104),
      Q => sig_data_skid_reg(104),
      R => '0'
    );
\sig_data_skid_reg_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(105),
      Q => sig_data_skid_reg(105),
      R => '0'
    );
\sig_data_skid_reg_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(106),
      Q => sig_data_skid_reg(106),
      R => '0'
    );
\sig_data_skid_reg_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(107),
      Q => sig_data_skid_reg(107),
      R => '0'
    );
\sig_data_skid_reg_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(108),
      Q => sig_data_skid_reg(108),
      R => '0'
    );
\sig_data_skid_reg_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(109),
      Q => sig_data_skid_reg(109),
      R => '0'
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(10),
      Q => sig_data_skid_reg(10),
      R => '0'
    );
\sig_data_skid_reg_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(110),
      Q => sig_data_skid_reg(110),
      R => '0'
    );
\sig_data_skid_reg_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(111),
      Q => sig_data_skid_reg(111),
      R => '0'
    );
\sig_data_skid_reg_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(112),
      Q => sig_data_skid_reg(112),
      R => '0'
    );
\sig_data_skid_reg_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(113),
      Q => sig_data_skid_reg(113),
      R => '0'
    );
\sig_data_skid_reg_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(114),
      Q => sig_data_skid_reg(114),
      R => '0'
    );
\sig_data_skid_reg_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(115),
      Q => sig_data_skid_reg(115),
      R => '0'
    );
\sig_data_skid_reg_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(116),
      Q => sig_data_skid_reg(116),
      R => '0'
    );
\sig_data_skid_reg_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(117),
      Q => sig_data_skid_reg(117),
      R => '0'
    );
\sig_data_skid_reg_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(118),
      Q => sig_data_skid_reg(118),
      R => '0'
    );
\sig_data_skid_reg_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(119),
      Q => sig_data_skid_reg(119),
      R => '0'
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(11),
      Q => sig_data_skid_reg(11),
      R => '0'
    );
\sig_data_skid_reg_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(120),
      Q => sig_data_skid_reg(120),
      R => '0'
    );
\sig_data_skid_reg_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(121),
      Q => sig_data_skid_reg(121),
      R => '0'
    );
\sig_data_skid_reg_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(122),
      Q => sig_data_skid_reg(122),
      R => '0'
    );
\sig_data_skid_reg_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(123),
      Q => sig_data_skid_reg(123),
      R => '0'
    );
\sig_data_skid_reg_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(124),
      Q => sig_data_skid_reg(124),
      R => '0'
    );
\sig_data_skid_reg_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(125),
      Q => sig_data_skid_reg(125),
      R => '0'
    );
\sig_data_skid_reg_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(126),
      Q => sig_data_skid_reg(126),
      R => '0'
    );
\sig_data_skid_reg_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(127),
      Q => sig_data_skid_reg(127),
      R => '0'
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(12),
      Q => sig_data_skid_reg(12),
      R => '0'
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(13),
      Q => sig_data_skid_reg(13),
      R => '0'
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(14),
      Q => sig_data_skid_reg(14),
      R => '0'
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(15),
      Q => sig_data_skid_reg(15),
      R => '0'
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(16),
      Q => sig_data_skid_reg(16),
      R => '0'
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(17),
      Q => sig_data_skid_reg(17),
      R => '0'
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(18),
      Q => sig_data_skid_reg(18),
      R => '0'
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(19),
      Q => sig_data_skid_reg(19),
      R => '0'
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(1),
      Q => sig_data_skid_reg(1),
      R => '0'
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(20),
      Q => sig_data_skid_reg(20),
      R => '0'
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(21),
      Q => sig_data_skid_reg(21),
      R => '0'
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(22),
      Q => sig_data_skid_reg(22),
      R => '0'
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(23),
      Q => sig_data_skid_reg(23),
      R => '0'
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(24),
      Q => sig_data_skid_reg(24),
      R => '0'
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(25),
      Q => sig_data_skid_reg(25),
      R => '0'
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(26),
      Q => sig_data_skid_reg(26),
      R => '0'
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(27),
      Q => sig_data_skid_reg(27),
      R => '0'
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(28),
      Q => sig_data_skid_reg(28),
      R => '0'
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(29),
      Q => sig_data_skid_reg(29),
      R => '0'
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(2),
      Q => sig_data_skid_reg(2),
      R => '0'
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(30),
      Q => sig_data_skid_reg(30),
      R => '0'
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(31),
      Q => sig_data_skid_reg(31),
      R => '0'
    );
\sig_data_skid_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(32),
      Q => sig_data_skid_reg(32),
      R => '0'
    );
\sig_data_skid_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(33),
      Q => sig_data_skid_reg(33),
      R => '0'
    );
\sig_data_skid_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(34),
      Q => sig_data_skid_reg(34),
      R => '0'
    );
\sig_data_skid_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(35),
      Q => sig_data_skid_reg(35),
      R => '0'
    );
\sig_data_skid_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(36),
      Q => sig_data_skid_reg(36),
      R => '0'
    );
\sig_data_skid_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(37),
      Q => sig_data_skid_reg(37),
      R => '0'
    );
\sig_data_skid_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(38),
      Q => sig_data_skid_reg(38),
      R => '0'
    );
\sig_data_skid_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(39),
      Q => sig_data_skid_reg(39),
      R => '0'
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(3),
      Q => sig_data_skid_reg(3),
      R => '0'
    );
\sig_data_skid_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(40),
      Q => sig_data_skid_reg(40),
      R => '0'
    );
\sig_data_skid_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(41),
      Q => sig_data_skid_reg(41),
      R => '0'
    );
\sig_data_skid_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(42),
      Q => sig_data_skid_reg(42),
      R => '0'
    );
\sig_data_skid_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(43),
      Q => sig_data_skid_reg(43),
      R => '0'
    );
\sig_data_skid_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(44),
      Q => sig_data_skid_reg(44),
      R => '0'
    );
\sig_data_skid_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(45),
      Q => sig_data_skid_reg(45),
      R => '0'
    );
\sig_data_skid_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(46),
      Q => sig_data_skid_reg(46),
      R => '0'
    );
\sig_data_skid_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(47),
      Q => sig_data_skid_reg(47),
      R => '0'
    );
\sig_data_skid_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(48),
      Q => sig_data_skid_reg(48),
      R => '0'
    );
\sig_data_skid_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(49),
      Q => sig_data_skid_reg(49),
      R => '0'
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(4),
      Q => sig_data_skid_reg(4),
      R => '0'
    );
\sig_data_skid_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(50),
      Q => sig_data_skid_reg(50),
      R => '0'
    );
\sig_data_skid_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(51),
      Q => sig_data_skid_reg(51),
      R => '0'
    );
\sig_data_skid_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(52),
      Q => sig_data_skid_reg(52),
      R => '0'
    );
\sig_data_skid_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(53),
      Q => sig_data_skid_reg(53),
      R => '0'
    );
\sig_data_skid_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(54),
      Q => sig_data_skid_reg(54),
      R => '0'
    );
\sig_data_skid_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(55),
      Q => sig_data_skid_reg(55),
      R => '0'
    );
\sig_data_skid_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(56),
      Q => sig_data_skid_reg(56),
      R => '0'
    );
\sig_data_skid_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(57),
      Q => sig_data_skid_reg(57),
      R => '0'
    );
\sig_data_skid_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(58),
      Q => sig_data_skid_reg(58),
      R => '0'
    );
\sig_data_skid_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(59),
      Q => sig_data_skid_reg(59),
      R => '0'
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(5),
      Q => sig_data_skid_reg(5),
      R => '0'
    );
\sig_data_skid_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(60),
      Q => sig_data_skid_reg(60),
      R => '0'
    );
\sig_data_skid_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(61),
      Q => sig_data_skid_reg(61),
      R => '0'
    );
\sig_data_skid_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(62),
      Q => sig_data_skid_reg(62),
      R => '0'
    );
\sig_data_skid_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(63),
      Q => sig_data_skid_reg(63),
      R => '0'
    );
\sig_data_skid_reg_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(64),
      Q => sig_data_skid_reg(64),
      R => '0'
    );
\sig_data_skid_reg_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(65),
      Q => sig_data_skid_reg(65),
      R => '0'
    );
\sig_data_skid_reg_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(66),
      Q => sig_data_skid_reg(66),
      R => '0'
    );
\sig_data_skid_reg_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(67),
      Q => sig_data_skid_reg(67),
      R => '0'
    );
\sig_data_skid_reg_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(68),
      Q => sig_data_skid_reg(68),
      R => '0'
    );
\sig_data_skid_reg_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(69),
      Q => sig_data_skid_reg(69),
      R => '0'
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(6),
      Q => sig_data_skid_reg(6),
      R => '0'
    );
\sig_data_skid_reg_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(70),
      Q => sig_data_skid_reg(70),
      R => '0'
    );
\sig_data_skid_reg_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(71),
      Q => sig_data_skid_reg(71),
      R => '0'
    );
\sig_data_skid_reg_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(72),
      Q => sig_data_skid_reg(72),
      R => '0'
    );
\sig_data_skid_reg_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(73),
      Q => sig_data_skid_reg(73),
      R => '0'
    );
\sig_data_skid_reg_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(74),
      Q => sig_data_skid_reg(74),
      R => '0'
    );
\sig_data_skid_reg_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(75),
      Q => sig_data_skid_reg(75),
      R => '0'
    );
\sig_data_skid_reg_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(76),
      Q => sig_data_skid_reg(76),
      R => '0'
    );
\sig_data_skid_reg_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(77),
      Q => sig_data_skid_reg(77),
      R => '0'
    );
\sig_data_skid_reg_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(78),
      Q => sig_data_skid_reg(78),
      R => '0'
    );
\sig_data_skid_reg_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(79),
      Q => sig_data_skid_reg(79),
      R => '0'
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(7),
      Q => sig_data_skid_reg(7),
      R => '0'
    );
\sig_data_skid_reg_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(80),
      Q => sig_data_skid_reg(80),
      R => '0'
    );
\sig_data_skid_reg_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(81),
      Q => sig_data_skid_reg(81),
      R => '0'
    );
\sig_data_skid_reg_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(82),
      Q => sig_data_skid_reg(82),
      R => '0'
    );
\sig_data_skid_reg_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(83),
      Q => sig_data_skid_reg(83),
      R => '0'
    );
\sig_data_skid_reg_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(84),
      Q => sig_data_skid_reg(84),
      R => '0'
    );
\sig_data_skid_reg_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(85),
      Q => sig_data_skid_reg(85),
      R => '0'
    );
\sig_data_skid_reg_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(86),
      Q => sig_data_skid_reg(86),
      R => '0'
    );
\sig_data_skid_reg_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(87),
      Q => sig_data_skid_reg(87),
      R => '0'
    );
\sig_data_skid_reg_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(88),
      Q => sig_data_skid_reg(88),
      R => '0'
    );
\sig_data_skid_reg_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(89),
      Q => sig_data_skid_reg(89),
      R => '0'
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(8),
      Q => sig_data_skid_reg(8),
      R => '0'
    );
\sig_data_skid_reg_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(90),
      Q => sig_data_skid_reg(90),
      R => '0'
    );
\sig_data_skid_reg_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(91),
      Q => sig_data_skid_reg(91),
      R => '0'
    );
\sig_data_skid_reg_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(92),
      Q => sig_data_skid_reg(92),
      R => '0'
    );
\sig_data_skid_reg_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(93),
      Q => sig_data_skid_reg(93),
      R => '0'
    );
\sig_data_skid_reg_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(94),
      Q => sig_data_skid_reg(94),
      R => '0'
    );
\sig_data_skid_reg_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(95),
      Q => sig_data_skid_reg(95),
      R => '0'
    );
\sig_data_skid_reg_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(96),
      Q => sig_data_skid_reg(96),
      R => '0'
    );
\sig_data_skid_reg_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(97),
      Q => sig_data_skid_reg(97),
      R => '0'
    );
\sig_data_skid_reg_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(98),
      Q => sig_data_skid_reg(98),
      R => '0'
    );
\sig_data_skid_reg_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(99),
      Q => sig_data_skid_reg(99),
      R => '0'
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(9),
      Q => sig_data_skid_reg(9),
      R => '0'
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_last_skid_mux_out,
      Q => m_axi_s2mm_wlast,
      R => SR(0)
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_data2skid_wlast,
      Q => sig_last_skid_reg,
      R => SR(0)
    );
sig_m_valid_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444404040404"
    )
        port map (
      I0 => sig_reset_reg,
      I1 => sig_stream_rst_reg_n,
      I2 => sig_m_valid_out_reg_0,
      I3 => sig_s_ready_dup,
      I4 => m_axi_s2mm_wready,
      I5 => sig_m_valid_dup,
      O => sig_m_valid_dup_i_1_n_0
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_out,
      R => '0'
    );
sig_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => SR(0),
      Q => sig_reset_reg,
      R => '0'
    );
\sig_s_ready_dup_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF0000EEEE0000"
    )
        port map (
      I0 => m_axi_s2mm_wready,
      I1 => sig_reset_reg,
      I2 => sig_m_valid_out_reg_0,
      I3 => sig_m_valid_dup,
      I4 => sig_stream_rst_reg_n,
      I5 => sig_s_ready_dup,
      O => \sig_s_ready_dup_i_1__1_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_dup,
      R => '0'
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_out,
      R => '0'
    );
\sig_strb_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(0),
      Q => m_axi_s2mm_wstrb(0),
      R => SR(0)
    );
\sig_strb_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(10),
      Q => m_axi_s2mm_wstrb(10),
      R => SR(0)
    );
\sig_strb_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(11),
      Q => m_axi_s2mm_wstrb(11),
      R => SR(0)
    );
\sig_strb_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(12),
      Q => m_axi_s2mm_wstrb(12),
      R => SR(0)
    );
\sig_strb_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(13),
      Q => m_axi_s2mm_wstrb(13),
      R => SR(0)
    );
\sig_strb_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(14),
      Q => m_axi_s2mm_wstrb(14),
      R => SR(0)
    );
\sig_strb_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(15),
      Q => m_axi_s2mm_wstrb(15),
      R => SR(0)
    );
\sig_strb_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(1),
      Q => m_axi_s2mm_wstrb(1),
      R => SR(0)
    );
\sig_strb_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(2),
      Q => m_axi_s2mm_wstrb(2),
      R => SR(0)
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(3),
      Q => m_axi_s2mm_wstrb(3),
      R => SR(0)
    );
\sig_strb_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(4),
      Q => m_axi_s2mm_wstrb(4),
      R => SR(0)
    );
\sig_strb_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(5),
      Q => m_axi_s2mm_wstrb(5),
      R => SR(0)
    );
\sig_strb_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(6),
      Q => m_axi_s2mm_wstrb(6),
      R => SR(0)
    );
\sig_strb_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(7),
      Q => m_axi_s2mm_wstrb(7),
      R => SR(0)
    );
\sig_strb_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(8),
      Q => m_axi_s2mm_wstrb(8),
      R => SR(0)
    );
\sig_strb_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(9),
      Q => m_axi_s2mm_wstrb(9),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(0),
      Q => Q(0),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(10),
      Q => Q(10),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(11),
      Q => Q(11),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(12),
      Q => Q(12),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(13),
      Q => Q(13),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(14),
      Q => Q(14),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(15),
      Q => Q(15),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(1),
      Q => Q(1),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(2),
      Q => Q(2),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(3),
      Q => Q(3),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(4),
      Q => Q(4),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(5),
      Q => Q(5),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(6),
      Q => Q(6),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(7),
      Q => Q(7),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(8),
      Q => Q(8),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(9),
      Q => Q(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_skid_buf is
  port (
    \out\ : out STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    sig_m_valid_out_reg_0 : out STD_LOGIC;
    skid2dre_wlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \sig_strb_reg_out_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tlast : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_s_ready_out_reg_0 : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_skid_buf : entity is "axi_datamover_skid_buf";
end ps_axi_datamover_1_0_axi_datamover_skid_buf;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_skid_buf is
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_last_skid_mux_out : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal sig_s_ready_dup_i_1_n_0 : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal sig_strb_skid_mux_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_m_valid_dup;
  s_axis_s2mm_tready <= sig_s_ready_out;
  sig_m_valid_out_reg_0 <= sig_m_valid_out;
\sig_data_reg_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[100]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(100),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(100),
      O => sig_data_skid_mux_out(100)
    );
\sig_data_reg_out[101]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(101),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(101),
      O => sig_data_skid_mux_out(101)
    );
\sig_data_reg_out[102]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(102),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(102),
      O => sig_data_skid_mux_out(102)
    );
\sig_data_reg_out[103]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(103),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(103),
      O => sig_data_skid_mux_out(103)
    );
\sig_data_reg_out[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(104),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(104),
      O => sig_data_skid_mux_out(104)
    );
\sig_data_reg_out[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(105),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(105),
      O => sig_data_skid_mux_out(105)
    );
\sig_data_reg_out[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(106),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(106),
      O => sig_data_skid_mux_out(106)
    );
\sig_data_reg_out[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(107),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(107),
      O => sig_data_skid_mux_out(107)
    );
\sig_data_reg_out[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(108),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(108),
      O => sig_data_skid_mux_out(108)
    );
\sig_data_reg_out[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(109),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(109),
      O => sig_data_skid_mux_out(109)
    );
\sig_data_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(110),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(110),
      O => sig_data_skid_mux_out(110)
    );
\sig_data_reg_out[111]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(111),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(111),
      O => sig_data_skid_mux_out(111)
    );
\sig_data_reg_out[112]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(112),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(112),
      O => sig_data_skid_mux_out(112)
    );
\sig_data_reg_out[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(113),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(113),
      O => sig_data_skid_mux_out(113)
    );
\sig_data_reg_out[114]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(114),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(114),
      O => sig_data_skid_mux_out(114)
    );
\sig_data_reg_out[115]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(115),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(115),
      O => sig_data_skid_mux_out(115)
    );
\sig_data_reg_out[116]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(116),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(116),
      O => sig_data_skid_mux_out(116)
    );
\sig_data_reg_out[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(117),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(117),
      O => sig_data_skid_mux_out(117)
    );
\sig_data_reg_out[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(118),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(118),
      O => sig_data_skid_mux_out(118)
    );
\sig_data_reg_out[119]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(119),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(119),
      O => sig_data_skid_mux_out(119)
    );
\sig_data_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[120]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(120),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(120),
      O => sig_data_skid_mux_out(120)
    );
\sig_data_reg_out[121]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(121),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(121),
      O => sig_data_skid_mux_out(121)
    );
\sig_data_reg_out[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(122),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(122),
      O => sig_data_skid_mux_out(122)
    );
\sig_data_reg_out[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(123),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(123),
      O => sig_data_skid_mux_out(123)
    );
\sig_data_reg_out[124]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(124),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(124),
      O => sig_data_skid_mux_out(124)
    );
\sig_data_reg_out[125]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(125),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(125),
      O => sig_data_skid_mux_out(125)
    );
\sig_data_reg_out[126]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(126),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(126),
      O => sig_data_skid_mux_out(126)
    );
\sig_data_reg_out[127]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(127),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(127),
      O => sig_data_skid_mux_out(127)
    );
\sig_data_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(32),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(32),
      O => sig_data_skid_mux_out(32)
    );
\sig_data_reg_out[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(33),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(33),
      O => sig_data_skid_mux_out(33)
    );
\sig_data_reg_out[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(34),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(34),
      O => sig_data_skid_mux_out(34)
    );
\sig_data_reg_out[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(35),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(35),
      O => sig_data_skid_mux_out(35)
    );
\sig_data_reg_out[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(36),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(36),
      O => sig_data_skid_mux_out(36)
    );
\sig_data_reg_out[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(37),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(37),
      O => sig_data_skid_mux_out(37)
    );
\sig_data_reg_out[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(38),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(38),
      O => sig_data_skid_mux_out(38)
    );
\sig_data_reg_out[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(39),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(39),
      O => sig_data_skid_mux_out(39)
    );
\sig_data_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(40),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(40),
      O => sig_data_skid_mux_out(40)
    );
\sig_data_reg_out[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(41),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(41),
      O => sig_data_skid_mux_out(41)
    );
\sig_data_reg_out[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(42),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(42),
      O => sig_data_skid_mux_out(42)
    );
\sig_data_reg_out[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(43),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(43),
      O => sig_data_skid_mux_out(43)
    );
\sig_data_reg_out[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(44),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(44),
      O => sig_data_skid_mux_out(44)
    );
\sig_data_reg_out[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(45),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(45),
      O => sig_data_skid_mux_out(45)
    );
\sig_data_reg_out[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(46),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(46),
      O => sig_data_skid_mux_out(46)
    );
\sig_data_reg_out[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(47),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(47),
      O => sig_data_skid_mux_out(47)
    );
\sig_data_reg_out[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(48),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(48),
      O => sig_data_skid_mux_out(48)
    );
\sig_data_reg_out[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(49),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(49),
      O => sig_data_skid_mux_out(49)
    );
\sig_data_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(50),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(50),
      O => sig_data_skid_mux_out(50)
    );
\sig_data_reg_out[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(51),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(51),
      O => sig_data_skid_mux_out(51)
    );
\sig_data_reg_out[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(52),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(52),
      O => sig_data_skid_mux_out(52)
    );
\sig_data_reg_out[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(53),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(53),
      O => sig_data_skid_mux_out(53)
    );
\sig_data_reg_out[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(54),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(54),
      O => sig_data_skid_mux_out(54)
    );
\sig_data_reg_out[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(55),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(55),
      O => sig_data_skid_mux_out(55)
    );
\sig_data_reg_out[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(56),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(56),
      O => sig_data_skid_mux_out(56)
    );
\sig_data_reg_out[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(57),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(57),
      O => sig_data_skid_mux_out(57)
    );
\sig_data_reg_out[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(58),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(58),
      O => sig_data_skid_mux_out(58)
    );
\sig_data_reg_out[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(59),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(59),
      O => sig_data_skid_mux_out(59)
    );
\sig_data_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(60),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(60),
      O => sig_data_skid_mux_out(60)
    );
\sig_data_reg_out[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(61),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(61),
      O => sig_data_skid_mux_out(61)
    );
\sig_data_reg_out[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(62),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(62),
      O => sig_data_skid_mux_out(62)
    );
\sig_data_reg_out[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(63),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(63),
      O => sig_data_skid_mux_out(63)
    );
\sig_data_reg_out[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(64),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(64),
      O => sig_data_skid_mux_out(64)
    );
\sig_data_reg_out[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(65),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(65),
      O => sig_data_skid_mux_out(65)
    );
\sig_data_reg_out[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(66),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(66),
      O => sig_data_skid_mux_out(66)
    );
\sig_data_reg_out[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(67),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(67),
      O => sig_data_skid_mux_out(67)
    );
\sig_data_reg_out[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(68),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(68),
      O => sig_data_skid_mux_out(68)
    );
\sig_data_reg_out[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(69),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(69),
      O => sig_data_skid_mux_out(69)
    );
\sig_data_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(70),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(70),
      O => sig_data_skid_mux_out(70)
    );
\sig_data_reg_out[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(71),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(71),
      O => sig_data_skid_mux_out(71)
    );
\sig_data_reg_out[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(72),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(72),
      O => sig_data_skid_mux_out(72)
    );
\sig_data_reg_out[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(73),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(73),
      O => sig_data_skid_mux_out(73)
    );
\sig_data_reg_out[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(74),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(74),
      O => sig_data_skid_mux_out(74)
    );
\sig_data_reg_out[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(75),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(75),
      O => sig_data_skid_mux_out(75)
    );
\sig_data_reg_out[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(76),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(76),
      O => sig_data_skid_mux_out(76)
    );
\sig_data_reg_out[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(77),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(77),
      O => sig_data_skid_mux_out(77)
    );
\sig_data_reg_out[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(78),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(78),
      O => sig_data_skid_mux_out(78)
    );
\sig_data_reg_out[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(79),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(79),
      O => sig_data_skid_mux_out(79)
    );
\sig_data_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(80),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(80),
      O => sig_data_skid_mux_out(80)
    );
\sig_data_reg_out[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(81),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(81),
      O => sig_data_skid_mux_out(81)
    );
\sig_data_reg_out[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(82),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(82),
      O => sig_data_skid_mux_out(82)
    );
\sig_data_reg_out[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(83),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(83),
      O => sig_data_skid_mux_out(83)
    );
\sig_data_reg_out[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(84),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(84),
      O => sig_data_skid_mux_out(84)
    );
\sig_data_reg_out[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(85),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(85),
      O => sig_data_skid_mux_out(85)
    );
\sig_data_reg_out[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(86),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(86),
      O => sig_data_skid_mux_out(86)
    );
\sig_data_reg_out[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(87),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(87),
      O => sig_data_skid_mux_out(87)
    );
\sig_data_reg_out[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(88),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(88),
      O => sig_data_skid_mux_out(88)
    );
\sig_data_reg_out[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(89),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(89),
      O => sig_data_skid_mux_out(89)
    );
\sig_data_reg_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(90),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(90),
      O => sig_data_skid_mux_out(90)
    );
\sig_data_reg_out[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(91),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(91),
      O => sig_data_skid_mux_out(91)
    );
\sig_data_reg_out[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(92),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(92),
      O => sig_data_skid_mux_out(92)
    );
\sig_data_reg_out[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(93),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(93),
      O => sig_data_skid_mux_out(93)
    );
\sig_data_reg_out[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(94),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(94),
      O => sig_data_skid_mux_out(94)
    );
\sig_data_reg_out[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(95),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(95),
      O => sig_data_skid_mux_out(95)
    );
\sig_data_reg_out[96]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(96),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(96),
      O => sig_data_skid_mux_out(96)
    );
\sig_data_reg_out[97]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(97),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(97),
      O => sig_data_skid_mux_out(97)
    );
\sig_data_reg_out[98]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(98),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(98),
      O => sig_data_skid_mux_out(98)
    );
\sig_data_reg_out[99]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(99),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(99),
      O => sig_data_skid_mux_out(99)
    );
\sig_data_reg_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(0),
      Q => Q(0),
      R => SR(0)
    );
\sig_data_reg_out_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(100),
      Q => Q(100),
      R => SR(0)
    );
\sig_data_reg_out_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(101),
      Q => Q(101),
      R => SR(0)
    );
\sig_data_reg_out_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(102),
      Q => Q(102),
      R => SR(0)
    );
\sig_data_reg_out_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(103),
      Q => Q(103),
      R => SR(0)
    );
\sig_data_reg_out_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(104),
      Q => Q(104),
      R => SR(0)
    );
\sig_data_reg_out_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(105),
      Q => Q(105),
      R => SR(0)
    );
\sig_data_reg_out_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(106),
      Q => Q(106),
      R => SR(0)
    );
\sig_data_reg_out_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(107),
      Q => Q(107),
      R => SR(0)
    );
\sig_data_reg_out_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(108),
      Q => Q(108),
      R => SR(0)
    );
\sig_data_reg_out_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(109),
      Q => Q(109),
      R => SR(0)
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(10),
      Q => Q(10),
      R => SR(0)
    );
\sig_data_reg_out_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(110),
      Q => Q(110),
      R => SR(0)
    );
\sig_data_reg_out_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(111),
      Q => Q(111),
      R => SR(0)
    );
\sig_data_reg_out_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(112),
      Q => Q(112),
      R => SR(0)
    );
\sig_data_reg_out_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(113),
      Q => Q(113),
      R => SR(0)
    );
\sig_data_reg_out_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(114),
      Q => Q(114),
      R => SR(0)
    );
\sig_data_reg_out_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(115),
      Q => Q(115),
      R => SR(0)
    );
\sig_data_reg_out_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(116),
      Q => Q(116),
      R => SR(0)
    );
\sig_data_reg_out_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(117),
      Q => Q(117),
      R => SR(0)
    );
\sig_data_reg_out_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(118),
      Q => Q(118),
      R => SR(0)
    );
\sig_data_reg_out_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(119),
      Q => Q(119),
      R => SR(0)
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(11),
      Q => Q(11),
      R => SR(0)
    );
\sig_data_reg_out_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(120),
      Q => Q(120),
      R => SR(0)
    );
\sig_data_reg_out_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(121),
      Q => Q(121),
      R => SR(0)
    );
\sig_data_reg_out_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(122),
      Q => Q(122),
      R => SR(0)
    );
\sig_data_reg_out_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(123),
      Q => Q(123),
      R => SR(0)
    );
\sig_data_reg_out_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(124),
      Q => Q(124),
      R => SR(0)
    );
\sig_data_reg_out_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(125),
      Q => Q(125),
      R => SR(0)
    );
\sig_data_reg_out_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(126),
      Q => Q(126),
      R => SR(0)
    );
\sig_data_reg_out_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(127),
      Q => Q(127),
      R => SR(0)
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(12),
      Q => Q(12),
      R => SR(0)
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(13),
      Q => Q(13),
      R => SR(0)
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(14),
      Q => Q(14),
      R => SR(0)
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(15),
      Q => Q(15),
      R => SR(0)
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(16),
      Q => Q(16),
      R => SR(0)
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(17),
      Q => Q(17),
      R => SR(0)
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(18),
      Q => Q(18),
      R => SR(0)
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(19),
      Q => Q(19),
      R => SR(0)
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(1),
      Q => Q(1),
      R => SR(0)
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(20),
      Q => Q(20),
      R => SR(0)
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(21),
      Q => Q(21),
      R => SR(0)
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(22),
      Q => Q(22),
      R => SR(0)
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(23),
      Q => Q(23),
      R => SR(0)
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(24),
      Q => Q(24),
      R => SR(0)
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(25),
      Q => Q(25),
      R => SR(0)
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(26),
      Q => Q(26),
      R => SR(0)
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(27),
      Q => Q(27),
      R => SR(0)
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(28),
      Q => Q(28),
      R => SR(0)
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(29),
      Q => Q(29),
      R => SR(0)
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(2),
      Q => Q(2),
      R => SR(0)
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(30),
      Q => Q(30),
      R => SR(0)
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(31),
      Q => Q(31),
      R => SR(0)
    );
\sig_data_reg_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(32),
      Q => Q(32),
      R => SR(0)
    );
\sig_data_reg_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(33),
      Q => Q(33),
      R => SR(0)
    );
\sig_data_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(34),
      Q => Q(34),
      R => SR(0)
    );
\sig_data_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(35),
      Q => Q(35),
      R => SR(0)
    );
\sig_data_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(36),
      Q => Q(36),
      R => SR(0)
    );
\sig_data_reg_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(37),
      Q => Q(37),
      R => SR(0)
    );
\sig_data_reg_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(38),
      Q => Q(38),
      R => SR(0)
    );
\sig_data_reg_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(39),
      Q => Q(39),
      R => SR(0)
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(3),
      Q => Q(3),
      R => SR(0)
    );
\sig_data_reg_out_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(40),
      Q => Q(40),
      R => SR(0)
    );
\sig_data_reg_out_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(41),
      Q => Q(41),
      R => SR(0)
    );
\sig_data_reg_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(42),
      Q => Q(42),
      R => SR(0)
    );
\sig_data_reg_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(43),
      Q => Q(43),
      R => SR(0)
    );
\sig_data_reg_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(44),
      Q => Q(44),
      R => SR(0)
    );
\sig_data_reg_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(45),
      Q => Q(45),
      R => SR(0)
    );
\sig_data_reg_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(46),
      Q => Q(46),
      R => SR(0)
    );
\sig_data_reg_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(47),
      Q => Q(47),
      R => SR(0)
    );
\sig_data_reg_out_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(48),
      Q => Q(48),
      R => SR(0)
    );
\sig_data_reg_out_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(49),
      Q => Q(49),
      R => SR(0)
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(4),
      Q => Q(4),
      R => SR(0)
    );
\sig_data_reg_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(50),
      Q => Q(50),
      R => SR(0)
    );
\sig_data_reg_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(51),
      Q => Q(51),
      R => SR(0)
    );
\sig_data_reg_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(52),
      Q => Q(52),
      R => SR(0)
    );
\sig_data_reg_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(53),
      Q => Q(53),
      R => SR(0)
    );
\sig_data_reg_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(54),
      Q => Q(54),
      R => SR(0)
    );
\sig_data_reg_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(55),
      Q => Q(55),
      R => SR(0)
    );
\sig_data_reg_out_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(56),
      Q => Q(56),
      R => SR(0)
    );
\sig_data_reg_out_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(57),
      Q => Q(57),
      R => SR(0)
    );
\sig_data_reg_out_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(58),
      Q => Q(58),
      R => SR(0)
    );
\sig_data_reg_out_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(59),
      Q => Q(59),
      R => SR(0)
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(5),
      Q => Q(5),
      R => SR(0)
    );
\sig_data_reg_out_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(60),
      Q => Q(60),
      R => SR(0)
    );
\sig_data_reg_out_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(61),
      Q => Q(61),
      R => SR(0)
    );
\sig_data_reg_out_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(62),
      Q => Q(62),
      R => SR(0)
    );
\sig_data_reg_out_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(63),
      Q => Q(63),
      R => SR(0)
    );
\sig_data_reg_out_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(64),
      Q => Q(64),
      R => SR(0)
    );
\sig_data_reg_out_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(65),
      Q => Q(65),
      R => SR(0)
    );
\sig_data_reg_out_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(66),
      Q => Q(66),
      R => SR(0)
    );
\sig_data_reg_out_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(67),
      Q => Q(67),
      R => SR(0)
    );
\sig_data_reg_out_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(68),
      Q => Q(68),
      R => SR(0)
    );
\sig_data_reg_out_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(69),
      Q => Q(69),
      R => SR(0)
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(6),
      Q => Q(6),
      R => SR(0)
    );
\sig_data_reg_out_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(70),
      Q => Q(70),
      R => SR(0)
    );
\sig_data_reg_out_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(71),
      Q => Q(71),
      R => SR(0)
    );
\sig_data_reg_out_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(72),
      Q => Q(72),
      R => SR(0)
    );
\sig_data_reg_out_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(73),
      Q => Q(73),
      R => SR(0)
    );
\sig_data_reg_out_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(74),
      Q => Q(74),
      R => SR(0)
    );
\sig_data_reg_out_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(75),
      Q => Q(75),
      R => SR(0)
    );
\sig_data_reg_out_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(76),
      Q => Q(76),
      R => SR(0)
    );
\sig_data_reg_out_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(77),
      Q => Q(77),
      R => SR(0)
    );
\sig_data_reg_out_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(78),
      Q => Q(78),
      R => SR(0)
    );
\sig_data_reg_out_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(79),
      Q => Q(79),
      R => SR(0)
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(7),
      Q => Q(7),
      R => SR(0)
    );
\sig_data_reg_out_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(80),
      Q => Q(80),
      R => SR(0)
    );
\sig_data_reg_out_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(81),
      Q => Q(81),
      R => SR(0)
    );
\sig_data_reg_out_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(82),
      Q => Q(82),
      R => SR(0)
    );
\sig_data_reg_out_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(83),
      Q => Q(83),
      R => SR(0)
    );
\sig_data_reg_out_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(84),
      Q => Q(84),
      R => SR(0)
    );
\sig_data_reg_out_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(85),
      Q => Q(85),
      R => SR(0)
    );
\sig_data_reg_out_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(86),
      Q => Q(86),
      R => SR(0)
    );
\sig_data_reg_out_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(87),
      Q => Q(87),
      R => SR(0)
    );
\sig_data_reg_out_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(88),
      Q => Q(88),
      R => SR(0)
    );
\sig_data_reg_out_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(89),
      Q => Q(89),
      R => SR(0)
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(8),
      Q => Q(8),
      R => SR(0)
    );
\sig_data_reg_out_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(90),
      Q => Q(90),
      R => SR(0)
    );
\sig_data_reg_out_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(91),
      Q => Q(91),
      R => SR(0)
    );
\sig_data_reg_out_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(92),
      Q => Q(92),
      R => SR(0)
    );
\sig_data_reg_out_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(93),
      Q => Q(93),
      R => SR(0)
    );
\sig_data_reg_out_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(94),
      Q => Q(94),
      R => SR(0)
    );
\sig_data_reg_out_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(95),
      Q => Q(95),
      R => SR(0)
    );
\sig_data_reg_out_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(96),
      Q => Q(96),
      R => SR(0)
    );
\sig_data_reg_out_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(97),
      Q => Q(97),
      R => SR(0)
    );
\sig_data_reg_out_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(98),
      Q => Q(98),
      R => SR(0)
    );
\sig_data_reg_out_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(99),
      Q => Q(99),
      R => SR(0)
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(9),
      Q => Q(9),
      R => SR(0)
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(0),
      Q => sig_data_skid_reg(0),
      R => SR(0)
    );
\sig_data_skid_reg_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(100),
      Q => sig_data_skid_reg(100),
      R => SR(0)
    );
\sig_data_skid_reg_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(101),
      Q => sig_data_skid_reg(101),
      R => SR(0)
    );
\sig_data_skid_reg_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(102),
      Q => sig_data_skid_reg(102),
      R => SR(0)
    );
\sig_data_skid_reg_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(103),
      Q => sig_data_skid_reg(103),
      R => SR(0)
    );
\sig_data_skid_reg_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(104),
      Q => sig_data_skid_reg(104),
      R => SR(0)
    );
\sig_data_skid_reg_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(105),
      Q => sig_data_skid_reg(105),
      R => SR(0)
    );
\sig_data_skid_reg_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(106),
      Q => sig_data_skid_reg(106),
      R => SR(0)
    );
\sig_data_skid_reg_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(107),
      Q => sig_data_skid_reg(107),
      R => SR(0)
    );
\sig_data_skid_reg_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(108),
      Q => sig_data_skid_reg(108),
      R => SR(0)
    );
\sig_data_skid_reg_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(109),
      Q => sig_data_skid_reg(109),
      R => SR(0)
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(10),
      Q => sig_data_skid_reg(10),
      R => SR(0)
    );
\sig_data_skid_reg_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(110),
      Q => sig_data_skid_reg(110),
      R => SR(0)
    );
\sig_data_skid_reg_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(111),
      Q => sig_data_skid_reg(111),
      R => SR(0)
    );
\sig_data_skid_reg_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(112),
      Q => sig_data_skid_reg(112),
      R => SR(0)
    );
\sig_data_skid_reg_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(113),
      Q => sig_data_skid_reg(113),
      R => SR(0)
    );
\sig_data_skid_reg_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(114),
      Q => sig_data_skid_reg(114),
      R => SR(0)
    );
\sig_data_skid_reg_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(115),
      Q => sig_data_skid_reg(115),
      R => SR(0)
    );
\sig_data_skid_reg_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(116),
      Q => sig_data_skid_reg(116),
      R => SR(0)
    );
\sig_data_skid_reg_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(117),
      Q => sig_data_skid_reg(117),
      R => SR(0)
    );
\sig_data_skid_reg_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(118),
      Q => sig_data_skid_reg(118),
      R => SR(0)
    );
\sig_data_skid_reg_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(119),
      Q => sig_data_skid_reg(119),
      R => SR(0)
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(11),
      Q => sig_data_skid_reg(11),
      R => SR(0)
    );
\sig_data_skid_reg_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(120),
      Q => sig_data_skid_reg(120),
      R => SR(0)
    );
\sig_data_skid_reg_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(121),
      Q => sig_data_skid_reg(121),
      R => SR(0)
    );
\sig_data_skid_reg_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(122),
      Q => sig_data_skid_reg(122),
      R => SR(0)
    );
\sig_data_skid_reg_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(123),
      Q => sig_data_skid_reg(123),
      R => SR(0)
    );
\sig_data_skid_reg_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(124),
      Q => sig_data_skid_reg(124),
      R => SR(0)
    );
\sig_data_skid_reg_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(125),
      Q => sig_data_skid_reg(125),
      R => SR(0)
    );
\sig_data_skid_reg_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(126),
      Q => sig_data_skid_reg(126),
      R => SR(0)
    );
\sig_data_skid_reg_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(127),
      Q => sig_data_skid_reg(127),
      R => SR(0)
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(12),
      Q => sig_data_skid_reg(12),
      R => SR(0)
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(13),
      Q => sig_data_skid_reg(13),
      R => SR(0)
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(14),
      Q => sig_data_skid_reg(14),
      R => SR(0)
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(15),
      Q => sig_data_skid_reg(15),
      R => SR(0)
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(16),
      Q => sig_data_skid_reg(16),
      R => SR(0)
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(17),
      Q => sig_data_skid_reg(17),
      R => SR(0)
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(18),
      Q => sig_data_skid_reg(18),
      R => SR(0)
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(19),
      Q => sig_data_skid_reg(19),
      R => SR(0)
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(1),
      Q => sig_data_skid_reg(1),
      R => SR(0)
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(20),
      Q => sig_data_skid_reg(20),
      R => SR(0)
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(21),
      Q => sig_data_skid_reg(21),
      R => SR(0)
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(22),
      Q => sig_data_skid_reg(22),
      R => SR(0)
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(23),
      Q => sig_data_skid_reg(23),
      R => SR(0)
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(24),
      Q => sig_data_skid_reg(24),
      R => SR(0)
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(25),
      Q => sig_data_skid_reg(25),
      R => SR(0)
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(26),
      Q => sig_data_skid_reg(26),
      R => SR(0)
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(27),
      Q => sig_data_skid_reg(27),
      R => SR(0)
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(28),
      Q => sig_data_skid_reg(28),
      R => SR(0)
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(29),
      Q => sig_data_skid_reg(29),
      R => SR(0)
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(2),
      Q => sig_data_skid_reg(2),
      R => SR(0)
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(30),
      Q => sig_data_skid_reg(30),
      R => SR(0)
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(31),
      Q => sig_data_skid_reg(31),
      R => SR(0)
    );
\sig_data_skid_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(32),
      Q => sig_data_skid_reg(32),
      R => SR(0)
    );
\sig_data_skid_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(33),
      Q => sig_data_skid_reg(33),
      R => SR(0)
    );
\sig_data_skid_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(34),
      Q => sig_data_skid_reg(34),
      R => SR(0)
    );
\sig_data_skid_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(35),
      Q => sig_data_skid_reg(35),
      R => SR(0)
    );
\sig_data_skid_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(36),
      Q => sig_data_skid_reg(36),
      R => SR(0)
    );
\sig_data_skid_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(37),
      Q => sig_data_skid_reg(37),
      R => SR(0)
    );
\sig_data_skid_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(38),
      Q => sig_data_skid_reg(38),
      R => SR(0)
    );
\sig_data_skid_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(39),
      Q => sig_data_skid_reg(39),
      R => SR(0)
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(3),
      Q => sig_data_skid_reg(3),
      R => SR(0)
    );
\sig_data_skid_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(40),
      Q => sig_data_skid_reg(40),
      R => SR(0)
    );
\sig_data_skid_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(41),
      Q => sig_data_skid_reg(41),
      R => SR(0)
    );
\sig_data_skid_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(42),
      Q => sig_data_skid_reg(42),
      R => SR(0)
    );
\sig_data_skid_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(43),
      Q => sig_data_skid_reg(43),
      R => SR(0)
    );
\sig_data_skid_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(44),
      Q => sig_data_skid_reg(44),
      R => SR(0)
    );
\sig_data_skid_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(45),
      Q => sig_data_skid_reg(45),
      R => SR(0)
    );
\sig_data_skid_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(46),
      Q => sig_data_skid_reg(46),
      R => SR(0)
    );
\sig_data_skid_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(47),
      Q => sig_data_skid_reg(47),
      R => SR(0)
    );
\sig_data_skid_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(48),
      Q => sig_data_skid_reg(48),
      R => SR(0)
    );
\sig_data_skid_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(49),
      Q => sig_data_skid_reg(49),
      R => SR(0)
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(4),
      Q => sig_data_skid_reg(4),
      R => SR(0)
    );
\sig_data_skid_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(50),
      Q => sig_data_skid_reg(50),
      R => SR(0)
    );
\sig_data_skid_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(51),
      Q => sig_data_skid_reg(51),
      R => SR(0)
    );
\sig_data_skid_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(52),
      Q => sig_data_skid_reg(52),
      R => SR(0)
    );
\sig_data_skid_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(53),
      Q => sig_data_skid_reg(53),
      R => SR(0)
    );
\sig_data_skid_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(54),
      Q => sig_data_skid_reg(54),
      R => SR(0)
    );
\sig_data_skid_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(55),
      Q => sig_data_skid_reg(55),
      R => SR(0)
    );
\sig_data_skid_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(56),
      Q => sig_data_skid_reg(56),
      R => SR(0)
    );
\sig_data_skid_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(57),
      Q => sig_data_skid_reg(57),
      R => SR(0)
    );
\sig_data_skid_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(58),
      Q => sig_data_skid_reg(58),
      R => SR(0)
    );
\sig_data_skid_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(59),
      Q => sig_data_skid_reg(59),
      R => SR(0)
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(5),
      Q => sig_data_skid_reg(5),
      R => SR(0)
    );
\sig_data_skid_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(60),
      Q => sig_data_skid_reg(60),
      R => SR(0)
    );
\sig_data_skid_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(61),
      Q => sig_data_skid_reg(61),
      R => SR(0)
    );
\sig_data_skid_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(62),
      Q => sig_data_skid_reg(62),
      R => SR(0)
    );
\sig_data_skid_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(63),
      Q => sig_data_skid_reg(63),
      R => SR(0)
    );
\sig_data_skid_reg_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(64),
      Q => sig_data_skid_reg(64),
      R => SR(0)
    );
\sig_data_skid_reg_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(65),
      Q => sig_data_skid_reg(65),
      R => SR(0)
    );
\sig_data_skid_reg_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(66),
      Q => sig_data_skid_reg(66),
      R => SR(0)
    );
\sig_data_skid_reg_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(67),
      Q => sig_data_skid_reg(67),
      R => SR(0)
    );
\sig_data_skid_reg_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(68),
      Q => sig_data_skid_reg(68),
      R => SR(0)
    );
\sig_data_skid_reg_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(69),
      Q => sig_data_skid_reg(69),
      R => SR(0)
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(6),
      Q => sig_data_skid_reg(6),
      R => SR(0)
    );
\sig_data_skid_reg_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(70),
      Q => sig_data_skid_reg(70),
      R => SR(0)
    );
\sig_data_skid_reg_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(71),
      Q => sig_data_skid_reg(71),
      R => SR(0)
    );
\sig_data_skid_reg_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(72),
      Q => sig_data_skid_reg(72),
      R => SR(0)
    );
\sig_data_skid_reg_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(73),
      Q => sig_data_skid_reg(73),
      R => SR(0)
    );
\sig_data_skid_reg_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(74),
      Q => sig_data_skid_reg(74),
      R => SR(0)
    );
\sig_data_skid_reg_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(75),
      Q => sig_data_skid_reg(75),
      R => SR(0)
    );
\sig_data_skid_reg_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(76),
      Q => sig_data_skid_reg(76),
      R => SR(0)
    );
\sig_data_skid_reg_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(77),
      Q => sig_data_skid_reg(77),
      R => SR(0)
    );
\sig_data_skid_reg_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(78),
      Q => sig_data_skid_reg(78),
      R => SR(0)
    );
\sig_data_skid_reg_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(79),
      Q => sig_data_skid_reg(79),
      R => SR(0)
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(7),
      Q => sig_data_skid_reg(7),
      R => SR(0)
    );
\sig_data_skid_reg_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(80),
      Q => sig_data_skid_reg(80),
      R => SR(0)
    );
\sig_data_skid_reg_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(81),
      Q => sig_data_skid_reg(81),
      R => SR(0)
    );
\sig_data_skid_reg_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(82),
      Q => sig_data_skid_reg(82),
      R => SR(0)
    );
\sig_data_skid_reg_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(83),
      Q => sig_data_skid_reg(83),
      R => SR(0)
    );
\sig_data_skid_reg_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(84),
      Q => sig_data_skid_reg(84),
      R => SR(0)
    );
\sig_data_skid_reg_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(85),
      Q => sig_data_skid_reg(85),
      R => SR(0)
    );
\sig_data_skid_reg_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(86),
      Q => sig_data_skid_reg(86),
      R => SR(0)
    );
\sig_data_skid_reg_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(87),
      Q => sig_data_skid_reg(87),
      R => SR(0)
    );
\sig_data_skid_reg_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(88),
      Q => sig_data_skid_reg(88),
      R => SR(0)
    );
\sig_data_skid_reg_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(89),
      Q => sig_data_skid_reg(89),
      R => SR(0)
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(8),
      Q => sig_data_skid_reg(8),
      R => SR(0)
    );
\sig_data_skid_reg_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(90),
      Q => sig_data_skid_reg(90),
      R => SR(0)
    );
\sig_data_skid_reg_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(91),
      Q => sig_data_skid_reg(91),
      R => SR(0)
    );
\sig_data_skid_reg_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(92),
      Q => sig_data_skid_reg(92),
      R => SR(0)
    );
\sig_data_skid_reg_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(93),
      Q => sig_data_skid_reg(93),
      R => SR(0)
    );
\sig_data_skid_reg_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(94),
      Q => sig_data_skid_reg(94),
      R => SR(0)
    );
\sig_data_skid_reg_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(95),
      Q => sig_data_skid_reg(95),
      R => SR(0)
    );
\sig_data_skid_reg_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(96),
      Q => sig_data_skid_reg(96),
      R => SR(0)
    );
\sig_data_skid_reg_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(97),
      Q => sig_data_skid_reg(97),
      R => SR(0)
    );
\sig_data_skid_reg_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(98),
      Q => sig_data_skid_reg(98),
      R => SR(0)
    );
\sig_data_skid_reg_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(99),
      Q => sig_data_skid_reg(99),
      R => SR(0)
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(9),
      Q => sig_data_skid_reg(9),
      R => SR(0)
    );
sig_last_reg_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tlast,
      I1 => sig_s_ready_dup,
      I2 => sig_last_skid_reg,
      O => sig_last_skid_mux_out
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_last_skid_mux_out,
      Q => skid2dre_wlast,
      R => SR(0)
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tlast,
      Q => sig_last_skid_reg,
      R => SR(0)
    );
\sig_m_valid_dup_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF700000"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_s_ready_out_reg_0,
      I2 => sig_m_valid_dup,
      I3 => s_axis_s2mm_tvalid,
      I4 => sig_mmap_rst_reg_n,
      I5 => sig_mmap_reset_reg,
      O => \sig_m_valid_dup_i_1__1_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
sig_s_ready_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFF0000EEEE0000"
    )
        port map (
      I0 => sig_s_ready_out_reg_0,
      I1 => sig_mmap_reset_reg,
      I2 => sig_m_valid_dup,
      I3 => s_axis_s2mm_tvalid,
      I4 => sig_mmap_rst_reg_n,
      I5 => sig_s_ready_dup,
      O => sig_s_ready_dup_i_1_n_0
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_dup,
      R => '0'
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_out,
      R => '0'
    );
\sig_strb_reg_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(0),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(0),
      O => sig_strb_skid_mux_out(0)
    );
\sig_strb_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(10),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(10),
      O => sig_strb_skid_mux_out(10)
    );
\sig_strb_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(11),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(11),
      O => sig_strb_skid_mux_out(11)
    );
\sig_strb_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(12),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(12),
      O => sig_strb_skid_mux_out(12)
    );
\sig_strb_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(13),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(13),
      O => sig_strb_skid_mux_out(13)
    );
\sig_strb_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(14),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(14),
      O => sig_strb_skid_mux_out(14)
    );
\sig_strb_reg_out[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(15),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(15),
      O => sig_strb_skid_mux_out(15)
    );
\sig_strb_reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(1),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(1),
      O => sig_strb_skid_mux_out(1)
    );
\sig_strb_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(2),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(2),
      O => sig_strb_skid_mux_out(2)
    );
\sig_strb_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(3),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(3),
      O => sig_strb_skid_mux_out(3)
    );
\sig_strb_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(4),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(4),
      O => sig_strb_skid_mux_out(4)
    );
\sig_strb_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(5),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(5),
      O => sig_strb_skid_mux_out(5)
    );
\sig_strb_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(6),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(6),
      O => sig_strb_skid_mux_out(6)
    );
\sig_strb_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(7),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(7),
      O => sig_strb_skid_mux_out(7)
    );
\sig_strb_reg_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(8),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(8),
      O => sig_strb_skid_mux_out(8)
    );
\sig_strb_reg_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tkeep(9),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(9),
      O => sig_strb_skid_mux_out(9)
    );
\sig_strb_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(0),
      Q => \sig_strb_reg_out_reg[15]_0\(0),
      R => SR(0)
    );
\sig_strb_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(10),
      Q => \sig_strb_reg_out_reg[15]_0\(10),
      R => SR(0)
    );
\sig_strb_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(11),
      Q => \sig_strb_reg_out_reg[15]_0\(11),
      R => SR(0)
    );
\sig_strb_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(12),
      Q => \sig_strb_reg_out_reg[15]_0\(12),
      R => SR(0)
    );
\sig_strb_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(13),
      Q => \sig_strb_reg_out_reg[15]_0\(13),
      R => SR(0)
    );
\sig_strb_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(14),
      Q => \sig_strb_reg_out_reg[15]_0\(14),
      R => SR(0)
    );
\sig_strb_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(15),
      Q => \sig_strb_reg_out_reg[15]_0\(15),
      R => SR(0)
    );
\sig_strb_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(1),
      Q => \sig_strb_reg_out_reg[15]_0\(1),
      R => SR(0)
    );
\sig_strb_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(2),
      Q => \sig_strb_reg_out_reg[15]_0\(2),
      R => SR(0)
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(3),
      Q => \sig_strb_reg_out_reg[15]_0\(3),
      R => SR(0)
    );
\sig_strb_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(4),
      Q => \sig_strb_reg_out_reg[15]_0\(4),
      R => SR(0)
    );
\sig_strb_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(5),
      Q => \sig_strb_reg_out_reg[15]_0\(5),
      R => SR(0)
    );
\sig_strb_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(6),
      Q => \sig_strb_reg_out_reg[15]_0\(6),
      R => SR(0)
    );
\sig_strb_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(7),
      Q => \sig_strb_reg_out_reg[15]_0\(7),
      R => SR(0)
    );
\sig_strb_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(8),
      Q => \sig_strb_reg_out_reg[15]_0\(8),
      R => SR(0)
    );
\sig_strb_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(9),
      Q => \sig_strb_reg_out_reg[15]_0\(9),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(0),
      Q => sig_strb_skid_reg(0),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(10),
      Q => sig_strb_skid_reg(10),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(11),
      Q => sig_strb_skid_reg(11),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(12),
      Q => sig_strb_skid_reg(12),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(13),
      Q => sig_strb_skid_reg(13),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(14),
      Q => sig_strb_skid_reg(14),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(15),
      Q => sig_strb_skid_reg(15),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(1),
      Q => sig_strb_skid_reg(1),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(2),
      Q => sig_strb_skid_reg(2),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(3),
      Q => sig_strb_skid_reg(3),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(4),
      Q => sig_strb_skid_reg(4),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(5),
      Q => sig_strb_skid_reg(5),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(6),
      Q => sig_strb_skid_reg(6),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(7),
      Q => sig_strb_skid_reg(7),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(8),
      Q => sig_strb_skid_reg(8),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tkeep(9),
      Q => sig_strb_skid_reg(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_skid_buf_0 is
  port (
    \out\ : out STD_LOGIC;
    sig_s_ready_out_reg_0 : out STD_LOGIC;
    sig_m_valid_out_reg_0 : out STD_LOGIC;
    sig_dre2ibtt_tlast : out STD_LOGIC;
    sig_s_ready_out_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \sig_strb_reg_out_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    skid2dre_wlast : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_mmap_reset_reg : in STD_LOGIC;
    sig_s_ready_out_reg_2 : in STD_LOGIC;
    sig_s_ready_out_reg_3 : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    \sig_data_reg_out_reg[127]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 127 downto 0 );
    \sig_strb_skid_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_skid_buf_0 : entity is "axi_datamover_skid_buf";
end ps_axi_datamover_1_0_axi_datamover_skid_buf_0;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_skid_buf_0 is
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_last_skid_mux_out : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal sig_strb_skid_mux_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_m_valid_dup;
  sig_m_valid_out_reg_0 <= sig_m_valid_out;
  sig_s_ready_out_reg_0 <= sig_s_ready_out;
\sig_data_reg_out[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[100]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(100),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(100),
      O => sig_data_skid_mux_out(100)
    );
\sig_data_reg_out[101]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(101),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(101),
      O => sig_data_skid_mux_out(101)
    );
\sig_data_reg_out[102]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(102),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(102),
      O => sig_data_skid_mux_out(102)
    );
\sig_data_reg_out[103]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(103),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(103),
      O => sig_data_skid_mux_out(103)
    );
\sig_data_reg_out[104]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(104),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(104),
      O => sig_data_skid_mux_out(104)
    );
\sig_data_reg_out[105]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(105),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(105),
      O => sig_data_skid_mux_out(105)
    );
\sig_data_reg_out[106]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(106),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(106),
      O => sig_data_skid_mux_out(106)
    );
\sig_data_reg_out[107]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(107),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(107),
      O => sig_data_skid_mux_out(107)
    );
\sig_data_reg_out[108]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(108),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(108),
      O => sig_data_skid_mux_out(108)
    );
\sig_data_reg_out[109]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(109),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(109),
      O => sig_data_skid_mux_out(109)
    );
\sig_data_reg_out[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[110]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(110),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(110),
      O => sig_data_skid_mux_out(110)
    );
\sig_data_reg_out[111]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(111),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(111),
      O => sig_data_skid_mux_out(111)
    );
\sig_data_reg_out[112]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(112),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(112),
      O => sig_data_skid_mux_out(112)
    );
\sig_data_reg_out[113]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(113),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(113),
      O => sig_data_skid_mux_out(113)
    );
\sig_data_reg_out[114]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(114),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(114),
      O => sig_data_skid_mux_out(114)
    );
\sig_data_reg_out[115]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(115),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(115),
      O => sig_data_skid_mux_out(115)
    );
\sig_data_reg_out[116]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(116),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(116),
      O => sig_data_skid_mux_out(116)
    );
\sig_data_reg_out[117]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(117),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(117),
      O => sig_data_skid_mux_out(117)
    );
\sig_data_reg_out[118]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(118),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(118),
      O => sig_data_skid_mux_out(118)
    );
\sig_data_reg_out[119]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(119),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(119),
      O => sig_data_skid_mux_out(119)
    );
\sig_data_reg_out[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[120]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(120),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(120),
      O => sig_data_skid_mux_out(120)
    );
\sig_data_reg_out[121]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(121),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(121),
      O => sig_data_skid_mux_out(121)
    );
\sig_data_reg_out[122]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(122),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(122),
      O => sig_data_skid_mux_out(122)
    );
\sig_data_reg_out[123]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(123),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(123),
      O => sig_data_skid_mux_out(123)
    );
\sig_data_reg_out[124]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(124),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(124),
      O => sig_data_skid_mux_out(124)
    );
\sig_data_reg_out[125]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(125),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(125),
      O => sig_data_skid_mux_out(125)
    );
\sig_data_reg_out[126]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(126),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(126),
      O => sig_data_skid_mux_out(126)
    );
\sig_data_reg_out[127]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_s_ready_out,
      I1 => \sig_data_reg_out_reg[127]_0\,
      O => sig_s_ready_out_reg_1(0)
    );
\sig_data_reg_out[127]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(127),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(127),
      O => sig_data_skid_mux_out(127)
    );
\sig_data_reg_out[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(32),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(32),
      O => sig_data_skid_mux_out(32)
    );
\sig_data_reg_out[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(33),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(33),
      O => sig_data_skid_mux_out(33)
    );
\sig_data_reg_out[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(34),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(34),
      O => sig_data_skid_mux_out(34)
    );
\sig_data_reg_out[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(35),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(35),
      O => sig_data_skid_mux_out(35)
    );
\sig_data_reg_out[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(36),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(36),
      O => sig_data_skid_mux_out(36)
    );
\sig_data_reg_out[37]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(37),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(37),
      O => sig_data_skid_mux_out(37)
    );
\sig_data_reg_out[38]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(38),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(38),
      O => sig_data_skid_mux_out(38)
    );
\sig_data_reg_out[39]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(39),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(39),
      O => sig_data_skid_mux_out(39)
    );
\sig_data_reg_out[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[40]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(40),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(40),
      O => sig_data_skid_mux_out(40)
    );
\sig_data_reg_out[41]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(41),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(41),
      O => sig_data_skid_mux_out(41)
    );
\sig_data_reg_out[42]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(42),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(42),
      O => sig_data_skid_mux_out(42)
    );
\sig_data_reg_out[43]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(43),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(43),
      O => sig_data_skid_mux_out(43)
    );
\sig_data_reg_out[44]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(44),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(44),
      O => sig_data_skid_mux_out(44)
    );
\sig_data_reg_out[45]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(45),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(45),
      O => sig_data_skid_mux_out(45)
    );
\sig_data_reg_out[46]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(46),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(46),
      O => sig_data_skid_mux_out(46)
    );
\sig_data_reg_out[47]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(47),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(47),
      O => sig_data_skid_mux_out(47)
    );
\sig_data_reg_out[48]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(48),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(48),
      O => sig_data_skid_mux_out(48)
    );
\sig_data_reg_out[49]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(49),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(49),
      O => sig_data_skid_mux_out(49)
    );
\sig_data_reg_out[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[50]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(50),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(50),
      O => sig_data_skid_mux_out(50)
    );
\sig_data_reg_out[51]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(51),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(51),
      O => sig_data_skid_mux_out(51)
    );
\sig_data_reg_out[52]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(52),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(52),
      O => sig_data_skid_mux_out(52)
    );
\sig_data_reg_out[53]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(53),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(53),
      O => sig_data_skid_mux_out(53)
    );
\sig_data_reg_out[54]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(54),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(54),
      O => sig_data_skid_mux_out(54)
    );
\sig_data_reg_out[55]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(55),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(55),
      O => sig_data_skid_mux_out(55)
    );
\sig_data_reg_out[56]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(56),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(56),
      O => sig_data_skid_mux_out(56)
    );
\sig_data_reg_out[57]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(57),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(57),
      O => sig_data_skid_mux_out(57)
    );
\sig_data_reg_out[58]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(58),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(58),
      O => sig_data_skid_mux_out(58)
    );
\sig_data_reg_out[59]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(59),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(59),
      O => sig_data_skid_mux_out(59)
    );
\sig_data_reg_out[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[60]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(60),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(60),
      O => sig_data_skid_mux_out(60)
    );
\sig_data_reg_out[61]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(61),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(61),
      O => sig_data_skid_mux_out(61)
    );
\sig_data_reg_out[62]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(62),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(62),
      O => sig_data_skid_mux_out(62)
    );
\sig_data_reg_out[63]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(63),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(63),
      O => sig_data_skid_mux_out(63)
    );
\sig_data_reg_out[64]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(64),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(64),
      O => sig_data_skid_mux_out(64)
    );
\sig_data_reg_out[65]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(65),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(65),
      O => sig_data_skid_mux_out(65)
    );
\sig_data_reg_out[66]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(66),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(66),
      O => sig_data_skid_mux_out(66)
    );
\sig_data_reg_out[67]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(67),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(67),
      O => sig_data_skid_mux_out(67)
    );
\sig_data_reg_out[68]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(68),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(68),
      O => sig_data_skid_mux_out(68)
    );
\sig_data_reg_out[69]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(69),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(69),
      O => sig_data_skid_mux_out(69)
    );
\sig_data_reg_out[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[70]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(70),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(70),
      O => sig_data_skid_mux_out(70)
    );
\sig_data_reg_out[71]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(71),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(71),
      O => sig_data_skid_mux_out(71)
    );
\sig_data_reg_out[72]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(72),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(72),
      O => sig_data_skid_mux_out(72)
    );
\sig_data_reg_out[73]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(73),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(73),
      O => sig_data_skid_mux_out(73)
    );
\sig_data_reg_out[74]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(74),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(74),
      O => sig_data_skid_mux_out(74)
    );
\sig_data_reg_out[75]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(75),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(75),
      O => sig_data_skid_mux_out(75)
    );
\sig_data_reg_out[76]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(76),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(76),
      O => sig_data_skid_mux_out(76)
    );
\sig_data_reg_out[77]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(77),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(77),
      O => sig_data_skid_mux_out(77)
    );
\sig_data_reg_out[78]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(78),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(78),
      O => sig_data_skid_mux_out(78)
    );
\sig_data_reg_out[79]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(79),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(79),
      O => sig_data_skid_mux_out(79)
    );
\sig_data_reg_out[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[80]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(80),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(80),
      O => sig_data_skid_mux_out(80)
    );
\sig_data_reg_out[81]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(81),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(81),
      O => sig_data_skid_mux_out(81)
    );
\sig_data_reg_out[82]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(82),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(82),
      O => sig_data_skid_mux_out(82)
    );
\sig_data_reg_out[83]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(83),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(83),
      O => sig_data_skid_mux_out(83)
    );
\sig_data_reg_out[84]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(84),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(84),
      O => sig_data_skid_mux_out(84)
    );
\sig_data_reg_out[85]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(85),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(85),
      O => sig_data_skid_mux_out(85)
    );
\sig_data_reg_out[86]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(86),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(86),
      O => sig_data_skid_mux_out(86)
    );
\sig_data_reg_out[87]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(87),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(87),
      O => sig_data_skid_mux_out(87)
    );
\sig_data_reg_out[88]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(88),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(88),
      O => sig_data_skid_mux_out(88)
    );
\sig_data_reg_out[89]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(89),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(89),
      O => sig_data_skid_mux_out(89)
    );
\sig_data_reg_out[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[90]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(90),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(90),
      O => sig_data_skid_mux_out(90)
    );
\sig_data_reg_out[91]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(91),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(91),
      O => sig_data_skid_mux_out(91)
    );
\sig_data_reg_out[92]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(92),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(92),
      O => sig_data_skid_mux_out(92)
    );
\sig_data_reg_out[93]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(93),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(93),
      O => sig_data_skid_mux_out(93)
    );
\sig_data_reg_out[94]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(94),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(94),
      O => sig_data_skid_mux_out(94)
    );
\sig_data_reg_out[95]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(95),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(95),
      O => sig_data_skid_mux_out(95)
    );
\sig_data_reg_out[96]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(96),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(96),
      O => sig_data_skid_mux_out(96)
    );
\sig_data_reg_out[97]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(97),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(97),
      O => sig_data_skid_mux_out(97)
    );
\sig_data_reg_out[98]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(98),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(98),
      O => sig_data_skid_mux_out(98)
    );
\sig_data_reg_out[99]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(99),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(99),
      O => sig_data_skid_mux_out(99)
    );
\sig_data_reg_out[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(0),
      Q => Q(0),
      R => SR(0)
    );
\sig_data_reg_out_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(100),
      Q => Q(100),
      R => SR(0)
    );
\sig_data_reg_out_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(101),
      Q => Q(101),
      R => SR(0)
    );
\sig_data_reg_out_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(102),
      Q => Q(102),
      R => SR(0)
    );
\sig_data_reg_out_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(103),
      Q => Q(103),
      R => SR(0)
    );
\sig_data_reg_out_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(104),
      Q => Q(104),
      R => SR(0)
    );
\sig_data_reg_out_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(105),
      Q => Q(105),
      R => SR(0)
    );
\sig_data_reg_out_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(106),
      Q => Q(106),
      R => SR(0)
    );
\sig_data_reg_out_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(107),
      Q => Q(107),
      R => SR(0)
    );
\sig_data_reg_out_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(108),
      Q => Q(108),
      R => SR(0)
    );
\sig_data_reg_out_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(109),
      Q => Q(109),
      R => SR(0)
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(10),
      Q => Q(10),
      R => SR(0)
    );
\sig_data_reg_out_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(110),
      Q => Q(110),
      R => SR(0)
    );
\sig_data_reg_out_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(111),
      Q => Q(111),
      R => SR(0)
    );
\sig_data_reg_out_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(112),
      Q => Q(112),
      R => SR(0)
    );
\sig_data_reg_out_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(113),
      Q => Q(113),
      R => SR(0)
    );
\sig_data_reg_out_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(114),
      Q => Q(114),
      R => SR(0)
    );
\sig_data_reg_out_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(115),
      Q => Q(115),
      R => SR(0)
    );
\sig_data_reg_out_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(116),
      Q => Q(116),
      R => SR(0)
    );
\sig_data_reg_out_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(117),
      Q => Q(117),
      R => SR(0)
    );
\sig_data_reg_out_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(118),
      Q => Q(118),
      R => SR(0)
    );
\sig_data_reg_out_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(119),
      Q => Q(119),
      R => SR(0)
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(11),
      Q => Q(11),
      R => SR(0)
    );
\sig_data_reg_out_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(120),
      Q => Q(120),
      R => SR(0)
    );
\sig_data_reg_out_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(121),
      Q => Q(121),
      R => SR(0)
    );
\sig_data_reg_out_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(122),
      Q => Q(122),
      R => SR(0)
    );
\sig_data_reg_out_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(123),
      Q => Q(123),
      R => SR(0)
    );
\sig_data_reg_out_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(124),
      Q => Q(124),
      R => SR(0)
    );
\sig_data_reg_out_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(125),
      Q => Q(125),
      R => SR(0)
    );
\sig_data_reg_out_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(126),
      Q => Q(126),
      R => SR(0)
    );
\sig_data_reg_out_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(127),
      Q => Q(127),
      R => SR(0)
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(12),
      Q => Q(12),
      R => SR(0)
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(13),
      Q => Q(13),
      R => SR(0)
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(14),
      Q => Q(14),
      R => SR(0)
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(15),
      Q => Q(15),
      R => SR(0)
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(16),
      Q => Q(16),
      R => SR(0)
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(17),
      Q => Q(17),
      R => SR(0)
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(18),
      Q => Q(18),
      R => SR(0)
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(19),
      Q => Q(19),
      R => SR(0)
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(1),
      Q => Q(1),
      R => SR(0)
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(20),
      Q => Q(20),
      R => SR(0)
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(21),
      Q => Q(21),
      R => SR(0)
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(22),
      Q => Q(22),
      R => SR(0)
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(23),
      Q => Q(23),
      R => SR(0)
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(24),
      Q => Q(24),
      R => SR(0)
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(25),
      Q => Q(25),
      R => SR(0)
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(26),
      Q => Q(26),
      R => SR(0)
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(27),
      Q => Q(27),
      R => SR(0)
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(28),
      Q => Q(28),
      R => SR(0)
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(29),
      Q => Q(29),
      R => SR(0)
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(2),
      Q => Q(2),
      R => SR(0)
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(30),
      Q => Q(30),
      R => SR(0)
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(31),
      Q => Q(31),
      R => SR(0)
    );
\sig_data_reg_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(32),
      Q => Q(32),
      R => SR(0)
    );
\sig_data_reg_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(33),
      Q => Q(33),
      R => SR(0)
    );
\sig_data_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(34),
      Q => Q(34),
      R => SR(0)
    );
\sig_data_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(35),
      Q => Q(35),
      R => SR(0)
    );
\sig_data_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(36),
      Q => Q(36),
      R => SR(0)
    );
\sig_data_reg_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(37),
      Q => Q(37),
      R => SR(0)
    );
\sig_data_reg_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(38),
      Q => Q(38),
      R => SR(0)
    );
\sig_data_reg_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(39),
      Q => Q(39),
      R => SR(0)
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(3),
      Q => Q(3),
      R => SR(0)
    );
\sig_data_reg_out_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(40),
      Q => Q(40),
      R => SR(0)
    );
\sig_data_reg_out_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(41),
      Q => Q(41),
      R => SR(0)
    );
\sig_data_reg_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(42),
      Q => Q(42),
      R => SR(0)
    );
\sig_data_reg_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(43),
      Q => Q(43),
      R => SR(0)
    );
\sig_data_reg_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(44),
      Q => Q(44),
      R => SR(0)
    );
\sig_data_reg_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(45),
      Q => Q(45),
      R => SR(0)
    );
\sig_data_reg_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(46),
      Q => Q(46),
      R => SR(0)
    );
\sig_data_reg_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(47),
      Q => Q(47),
      R => SR(0)
    );
\sig_data_reg_out_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(48),
      Q => Q(48),
      R => SR(0)
    );
\sig_data_reg_out_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(49),
      Q => Q(49),
      R => SR(0)
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(4),
      Q => Q(4),
      R => SR(0)
    );
\sig_data_reg_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(50),
      Q => Q(50),
      R => SR(0)
    );
\sig_data_reg_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(51),
      Q => Q(51),
      R => SR(0)
    );
\sig_data_reg_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(52),
      Q => Q(52),
      R => SR(0)
    );
\sig_data_reg_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(53),
      Q => Q(53),
      R => SR(0)
    );
\sig_data_reg_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(54),
      Q => Q(54),
      R => SR(0)
    );
\sig_data_reg_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(55),
      Q => Q(55),
      R => SR(0)
    );
\sig_data_reg_out_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(56),
      Q => Q(56),
      R => SR(0)
    );
\sig_data_reg_out_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(57),
      Q => Q(57),
      R => SR(0)
    );
\sig_data_reg_out_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(58),
      Q => Q(58),
      R => SR(0)
    );
\sig_data_reg_out_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(59),
      Q => Q(59),
      R => SR(0)
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(5),
      Q => Q(5),
      R => SR(0)
    );
\sig_data_reg_out_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(60),
      Q => Q(60),
      R => SR(0)
    );
\sig_data_reg_out_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(61),
      Q => Q(61),
      R => SR(0)
    );
\sig_data_reg_out_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(62),
      Q => Q(62),
      R => SR(0)
    );
\sig_data_reg_out_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(63),
      Q => Q(63),
      R => SR(0)
    );
\sig_data_reg_out_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(64),
      Q => Q(64),
      R => SR(0)
    );
\sig_data_reg_out_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(65),
      Q => Q(65),
      R => SR(0)
    );
\sig_data_reg_out_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(66),
      Q => Q(66),
      R => SR(0)
    );
\sig_data_reg_out_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(67),
      Q => Q(67),
      R => SR(0)
    );
\sig_data_reg_out_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(68),
      Q => Q(68),
      R => SR(0)
    );
\sig_data_reg_out_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(69),
      Q => Q(69),
      R => SR(0)
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(6),
      Q => Q(6),
      R => SR(0)
    );
\sig_data_reg_out_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(70),
      Q => Q(70),
      R => SR(0)
    );
\sig_data_reg_out_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(71),
      Q => Q(71),
      R => SR(0)
    );
\sig_data_reg_out_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(72),
      Q => Q(72),
      R => SR(0)
    );
\sig_data_reg_out_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(73),
      Q => Q(73),
      R => SR(0)
    );
\sig_data_reg_out_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(74),
      Q => Q(74),
      R => SR(0)
    );
\sig_data_reg_out_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(75),
      Q => Q(75),
      R => SR(0)
    );
\sig_data_reg_out_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(76),
      Q => Q(76),
      R => SR(0)
    );
\sig_data_reg_out_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(77),
      Q => Q(77),
      R => SR(0)
    );
\sig_data_reg_out_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(78),
      Q => Q(78),
      R => SR(0)
    );
\sig_data_reg_out_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(79),
      Q => Q(79),
      R => SR(0)
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(7),
      Q => Q(7),
      R => SR(0)
    );
\sig_data_reg_out_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(80),
      Q => Q(80),
      R => SR(0)
    );
\sig_data_reg_out_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(81),
      Q => Q(81),
      R => SR(0)
    );
\sig_data_reg_out_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(82),
      Q => Q(82),
      R => SR(0)
    );
\sig_data_reg_out_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(83),
      Q => Q(83),
      R => SR(0)
    );
\sig_data_reg_out_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(84),
      Q => Q(84),
      R => SR(0)
    );
\sig_data_reg_out_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(85),
      Q => Q(85),
      R => SR(0)
    );
\sig_data_reg_out_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(86),
      Q => Q(86),
      R => SR(0)
    );
\sig_data_reg_out_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(87),
      Q => Q(87),
      R => SR(0)
    );
\sig_data_reg_out_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(88),
      Q => Q(88),
      R => SR(0)
    );
\sig_data_reg_out_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(89),
      Q => Q(89),
      R => SR(0)
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(8),
      Q => Q(8),
      R => SR(0)
    );
\sig_data_reg_out_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(90),
      Q => Q(90),
      R => SR(0)
    );
\sig_data_reg_out_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(91),
      Q => Q(91),
      R => SR(0)
    );
\sig_data_reg_out_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(92),
      Q => Q(92),
      R => SR(0)
    );
\sig_data_reg_out_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(93),
      Q => Q(93),
      R => SR(0)
    );
\sig_data_reg_out_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(94),
      Q => Q(94),
      R => SR(0)
    );
\sig_data_reg_out_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(95),
      Q => Q(95),
      R => SR(0)
    );
\sig_data_reg_out_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(96),
      Q => Q(96),
      R => SR(0)
    );
\sig_data_reg_out_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(97),
      Q => Q(97),
      R => SR(0)
    );
\sig_data_reg_out_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(98),
      Q => Q(98),
      R => SR(0)
    );
\sig_data_reg_out_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(99),
      Q => Q(99),
      R => SR(0)
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(9),
      Q => Q(9),
      R => SR(0)
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(0),
      Q => sig_data_skid_reg(0),
      R => SR(0)
    );
\sig_data_skid_reg_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(100),
      Q => sig_data_skid_reg(100),
      R => SR(0)
    );
\sig_data_skid_reg_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(101),
      Q => sig_data_skid_reg(101),
      R => SR(0)
    );
\sig_data_skid_reg_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(102),
      Q => sig_data_skid_reg(102),
      R => SR(0)
    );
\sig_data_skid_reg_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(103),
      Q => sig_data_skid_reg(103),
      R => SR(0)
    );
\sig_data_skid_reg_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(104),
      Q => sig_data_skid_reg(104),
      R => SR(0)
    );
\sig_data_skid_reg_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(105),
      Q => sig_data_skid_reg(105),
      R => SR(0)
    );
\sig_data_skid_reg_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(106),
      Q => sig_data_skid_reg(106),
      R => SR(0)
    );
\sig_data_skid_reg_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(107),
      Q => sig_data_skid_reg(107),
      R => SR(0)
    );
\sig_data_skid_reg_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(108),
      Q => sig_data_skid_reg(108),
      R => SR(0)
    );
\sig_data_skid_reg_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(109),
      Q => sig_data_skid_reg(109),
      R => SR(0)
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(10),
      Q => sig_data_skid_reg(10),
      R => SR(0)
    );
\sig_data_skid_reg_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(110),
      Q => sig_data_skid_reg(110),
      R => SR(0)
    );
\sig_data_skid_reg_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(111),
      Q => sig_data_skid_reg(111),
      R => SR(0)
    );
\sig_data_skid_reg_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(112),
      Q => sig_data_skid_reg(112),
      R => SR(0)
    );
\sig_data_skid_reg_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(113),
      Q => sig_data_skid_reg(113),
      R => SR(0)
    );
\sig_data_skid_reg_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(114),
      Q => sig_data_skid_reg(114),
      R => SR(0)
    );
\sig_data_skid_reg_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(115),
      Q => sig_data_skid_reg(115),
      R => SR(0)
    );
\sig_data_skid_reg_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(116),
      Q => sig_data_skid_reg(116),
      R => SR(0)
    );
\sig_data_skid_reg_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(117),
      Q => sig_data_skid_reg(117),
      R => SR(0)
    );
\sig_data_skid_reg_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(118),
      Q => sig_data_skid_reg(118),
      R => SR(0)
    );
\sig_data_skid_reg_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(119),
      Q => sig_data_skid_reg(119),
      R => SR(0)
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(11),
      Q => sig_data_skid_reg(11),
      R => SR(0)
    );
\sig_data_skid_reg_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(120),
      Q => sig_data_skid_reg(120),
      R => SR(0)
    );
\sig_data_skid_reg_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(121),
      Q => sig_data_skid_reg(121),
      R => SR(0)
    );
\sig_data_skid_reg_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(122),
      Q => sig_data_skid_reg(122),
      R => SR(0)
    );
\sig_data_skid_reg_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(123),
      Q => sig_data_skid_reg(123),
      R => SR(0)
    );
\sig_data_skid_reg_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(124),
      Q => sig_data_skid_reg(124),
      R => SR(0)
    );
\sig_data_skid_reg_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(125),
      Q => sig_data_skid_reg(125),
      R => SR(0)
    );
\sig_data_skid_reg_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(126),
      Q => sig_data_skid_reg(126),
      R => SR(0)
    );
\sig_data_skid_reg_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(127),
      Q => sig_data_skid_reg(127),
      R => SR(0)
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(12),
      Q => sig_data_skid_reg(12),
      R => SR(0)
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(13),
      Q => sig_data_skid_reg(13),
      R => SR(0)
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(14),
      Q => sig_data_skid_reg(14),
      R => SR(0)
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(15),
      Q => sig_data_skid_reg(15),
      R => SR(0)
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(16),
      Q => sig_data_skid_reg(16),
      R => SR(0)
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(17),
      Q => sig_data_skid_reg(17),
      R => SR(0)
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(18),
      Q => sig_data_skid_reg(18),
      R => SR(0)
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(19),
      Q => sig_data_skid_reg(19),
      R => SR(0)
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(1),
      Q => sig_data_skid_reg(1),
      R => SR(0)
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(20),
      Q => sig_data_skid_reg(20),
      R => SR(0)
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(21),
      Q => sig_data_skid_reg(21),
      R => SR(0)
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(22),
      Q => sig_data_skid_reg(22),
      R => SR(0)
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(23),
      Q => sig_data_skid_reg(23),
      R => SR(0)
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(24),
      Q => sig_data_skid_reg(24),
      R => SR(0)
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(25),
      Q => sig_data_skid_reg(25),
      R => SR(0)
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(26),
      Q => sig_data_skid_reg(26),
      R => SR(0)
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(27),
      Q => sig_data_skid_reg(27),
      R => SR(0)
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(28),
      Q => sig_data_skid_reg(28),
      R => SR(0)
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(29),
      Q => sig_data_skid_reg(29),
      R => SR(0)
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(2),
      Q => sig_data_skid_reg(2),
      R => SR(0)
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(30),
      Q => sig_data_skid_reg(30),
      R => SR(0)
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(31),
      Q => sig_data_skid_reg(31),
      R => SR(0)
    );
\sig_data_skid_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(32),
      Q => sig_data_skid_reg(32),
      R => SR(0)
    );
\sig_data_skid_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(33),
      Q => sig_data_skid_reg(33),
      R => SR(0)
    );
\sig_data_skid_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(34),
      Q => sig_data_skid_reg(34),
      R => SR(0)
    );
\sig_data_skid_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(35),
      Q => sig_data_skid_reg(35),
      R => SR(0)
    );
\sig_data_skid_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(36),
      Q => sig_data_skid_reg(36),
      R => SR(0)
    );
\sig_data_skid_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(37),
      Q => sig_data_skid_reg(37),
      R => SR(0)
    );
\sig_data_skid_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(38),
      Q => sig_data_skid_reg(38),
      R => SR(0)
    );
\sig_data_skid_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(39),
      Q => sig_data_skid_reg(39),
      R => SR(0)
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(3),
      Q => sig_data_skid_reg(3),
      R => SR(0)
    );
\sig_data_skid_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(40),
      Q => sig_data_skid_reg(40),
      R => SR(0)
    );
\sig_data_skid_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(41),
      Q => sig_data_skid_reg(41),
      R => SR(0)
    );
\sig_data_skid_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(42),
      Q => sig_data_skid_reg(42),
      R => SR(0)
    );
\sig_data_skid_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(43),
      Q => sig_data_skid_reg(43),
      R => SR(0)
    );
\sig_data_skid_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(44),
      Q => sig_data_skid_reg(44),
      R => SR(0)
    );
\sig_data_skid_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(45),
      Q => sig_data_skid_reg(45),
      R => SR(0)
    );
\sig_data_skid_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(46),
      Q => sig_data_skid_reg(46),
      R => SR(0)
    );
\sig_data_skid_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(47),
      Q => sig_data_skid_reg(47),
      R => SR(0)
    );
\sig_data_skid_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(48),
      Q => sig_data_skid_reg(48),
      R => SR(0)
    );
\sig_data_skid_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(49),
      Q => sig_data_skid_reg(49),
      R => SR(0)
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(4),
      Q => sig_data_skid_reg(4),
      R => SR(0)
    );
\sig_data_skid_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(50),
      Q => sig_data_skid_reg(50),
      R => SR(0)
    );
\sig_data_skid_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(51),
      Q => sig_data_skid_reg(51),
      R => SR(0)
    );
\sig_data_skid_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(52),
      Q => sig_data_skid_reg(52),
      R => SR(0)
    );
\sig_data_skid_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(53),
      Q => sig_data_skid_reg(53),
      R => SR(0)
    );
\sig_data_skid_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(54),
      Q => sig_data_skid_reg(54),
      R => SR(0)
    );
\sig_data_skid_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(55),
      Q => sig_data_skid_reg(55),
      R => SR(0)
    );
\sig_data_skid_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(56),
      Q => sig_data_skid_reg(56),
      R => SR(0)
    );
\sig_data_skid_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(57),
      Q => sig_data_skid_reg(57),
      R => SR(0)
    );
\sig_data_skid_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(58),
      Q => sig_data_skid_reg(58),
      R => SR(0)
    );
\sig_data_skid_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(59),
      Q => sig_data_skid_reg(59),
      R => SR(0)
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(5),
      Q => sig_data_skid_reg(5),
      R => SR(0)
    );
\sig_data_skid_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(60),
      Q => sig_data_skid_reg(60),
      R => SR(0)
    );
\sig_data_skid_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(61),
      Q => sig_data_skid_reg(61),
      R => SR(0)
    );
\sig_data_skid_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(62),
      Q => sig_data_skid_reg(62),
      R => SR(0)
    );
\sig_data_skid_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(63),
      Q => sig_data_skid_reg(63),
      R => SR(0)
    );
\sig_data_skid_reg_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(64),
      Q => sig_data_skid_reg(64),
      R => SR(0)
    );
\sig_data_skid_reg_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(65),
      Q => sig_data_skid_reg(65),
      R => SR(0)
    );
\sig_data_skid_reg_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(66),
      Q => sig_data_skid_reg(66),
      R => SR(0)
    );
\sig_data_skid_reg_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(67),
      Q => sig_data_skid_reg(67),
      R => SR(0)
    );
\sig_data_skid_reg_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(68),
      Q => sig_data_skid_reg(68),
      R => SR(0)
    );
\sig_data_skid_reg_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(69),
      Q => sig_data_skid_reg(69),
      R => SR(0)
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(6),
      Q => sig_data_skid_reg(6),
      R => SR(0)
    );
\sig_data_skid_reg_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(70),
      Q => sig_data_skid_reg(70),
      R => SR(0)
    );
\sig_data_skid_reg_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(71),
      Q => sig_data_skid_reg(71),
      R => SR(0)
    );
\sig_data_skid_reg_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(72),
      Q => sig_data_skid_reg(72),
      R => SR(0)
    );
\sig_data_skid_reg_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(73),
      Q => sig_data_skid_reg(73),
      R => SR(0)
    );
\sig_data_skid_reg_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(74),
      Q => sig_data_skid_reg(74),
      R => SR(0)
    );
\sig_data_skid_reg_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(75),
      Q => sig_data_skid_reg(75),
      R => SR(0)
    );
\sig_data_skid_reg_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(76),
      Q => sig_data_skid_reg(76),
      R => SR(0)
    );
\sig_data_skid_reg_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(77),
      Q => sig_data_skid_reg(77),
      R => SR(0)
    );
\sig_data_skid_reg_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(78),
      Q => sig_data_skid_reg(78),
      R => SR(0)
    );
\sig_data_skid_reg_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(79),
      Q => sig_data_skid_reg(79),
      R => SR(0)
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(7),
      Q => sig_data_skid_reg(7),
      R => SR(0)
    );
\sig_data_skid_reg_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(80),
      Q => sig_data_skid_reg(80),
      R => SR(0)
    );
\sig_data_skid_reg_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(81),
      Q => sig_data_skid_reg(81),
      R => SR(0)
    );
\sig_data_skid_reg_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(82),
      Q => sig_data_skid_reg(82),
      R => SR(0)
    );
\sig_data_skid_reg_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(83),
      Q => sig_data_skid_reg(83),
      R => SR(0)
    );
\sig_data_skid_reg_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(84),
      Q => sig_data_skid_reg(84),
      R => SR(0)
    );
\sig_data_skid_reg_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(85),
      Q => sig_data_skid_reg(85),
      R => SR(0)
    );
\sig_data_skid_reg_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(86),
      Q => sig_data_skid_reg(86),
      R => SR(0)
    );
\sig_data_skid_reg_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(87),
      Q => sig_data_skid_reg(87),
      R => SR(0)
    );
\sig_data_skid_reg_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(88),
      Q => sig_data_skid_reg(88),
      R => SR(0)
    );
\sig_data_skid_reg_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(89),
      Q => sig_data_skid_reg(89),
      R => SR(0)
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(8),
      Q => sig_data_skid_reg(8),
      R => SR(0)
    );
\sig_data_skid_reg_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(90),
      Q => sig_data_skid_reg(90),
      R => SR(0)
    );
\sig_data_skid_reg_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(91),
      Q => sig_data_skid_reg(91),
      R => SR(0)
    );
\sig_data_skid_reg_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(92),
      Q => sig_data_skid_reg(92),
      R => SR(0)
    );
\sig_data_skid_reg_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(93),
      Q => sig_data_skid_reg(93),
      R => SR(0)
    );
\sig_data_skid_reg_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(94),
      Q => sig_data_skid_reg(94),
      R => SR(0)
    );
\sig_data_skid_reg_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(95),
      Q => sig_data_skid_reg(95),
      R => SR(0)
    );
\sig_data_skid_reg_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(96),
      Q => sig_data_skid_reg(96),
      R => SR(0)
    );
\sig_data_skid_reg_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(97),
      Q => sig_data_skid_reg(97),
      R => SR(0)
    );
\sig_data_skid_reg_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(98),
      Q => sig_data_skid_reg(98),
      R => SR(0)
    );
\sig_data_skid_reg_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(99),
      Q => sig_data_skid_reg(99),
      R => SR(0)
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(9),
      Q => sig_data_skid_reg(9),
      R => SR(0)
    );
\sig_last_reg_out_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skid2dre_wlast,
      I1 => sig_s_ready_dup,
      I2 => sig_last_skid_reg,
      O => sig_last_skid_mux_out
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_last_skid_mux_out,
      Q => sig_dre2ibtt_tlast,
      R => SR(0)
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => skid2dre_wlast,
      Q => sig_last_skid_reg,
      R => SR(0)
    );
\sig_m_valid_dup_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB00000"
    )
        port map (
      I0 => sig_s_ready_out_reg_3,
      I1 => sig_s_ready_dup,
      I2 => sig_m_valid_dup,
      I3 => sig_s_ready_out_reg_2,
      I4 => sig_mmap_rst_reg_n,
      I5 => sig_mmap_reset_reg,
      O => \sig_m_valid_dup_i_1__0_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEFFFF00000000"
    )
        port map (
      I0 => sig_mmap_reset_reg,
      I1 => sig_s_ready_dup,
      I2 => sig_s_ready_out_reg_2,
      I3 => sig_m_valid_dup,
      I4 => sig_s_ready_out_reg_3,
      I5 => sig_mmap_rst_reg_n,
      O => \sig_s_ready_dup_i_1__0_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_dup,
      R => '0'
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_out,
      R => '0'
    );
\sig_strb_reg_out[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(0),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(0),
      O => sig_strb_skid_mux_out(0)
    );
\sig_strb_reg_out[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(10),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(10),
      O => sig_strb_skid_mux_out(10)
    );
\sig_strb_reg_out[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(11),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(11),
      O => sig_strb_skid_mux_out(11)
    );
\sig_strb_reg_out[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(12),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(12),
      O => sig_strb_skid_mux_out(12)
    );
\sig_strb_reg_out[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(13),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(13),
      O => sig_strb_skid_mux_out(13)
    );
\sig_strb_reg_out[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(14),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(14),
      O => sig_strb_skid_mux_out(14)
    );
\sig_strb_reg_out[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(15),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(15),
      O => sig_strb_skid_mux_out(15)
    );
\sig_strb_reg_out[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(1),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(1),
      O => sig_strb_skid_mux_out(1)
    );
\sig_strb_reg_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(2),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(2),
      O => sig_strb_skid_mux_out(2)
    );
\sig_strb_reg_out[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(3),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(3),
      O => sig_strb_skid_mux_out(3)
    );
\sig_strb_reg_out[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(4),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(4),
      O => sig_strb_skid_mux_out(4)
    );
\sig_strb_reg_out[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(5),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(5),
      O => sig_strb_skid_mux_out(5)
    );
\sig_strb_reg_out[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(6),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(6),
      O => sig_strb_skid_mux_out(6)
    );
\sig_strb_reg_out[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(7),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(7),
      O => sig_strb_skid_mux_out(7)
    );
\sig_strb_reg_out[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(8),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(8),
      O => sig_strb_skid_mux_out(8)
    );
\sig_strb_reg_out[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(9),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(9),
      O => sig_strb_skid_mux_out(9)
    );
\sig_strb_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(0),
      Q => \sig_strb_reg_out_reg[15]_0\(0),
      R => SR(0)
    );
\sig_strb_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(10),
      Q => \sig_strb_reg_out_reg[15]_0\(10),
      R => SR(0)
    );
\sig_strb_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(11),
      Q => \sig_strb_reg_out_reg[15]_0\(11),
      R => SR(0)
    );
\sig_strb_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(12),
      Q => \sig_strb_reg_out_reg[15]_0\(12),
      R => SR(0)
    );
\sig_strb_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(13),
      Q => \sig_strb_reg_out_reg[15]_0\(13),
      R => SR(0)
    );
\sig_strb_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(14),
      Q => \sig_strb_reg_out_reg[15]_0\(14),
      R => SR(0)
    );
\sig_strb_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(15),
      Q => \sig_strb_reg_out_reg[15]_0\(15),
      R => SR(0)
    );
\sig_strb_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(1),
      Q => \sig_strb_reg_out_reg[15]_0\(1),
      R => SR(0)
    );
\sig_strb_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(2),
      Q => \sig_strb_reg_out_reg[15]_0\(2),
      R => SR(0)
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(3),
      Q => \sig_strb_reg_out_reg[15]_0\(3),
      R => SR(0)
    );
\sig_strb_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(4),
      Q => \sig_strb_reg_out_reg[15]_0\(4),
      R => SR(0)
    );
\sig_strb_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(5),
      Q => \sig_strb_reg_out_reg[15]_0\(5),
      R => SR(0)
    );
\sig_strb_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(6),
      Q => \sig_strb_reg_out_reg[15]_0\(6),
      R => SR(0)
    );
\sig_strb_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(7),
      Q => \sig_strb_reg_out_reg[15]_0\(7),
      R => SR(0)
    );
\sig_strb_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(8),
      Q => \sig_strb_reg_out_reg[15]_0\(8),
      R => SR(0)
    );
\sig_strb_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(9),
      Q => \sig_strb_reg_out_reg[15]_0\(9),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(0),
      Q => sig_strb_skid_reg(0),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(10),
      Q => sig_strb_skid_reg(10),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(11),
      Q => sig_strb_skid_reg(11),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(12),
      Q => sig_strb_skid_reg(12),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(13),
      Q => sig_strb_skid_reg(13),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(14),
      Q => sig_strb_skid_reg(14),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(15),
      Q => sig_strb_skid_reg(15),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(1),
      Q => sig_strb_skid_reg(1),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(2),
      Q => sig_strb_skid_reg(2),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(3),
      Q => sig_strb_skid_reg(3),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(4),
      Q => sig_strb_skid_reg(4),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(5),
      Q => sig_strb_skid_reg(5),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(6),
      Q => sig_strb_skid_reg(6),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(7),
      Q => sig_strb_skid_reg(7),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(8),
      Q => sig_strb_skid_reg(8),
      R => SR(0)
    );
\sig_strb_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(9),
      Q => sig_strb_skid_reg(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_srl_fifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FIFO_Full_reg_0 : out STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 53 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    FIFO_Full_reg_1 : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_srl_fifo : entity is "srl_fifo";
end ps_axi_datamover_1_0_srl_fifo;

architecture STRUCTURE of ps_axi_datamover_1_0_srl_fifo is
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal fifo_full_p1 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][0]_srl4 ";
  attribute srl_bus_name of \data_reg[3][10]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][10]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][10]_srl4 ";
  attribute srl_bus_name of \data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][11]_srl4 ";
  attribute srl_bus_name of \data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][12]_srl4 ";
  attribute srl_bus_name of \data_reg[3][13]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][13]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][13]_srl4 ";
  attribute srl_bus_name of \data_reg[3][14]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][14]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][14]_srl4 ";
  attribute srl_bus_name of \data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][15]_srl4 ";
  attribute srl_bus_name of \data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][16]_srl4 ";
  attribute srl_bus_name of \data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][17]_srl4 ";
  attribute srl_bus_name of \data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][18]_srl4 ";
  attribute srl_bus_name of \data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][19]_srl4 ";
  attribute srl_bus_name of \data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][1]_srl4 ";
  attribute srl_bus_name of \data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][20]_srl4 ";
  attribute srl_bus_name of \data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][21]_srl4 ";
  attribute srl_bus_name of \data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][22]_srl4 ";
  attribute srl_bus_name of \data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][23]_srl4 ";
  attribute srl_bus_name of \data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][24]_srl4 ";
  attribute srl_bus_name of \data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][25]_srl4 ";
  attribute srl_bus_name of \data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][26]_srl4 ";
  attribute srl_bus_name of \data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][27]_srl4 ";
  attribute srl_bus_name of \data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][28]_srl4 ";
  attribute srl_bus_name of \data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][29]_srl4 ";
  attribute srl_bus_name of \data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][2]_srl4 ";
  attribute srl_bus_name of \data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][30]_srl4 ";
  attribute srl_bus_name of \data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][31]_srl4 ";
  attribute srl_bus_name of \data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][32]_srl4 ";
  attribute srl_bus_name of \data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][33]_srl4 ";
  attribute srl_bus_name of \data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][34]_srl4 ";
  attribute srl_bus_name of \data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][35]_srl4 ";
  attribute srl_bus_name of \data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][37]_srl4 ";
  attribute srl_bus_name of \data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][3]_srl4 ";
  attribute srl_bus_name of \data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][44]_srl4 ";
  attribute srl_bus_name of \data_reg[3][4]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][4]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][4]_srl4 ";
  attribute srl_bus_name of \data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][52]_srl4 ";
  attribute srl_bus_name of \data_reg[3][53]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][53]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][53]_srl4 ";
  attribute srl_bus_name of \data_reg[3][54]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][54]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][54]_srl4 ";
  attribute srl_bus_name of \data_reg[3][55]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][55]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][55]_srl4 ";
  attribute srl_bus_name of \data_reg[3][56]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][56]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][56]_srl4 ";
  attribute srl_bus_name of \data_reg[3][57]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][57]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][57]_srl4 ";
  attribute srl_bus_name of \data_reg[3][58]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][58]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][58]_srl4 ";
  attribute srl_bus_name of \data_reg[3][59]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][59]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][59]_srl4 ";
  attribute srl_bus_name of \data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][5]_srl4 ";
  attribute srl_bus_name of \data_reg[3][60]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][60]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][60]_srl4 ";
  attribute srl_bus_name of \data_reg[3][61]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][61]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][61]_srl4 ";
  attribute srl_bus_name of \data_reg[3][62]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][62]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][62]_srl4 ";
  attribute srl_bus_name of \data_reg[3][63]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][63]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][63]_srl4 ";
  attribute srl_bus_name of \data_reg[3][64]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][64]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][64]_srl4 ";
  attribute srl_bus_name of \data_reg[3][65]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][65]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][65]_srl4 ";
  attribute srl_bus_name of \data_reg[3][66]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][66]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][66]_srl4 ";
  attribute srl_bus_name of \data_reg[3][67]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][67]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][67]_srl4 ";
  attribute srl_bus_name of \data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][6]_srl4 ";
  attribute srl_bus_name of \data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][7]_srl4 ";
  attribute srl_bus_name of \data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][8]_srl4 ";
  attribute srl_bus_name of \data_reg[3][9]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][9]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][9]_srl4 ";
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
FIFO_Full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000220"
    )
        port map (
      I0 => addr_i(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^fifo_full_reg_0\,
      I4 => FIFO_Full_reg_1,
      O => fifo_full_p1
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => FIFO_Full_reg_n_0,
      R => SS(0)
    );
\addr_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6C6C6C69CC6C6C6"
    )
        port map (
      I0 => FIFO_Full_reg_1,
      I1 => addr_i(1),
      I2 => \^q\(0),
      I3 => s_axis_s2mm_cmd_tvalid,
      I4 => sig_inhibit_rdy_n,
      I5 => FIFO_Full_reg_n_0,
      O => addr_i_p1(1)
    );
\addr_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAABA"
    )
        port map (
      I0 => \^q\(1),
      I1 => addr_i(1),
      I2 => FIFO_Full_reg_1,
      I3 => \^fifo_full_reg_0\,
      I4 => \^q\(0),
      O => addr_i_p1(2)
    );
\addr_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      S => SS(0)
    );
\addr_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => addr_i(1),
      S => SS(0)
    );
\addr_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(1),
      S => SS(0)
    );
\data_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(53),
      Q => \out\(53)
    );
\data_reg[3][10]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(43),
      Q => \out\(43)
    );
\data_reg[3][11]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(42),
      Q => \out\(42)
    );
\data_reg[3][12]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(41),
      Q => \out\(41)
    );
\data_reg[3][13]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(40),
      Q => \out\(40)
    );
\data_reg[3][14]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(39),
      Q => \out\(39)
    );
\data_reg[3][15]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(38),
      Q => \out\(38)
    );
\data_reg[3][16]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(37),
      Q => \out\(37)
    );
\data_reg[3][17]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(36),
      Q => \out\(36)
    );
\data_reg[3][18]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(35),
      Q => \out\(35)
    );
\data_reg[3][19]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(34),
      Q => \out\(34)
    );
\data_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(52),
      Q => \out\(52)
    );
\data_reg[3][20]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(33),
      Q => \out\(33)
    );
\data_reg[3][21]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(32),
      Q => \out\(32)
    );
\data_reg[3][22]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(31),
      Q => \out\(31)
    );
\data_reg[3][23]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(30),
      Q => \out\(30)
    );
\data_reg[3][24]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(29),
      Q => \out\(29)
    );
\data_reg[3][25]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(28),
      Q => \out\(28)
    );
\data_reg[3][26]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(27),
      Q => \out\(27)
    );
\data_reg[3][27]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(26),
      Q => \out\(26)
    );
\data_reg[3][28]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(25),
      Q => \out\(25)
    );
\data_reg[3][29]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(24),
      Q => \out\(24)
    );
\data_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(51),
      Q => \out\(51)
    );
\data_reg[3][30]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(23),
      Q => \out\(23)
    );
\data_reg[3][31]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(22),
      Q => \out\(22)
    );
\data_reg[3][32]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(21),
      Q => \out\(21)
    );
\data_reg[3][33]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(20),
      Q => \out\(20)
    );
\data_reg[3][34]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(19),
      Q => \out\(19)
    );
\data_reg[3][35]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(18),
      Q => \out\(18)
    );
\data_reg[3][37]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(17),
      Q => \out\(17)
    );
\data_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(50),
      Q => \out\(50)
    );
\data_reg[3][44]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(16),
      Q => \out\(16)
    );
\data_reg[3][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(49),
      Q => \out\(49)
    );
\data_reg[3][52]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(15),
      Q => \out\(15)
    );
\data_reg[3][53]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(14),
      Q => \out\(14)
    );
\data_reg[3][54]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(13),
      Q => \out\(13)
    );
\data_reg[3][55]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(12),
      Q => \out\(12)
    );
\data_reg[3][56]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(11),
      Q => \out\(11)
    );
\data_reg[3][57]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(10),
      Q => \out\(10)
    );
\data_reg[3][58]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(9),
      Q => \out\(9)
    );
\data_reg[3][59]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(8),
      Q => \out\(8)
    );
\data_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(48),
      Q => \out\(48)
    );
\data_reg[3][60]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(7),
      Q => \out\(7)
    );
\data_reg[3][61]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(6),
      Q => \out\(6)
    );
\data_reg[3][62]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(5),
      Q => \out\(5)
    );
\data_reg[3][63]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(4),
      Q => \out\(4)
    );
\data_reg[3][64]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(3),
      Q => \out\(3)
    );
\data_reg[3][65]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(2),
      Q => \out\(2)
    );
\data_reg[3][66]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(1),
      Q => \out\(1)
    );
\data_reg[3][67]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(0),
      Q => \out\(0)
    );
\data_reg[3][67]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FIFO_Full_reg_n_0,
      I1 => sig_inhibit_rdy_n,
      I2 => s_axis_s2mm_cmd_tvalid,
      O => \^fifo_full_reg_0\
    );
\data_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(47),
      Q => \out\(47)
    );
\data_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(46),
      Q => \out\(46)
    );
\data_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(45),
      Q => \out\(45)
    );
\data_reg[3][9]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg_0\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(44),
      Q => \out\(44)
    );
s_axis_s2mm_cmd_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      O => s_axis_s2mm_cmd_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_srl_fifo__parameterized0\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_coelsc_tag_reg0 : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    \addr_i_reg[0]_0\ : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_srl_fifo__parameterized0\ : entity is "srl_fifo";
end \ps_axi_datamover_1_0_srl_fifo__parameterized0\;

architecture STRUCTURE of \ps_axi_datamover_1_0_srl_fifo__parameterized0\ is
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal \USE_SRL_FIFO.sig_wr_fifo\ : STD_LOGIC;
  signal addr_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_Full_i_1__1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \addr_i[1]_i_1__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \addr_i[2]_i_1__0\ : label is "soft_lutpair75";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][0]_srl4 ";
  attribute srl_bus_name of \data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][1]_srl4 ";
  attribute srl_bus_name of \data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][2]_srl4 ";
  attribute srl_bus_name of \data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][3]_srl4 ";
  attribute srl_bus_name of \data_reg[3][4]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][4]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][4]_srl4 ";
  attribute srl_bus_name of \data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][5]_srl4 ";
  attribute srl_bus_name of \data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][6]_srl4 ";
  attribute srl_bus_name of \data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][7]_srl4 ";
  attribute SOFT_HLUTNM of m_axis_s2mm_sts_tvalid_INST_0 : label is "soft_lutpair76";
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
\FIFO_Full_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41100000"
    )
        port map (
      I0 => \addr_i_reg_n_0_[2]\,
      I1 => m_axis_s2mm_sts_tready,
      I2 => addr_i(0),
      I3 => \USE_SRL_FIFO.sig_wr_fifo\,
      I4 => addr_i(1),
      O => fifo_full_p1
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => SS(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \addr_i_reg[0]_0\,
      I2 => sig_wsc2stat_status_valid,
      I3 => sig_mmap_rst_reg_n,
      O => sig_coelsc_tag_reg0
    );
\addr_i[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F708F70808F7F708"
    )
        port map (
      I0 => sig_wsc2stat_status_valid,
      I1 => \addr_i_reg[0]_0\,
      I2 => \^fifo_full_reg_0\,
      I3 => addr_i(0),
      I4 => m_axis_s2mm_sts_tready,
      I5 => \addr_i_reg_n_0_[2]\,
      O => addr_i_p1(0)
    );
\addr_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C6CC96C"
    )
        port map (
      I0 => \USE_SRL_FIFO.sig_wr_fifo\,
      I1 => addr_i(1),
      I2 => addr_i(0),
      I3 => m_axis_s2mm_sts_tready,
      I4 => \addr_i_reg_n_0_[2]\,
      O => addr_i_p1(1)
    );
\addr_i[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1AAAAAAE"
    )
        port map (
      I0 => \addr_i_reg_n_0_[2]\,
      I1 => m_axis_s2mm_sts_tready,
      I2 => addr_i(0),
      I3 => addr_i(1),
      I4 => \USE_SRL_FIFO.sig_wr_fifo\,
      O => addr_i_p1(2)
    );
\addr_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => addr_i(0),
      S => SS(0)
    );
\addr_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => addr_i(1),
      S => SS(0)
    );
\addr_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \addr_i_reg_n_0_[2]\,
      S => SS(0)
    );
\data_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(0),
      Q => m_axis_s2mm_sts_tdata(7)
    );
\data_reg[3][0]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_wsc2stat_status_valid,
      I1 => \addr_i_reg[0]_0\,
      I2 => \^fifo_full_reg_0\,
      O => \USE_SRL_FIFO.sig_wr_fifo\
    );
\data_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(1),
      Q => m_axis_s2mm_sts_tdata(6)
    );
\data_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(2),
      Q => m_axis_s2mm_sts_tdata(5)
    );
\data_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(3),
      Q => m_axis_s2mm_sts_tdata(4)
    );
\data_reg[3][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(4),
      Q => m_axis_s2mm_sts_tdata(3)
    );
\data_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(5),
      Q => m_axis_s2mm_sts_tdata(2)
    );
\data_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(6),
      Q => m_axis_s2mm_sts_tdata(1)
    );
\data_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(7),
      Q => m_axis_s2mm_sts_tdata(0)
    );
m_axis_s2mm_sts_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_i_reg_n_0_[2]\,
      O => m_axis_s2mm_sts_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_srl_fifo__parameterized1\ is
  port (
    m_axi_s2mm_bready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_coelsc_decerr_reg0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_coelsc_slverr_reg0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    \addr_i_reg[0]_0\ : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \addr_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_srl_fifo__parameterized1\ : entity is "srl_fifo";
end \ps_axi_datamover_1_0_srl_fifo__parameterized1\;

architecture STRUCTURE of \ps_axi_datamover_1_0_srl_fifo__parameterized1\ is
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \USE_SRL_FIFO.sig_wr_fifo\ : STD_LOGIC;
  signal addr_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \addr_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \addr_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \addr_i[3]_i_4_n_0\ : STD_LOGIC;
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_full_p1 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_wresp_sfifo_out : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \addr_i[0]_i_1__2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \addr_i[1]_i_2\ : label is "soft_lutpair89";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_reg[5][0]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name : string;
  attribute srl_name of \data_reg[5][0]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][0]_srl6 ";
  attribute srl_bus_name of \data_reg[5][1]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name of \data_reg[5][1]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][1]_srl6 ";
begin
  Q(0) <= \^q\(0);
  \out\(0) <= \^out\(0);
\FIFO_Full_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011400400000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \addr_i[3]_i_4_n_0\,
      I2 => \addr_i[3]_i_3_n_0\,
      I3 => addr_i(0),
      I4 => addr_i(1),
      I5 => addr_i(2),
      O => fifo_full_p1
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => FIFO_Full_reg_n_0,
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => sig_wresp_sfifo_out(0),
      I1 => \^out\(0),
      I2 => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\(0),
      I3 => \in\(0),
      O => sig_coelsc_decerr_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F02"
    )
        port map (
      I0 => \^out\(0),
      I1 => sig_wresp_sfifo_out(0),
      I2 => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\(0),
      I3 => \in\(1),
      O => sig_coelsc_slverr_reg0
    );
\addr_i[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF2020DF"
    )
        port map (
      I0 => m_axi_s2mm_bvalid,
      I1 => FIFO_Full_reg_n_0,
      I2 => sig_inhibit_rdy_n,
      I3 => \addr_i_reg[0]_0\,
      I4 => addr_i(0),
      O => addr_i_p1(0)
    );
\addr_i[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEFFF755510008"
    )
        port map (
      I0 => \addr_i[1]_i_2_n_0\,
      I1 => sig_coelsc_reg_empty,
      I2 => \addr_i_reg[1]_0\(0),
      I3 => \^q\(0),
      I4 => addr_i(0),
      I5 => addr_i(1),
      O => addr_i_p1(1)
    );
\addr_i[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      I2 => m_axi_s2mm_bvalid,
      O => \addr_i[1]_i_2_n_0\
    );
\addr_i[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AA969"
    )
        port map (
      I0 => addr_i(2),
      I1 => addr_i(1),
      I2 => addr_i(0),
      I3 => \addr_i[3]_i_3_n_0\,
      I4 => \addr_i[3]_i_4_n_0\,
      O => addr_i_p1(2)
    );
\addr_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99AAAAAAAAAAAAAF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \addr_i[3]_i_3_n_0\,
      I2 => \addr_i[3]_i_4_n_0\,
      I3 => addr_i(2),
      I4 => addr_i(1),
      I5 => addr_i(0),
      O => addr_i_p1(3)
    );
\addr_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFFFDFDFDFDF"
    )
        port map (
      I0 => m_axi_s2mm_bvalid,
      I1 => FIFO_Full_reg_n_0,
      I2 => sig_inhibit_rdy_n,
      I3 => \^q\(0),
      I4 => \addr_i_reg[1]_0\(0),
      I5 => sig_coelsc_reg_empty,
      O => \addr_i[3]_i_3_n_0\
    );
\addr_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFEFEFEFEFEF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \addr_i_reg[1]_0\(0),
      I2 => sig_coelsc_reg_empty,
      I3 => m_axi_s2mm_bvalid,
      I4 => FIFO_Full_reg_n_0,
      I5 => sig_inhibit_rdy_n,
      O => \addr_i[3]_i_4_n_0\
    );
\addr_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => addr_i(0),
      S => SR(0)
    );
\addr_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => addr_i(1),
      S => SR(0)
    );
\addr_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => addr_i(2),
      S => SR(0)
    );
\addr_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => \^q\(0),
      S => SR(0)
    );
\data_reg[5][0]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => m_axi_s2mm_bresp(1),
      Q => \^out\(0)
    );
\data_reg[5][1]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => m_axi_s2mm_bresp(0),
      Q => sig_wresp_sfifo_out(0)
    );
\data_reg[5][1]_srl6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axi_s2mm_bvalid,
      I1 => FIFO_Full_reg_n_0,
      I2 => sig_inhibit_rdy_n,
      O => \USE_SRL_FIFO.sig_wr_fifo\
    );
m_axi_s2mm_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      O => m_axi_s2mm_bready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_srl_fifo__parameterized2\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \addr_i_reg[3]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    sig_coelsc_interr_reg0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    \addr_i_reg[0]_0\ : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    \sig_wdc_statcnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_coelsc_reg_empty : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_SRL_FIFO.sig_wr_fifo\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_srl_fifo__parameterized2\ : entity is "srl_fifo";
end \ps_axi_datamover_1_0_srl_fifo__parameterized2\;

architecture STRUCTURE of \ps_axi_datamover_1_0_srl_fifo__parameterized2\ is
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \addr_i[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \addr_i[3]_i_3__0_n_0\ : STD_LOGIC;
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^addr_i_reg[3]_0\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_i[1]_i_1__3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \addr_i[2]_i_1__2\ : label is "soft_lutpair88";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_reg[5][0]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name : string;
  attribute srl_name of \data_reg[5][0]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][0]_srl6 ";
  attribute srl_bus_name of \data_reg[5][1]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name of \data_reg[5][1]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][1]_srl6 ";
  attribute srl_bus_name of \data_reg[5][2]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name of \data_reg[5][2]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][2]_srl6 ";
  attribute srl_bus_name of \data_reg[5][3]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name of \data_reg[5][3]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][3]_srl6 ";
  attribute srl_bus_name of \data_reg[5][4]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name of \data_reg[5][4]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][4]_srl6 ";
  attribute srl_bus_name of \data_reg[5][5]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name of \data_reg[5][5]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][5]_srl6 ";
  attribute srl_bus_name of \data_reg[5][6]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] ";
  attribute srl_name of \data_reg[5][6]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][6]_srl6 ";
  attribute SOFT_HLUTNM of \sig_wdc_statcnt[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sig_wdc_statcnt[3]_i_2\ : label is "soft_lutpair87";
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  Q(0) <= \^q\(0);
  \addr_i_reg[3]_0\ <= \^addr_i_reg[3]_0\;
  \out\(5 downto 0) <= \^out\(5 downto 0);
\FIFO_Full_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0050040100000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \addr_i[3]_i_3__0_n_0\,
      I2 => \addr_i[3]_i_2__0_n_0\,
      I3 => addr_i(0),
      I4 => addr_i(1),
      I5 => addr_i(2),
      O => fifo_full_p1
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(1),
      I1 => \^out\(1),
      I2 => \in\(0),
      O => sig_coelsc_interr_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \in\(2),
      I1 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\(0),
      I2 => \in\(0),
      I3 => \in\(1),
      I4 => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(1),
      I5 => \^out\(1),
      O => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EF0000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(1),
      I2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      I3 => \^q\(0),
      I4 => sig_coelsc_reg_empty,
      O => \^addr_i_reg[3]_0\
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => p_0_in
    );
\addr_i[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666966666"
    )
        port map (
      I0 => addr_i(0),
      I1 => \^addr_i_reg[3]_0\,
      I2 => sig_push_to_wsc,
      I3 => \^fifo_full_reg_0\,
      I4 => \addr_i_reg[0]_0\,
      I5 => sig_tlast_err_stop,
      O => addr_i_p1(0)
    );
\addr_i[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => sig_coelsc_reg_empty,
      I1 => \^q\(0),
      I2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      O => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\
    );
\addr_i[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D12E"
    )
        port map (
      I0 => \addr_i[3]_i_2__0_n_0\,
      I1 => addr_i(0),
      I2 => \addr_i[3]_i_3__0_n_0\,
      I3 => addr_i(1),
      O => addr_i_p1(1)
    );
\addr_i[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE71018"
    )
        port map (
      I0 => addr_i(1),
      I1 => addr_i(0),
      I2 => \addr_i[3]_i_2__0_n_0\,
      I3 => \addr_i[3]_i_3__0_n_0\,
      I4 => addr_i(2),
      O => addr_i_p1(2)
    );
\addr_i[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFE7F01000180"
    )
        port map (
      I0 => addr_i(2),
      I1 => addr_i(1),
      I2 => addr_i(0),
      I3 => \addr_i[3]_i_2__0_n_0\,
      I4 => \addr_i[3]_i_3__0_n_0\,
      I5 => \^q\(0),
      O => addr_i_p1(3)
    );
\addr_i[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => sig_tlast_err_stop,
      I1 => \addr_i_reg[0]_0\,
      I2 => \^fifo_full_reg_0\,
      I3 => sig_push_to_wsc,
      I4 => \^addr_i_reg[3]_0\,
      O => \addr_i[3]_i_2__0_n_0\
    );
\addr_i[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => sig_tlast_err_stop,
      I1 => \addr_i_reg[0]_0\,
      I2 => \^fifo_full_reg_0\,
      I3 => sig_push_to_wsc,
      I4 => \^addr_i_reg[3]_0\,
      O => \addr_i[3]_i_3__0_n_0\
    );
\addr_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => addr_i(0),
      S => SR(0)
    );
\addr_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => addr_i(1),
      S => SR(0)
    );
\addr_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => addr_i(2),
      S => SR(0)
    );
\addr_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => \^q\(0),
      S => SR(0)
    );
\data_reg[5][0]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0),
      Q => \^out\(5)
    );
\data_reg[5][1]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(1),
      Q => \^out\(4)
    );
\data_reg[5][2]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(2),
      Q => \^out\(3)
    );
\data_reg[5][3]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(3),
      Q => \^out\(2)
    );
\data_reg[5][4]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(4),
      Q => \^out\(1)
    );
\data_reg[5][5]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(5),
      Q => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(1)
    );
\data_reg[5][6]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => addr_i(2),
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(6),
      Q => \^out\(0)
    );
\sig_wdc_statcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C2C33C3C"
    )
        port map (
      I0 => \sig_wdc_statcnt_reg[3]\(3),
      I1 => \sig_wdc_statcnt_reg[3]\(0),
      I2 => \addr_i[3]_i_3__0_n_0\,
      I3 => \sig_wdc_statcnt_reg[3]\(2),
      I4 => \sig_wdc_statcnt_reg[3]\(1),
      O => D(0)
    );
\sig_wdc_statcnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E178"
    )
        port map (
      I0 => \sig_wdc_statcnt_reg[3]\(1),
      I1 => \sig_wdc_statcnt_reg[3]\(0),
      I2 => \sig_wdc_statcnt_reg[3]\(2),
      I3 => \addr_i[3]_i_3__0_n_0\,
      O => D(1)
    );
\sig_wdc_statcnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFF0FFF0FEF07"
    )
        port map (
      I0 => \sig_wdc_statcnt_reg[3]\(1),
      I1 => \sig_wdc_statcnt_reg[3]\(2),
      I2 => \addr_i[3]_i_3__0_n_0\,
      I3 => \addr_i[3]_i_2__0_n_0\,
      I4 => \sig_wdc_statcnt_reg[3]\(0),
      I5 => \sig_wdc_statcnt_reg[3]\(3),
      O => E(0)
    );
\sig_wdc_statcnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE7F0180"
    )
        port map (
      I0 => \sig_wdc_statcnt_reg[3]\(1),
      I1 => \sig_wdc_statcnt_reg[3]\(0),
      I2 => \sig_wdc_statcnt_reg[3]\(2),
      I3 => \addr_i[3]_i_3__0_n_0\,
      I4 => \sig_wdc_statcnt_reg[3]\(3),
      O => D(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_srl_fifo__parameterized3\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    \addr_i_reg[2]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 40 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    \addr_i_reg[0]_0\ : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_srl_fifo__parameterized3\ : entity is "srl_fifo";
end \ps_axi_datamover_1_0_srl_fifo__parameterized3\;

architecture STRUCTURE of \ps_axi_datamover_1_0_srl_fifo__parameterized3\ is
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal \USE_SRL_FIFO.sig_wr_fifo\ : STD_LOGIC;
  signal addr_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 40 downto 0 );
  signal \^sig_push_addr_reg1_out\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][11]_srl4 ";
  attribute srl_bus_name of \data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][12]_srl4 ";
  attribute srl_bus_name of \data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][17]_srl4 ";
  attribute srl_bus_name of \data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][18]_srl4 ";
  attribute srl_bus_name of \data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][19]_srl4 ";
  attribute srl_bus_name of \data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][20]_srl4 ";
  attribute srl_bus_name of \data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][21]_srl4 ";
  attribute srl_bus_name of \data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][22]_srl4 ";
  attribute srl_bus_name of \data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][23]_srl4 ";
  attribute srl_bus_name of \data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][24]_srl4 ";
  attribute srl_bus_name of \data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][25]_srl4 ";
  attribute srl_bus_name of \data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][26]_srl4 ";
  attribute srl_bus_name of \data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][27]_srl4 ";
  attribute srl_bus_name of \data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][28]_srl4 ";
  attribute srl_bus_name of \data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][29]_srl4 ";
  attribute srl_bus_name of \data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][30]_srl4 ";
  attribute srl_bus_name of \data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][31]_srl4 ";
  attribute srl_bus_name of \data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][32]_srl4 ";
  attribute srl_bus_name of \data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][33]_srl4 ";
  attribute srl_bus_name of \data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][34]_srl4 ";
  attribute srl_bus_name of \data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][35]_srl4 ";
  attribute srl_bus_name of \data_reg[3][36]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][36]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][36]_srl4 ";
  attribute srl_bus_name of \data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][37]_srl4 ";
  attribute srl_bus_name of \data_reg[3][38]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][38]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][38]_srl4 ";
  attribute srl_bus_name of \data_reg[3][39]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][39]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][39]_srl4 ";
  attribute srl_bus_name of \data_reg[3][40]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][40]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][40]_srl4 ";
  attribute srl_bus_name of \data_reg[3][41]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][41]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][41]_srl4 ";
  attribute srl_bus_name of \data_reg[3][42]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][42]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][42]_srl4 ";
  attribute srl_bus_name of \data_reg[3][43]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][43]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][43]_srl4 ";
  attribute srl_bus_name of \data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][44]_srl4 ";
  attribute srl_bus_name of \data_reg[3][45]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][45]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][45]_srl4 ";
  attribute srl_bus_name of \data_reg[3][46]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][46]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][46]_srl4 ";
  attribute srl_bus_name of \data_reg[3][47]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][47]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][47]_srl4 ";
  attribute srl_bus_name of \data_reg[3][48]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][48]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][48]_srl4 ";
  attribute srl_bus_name of \data_reg[3][49]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][49]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][49]_srl4 ";
  attribute srl_bus_name of \data_reg[3][50]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][50]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][50]_srl4 ";
  attribute srl_bus_name of \data_reg[3][51]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][51]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][51]_srl4 ";
  attribute srl_bus_name of \data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][52]_srl4 ";
  attribute srl_bus_name of \data_reg[3][53]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][53]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][53]_srl4 ";
  attribute srl_bus_name of \data_reg[3][54]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][54]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][54]_srl4 ";
  attribute srl_bus_name of \data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][8]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_next_addr_reg[31]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of sig_posted_to_axi_2_i_1 : label is "soft_lutpair74";
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  \out\(40 downto 0) <= \^out\(40 downto 0);
  sig_push_addr_reg1_out <= \^sig_push_addr_reg1_out\;
\FIFO_Full_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002D00D000"
    )
        port map (
      I0 => sig_addr_reg_empty,
      I1 => sig_data2all_tlast_error,
      I2 => \USE_SRL_FIFO.sig_wr_fifo\,
      I3 => addr_i(1),
      I4 => addr_i(0),
      I5 => \addr_i_reg_n_0_[2]\,
      O => fifo_full_p1
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => SR(0)
    );
\addr_i[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40BFBF40"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \addr_i_reg[0]_0\,
      I2 => sig_mstr2addr_cmd_valid,
      I3 => addr_i(0),
      I4 => \^sig_push_addr_reg1_out\,
      O => addr_i_p1(0)
    );
\addr_i[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAFF7F55150080"
    )
        port map (
      I0 => addr_i(0),
      I1 => sig_mstr2addr_cmd_valid,
      I2 => \addr_i_reg[0]_0\,
      I3 => \^fifo_full_reg_0\,
      I4 => \^sig_push_addr_reg1_out\,
      I5 => addr_i(1),
      O => addr_i_p1(1)
    );
\addr_i[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA2AAB6AAA6AAA"
    )
        port map (
      I0 => \addr_i_reg_n_0_[2]\,
      I1 => addr_i(0),
      I2 => addr_i(1),
      I3 => \USE_SRL_FIFO.sig_wr_fifo\,
      I4 => sig_data2all_tlast_error,
      I5 => sig_addr_reg_empty,
      O => addr_i_p1(2)
    );
\addr_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => addr_i(0),
      S => SR(0)
    );
\addr_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => addr_i(1),
      S => SR(0)
    );
\addr_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \addr_i_reg_n_0_[2]\,
      S => SR(0)
    );
\data_reg[3][11]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(38),
      Q => \^out\(39)
    );
\data_reg[3][12]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => '1',
      Q => \^out\(38)
    );
\data_reg[3][17]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(37),
      Q => \^out\(37)
    );
\data_reg[3][18]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(36),
      Q => \^out\(36)
    );
\data_reg[3][19]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(35),
      Q => \^out\(35)
    );
\data_reg[3][20]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(34),
      Q => \^out\(34)
    );
\data_reg[3][21]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(33),
      Q => \^out\(33)
    );
\data_reg[3][22]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(32),
      Q => \^out\(32)
    );
\data_reg[3][23]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(31),
      Q => \^out\(31)
    );
\data_reg[3][24]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(30),
      Q => \^out\(30)
    );
\data_reg[3][25]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(29),
      Q => \^out\(29)
    );
\data_reg[3][26]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(28),
      Q => \^out\(28)
    );
\data_reg[3][27]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(27),
      Q => \^out\(27)
    );
\data_reg[3][28]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(26),
      Q => \^out\(26)
    );
\data_reg[3][29]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(25),
      Q => \^out\(25)
    );
\data_reg[3][30]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(24),
      Q => \^out\(24)
    );
\data_reg[3][31]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(23),
      Q => \^out\(23)
    );
\data_reg[3][32]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(22),
      Q => \^out\(22)
    );
\data_reg[3][33]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(21),
      Q => \^out\(21)
    );
\data_reg[3][34]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(20),
      Q => \^out\(20)
    );
\data_reg[3][35]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(19),
      Q => \^out\(19)
    );
\data_reg[3][36]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(18),
      Q => \^out\(18)
    );
\data_reg[3][37]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(17),
      Q => \^out\(17)
    );
\data_reg[3][38]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(16),
      Q => \^out\(16)
    );
\data_reg[3][39]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(15),
      Q => \^out\(15)
    );
\data_reg[3][40]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(14),
      Q => \^out\(14)
    );
\data_reg[3][41]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(13),
      Q => \^out\(13)
    );
\data_reg[3][42]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(12),
      Q => \^out\(12)
    );
\data_reg[3][43]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(11),
      Q => \^out\(11)
    );
\data_reg[3][44]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(10),
      Q => \^out\(10)
    );
\data_reg[3][45]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(9),
      Q => \^out\(9)
    );
\data_reg[3][46]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(8),
      Q => \^out\(8)
    );
\data_reg[3][47]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(7),
      Q => \^out\(7)
    );
\data_reg[3][48]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(6),
      Q => \^out\(6)
    );
\data_reg[3][49]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(5),
      Q => \^out\(5)
    );
\data_reg[3][50]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(4),
      Q => \^out\(4)
    );
\data_reg[3][51]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(3),
      Q => \^out\(3)
    );
\data_reg[3][52]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(2),
      Q => \^out\(2)
    );
\data_reg[3][53]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(1),
      Q => \^out\(1)
    );
\data_reg[3][54]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(0),
      Q => \^out\(0)
    );
\data_reg[3][54]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \addr_i_reg[0]_0\,
      I2 => sig_mstr2addr_cmd_valid,
      O => \USE_SRL_FIFO.sig_wr_fifo\
    );
\data_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \USE_SRL_FIFO.sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(39),
      Q => \^out\(40)
    );
sig_addr_valid_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(40),
      O => p_0_in
    );
\sig_next_addr_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sig_data2all_tlast_error,
      I1 => sig_addr_reg_empty,
      I2 => \addr_i_reg_n_0_[2]\,
      O => \^sig_push_addr_reg1_out\
    );
sig_posted_to_axi_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \addr_i_reg_n_0_[2]\,
      I1 => sig_addr_reg_empty,
      I2 => sig_data2all_tlast_error,
      I3 => sig_mmap_rst_reg_n,
      O => \addr_i_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_srl_fifo__parameterized4\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg : out STD_LOGIC;
    sig_last_dbeat_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_ld_new_cmd_reg_reg : out STD_LOGIC;
    sig_inhibit_rdy_n_reg : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg\ : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg_1 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    \sig_first_dbeat__0\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_dbeat_cntr_reg[6]\ : in STD_LOGIC;
    sig_ld_new_cmd_reg : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    \addr_i_reg[1]_0\ : in STD_LOGIC;
    sig_next_cmd_cmplt_reg_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[5]\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    sig_dqual_reg_empty_reg : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_wdc_status_going_full : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    sig_next_calc_error_reg_i_5_0 : in STD_LOGIC;
    sig_inhibit_rdy_n_1 : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_dqual_reg_empty_reg_0 : in STD_LOGIC;
    sig_dqual_reg_empty_reg_1 : in STD_LOGIC;
    sig_dqual_reg_empty_reg_2 : in STD_LOGIC;
    sig_dqual_reg_full : in STD_LOGIC;
    sig_last_mmap_dbeat_reg : in STD_LOGIC;
    sig_next_calc_error_reg_i_4_0 : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    sig_next_calc_error_reg_reg : in STD_LOGIC_VECTOR ( 45 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_srl_fifo__parameterized4\ : entity is "srl_fifo";
end \ps_axi_datamover_1_0_srl_fifo__parameterized4\;

architecture STRUCTURE of \ps_axi_datamover_1_0_srl_fifo__parameterized4\ is
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal \^gen_omit_indet_btt.sig_tlast_error_reg_reg\ : STD_LOGIC;
  signal addr_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal sig_cmd_fifo_data_out : STD_LOGIC_VECTOR ( 13 downto 8 );
  signal sig_first_dbeat_i_2_n_0 : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg\ : STD_LOGIC;
  signal sig_last_dbeat_i_2_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_4_n_0 : STD_LOGIC;
  signal \^sig_last_dbeat_reg\ : STD_LOGIC;
  signal sig_next_calc_error_reg_i_5_n_0 : STD_LOGIC;
  signal sig_next_calc_error_reg_i_6_n_0 : STD_LOGIC;
  signal sig_next_calc_error_reg_i_7_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][0]_srl4 ";
  attribute srl_bus_name of \data_reg[3][10]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][10]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][10]_srl4 ";
  attribute srl_bus_name of \data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][11]_srl4 ";
  attribute srl_bus_name of \data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][12]_srl4 ";
  attribute srl_bus_name of \data_reg[3][13]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][13]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][13]_srl4 ";
  attribute srl_bus_name of \data_reg[3][14]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][14]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][14]_srl4 ";
  attribute srl_bus_name of \data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][15]_srl4 ";
  attribute srl_bus_name of \data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][16]_srl4 ";
  attribute srl_bus_name of \data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][17]_srl4 ";
  attribute srl_bus_name of \data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][18]_srl4 ";
  attribute srl_bus_name of \data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][19]_srl4 ";
  attribute srl_bus_name of \data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][1]_srl4 ";
  attribute srl_bus_name of \data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][20]_srl4 ";
  attribute srl_bus_name of \data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][21]_srl4 ";
  attribute srl_bus_name of \data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][22]_srl4 ";
  attribute srl_bus_name of \data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][23]_srl4 ";
  attribute srl_bus_name of \data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][24]_srl4 ";
  attribute srl_bus_name of \data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][25]_srl4 ";
  attribute srl_bus_name of \data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][26]_srl4 ";
  attribute srl_bus_name of \data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][27]_srl4 ";
  attribute srl_bus_name of \data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][28]_srl4 ";
  attribute srl_bus_name of \data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][29]_srl4 ";
  attribute srl_bus_name of \data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][2]_srl4 ";
  attribute srl_bus_name of \data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][30]_srl4 ";
  attribute srl_bus_name of \data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][31]_srl4 ";
  attribute srl_bus_name of \data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][32]_srl4 ";
  attribute srl_bus_name of \data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][33]_srl4 ";
  attribute srl_bus_name of \data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][34]_srl4 ";
  attribute srl_bus_name of \data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][35]_srl4 ";
  attribute srl_bus_name of \data_reg[3][36]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][36]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][36]_srl4 ";
  attribute srl_bus_name of \data_reg[3][39]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][39]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][39]_srl4 ";
  attribute srl_bus_name of \data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][3]_srl4 ";
  attribute srl_bus_name of \data_reg[3][40]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][40]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][40]_srl4 ";
  attribute srl_bus_name of \data_reg[3][41]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][41]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][41]_srl4 ";
  attribute srl_bus_name of \data_reg[3][42]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][42]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][42]_srl4 ";
  attribute srl_bus_name of \data_reg[3][43]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][43]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][43]_srl4 ";
  attribute srl_bus_name of \data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][44]_srl4 ";
  attribute srl_bus_name of \data_reg[3][49]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][49]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][49]_srl4 ";
  attribute srl_bus_name of \data_reg[3][50]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][50]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][50]_srl4 ";
  attribute srl_bus_name of \data_reg[3][51]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][51]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][51]_srl4 ";
  attribute srl_bus_name of \data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][52]_srl4 ";
  attribute srl_bus_name of \data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][5]_srl4 ";
  attribute srl_bus_name of \data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][6]_srl4 ";
  attribute srl_bus_name of \data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][7]_srl4 ";
  attribute srl_bus_name of \data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][8]_srl4 ";
  attribute srl_bus_name of \data_reg[3][9]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] ";
  attribute srl_name of \data_reg[3][9]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[6]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_2\ : label is "soft_lutpair80";
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg\ <= \^gen_omit_indet_btt.sig_tlast_error_reg_reg\;
  sig_inhibit_rdy_n_reg <= \^sig_inhibit_rdy_n_reg\;
  sig_last_dbeat_reg <= \^sig_last_dbeat_reg\;
\FIFO_Full_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40140000"
    )
        port map (
      I0 => \addr_i_reg_n_0_[2]\,
      I1 => addr_i(0),
      I2 => \^sig_inhibit_rdy_n_reg\,
      I3 => \^sig_last_dbeat_reg\,
      I4 => addr_i(1),
      O => fifo_full_p1
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => SR(0)
    );
\addr_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \addr_i_reg[1]_0\,
      I1 => sig_mstr2data_cmd_valid,
      I2 => \^fifo_full_reg_0\,
      I3 => \^sig_last_dbeat_reg\,
      I4 => addr_i(0),
      O => addr_i_p1(0)
    );
\addr_i[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C69CC6C6C6C6C6C6"
    )
        port map (
      I0 => \^sig_last_dbeat_reg\,
      I1 => addr_i(1),
      I2 => addr_i(0),
      I3 => \^fifo_full_reg_0\,
      I4 => sig_mstr2data_cmd_valid,
      I5 => \addr_i_reg[1]_0\,
      O => addr_i_p1(1)
    );
\addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAB6AAA"
    )
        port map (
      I0 => \addr_i_reg_n_0_[2]\,
      I1 => \^sig_inhibit_rdy_n_reg\,
      I2 => addr_i(0),
      I3 => addr_i(1),
      I4 => \^sig_last_dbeat_reg\,
      O => addr_i_p1(2)
    );
\addr_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => addr_i(0),
      S => SR(0)
    );
\addr_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => addr_i(1),
      S => SR(0)
    );
\addr_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \addr_i_reg_n_0_[2]\,
      S => SR(0)
    );
\data_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(45),
      Q => \out\(39)
    );
\data_reg[3][10]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(36),
      Q => \out\(30)
    );
\data_reg[3][11]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(35),
      Q => \out\(29)
    );
\data_reg[3][12]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(34),
      Q => \out\(28)
    );
\data_reg[3][13]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(33),
      Q => \out\(27)
    );
\data_reg[3][14]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(32),
      Q => \out\(26)
    );
\data_reg[3][15]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(31),
      Q => \out\(25)
    );
\data_reg[3][16]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(30),
      Q => \out\(24)
    );
\data_reg[3][17]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(29),
      Q => \out\(23)
    );
\data_reg[3][18]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(28),
      Q => \out\(22)
    );
\data_reg[3][19]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(27),
      Q => \out\(21)
    );
\data_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(44),
      Q => \out\(38)
    );
\data_reg[3][20]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(26),
      Q => \out\(20)
    );
\data_reg[3][21]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(25),
      Q => \out\(19)
    );
\data_reg[3][22]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(24),
      Q => \out\(18)
    );
\data_reg[3][23]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(23),
      Q => \out\(17)
    );
\data_reg[3][24]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(22),
      Q => \out\(16)
    );
\data_reg[3][25]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(21),
      Q => \out\(15)
    );
\data_reg[3][26]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(20),
      Q => \out\(14)
    );
\data_reg[3][27]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(19),
      Q => \out\(13)
    );
\data_reg[3][28]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(18),
      Q => \out\(12)
    );
\data_reg[3][29]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(17),
      Q => \out\(11)
    );
\data_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(43),
      Q => \out\(37)
    );
\data_reg[3][30]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(16),
      Q => \out\(10)
    );
\data_reg[3][31]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(15),
      Q => \out\(9)
    );
\data_reg[3][32]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(14),
      Q => \out\(8)
    );
\data_reg[3][33]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(13),
      Q => \out\(7)
    );
\data_reg[3][34]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(12),
      Q => \out\(6)
    );
\data_reg[3][35]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(11),
      Q => \out\(5)
    );
\data_reg[3][36]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(10),
      Q => \out\(4)
    );
\data_reg[3][39]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(9),
      Q => sig_cmd_fifo_data_out(13)
    );
\data_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(42),
      Q => \out\(36)
    );
\data_reg[3][40]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(8),
      Q => sig_cmd_fifo_data_out(12)
    );
\data_reg[3][41]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(7),
      Q => sig_cmd_fifo_data_out(11)
    );
\data_reg[3][42]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(6),
      Q => sig_cmd_fifo_data_out(10)
    );
\data_reg[3][43]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(5),
      Q => sig_cmd_fifo_data_out(9)
    );
\data_reg[3][44]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(4),
      Q => sig_cmd_fifo_data_out(8)
    );
\data_reg[3][49]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(3),
      Q => \out\(3)
    );
\data_reg[3][50]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(2),
      Q => \out\(2)
    );
\data_reg[3][51]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(1),
      Q => \out\(1)
    );
\data_reg[3][52]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(0),
      Q => \out\(0)
    );
\data_reg[3][52]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \addr_i_reg[1]_0\,
      I1 => sig_mstr2data_cmd_valid,
      I2 => \^fifo_full_reg_0\,
      O => \^sig_inhibit_rdy_n_reg\
    );
\data_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(41),
      Q => \out\(35)
    );
\data_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(40),
      Q => \out\(34)
    );
\data_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(39),
      Q => \out\(33)
    );
\data_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(38),
      Q => \out\(32)
    );
\data_reg[3][9]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i(0),
      A1 => addr_i(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_inhibit_rdy_n_reg\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(37),
      Q => \out\(31)
    );
\sig_dbeat_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => sig_cmd_fifo_data_out(8),
      I1 => \^sig_last_dbeat_reg\,
      I2 => Q(0),
      O => D(0)
    );
\sig_dbeat_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^sig_last_dbeat_reg\,
      I3 => sig_cmd_fifo_data_out(9),
      O => D(1)
    );
\sig_dbeat_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^sig_last_dbeat_reg\,
      I4 => sig_cmd_fifo_data_out(10),
      O => D(2)
    );
\sig_dbeat_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA90000AAA9"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^sig_last_dbeat_reg\,
      I5 => sig_cmd_fifo_data_out(11),
      O => D(3)
    );
\sig_dbeat_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => Q(4),
      I1 => \sig_dbeat_cntr_reg[4]\,
      I2 => \^sig_last_dbeat_reg\,
      I3 => sig_cmd_fifo_data_out(12),
      O => D(4)
    );
\sig_dbeat_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => Q(5),
      I1 => \sig_dbeat_cntr_reg[5]\,
      I2 => \^sig_last_dbeat_reg\,
      I3 => sig_cmd_fifo_data_out(13),
      O => D(5)
    );
\sig_dbeat_cntr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^sig_last_dbeat_reg\,
      I1 => \sig_dbeat_cntr_reg[6]\,
      I2 => Q(6),
      O => D(6)
    );
\sig_dbeat_cntr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_last_dbeat_reg\,
      I1 => \sig_dbeat_cntr_reg[0]\,
      O => E(0)
    );
\sig_dbeat_cntr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \^sig_last_dbeat_reg\,
      I1 => Q(6),
      I2 => \sig_dbeat_cntr_reg[6]\,
      I3 => Q(7),
      O => D(7)
    );
sig_first_dbeat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88A08800"
    )
        port map (
      I0 => sig_mmap_rst_reg_n,
      I1 => sig_first_dbeat_i_2_n_0,
      I2 => \sig_first_dbeat__0\,
      I3 => \^sig_last_dbeat_reg\,
      I4 => \sig_dbeat_cntr_reg[0]\,
      O => sig_mmap_rst_reg_n_reg
    );
sig_first_dbeat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_cmd_fifo_data_out(11),
      I1 => sig_cmd_fifo_data_out(12),
      I2 => sig_cmd_fifo_data_out(9),
      I3 => sig_cmd_fifo_data_out(10),
      I4 => sig_cmd_fifo_data_out(13),
      I5 => sig_cmd_fifo_data_out(8),
      O => sig_first_dbeat_i_2_n_0
    );
sig_last_dbeat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFCAACCAA0CAACC"
    )
        port map (
      I0 => sig_last_dbeat_i_2_n_0,
      I1 => sig_last_dbeat_reg_0,
      I2 => sig_mmap_rst_reg_n,
      I3 => \^sig_last_dbeat_reg\,
      I4 => \sig_dbeat_cntr_reg[0]\,
      I5 => sig_dqual_reg_empty_reg,
      O => sig_mmap_rst_reg_n_reg_1
    );
sig_last_dbeat_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sig_last_dbeat_i_4_n_0,
      I1 => sig_mmap_rst_reg_n,
      I2 => sig_cmd_fifo_data_out(8),
      I3 => sig_cmd_fifo_data_out(9),
      O => sig_last_dbeat_i_2_n_0
    );
sig_last_dbeat_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_cmd_fifo_data_out(13),
      I1 => sig_cmd_fifo_data_out(12),
      I2 => sig_cmd_fifo_data_out(11),
      I3 => sig_cmd_fifo_data_out(10),
      O => sig_last_dbeat_i_4_n_0
    );
sig_ld_new_cmd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sig_ld_new_cmd_reg,
      I1 => sig_mmap_rst_reg_n,
      I2 => \^sig_last_dbeat_reg\,
      O => sig_ld_new_cmd_reg_reg
    );
sig_next_calc_error_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^sig_last_dbeat_reg\,
      I1 => sig_next_cmd_cmplt_reg_reg,
      I2 => sig_mmap_rst_reg_n,
      O => sig_mmap_rst_reg_n_reg_0(0)
    );
sig_next_calc_error_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0080"
    )
        port map (
      I0 => \^gen_omit_indet_btt.sig_tlast_error_reg_reg\,
      I1 => sig_dqual_reg_empty_reg,
      I2 => sig_next_sequential_reg,
      I3 => sig_next_calc_error_reg_i_5_n_0,
      I4 => sig_dqual_reg_empty,
      O => \^sig_last_dbeat_reg\
    );
sig_next_calc_error_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E00000"
    )
        port map (
      I0 => sig_dqual_reg_empty_reg_0,
      I1 => sig_dqual_reg_empty_reg_1,
      I2 => sig_dqual_reg_empty_reg_2,
      I3 => sig_next_calc_error_reg_i_6_n_0,
      I4 => sig_dqual_reg_full,
      I5 => sig_next_calc_error_reg,
      O => \^gen_omit_indet_btt.sig_tlast_error_reg_reg\
    );
sig_next_calc_error_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_next_calc_error_reg_i_7_n_0,
      I1 => \addr_i_reg_n_0_[2]\,
      I2 => sig_next_calc_error_reg,
      I3 => sig_wdc_status_going_full,
      O => sig_next_calc_error_reg_i_5_n_0
    );
sig_next_calc_error_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000002F"
    )
        port map (
      I0 => sig_last_mmap_dbeat_reg,
      I1 => sig_next_calc_error_reg_i_4_0,
      I2 => sig_addr_posted_cntr(0),
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      O => sig_next_calc_error_reg_i_6_n_0
    );
sig_next_calc_error_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8A8A8A8A8A8A8A"
    )
        port map (
      I0 => sig_wsc2stat_status_valid,
      I1 => sig_next_calc_error_reg_i_5_0,
      I2 => sig_inhibit_rdy_n_1,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      I5 => sig_addr_posted_cntr(0),
      O => sig_next_calc_error_reg_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_fifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sel : out STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    sig_init_reg_reg_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 53 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    sig_cmd_stat_rst_int_reg_n : in STD_LOGIC;
    sig_init_done : in STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_fifo : entity is "axi_datamover_fifo";
end ps_axi_datamover_1_0_axi_datamover_fifo;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_fifo is
  signal \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg\ : STD_LOGIC;
  signal \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2\ : STD_LOGIC;
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal sig_init_done_0 : STD_LOGIC;
  signal \sig_init_done_i_1__4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_init_done_i_1__3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__4\ : label is "soft_lutpair77";
begin
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.ps_axi_datamover_1_0_srl_fifo
     port map (
      D(0) => D(0),
      FIFO_Full_reg_0 => sel,
      FIFO_Full_reg_1 => FIFO_Full_reg,
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => SS(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(53 downto 0) => \out\(53 downto 0),
      s_axis_s2mm_cmd_tdata(53 downto 0) => s_axis_s2mm_cmd_tdata(53 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done_0,
      I1 => sig_inhibit_rdy_n,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => sig_inhibit_rdy_n,
      R => SS(0)
    );
\sig_init_done_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg\,
      I1 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2\,
      I2 => sig_cmd_stat_rst_int_reg_n,
      I3 => sig_init_done,
      O => sig_init_reg_reg_0
    );
\sig_init_done_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg\,
      I1 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2\,
      I2 => sig_cmd_stat_rst_int_reg_n,
      I3 => sig_init_done_0,
      O => \sig_init_done_i_1__4_n_0\
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_init_done_i_1__4_n_0\,
      Q => sig_init_done_0,
      R => '0'
    );
sig_init_reg2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg\,
      Q => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2\,
      S => SS(0)
    );
sig_init_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => SS(0),
      Q => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized0\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    sig_coelsc_tag_reg0 : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized0\ : entity is "axi_datamover_fifo";
end \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized0\;

architecture STRUCTURE of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized0\ is
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
  sig_init_done <= \^sig_init_done\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\ps_axi_datamover_1_0_srl_fifo__parameterized0\
     port map (
      FIFO_Full_reg_0 => FIFO_Full_reg,
      SS(0) => SS(0),
      \addr_i_reg[0]_0\ => \^sig_inhibit_rdy_n_reg_0\,
      \in\(0 to 7) => \in\(0 to 7),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      sig_coelsc_tag_reg0 => sig_coelsc_tag_reg0,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => SS(0)
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized1\ is
  port (
    sig_init_done : out STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_coelsc_decerr_reg0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_coelsc_slverr_reg0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    \addr_i_reg[0]\ : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \addr_i_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized1\ : entity is "axi_datamover_fifo";
end \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized1\;

architecture STRUCTURE of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized1\ is
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  sig_init_done <= \^sig_init_done\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\ps_axi_datamover_1_0_srl_fifo__parameterized1\
     port map (
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\(0),
      Q(0) => Q(0),
      SR(0) => SR(0),
      \addr_i_reg[0]_0\ => \addr_i_reg[0]\,
      \addr_i_reg[1]_0\(0) => \addr_i_reg[1]\(0),
      \in\(1 downto 0) => \in\(1 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      \out\(0) => \out\(0),
      sig_coelsc_decerr_reg0 => sig_coelsc_decerr_reg0,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_coelsc_slverr_reg0 => sig_coelsc_slverr_reg0,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => sig_inhibit_rdy_n,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => sig_inhibit_rdy_n,
      R => SR(0)
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized2\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_done_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_push_coelsc_reg : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    sig_coelsc_interr_reg0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    \sig_wdc_statcnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_coelsc_reg_empty : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_SRL_FIFO.sig_wr_fifo\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized2\ : entity is "axi_datamover_fifo";
end \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized2\;

architecture STRUCTURE of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized2\ is
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal \^sig_init_done_0\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
  sig_init_done_0 <= \^sig_init_done_0\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\ps_axi_datamover_1_0_srl_fifo__parameterized2\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6) => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6),
      Q(0) => Q(0),
      SR(0) => SR(0),
      \USE_SRL_FIFO.sig_wr_fifo\ => \USE_SRL_FIFO.sig_wr_fifo\,
      \addr_i_reg[0]_0\ => \^sig_inhibit_rdy_n_reg_0\,
      \addr_i_reg[3]_0\ => sig_push_coelsc_reg,
      \in\(2 downto 0) => \in\(2 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(5 downto 0) => \out\(5 downto 0),
      p_0_in => p_0_in,
      sig_coelsc_interr_reg0 => sig_coelsc_interr_reg0,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_tlast_err_stop => sig_tlast_err_stop,
      \sig_wdc_statcnt_reg[3]\(3 downto 0) => \sig_wdc_statcnt_reg[3]\(3 downto 0)
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done_0\,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => SR(0)
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized3\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_reg2 : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    \addr_i_reg[2]\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 40 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized3\ : entity is "axi_datamover_fifo";
end \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized3\;

architecture STRUCTURE of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized3\ is
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal sig_init_done : STD_LOGIC;
  signal \sig_init_done_i_1__1_n_0\ : STD_LOGIC;
  signal \^sig_init_reg2\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
  sig_init_reg2 <= \^sig_init_reg2\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\ps_axi_datamover_1_0_srl_fifo__parameterized3\
     port map (
      FIFO_Full_reg_0 => FIFO_Full_reg,
      SR(0) => SR(0),
      \addr_i_reg[0]_0\ => \^sig_inhibit_rdy_n_reg_0\,
      \addr_i_reg[2]_0\ => \addr_i_reg[2]\,
      \in\(39 downto 0) => \in\(39 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(40 downto 0) => \out\(40 downto 0),
      p_0_in => p_0_in,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => SR(0)
    );
\sig_init_done_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sig_mmap_rst_reg_n,
      I1 => sig_mmap_reset_reg,
      I2 => \^sig_init_reg2\,
      I3 => sig_init_done,
      O => \sig_init_done_i_1__1_n_0\
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_init_done_i_1__1_n_0\,
      Q => sig_init_done,
      R => '0'
    );
sig_init_reg2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_mmap_reset_reg,
      Q => \^sig_init_reg2\,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized4\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg : out STD_LOGIC;
    sig_push_dqual_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_ld_new_cmd_reg_reg : out STD_LOGIC;
    sel : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg\ : out STD_LOGIC;
    sig_mmap_rst_reg_n_reg_1 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    \sig_first_dbeat__0\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_dbeat_cntr_reg[6]\ : in STD_LOGIC;
    sig_ld_new_cmd_reg : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_next_cmd_cmplt_reg_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[5]\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    sig_dqual_reg_empty_reg : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_wdc_status_going_full : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    sig_next_calc_error_reg_i_5 : in STD_LOGIC;
    sig_inhibit_rdy_n_1 : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_dqual_reg_empty_reg_0 : in STD_LOGIC;
    sig_dqual_reg_empty_reg_1 : in STD_LOGIC;
    sig_dqual_reg_empty_reg_2 : in STD_LOGIC;
    sig_dqual_reg_full : in STD_LOGIC;
    sig_last_mmap_dbeat_reg : in STD_LOGIC;
    sig_next_calc_error_reg_i_4 : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    sig_next_calc_error_reg_reg : in STD_LOGIC_VECTOR ( 45 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized4\ : entity is "axi_datamover_fifo";
end \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized4\;

architecture STRUCTURE of \ps_axi_datamover_1_0_axi_datamover_fifo__parameterized4\ is
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
  sig_init_done <= \^sig_init_done\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\ps_axi_datamover_1_0_srl_fifo__parameterized4\
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      \addr_i_reg[1]_0\ => \^sig_inhibit_rdy_n_reg_0\,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(39 downto 0) => \out\(39 downto 0),
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      \sig_dbeat_cntr_reg[0]\ => \sig_dbeat_cntr_reg[0]\,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr_reg[4]\,
      \sig_dbeat_cntr_reg[5]\ => \sig_dbeat_cntr_reg[5]\,
      \sig_dbeat_cntr_reg[6]\ => \sig_dbeat_cntr_reg[6]\,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      sig_dqual_reg_empty_reg => sig_dqual_reg_empty_reg,
      sig_dqual_reg_empty_reg_0 => sig_dqual_reg_empty_reg_0,
      sig_dqual_reg_empty_reg_1 => sig_dqual_reg_empty_reg_1,
      sig_dqual_reg_empty_reg_2 => sig_dqual_reg_empty_reg_2,
      sig_dqual_reg_full => sig_dqual_reg_full,
      \sig_first_dbeat__0\ => \sig_first_dbeat__0\,
      sig_inhibit_rdy_n_1 => sig_inhibit_rdy_n_1,
      sig_inhibit_rdy_n_reg => sel,
      sig_last_dbeat_reg => sig_push_dqual_reg,
      sig_last_dbeat_reg_0 => sig_last_dbeat_reg,
      sig_last_mmap_dbeat_reg => sig_last_mmap_dbeat_reg,
      sig_ld_new_cmd_reg => sig_ld_new_cmd_reg,
      sig_ld_new_cmd_reg_reg => sig_ld_new_cmd_reg_reg,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_mmap_rst_reg_n_reg => sig_mmap_rst_reg_n_reg,
      sig_mmap_rst_reg_n_reg_0(0) => sig_mmap_rst_reg_n_reg_0(0),
      sig_mmap_rst_reg_n_reg_1 => sig_mmap_rst_reg_n_reg_1,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_calc_error_reg_i_4_0 => sig_next_calc_error_reg_i_4,
      sig_next_calc_error_reg_i_5_0 => sig_next_calc_error_reg_i_5,
      sig_next_calc_error_reg_reg(45 downto 0) => sig_next_calc_error_reg_reg(45 downto 0),
      sig_next_cmd_cmplt_reg_reg => sig_next_cmd_cmplt_reg_reg,
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => SR(0)
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_addr_cntl is
  port (
    s2mm_addr_req_posted : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    FIFO_Full_reg : out STD_LOGIC;
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    sig_init_reg2 : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_addr_cntl : entity is "axi_datamover_addr_cntl";
end ps_axi_datamover_1_0_axi_datamover_addr_cntl;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_addr_cntl is
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sig_addr2wsc_calc_error : STD_LOGIC;
  signal sig_addr_reg_empty : STD_LOGIC;
  signal sig_addr_reg_full : STD_LOGIC;
  signal sig_aq_fifo_data_out : STD_LOGIC_VECTOR ( 50 downto 4 );
  signal sig_next_addr_reg0 : STD_LOGIC;
  signal sig_posted_to_axi : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_posted_to_axi : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_posted_to_axi : signal is "no";
  signal sig_posted_to_axi_2 : STD_LOGIC;
  attribute RTL_KEEP of sig_posted_to_axi_2 : signal is "true";
  attribute equivalent_register_removal of sig_posted_to_axi_2 : signal is "no";
  signal sig_push_addr_reg1_out : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of sig_posted_to_axi_2_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_2_reg : label is "no";
  attribute KEEP of sig_posted_to_axi_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_reg : label is "no";
begin
  \out\ <= sig_posted_to_axi;
  s2mm_addr_req_posted <= sig_posted_to_axi_2;
\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO\: entity work.\ps_axi_datamover_1_0_axi_datamover_fifo__parameterized3\
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      SR(0) => SR(0),
      \addr_i_reg[2]\ => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4\,
      \in\(39 downto 0) => \in\(39 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(40) => sig_aq_fifo_data_out(50),
      \out\(39 downto 38) => sig_aq_fifo_data_out(47 downto 46),
      \out\(37 downto 0) => sig_aq_fifo_data_out(41 downto 4),
      p_0_in => p_0_in,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_init_reg2 => sig_init_reg2,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out
    );
sig_addr_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => '0',
      Q => sig_addr_reg_empty,
      S => sig_next_addr_reg0
    );
sig_addr_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => '1',
      Q => sig_addr_reg_full,
      R => sig_next_addr_reg0
    );
sig_addr_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => p_0_in,
      Q => m_axi_s2mm_awvalid,
      R => sig_next_addr_reg0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(50),
      Q => sig_addr2wsc_calc_error,
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => sig_addr2wsc_calc_error,
      I1 => sig_addr_reg_full,
      I2 => m_axi_s2mm_awready,
      I3 => sig_mmap_rst_reg_n,
      O => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(4),
      Q => m_axi_s2mm_awaddr(0),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(14),
      Q => m_axi_s2mm_awaddr(10),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(15),
      Q => m_axi_s2mm_awaddr(11),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(16),
      Q => m_axi_s2mm_awaddr(12),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(17),
      Q => m_axi_s2mm_awaddr(13),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(18),
      Q => m_axi_s2mm_awaddr(14),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(19),
      Q => m_axi_s2mm_awaddr(15),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(20),
      Q => m_axi_s2mm_awaddr(16),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(21),
      Q => m_axi_s2mm_awaddr(17),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(22),
      Q => m_axi_s2mm_awaddr(18),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(23),
      Q => m_axi_s2mm_awaddr(19),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(5),
      Q => m_axi_s2mm_awaddr(1),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(24),
      Q => m_axi_s2mm_awaddr(20),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(25),
      Q => m_axi_s2mm_awaddr(21),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(26),
      Q => m_axi_s2mm_awaddr(22),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(27),
      Q => m_axi_s2mm_awaddr(23),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(28),
      Q => m_axi_s2mm_awaddr(24),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(29),
      Q => m_axi_s2mm_awaddr(25),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(30),
      Q => m_axi_s2mm_awaddr(26),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(31),
      Q => m_axi_s2mm_awaddr(27),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(32),
      Q => m_axi_s2mm_awaddr(28),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(33),
      Q => m_axi_s2mm_awaddr(29),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(6),
      Q => m_axi_s2mm_awaddr(2),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(34),
      Q => m_axi_s2mm_awaddr(30),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(35),
      Q => m_axi_s2mm_awaddr(31),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(7),
      Q => m_axi_s2mm_awaddr(3),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(8),
      Q => m_axi_s2mm_awaddr(4),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(9),
      Q => m_axi_s2mm_awaddr(5),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(10),
      Q => m_axi_s2mm_awaddr(6),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(11),
      Q => m_axi_s2mm_awaddr(7),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(12),
      Q => m_axi_s2mm_awaddr(8),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(13),
      Q => m_axi_s2mm_awaddr(9),
      R => sig_next_addr_reg0
    );
\sig_next_burst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(47),
      Q => m_axi_s2mm_awburst(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(36),
      Q => m_axi_s2mm_awlen(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(37),
      Q => m_axi_s2mm_awlen(1),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(38),
      Q => m_axi_s2mm_awlen(2),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(39),
      Q => m_axi_s2mm_awlen(3),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(40),
      Q => m_axi_s2mm_awlen(4),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(41),
      Q => m_axi_s2mm_awlen(5),
      R => sig_next_addr_reg0
    );
\sig_next_size_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(46),
      Q => m_axi_s2mm_awsize(0),
      R => sig_next_addr_reg0
    );
sig_posted_to_axi_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4\,
      Q => sig_posted_to_axi_2,
      R => '0'
    );
sig_posted_to_axi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4\,
      Q => sig_posted_to_axi,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_cmd_status is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_SRL_FIFO.sig_wr_fifo\ : out STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    sig_coelsc_tag_reg0 : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 53 downto 0 );
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    FIFO_Full_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    sig_cmd_stat_rst_int_reg_n : in STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_cmd_status : entity is "axi_datamover_cmd_status";
end ps_axi_datamover_1_0_axi_datamover_cmd_status;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_cmd_status is
  signal I_CMD_FIFO_n_4 : STD_LOGIC;
  signal sig_init_done : STD_LOGIC;
begin
\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO\: entity work.\ps_axi_datamover_1_0_axi_datamover_fifo__parameterized0\
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      SS(0) => SS(0),
      \in\(0 to 7) => \in\(0 to 7),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      sig_coelsc_tag_reg0 => sig_coelsc_tag_reg0,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => I_CMD_FIFO_n_4,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
I_CMD_FIFO: entity work.ps_axi_datamover_1_0_axi_datamover_fifo
     port map (
      D(0) => D(0),
      FIFO_Full_reg => FIFO_Full_reg_0,
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => SS(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(53 downto 0) => \out\(53 downto 0),
      s_axis_s2mm_cmd_tdata(53 downto 0) => s_axis_s2mm_cmd_tdata(53 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sel => \USE_SRL_FIFO.sig_wr_fifo\,
      sig_cmd_stat_rst_int_reg_n => sig_cmd_stat_rst_int_reg_n,
      sig_init_done => sig_init_done,
      sig_init_reg_reg_0 => I_CMD_FIFO_n_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_wr_status_cntl is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_wsc2stat_status_valid : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 0 to 7 );
    sig_wdc_status_going_full : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    sig_init_done_0 : out STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_coelsc_tag_reg0 : in STD_LOGIC;
    sig_init_done_reg : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_SRL_FIFO.sig_wr_fifo\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_wr_status_cntl : entity is "axi_datamover_wr_status_cntl";
end ps_axi_datamover_1_0_axi_datamover_wr_status_cntl;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_wr_status_cntl is
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_16\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_2\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_6\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_7\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal I_WRESP_STATUS_FIFO_n_2 : STD_LOGIC;
  signal \^in\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal p_0_in : STD_LOGIC;
  signal sig_coelsc_decerr_reg0 : STD_LOGIC;
  signal sig_coelsc_interr_reg0 : STD_LOGIC;
  signal sig_coelsc_reg_empty : STD_LOGIC;
  signal sig_coelsc_slverr_reg0 : STD_LOGIC;
  signal sig_push_coelsc_reg : STD_LOGIC;
  signal sig_statcnt_gt_eq_thres : STD_LOGIC;
  signal \sig_wdc_statcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal sig_wdc_statcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_wresp_sfifo_out : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  \in\(0 to 7) <= \^in\(0 to 7);
\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO\: entity work.\ps_axi_datamover_1_0_axi_datamover_fifo__parameterized2\
     port map (
      D(2) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_6\,
      D(1) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_7\,
      D(0) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8\,
      E(0) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5\,
      FIFO_Full_reg => FIFO_Full_reg,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0) => I_WRESP_STATUS_FIFO_n_2,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\(0) => sig_wresp_sfifo_out(1),
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_16\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6) => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(0 to 6),
      Q(0) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_2\,
      SR(0) => SR(0),
      \USE_SRL_FIFO.sig_wr_fifo\ => \USE_SRL_FIFO.sig_wr_fifo\,
      \in\(2) => \^in\(1),
      \in\(1) => \^in\(2),
      \in\(0) => \^in\(3),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(5 downto 1) => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(6 downto 2),
      \out\(0) => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(0),
      p_0_in => p_0_in,
      sig_coelsc_interr_reg0 => sig_coelsc_interr_reg0,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_init_done_0 => sig_init_done_0,
      sig_init_done_reg_0 => sig_init_done_reg_0,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_tlast_err_stop => sig_tlast_err_stop,
      \sig_wdc_statcnt_reg[3]\(3 downto 0) => sig_wdc_statcnt_reg(3 downto 0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_decerr_reg0,
      Q => \^in\(2),
      R => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_interr_reg0,
      Q => \^in\(3),
      R => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_16\,
      Q => \^in\(0),
      S => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => p_0_in,
      Q => sig_coelsc_reg_empty,
      S => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(0),
      Q => sig_wsc2stat_status_valid,
      R => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_slverr_reg0,
      Q => \^in\(1),
      R => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(3),
      Q => \^in\(7),
      R => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(4),
      Q => \^in\(6),
      R => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(5),
      Q => \^in\(5),
      R => sig_coelsc_tag_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(6),
      Q => \^in\(4),
      R => sig_coelsc_tag_reg0
    );
I_WRESP_STATUS_FIFO: entity work.\ps_axi_datamover_1_0_axi_datamover_fifo__parameterized1\
     port map (
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\(0) => \GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out\(2),
      Q(0) => I_WRESP_STATUS_FIFO_n_2,
      SR(0) => SR(0),
      \addr_i_reg[0]\ => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15\,
      \addr_i_reg[1]\(0) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_2\,
      \in\(1) => \^in\(1),
      \in\(0) => \^in\(2),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      \out\(0) => sig_wresp_sfifo_out(1),
      sig_coelsc_decerr_reg0 => sig_coelsc_decerr_reg0,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_coelsc_slverr_reg0 => sig_coelsc_slverr_reg0,
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => sig_init_done_reg
    );
\sig_wdc_statcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_wdc_statcnt_reg(0),
      O => \sig_wdc_statcnt[0]_i_1_n_0\
    );
\sig_wdc_statcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5\,
      D => \sig_wdc_statcnt[0]_i_1_n_0\,
      Q => sig_wdc_statcnt_reg(0),
      R => SR(0)
    );
\sig_wdc_statcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5\,
      D => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8\,
      Q => sig_wdc_statcnt_reg(1),
      R => SR(0)
    );
\sig_wdc_statcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5\,
      D => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_7\,
      Q => sig_wdc_statcnt_reg(2),
      R => SR(0)
    );
\sig_wdc_statcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5\,
      D => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_6\,
      Q => sig_wdc_statcnt_reg(3),
      R => SR(0)
    );
sig_wdc_status_going_full_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_wdc_statcnt_reg(2),
      I1 => sig_wdc_statcnt_reg(3),
      O => sig_statcnt_gt_eq_thres
    );
sig_wdc_status_going_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_statcnt_gt_eq_thres,
      Q => sig_wdc_status_going_full,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_wrdata_cntl is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_data2all_tlast_error : out STD_LOGIC;
    sig_push_to_wsc : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 0 to 6 );
    sig_init_done : out STD_LOGIC;
    sig_data2skid_wlast : out STD_LOGIC;
    sig_last_skid_mux_out : out STD_LOGIC;
    \USE_SRL_FIFO.sig_wr_fifo\ : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    \USE_SRL_FIFO.sig_wr_fifo_0\ : out STD_LOGIC;
    sig_tlast_err_stop : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_s_ready_out_reg : out STD_LOGIC;
    sig_last_dbeat_reg_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \sig_next_last_strb_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \sig_strb_reg_out_reg[0]\ : in STD_LOGIC;
    sig_last_skid_reg : in STD_LOGIC;
    sig_mmap_rst_reg_n : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_wdc_status_going_full : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    sig_next_calc_error_reg_i_5 : in STD_LOGIC;
    sig_inhibit_rdy_n_1 : in STD_LOGIC;
    sig_inhibit_rdy_n_2 : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0\ : in STD_LOGIC;
    sig_dqual_reg_empty_reg_0 : in STD_LOGIC;
    sig_dqual_reg_empty_reg_1 : in STD_LOGIC;
    \sig_data_reg_out_reg[127]\ : in STD_LOGIC;
    sig_dre2ibtt_tlast : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sig_next_calc_error_reg_reg_0 : in STD_LOGIC_VECTOR ( 45 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_wrdata_cntl : entity is "axi_datamover_wrdata_cntl";
end ps_axi_datamover_1_0_axi_datamover_wrdata_cntl;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_wrdata_cntl is
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_2\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_53\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_10_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_11_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_2_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_4_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_5_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_6_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_7_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_8_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_9_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_addr_posted_cntr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_addr_posted_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_clr_dqual_reg : STD_LOGIC;
  signal sig_cmd_fifo_data_out : STD_LOGIC_VECTOR ( 52 downto 0 );
  signal \^sig_data2all_tlast_error\ : STD_LOGIC;
  signal sig_data2wsc_cmd_cmplt0 : STD_LOGIC;
  signal sig_dbeat_cntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sig_dbeat_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[5]_i_2_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal sig_dqual_reg_empty : STD_LOGIC;
  signal sig_dqual_reg_full : STD_LOGIC;
  signal \sig_first_dbeat__0\ : STD_LOGIC;
  signal sig_last_dbeat_i_3_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_5_n_0 : STD_LOGIC;
  signal sig_last_dbeat_reg_n_0 : STD_LOGIC;
  signal sig_last_mmap_dbeat : STD_LOGIC;
  signal sig_last_mmap_dbeat_reg : STD_LOGIC;
  signal sig_last_reg_out_i_2_n_0 : STD_LOGIC;
  signal sig_ld_new_cmd_reg : STD_LOGIC;
  signal sig_next_calc_error_reg : STD_LOGIC;
  signal sig_next_calc_error_reg_i_3_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg : STD_LOGIC;
  signal sig_next_eof_reg : STD_LOGIC;
  signal sig_next_last_strb_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_next_sequential_reg : STD_LOGIC;
  signal sig_next_strt_strb_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_next_tag_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_push_dqual_reg : STD_LOGIC;
  signal sig_push_err2wsc : STD_LOGIC;
  signal sig_push_err2wsc_i_1_n_0 : STD_LOGIC;
  signal \^sig_push_to_wsc\ : STD_LOGIC;
  signal sig_push_to_wsc0 : STD_LOGIC;
  signal sig_push_to_wsc_i_2_n_0 : STD_LOGIC;
  signal sig_s_ready_dup_i_3_n_0 : STD_LOGIC;
  signal sig_s_ready_dup_i_4_n_0 : STD_LOGIC;
  signal \^sig_s_ready_out_reg\ : STD_LOGIC;
  signal \^sig_tlast_err_stop\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \data_reg[5][6]_srl6_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sig_addr_posted_cntr[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sig_addr_posted_cntr[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[4]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[5]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of sig_next_calc_error_reg_i_3 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of sig_s_ready_dup_i_2 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sig_s_ready_dup_i_2__0\ : label is "soft_lutpair86";
begin
  sig_data2all_tlast_error <= \^sig_data2all_tlast_error\;
  sig_push_to_wsc <= \^sig_push_to_wsc\;
  sig_s_ready_out_reg <= \^sig_s_ready_out_reg\;
  sig_tlast_err_stop <= \^sig_tlast_err_stop\;
\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO\: entity work.\ps_axi_datamover_1_0_axi_datamover_fifo__parameterized4\
     port map (
      D(7 downto 0) => p_1_in(7 downto 0),
      E(0) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      FIFO_Full_reg => FIFO_Full_reg,
      \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg\ => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57\,
      Q(7 downto 0) => sig_dbeat_cntr(7 downto 0),
      SR(0) => SR(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(39 downto 36) => sig_cmd_fifo_data_out(52 downto 49),
      \out\(35 downto 4) => sig_cmd_fifo_data_out(47 downto 16),
      \out\(3 downto 0) => sig_cmd_fifo_data_out(3 downto 0),
      sel => \USE_SRL_FIFO.sig_wr_fifo\,
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      \sig_dbeat_cntr_reg[0]\ => \sig_dbeat_cntr[7]_i_3_n_0\,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr[4]_i_2_n_0\,
      \sig_dbeat_cntr_reg[5]\ => \sig_dbeat_cntr[5]_i_2_n_0\,
      \sig_dbeat_cntr_reg[6]\ => sig_last_reg_out_i_2_n_0,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      sig_dqual_reg_empty_reg => sig_last_dbeat_reg_n_0,
      sig_dqual_reg_empty_reg_0 => \^sig_data2all_tlast_error\,
      sig_dqual_reg_empty_reg_1 => sig_dqual_reg_empty_reg_0,
      sig_dqual_reg_empty_reg_2 => sig_dqual_reg_empty_reg_1,
      sig_dqual_reg_full => sig_dqual_reg_full,
      \sig_first_dbeat__0\ => \sig_first_dbeat__0\,
      sig_inhibit_rdy_n_1 => sig_inhibit_rdy_n_1,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => sig_init_done_reg,
      sig_last_dbeat_reg => sig_last_dbeat_i_3_n_0,
      sig_last_mmap_dbeat_reg => sig_last_mmap_dbeat_reg,
      sig_ld_new_cmd_reg => sig_ld_new_cmd_reg,
      sig_ld_new_cmd_reg_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_53\,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_mmap_rst_reg_n_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_2\,
      sig_mmap_rst_reg_n_reg_0(0) => sig_clr_dqual_reg,
      sig_mmap_rst_reg_n_reg_1 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58\,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_calc_error_reg_i_4 => \out\,
      sig_next_calc_error_reg_i_5 => sig_next_calc_error_reg_i_5,
      sig_next_calc_error_reg_reg(45 downto 0) => sig_next_calc_error_reg_reg_0(45 downto 0),
      sig_next_cmd_cmplt_reg_reg => sig_next_calc_error_reg_i_3_n_0,
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_push_dqual_reg => sig_push_dqual_reg,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => sig_inhibit_rdy_n_2,
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0\,
      I2 => \^sig_push_to_wsc\,
      I3 => \^sig_data2all_tlast_error\,
      I4 => \^sig_tlast_err_stop\,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0\,
      Q => \^sig_tlast_err_stop\,
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8880"
    )
        port map (
      I0 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57\,
      I1 => sig_dre2ibtt_tlast,
      I2 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_2_n_0\,
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_n_0\,
      I4 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_4_n_0\,
      I5 => \^sig_data2all_tlast_error\,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => sig_next_last_strb_reg(8),
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(8),
      I2 => sig_next_last_strb_reg(9),
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(9),
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_10_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => sig_next_last_strb_reg(5),
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(5),
      I2 => sig_next_last_strb_reg(4),
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(4),
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_11_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_5_n_0\,
      I1 => sig_next_last_strb_reg(13),
      I2 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(13),
      I3 => sig_next_last_strb_reg(12),
      I4 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(12),
      I5 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_6_n_0\,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_2_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_7_n_0\,
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_8_n_0\,
      I2 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_9_n_0\,
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_10_n_0\,
      I4 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_11_n_0\,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0002"
    )
        port map (
      I0 => sig_next_eof_reg,
      I1 => sig_dbeat_cntr(6),
      I2 => sig_last_reg_out_i_2_n_0,
      I3 => sig_dbeat_cntr(7),
      I4 => sig_dre2ibtt_tlast,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_4_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => sig_next_last_strb_reg(7),
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(7),
      I2 => sig_next_last_strb_reg(6),
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(6),
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_5_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => sig_next_last_strb_reg(0),
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(0),
      I2 => sig_next_last_strb_reg(1),
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(1),
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_6_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => sig_next_last_strb_reg(11),
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(11),
      I2 => sig_next_last_strb_reg(10),
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(10),
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_7_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => sig_next_last_strb_reg(14),
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(14),
      I2 => sig_next_last_strb_reg(15),
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(15),
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_8_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => sig_next_last_strb_reg(2),
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(2),
      I2 => sig_next_last_strb_reg(3),
      I3 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(3),
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_9_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0\,
      Q => \^sig_data2all_tlast_error\,
      R => SR(0)
    );
\data_reg[5][6]_srl6_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^sig_tlast_err_stop\,
      I1 => sig_inhibit_rdy_n_2,
      I2 => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0\,
      I3 => \^sig_push_to_wsc\,
      O => \USE_SRL_FIFO.sig_wr_fifo_0\
    );
\sig_addr_posted_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FE7F00"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(2),
      I3 => \out\,
      I4 => sig_last_mmap_dbeat_reg,
      O => \sig_addr_posted_cntr[0]_i_1_n_0\
    );
\sig_addr_posted_cntr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[0]_i_2_n_0\
    );
\sig_addr_posted_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC98E6CC"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(2),
      I3 => \out\,
      I4 => sig_last_mmap_dbeat_reg,
      O => \sig_addr_posted_cntr[1]_i_1_n_0\
    );
\sig_addr_posted_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E0F8F0"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(2),
      I3 => \out\,
      I4 => sig_last_mmap_dbeat_reg,
      O => \sig_addr_posted_cntr[2]_i_1_n_0\
    );
\sig_addr_posted_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_posted_cntr[0]_i_1_n_0\,
      D => \sig_addr_posted_cntr[0]_i_2_n_0\,
      Q => sig_addr_posted_cntr(0),
      R => SR(0)
    );
\sig_addr_posted_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[1]_i_1_n_0\,
      Q => sig_addr_posted_cntr(1),
      R => SR(0)
    );
\sig_addr_posted_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[2]_i_1_n_0\,
      Q => sig_addr_posted_cntr(2),
      R => SR(0)
    );
sig_data2wsc_calc_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_calc_error_reg,
      Q => \in\(4),
      R => sig_push_to_wsc0
    );
sig_data2wsc_cmd_cmplt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0\,
      I1 => sig_next_cmd_cmplt_reg,
      O => sig_data2wsc_cmd_cmplt0
    );
sig_data2wsc_cmd_cmplt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_data2wsc_cmd_cmplt0,
      Q => \in\(6),
      R => sig_push_to_wsc0
    );
sig_data2wsc_last_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0\,
      Q => \in\(5),
      R => sig_push_to_wsc0
    );
\sig_data2wsc_tag_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_tag_reg(0),
      Q => \in\(3),
      R => sig_push_to_wsc0
    );
\sig_data2wsc_tag_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_tag_reg(1),
      Q => \in\(2),
      R => sig_push_to_wsc0
    );
\sig_data2wsc_tag_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_tag_reg(2),
      Q => \in\(1),
      R => sig_push_to_wsc0
    );
\sig_data2wsc_tag_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_tag_reg(3),
      Q => \in\(0),
      R => sig_push_to_wsc0
    );
\sig_data_reg_out[127]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^sig_s_ready_out_reg\,
      I1 => \sig_data_reg_out_reg[127]\,
      O => E(0)
    );
\sig_dbeat_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(2),
      I1 => sig_dbeat_cntr(0),
      I2 => sig_dbeat_cntr(1),
      I3 => sig_dbeat_cntr(3),
      O => \sig_dbeat_cntr[4]_i_2_n_0\
    );
\sig_dbeat_cntr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(3),
      I1 => sig_dbeat_cntr(1),
      I2 => sig_dbeat_cntr(0),
      I3 => sig_dbeat_cntr(2),
      I4 => sig_dbeat_cntr(4),
      O => \sig_dbeat_cntr[5]_i_2_n_0\
    );
\sig_dbeat_cntr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => sig_dbeat_cntr(6),
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_dbeat_cntr(7),
      I3 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57\,
      O => \sig_dbeat_cntr[7]_i_3_n_0\
    );
\sig_dbeat_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      D => p_1_in(0),
      Q => sig_dbeat_cntr(0),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      D => p_1_in(1),
      Q => sig_dbeat_cntr(1),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      D => p_1_in(2),
      Q => sig_dbeat_cntr(2),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      D => p_1_in(3),
      Q => sig_dbeat_cntr(3),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      D => p_1_in(4),
      Q => sig_dbeat_cntr(4),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      D => p_1_in(5),
      Q => sig_dbeat_cntr(5),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      D => p_1_in(6),
      Q => sig_dbeat_cntr(6),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52\,
      D => p_1_in(7),
      Q => sig_dbeat_cntr(7),
      R => SR(0)
    );
sig_dqual_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => '0',
      Q => sig_dqual_reg_empty,
      S => sig_clr_dqual_reg
    );
sig_dqual_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => '1',
      Q => sig_dqual_reg_full,
      R => sig_clr_dqual_reg
    );
sig_first_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_2\,
      Q => \sig_first_dbeat__0\,
      R => '0'
    );
sig_last_dbeat_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => sig_dbeat_cntr(1),
      I1 => sig_dbeat_cntr(0),
      I2 => sig_mmap_rst_reg_n,
      I3 => sig_last_dbeat_i_5_n_0,
      I4 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57\,
      O => sig_last_dbeat_i_3_n_0
    );
sig_last_dbeat_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sig_dbeat_cntr(2),
      I1 => sig_dbeat_cntr(3),
      I2 => sig_dbeat_cntr(4),
      I3 => sig_dbeat_cntr(5),
      I4 => sig_dbeat_cntr(7),
      I5 => sig_dbeat_cntr(6),
      O => sig_last_dbeat_i_5_n_0
    );
sig_last_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58\,
      Q => sig_last_dbeat_reg_n_0,
      R => '0'
    );
sig_last_mmap_dbeat_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_next_calc_error_reg_i_3_n_0,
      O => sig_last_mmap_dbeat
    );
sig_last_mmap_dbeat_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_last_mmap_dbeat,
      Q => sig_last_mmap_dbeat_reg,
      R => SR(0)
    );
\sig_last_reg_out_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => sig_dbeat_cntr(6),
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_dbeat_cntr(7),
      I3 => sig_dqual_reg_full,
      I4 => \sig_strb_reg_out_reg[0]\,
      I5 => sig_last_skid_reg,
      O => sig_last_skid_mux_out
    );
sig_last_reg_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(4),
      I1 => sig_dbeat_cntr(2),
      I2 => sig_dbeat_cntr(0),
      I3 => sig_dbeat_cntr(1),
      I4 => sig_dbeat_cntr(3),
      I5 => sig_dbeat_cntr(5),
      O => sig_last_reg_out_i_2_n_0
    );
sig_last_skid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => sig_dbeat_cntr(6),
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_dbeat_cntr(7),
      I3 => sig_dqual_reg_full,
      O => sig_data2skid_wlast
    );
sig_ld_new_cmd_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_53\,
      Q => sig_ld_new_cmd_reg,
      R => '0'
    );
sig_next_calc_error_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => sig_dbeat_cntr(6),
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_dbeat_cntr(7),
      I3 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57\,
      O => sig_next_calc_error_reg_i_3_n_0
    );
sig_next_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(52),
      Q => sig_next_calc_error_reg,
      R => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(51),
      Q => sig_next_cmd_cmplt_reg,
      R => sig_clr_dqual_reg
    );
sig_next_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(49),
      Q => sig_next_eof_reg,
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(32),
      Q => sig_next_last_strb_reg(0),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(42),
      Q => sig_next_last_strb_reg(10),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(43),
      Q => sig_next_last_strb_reg(11),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(44),
      Q => sig_next_last_strb_reg(12),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(45),
      Q => sig_next_last_strb_reg(13),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(46),
      Q => sig_next_last_strb_reg(14),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(47),
      Q => sig_next_last_strb_reg(15),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(33),
      Q => sig_next_last_strb_reg(1),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(34),
      Q => sig_next_last_strb_reg(2),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(35),
      Q => sig_next_last_strb_reg(3),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(36),
      Q => sig_next_last_strb_reg(4),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(37),
      Q => sig_next_last_strb_reg(5),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(38),
      Q => sig_next_last_strb_reg(6),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(39),
      Q => sig_next_last_strb_reg(7),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(40),
      Q => sig_next_last_strb_reg(8),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(41),
      Q => sig_next_last_strb_reg(9),
      R => sig_clr_dqual_reg
    );
sig_next_sequential_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(50),
      Q => sig_next_sequential_reg,
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(16),
      Q => sig_next_strt_strb_reg(0),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(26),
      Q => sig_next_strt_strb_reg(10),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(27),
      Q => sig_next_strt_strb_reg(11),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(28),
      Q => sig_next_strt_strb_reg(12),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(29),
      Q => sig_next_strt_strb_reg(13),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(30),
      Q => sig_next_strt_strb_reg(14),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(31),
      Q => sig_next_strt_strb_reg(15),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(17),
      Q => sig_next_strt_strb_reg(1),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(18),
      Q => sig_next_strt_strb_reg(2),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(19),
      Q => sig_next_strt_strb_reg(3),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(20),
      Q => sig_next_strt_strb_reg(4),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(21),
      Q => sig_next_strt_strb_reg(5),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(22),
      Q => sig_next_strt_strb_reg(6),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(23),
      Q => sig_next_strt_strb_reg(7),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(24),
      Q => sig_next_strt_strb_reg(8),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(25),
      Q => sig_next_strt_strb_reg(9),
      R => sig_clr_dqual_reg
    );
\sig_next_tag_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(0),
      Q => sig_next_tag_reg(0),
      R => sig_clr_dqual_reg
    );
\sig_next_tag_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(1),
      Q => sig_next_tag_reg(1),
      R => sig_clr_dqual_reg
    );
\sig_next_tag_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(2),
      Q => sig_next_tag_reg(2),
      R => sig_clr_dqual_reg
    );
\sig_next_tag_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(3),
      Q => sig_next_tag_reg(3),
      R => sig_clr_dqual_reg
    );
sig_push_err2wsc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => sig_mmap_rst_reg_n,
      I1 => sig_push_err2wsc,
      I2 => sig_ld_new_cmd_reg,
      I3 => sig_next_calc_error_reg,
      O => sig_push_err2wsc_i_1_n_0
    );
sig_push_err2wsc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_push_err2wsc_i_1_n_0,
      Q => sig_push_err2wsc,
      R => '0'
    );
sig_push_to_wsc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200000FFFFFFFF"
    )
        port map (
      I0 => sig_inhibit_rdy_n_2,
      I1 => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0\,
      I2 => \^sig_push_to_wsc\,
      I3 => sig_push_err2wsc,
      I4 => sig_next_calc_error_reg_i_3_n_0,
      I5 => sig_mmap_rst_reg_n,
      O => sig_push_to_wsc0
    );
sig_push_to_wsc_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => sig_next_calc_error_reg_i_3_n_0,
      I1 => sig_push_err2wsc,
      I2 => \^sig_tlast_err_stop\,
      O => sig_push_to_wsc_i_2_n_0
    );
sig_push_to_wsc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => '1',
      Q => \^sig_push_to_wsc\,
      R => sig_push_to_wsc0
    );
sig_s_ready_dup_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => sig_s_ready_dup_i_3_n_0,
      I1 => \^sig_data2all_tlast_error\,
      I2 => sig_dqual_reg_empty_reg_0,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0\
    );
\sig_s_ready_dup_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => sig_dqual_reg_empty_reg_1,
      I1 => sig_s_ready_dup_i_3_n_0,
      I2 => \^sig_data2all_tlast_error\,
      O => \^sig_s_ready_out_reg\
    );
sig_s_ready_dup_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1511FFFF"
    )
        port map (
      I0 => sig_s_ready_dup_i_4_n_0,
      I1 => sig_addr_posted_cntr(0),
      I2 => \out\,
      I3 => sig_last_mmap_dbeat_reg,
      I4 => sig_dqual_reg_full,
      I5 => sig_next_calc_error_reg,
      O => sig_s_ready_dup_i_3_n_0
    );
sig_s_ready_dup_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      O => sig_s_ready_dup_i_4_n_0
    );
\sig_strb_reg_out[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(0),
      I1 => sig_next_strt_strb_reg(0),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(0),
      O => \sig_next_last_strb_reg_reg[15]_0\(0)
    );
\sig_strb_reg_out[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(10),
      I1 => sig_next_strt_strb_reg(10),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(10),
      O => \sig_next_last_strb_reg_reg[15]_0\(10)
    );
\sig_strb_reg_out[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(11),
      I1 => sig_next_strt_strb_reg(11),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(11),
      O => \sig_next_last_strb_reg_reg[15]_0\(11)
    );
\sig_strb_reg_out[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(12),
      I1 => sig_next_strt_strb_reg(12),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(12),
      O => \sig_next_last_strb_reg_reg[15]_0\(12)
    );
\sig_strb_reg_out[13]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(13),
      I1 => sig_next_strt_strb_reg(13),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(13),
      O => \sig_next_last_strb_reg_reg[15]_0\(13)
    );
\sig_strb_reg_out[14]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(14),
      I1 => sig_next_strt_strb_reg(14),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(14),
      O => \sig_next_last_strb_reg_reg[15]_0\(14)
    );
\sig_strb_reg_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(15),
      I1 => sig_next_strt_strb_reg(15),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(15),
      O => \sig_next_last_strb_reg_reg[15]_0\(15)
    );
\sig_strb_reg_out[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(1),
      I1 => sig_next_strt_strb_reg(1),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(1),
      O => \sig_next_last_strb_reg_reg[15]_0\(1)
    );
\sig_strb_reg_out[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(2),
      I1 => sig_next_strt_strb_reg(2),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(2),
      O => \sig_next_last_strb_reg_reg[15]_0\(2)
    );
\sig_strb_reg_out[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(3),
      I1 => sig_next_strt_strb_reg(3),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(3),
      O => \sig_next_last_strb_reg_reg[15]_0\(3)
    );
\sig_strb_reg_out[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(4),
      I1 => sig_next_strt_strb_reg(4),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(4),
      O => \sig_next_last_strb_reg_reg[15]_0\(4)
    );
\sig_strb_reg_out[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(5),
      I1 => sig_next_strt_strb_reg(5),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(5),
      O => \sig_next_last_strb_reg_reg[15]_0\(5)
    );
\sig_strb_reg_out[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(6),
      I1 => sig_next_strt_strb_reg(6),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(6),
      O => \sig_next_last_strb_reg_reg[15]_0\(6)
    );
\sig_strb_reg_out[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(7),
      I1 => sig_next_strt_strb_reg(7),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(7),
      O => \sig_next_last_strb_reg_reg[15]_0\(7)
    );
\sig_strb_reg_out[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(8),
      I1 => sig_next_strt_strb_reg(8),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(8),
      O => \sig_next_last_strb_reg_reg[15]_0\(8)
    );
\sig_strb_reg_out[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCFFFCA00CF00"
    )
        port map (
      I0 => sig_next_last_strb_reg(9),
      I1 => sig_next_strt_strb_reg(9),
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_strb_reg_out_reg[0]\,
      I4 => sig_last_dbeat_reg_n_0,
      I5 => Q(9),
      O => \sig_next_last_strb_reg_reg[15]_0\(9)
    );
\sig_strb_skid_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(0),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(0),
      O => sig_last_dbeat_reg_0(0)
    );
\sig_strb_skid_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(10),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(10),
      O => sig_last_dbeat_reg_0(10)
    );
\sig_strb_skid_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(11),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(11),
      O => sig_last_dbeat_reg_0(11)
    );
\sig_strb_skid_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(12),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(12),
      O => sig_last_dbeat_reg_0(12)
    );
\sig_strb_skid_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(13),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(13),
      O => sig_last_dbeat_reg_0(13)
    );
\sig_strb_skid_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(14),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(14),
      O => sig_last_dbeat_reg_0(14)
    );
\sig_strb_skid_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(15),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(15),
      O => sig_last_dbeat_reg_0(15)
    );
\sig_strb_skid_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(1),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(1),
      O => sig_last_dbeat_reg_0(1)
    );
\sig_strb_skid_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(2),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(2),
      O => sig_last_dbeat_reg_0(2)
    );
\sig_strb_skid_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(3),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(3),
      O => sig_last_dbeat_reg_0(3)
    );
\sig_strb_skid_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(4),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(4),
      O => sig_last_dbeat_reg_0(4)
    );
\sig_strb_skid_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(5),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(5),
      O => sig_last_dbeat_reg_0(5)
    );
\sig_strb_skid_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(6),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(6),
      O => sig_last_dbeat_reg_0(6)
    );
\sig_strb_skid_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(7),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(7),
      O => sig_last_dbeat_reg_0(7)
    );
\sig_strb_skid_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(8),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(8),
      O => sig_last_dbeat_reg_0(8)
    );
\sig_strb_skid_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_last_strb_reg(9),
      I2 => \sig_first_dbeat__0\,
      I3 => sig_next_strt_strb_reg(9),
      O => sig_last_dbeat_reg_0(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover_s2mm_full_wrap is
  port (
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_s2mm_tready : out STD_LOGIC;
    s2mm_addr_req_posted : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tlast : in STD_LOGIC;
    m_axi_s2mm_aresetn : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover_s2mm_full_wrap : entity is "axi_datamover_s2mm_full_wrap";
end ps_axi_datamover_1_0_axi_datamover_s2mm_full_wrap;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover_s2mm_full_wrap is
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_reg2\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\ : STD_LOGIC;
  signal \GEN_INCLUDE_PCC.I_MSTR_PCC_n_51\ : STD_LOGIC;
  signal \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.sig_wr_fifo\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done\ : STD_LOGIC;
  signal I_ADDR_CNTL_n_2 : STD_LOGIC;
  signal \I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i_p1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \I_CMD_FIFO/USE_SRL_FIFO.sig_wr_fifo\ : STD_LOGIC;
  signal I_CMD_STATUS_n_0 : STD_LOGIC;
  signal I_CMD_STATUS_n_1 : STD_LOGIC;
  signal I_RESET_n_3 : STD_LOGIC;
  signal I_RESET_n_4 : STD_LOGIC;
  signal I_RESET_n_5 : STD_LOGIC;
  signal \I_WRESP_STATUS_FIFO/sig_init_done\ : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_0 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_17 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_19 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_0 : STD_LOGIC;
  signal dre2skid_wready : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in2_in_0 : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal sig_addr2data_addr_posted : STD_LOGIC;
  signal sig_calc2dm_calc_err : STD_LOGIC;
  signal sig_cmd2mstr_command : STD_LOGIC_VECTOR ( 67 downto 0 );
  signal sig_cmd_stat_rst_int : STD_LOGIC;
  signal sig_cmd_stat_rst_int_reg_n : STD_LOGIC;
  signal sig_coelsc_tag_reg0 : STD_LOGIC;
  signal sig_data2all_tlast_error : STD_LOGIC;
  signal sig_data2skid_wlast : STD_LOGIC;
  signal sig_data2skid_wstrb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_data2wsc_calc_err : STD_LOGIC;
  signal sig_data2wsc_cmd_cmplt : STD_LOGIC;
  signal sig_data2wsc_last_err : STD_LOGIC;
  signal sig_data2wsc_tag : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_data_reg_out_en : STD_LOGIC;
  signal sig_data_reg_out_en_1 : STD_LOGIC;
  signal sig_dre2ibtt_tdata : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_dre2ibtt_tlast : STD_LOGIC;
  signal sig_dre2ibtt_tstrb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_dre2ibtt_tvalid : STD_LOGIC;
  signal sig_last_skid_mux_out : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_mmap_reset_reg : STD_LOGIC;
  signal sig_mmap_rst : STD_LOGIC;
  signal sig_mmap_rst_reg_n : STD_LOGIC;
  signal sig_mstr2addr_addr : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal sig_mstr2addr_burst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_mstr2addr_cmd_valid : STD_LOGIC;
  signal sig_mstr2data_cmd_last : STD_LOGIC;
  signal sig_mstr2data_cmd_valid : STD_LOGIC;
  signal sig_mstr2data_eof : STD_LOGIC;
  signal sig_mstr2data_last_strb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_mstr2data_len : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sig_mstr2data_saddr_lsb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_mstr2data_sequential : STD_LOGIC;
  signal sig_mstr2data_strt_strb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_mstr2data_tag : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_push_to_wsc : STD_LOGIC;
  signal sig_skid2data_wready : STD_LOGIC;
  signal sig_strb_skid_mux_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_stream_rst : STD_LOGIC;
  signal sig_stream_rst_reg_n : STD_LOGIC;
  signal sig_tlast_err_stop : STD_LOGIC;
  signal sig_wdc_status_going_full : STD_LOGIC;
  signal sig_wsc2stat_status : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_wsc2stat_status_valid : STD_LOGIC;
  signal skid2dre_wdata : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal skid2dre_wlast : STD_LOGIC;
  signal skid2dre_wstrb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal skid2dre_wvalid : STD_LOGIC;
begin
\ENABLE_AXIS_SKID.I_S2MM_STRM_SKID_BUF\: entity work.ps_axi_datamover_1_0_axi_datamover_skid_buf
     port map (
      E(0) => sig_data_reg_out_en,
      Q(127 downto 0) => skid2dre_wdata(127 downto 0),
      SR(0) => sig_mmap_rst,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\ => p_0_in2_in,
      s_axis_s2mm_tdata(127 downto 0) => s_axis_s2mm_tdata(127 downto 0),
      s_axis_s2mm_tkeep(15 downto 0) => s_axis_s2mm_tkeep(15 downto 0),
      s_axis_s2mm_tlast => s_axis_s2mm_tlast,
      s_axis_s2mm_tready => s_axis_s2mm_tready,
      s_axis_s2mm_tvalid => s_axis_s2mm_tvalid,
      sig_m_valid_out_reg_0 => skid2dre_wvalid,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_s_ready_out_reg_0 => dre2skid_wready,
      \sig_strb_reg_out_reg[15]_0\(15 downto 0) => skid2dre_wstrb(15 downto 0),
      skid2dre_wlast => skid2dre_wlast
    );
\GEN_INCLUDE_PCC.I_MSTR_PCC\: entity work.ps_axi_datamover_1_0_axi_datamover_pcc
     port map (
      D(0) => \I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i_p1\(0),
      Q(1) => I_CMD_STATUS_n_1,
      Q(0) => \I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i\(0),
      SR(0) => sig_mmap_rst,
      \USE_SRL_FIFO.sig_wr_fifo\ => \I_CMD_FIFO/USE_SRL_FIFO.sig_wr_fifo\,
      \USE_SRL_FIFO.sig_wr_fifo_0\ => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo\,
      \in\(44) => sig_mstr2data_cmd_last,
      \in\(43) => sig_mstr2data_sequential,
      \in\(42) => sig_mstr2data_eof,
      \in\(41 downto 26) => sig_mstr2data_last_strb(15 downto 0),
      \in\(25 downto 10) => sig_mstr2data_strt_strb(15 downto 0),
      \in\(9 downto 4) => sig_mstr2data_len(5 downto 0),
      \in\(3 downto 0) => sig_mstr2data_tag(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(53 downto 18) => sig_cmd2mstr_command(67 downto 32),
      \out\(17) => sig_cmd2mstr_command(30),
      \out\(16) => sig_cmd2mstr_command(23),
      \out\(15 downto 0) => sig_cmd2mstr_command(15 downto 0),
      s2mm_err => s2mm_err,
      \sig_addr_cntr_im0_msh_reg[15]_0\(31 downto 4) => sig_mstr2addr_addr(31 downto 4),
      \sig_addr_cntr_im0_msh_reg[15]_0\(3 downto 0) => sig_mstr2data_saddr_lsb(3 downto 0),
      sig_calc2dm_calc_err => sig_calc2dm_calc_err,
      sig_cmd2addr_valid_reg_0 => I_ADDR_CNTL_n_2,
      sig_cmd2data_valid_reg_0 => I_WR_DATA_CNTL_n_0,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_inhibit_rdy_n => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_1 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mstr2addr_burst(0) => sig_mstr2addr_burst(0),
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_sm_halt_reg_reg_0 => \GEN_INCLUDE_PCC.I_MSTR_PCC_n_51\
    );
\GEN_NO_REALIGNER.ENABLE_NOREALIGNER_SKID.I_NO_REALIGN_SKID_BUF\: entity work.ps_axi_datamover_1_0_axi_datamover_skid_buf_0
     port map (
      D(127 downto 0) => skid2dre_wdata(127 downto 0),
      E(0) => sig_data_reg_out_en_1,
      Q(127 downto 0) => sig_dre2ibtt_tdata(127 downto 0),
      SR(0) => sig_mmap_rst,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\ => p_0_in2_in_0,
      \sig_data_reg_out_reg[127]_0\ => p_0_in2_in,
      sig_dre2ibtt_tlast => sig_dre2ibtt_tlast,
      sig_m_valid_out_reg_0 => sig_dre2ibtt_tvalid,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_s_ready_out_reg_0 => dre2skid_wready,
      sig_s_ready_out_reg_1(0) => sig_data_reg_out_en,
      sig_s_ready_out_reg_2 => skid2dre_wvalid,
      sig_s_ready_out_reg_3 => I_WR_DATA_CNTL_n_19,
      \sig_strb_reg_out_reg[15]_0\(15 downto 0) => sig_dre2ibtt_tstrb(15 downto 0),
      \sig_strb_skid_reg_reg[15]_0\(15 downto 0) => skid2dre_wstrb(15 downto 0),
      skid2dre_wlast => skid2dre_wlast
    );
I_ADDR_CNTL: entity work.ps_axi_datamover_1_0_axi_datamover_addr_cntl
     port map (
      FIFO_Full_reg => I_ADDR_CNTL_n_2,
      SR(0) => sig_mmap_rst,
      \in\(39) => sig_calc2dm_calc_err,
      \in\(38) => sig_mstr2addr_burst(0),
      \in\(37 downto 32) => sig_mstr2data_len(5 downto 0),
      \in\(31 downto 4) => sig_mstr2addr_addr(31 downto 4),
      \in\(3 downto 0) => sig_mstr2data_saddr_lsb(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_awaddr(31 downto 0) => m_axi_s2mm_awaddr(31 downto 0),
      m_axi_s2mm_awburst(0) => m_axi_s2mm_awburst(0),
      m_axi_s2mm_awlen(5 downto 0) => m_axi_s2mm_awlen(5 downto 0),
      m_axi_s2mm_awready => m_axi_s2mm_awready,
      m_axi_s2mm_awsize(0) => m_axi_s2mm_awsize(0),
      m_axi_s2mm_awvalid => m_axi_s2mm_awvalid,
      \out\ => sig_addr2data_addr_posted,
      s2mm_addr_req_posted => s2mm_addr_req_posted,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_inhibit_rdy_n => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\,
      sig_init_reg2 => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_reg2\,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid
    );
I_CMD_STATUS: entity work.ps_axi_datamover_1_0_axi_datamover_cmd_status
     port map (
      D(0) => \I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i_p1\(0),
      FIFO_Full_reg => I_CMD_STATUS_n_0,
      FIFO_Full_reg_0 => \GEN_INCLUDE_PCC.I_MSTR_PCC_n_51\,
      Q(1) => I_CMD_STATUS_n_1,
      Q(0) => \I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i\(0),
      SS(0) => sig_cmd_stat_rst_int,
      \USE_SRL_FIFO.sig_wr_fifo\ => \I_CMD_FIFO/USE_SRL_FIFO.sig_wr_fifo\,
      \in\(0) => sig_wsc2stat_status(7),
      \in\(1) => sig_wsc2stat_status(6),
      \in\(2) => sig_wsc2stat_status(5),
      \in\(3) => sig_wsc2stat_status(4),
      \in\(4) => sig_wsc2stat_status(3),
      \in\(5) => sig_wsc2stat_status(2),
      \in\(6) => sig_wsc2stat_status(1),
      \in\(7) => sig_wsc2stat_status(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      \out\(53 downto 18) => sig_cmd2mstr_command(67 downto 32),
      \out\(17) => sig_cmd2mstr_command(30),
      \out\(16) => sig_cmd2mstr_command(23),
      \out\(15 downto 0) => sig_cmd2mstr_command(15 downto 0),
      s_axis_s2mm_cmd_tdata(53 downto 0) => s_axis_s2mm_cmd_tdata(53 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sig_cmd_stat_rst_int_reg_n => sig_cmd_stat_rst_int_reg_n,
      sig_coelsc_tag_reg0 => sig_coelsc_tag_reg0,
      sig_inhibit_rdy_n => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n\,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
I_RESET: entity work.ps_axi_datamover_1_0_axi_datamover_reset
     port map (
      SR(0) => sig_mmap_rst,
      SS(0) => sig_cmd_stat_rst_int,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_aresetn => m_axi_s2mm_aresetn,
      sig_cmd_stat_rst_int_reg_n => sig_cmd_stat_rst_int_reg_n,
      sig_init_done => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\,
      sig_init_done_0 => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done\,
      sig_init_done_1 => \I_WRESP_STATUS_FIFO/sig_init_done\,
      sig_init_reg2 => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_reg2\,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_mmap_rst_reg_n_reg_0 => I_RESET_n_3,
      sig_mmap_rst_reg_n_reg_1 => I_RESET_n_4,
      sig_mmap_rst_reg_n_reg_2 => I_RESET_n_5,
      sig_stream_rst_reg_n => sig_stream_rst_reg_n,
      sig_stream_rst_reg_n_reg_0(0) => sig_stream_rst
    );
I_S2MM_MMAP_SKID_BUF: entity work.ps_axi_datamover_1_0_axi_datamover_skid2mm_buf
     port map (
      D(127 downto 0) => sig_dre2ibtt_tdata(127 downto 0),
      Q(15 downto 0) => sig_strb_skid_reg(15 downto 0),
      SR(0) => sig_stream_rst,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_wdata(127 downto 0) => m_axi_s2mm_wdata(127 downto 0),
      m_axi_s2mm_wlast => m_axi_s2mm_wlast,
      m_axi_s2mm_wready => m_axi_s2mm_wready,
      m_axi_s2mm_wstrb(15 downto 0) => m_axi_s2mm_wstrb(15 downto 0),
      m_axi_s2mm_wvalid => m_axi_s2mm_wvalid,
      \out\ => p_0_in3_in,
      sig_data2skid_wlast => sig_data2skid_wlast,
      sig_last_skid_mux_out => sig_last_skid_mux_out,
      sig_last_skid_reg => sig_last_skid_reg,
      sig_m_valid_out_reg_0 => I_WR_DATA_CNTL_n_17,
      sig_s_ready_out_reg_0 => sig_skid2data_wready,
      \sig_strb_reg_out_reg[15]_0\(15 downto 0) => sig_strb_skid_mux_out(15 downto 0),
      \sig_strb_skid_reg_reg[15]_0\(15 downto 0) => sig_data2skid_wstrb(15 downto 0),
      sig_stream_rst_reg_n => sig_stream_rst_reg_n
    );
I_WR_DATA_CNTL: entity work.ps_axi_datamover_1_0_axi_datamover_wrdata_cntl
     port map (
      E(0) => sig_data_reg_out_en_1,
      FIFO_Full_reg => I_WR_DATA_CNTL_n_0,
      \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0\ => I_WR_STATUS_CNTLR_n_0,
      \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0\(15 downto 0) => sig_dre2ibtt_tstrb(15 downto 0),
      \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0\ => I_WR_DATA_CNTL_n_17,
      Q(15 downto 0) => sig_strb_skid_reg(15 downto 0),
      SR(0) => sig_mmap_rst,
      \USE_SRL_FIFO.sig_wr_fifo\ => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo\,
      \USE_SRL_FIFO.sig_wr_fifo_0\ => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.sig_wr_fifo\,
      \in\(0) => sig_data2wsc_tag(3),
      \in\(1) => sig_data2wsc_tag(2),
      \in\(2) => sig_data2wsc_tag(1),
      \in\(3) => sig_data2wsc_tag(0),
      \in\(4) => sig_data2wsc_calc_err,
      \in\(5) => sig_data2wsc_last_err,
      \in\(6) => sig_data2wsc_cmd_cmplt,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\ => sig_addr2data_addr_posted,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_data2skid_wlast => sig_data2skid_wlast,
      \sig_data_reg_out_reg[127]\ => p_0_in2_in_0,
      sig_dqual_reg_empty_reg_0 => sig_dre2ibtt_tvalid,
      sig_dqual_reg_empty_reg_1 => sig_skid2data_wready,
      sig_dre2ibtt_tlast => sig_dre2ibtt_tlast,
      sig_inhibit_rdy_n => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_1 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_2 => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\,
      sig_init_done => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\,
      sig_init_done_reg => I_RESET_n_3,
      sig_last_dbeat_reg_0(15 downto 0) => sig_data2skid_wstrb(15 downto 0),
      sig_last_skid_mux_out => sig_last_skid_mux_out,
      sig_last_skid_reg => sig_last_skid_reg,
      sig_mmap_rst_reg_n => sig_mmap_rst_reg_n,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg_i_5 => I_CMD_STATUS_n_0,
      sig_next_calc_error_reg_reg_0(45) => sig_calc2dm_calc_err,
      sig_next_calc_error_reg_reg_0(44) => sig_mstr2data_cmd_last,
      sig_next_calc_error_reg_reg_0(43) => sig_mstr2data_sequential,
      sig_next_calc_error_reg_reg_0(42) => sig_mstr2data_eof,
      sig_next_calc_error_reg_reg_0(41 downto 26) => sig_mstr2data_last_strb(15 downto 0),
      sig_next_calc_error_reg_reg_0(25 downto 10) => sig_mstr2data_strt_strb(15 downto 0),
      sig_next_calc_error_reg_reg_0(9 downto 4) => sig_mstr2data_len(5 downto 0),
      sig_next_calc_error_reg_reg_0(3 downto 0) => sig_mstr2data_tag(3 downto 0),
      \sig_next_last_strb_reg_reg[15]_0\(15 downto 0) => sig_strb_skid_mux_out(15 downto 0),
      sig_push_to_wsc => sig_push_to_wsc,
      sig_s_ready_out_reg => I_WR_DATA_CNTL_n_19,
      \sig_strb_reg_out_reg[0]\ => p_0_in3_in,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
I_WR_STATUS_CNTLR: entity work.ps_axi_datamover_1_0_axi_datamover_wr_status_cntl
     port map (
      FIFO_Full_reg => I_WR_STATUS_CNTLR_n_0,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(0) => sig_data2wsc_tag(3),
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(1) => sig_data2wsc_tag(2),
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(2) => sig_data2wsc_tag(1),
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(3) => sig_data2wsc_tag(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(4) => sig_data2wsc_calc_err,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(5) => sig_data2wsc_last_err,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(6) => sig_data2wsc_cmd_cmplt,
      SR(0) => sig_mmap_rst,
      \USE_SRL_FIFO.sig_wr_fifo\ => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.sig_wr_fifo\,
      \in\(0) => sig_wsc2stat_status(7),
      \in\(1) => sig_wsc2stat_status(6),
      \in\(2) => sig_wsc2stat_status(5),
      \in\(3) => sig_wsc2stat_status(4),
      \in\(4) => sig_wsc2stat_status(3),
      \in\(5) => sig_wsc2stat_status(2),
      \in\(6) => sig_wsc2stat_status(1),
      \in\(7) => sig_wsc2stat_status(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      sig_coelsc_tag_reg0 => sig_coelsc_tag_reg0,
      sig_inhibit_rdy_n => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\,
      sig_init_done => \I_WRESP_STATUS_FIFO/sig_init_done\,
      sig_init_done_0 => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done\,
      sig_init_done_reg => I_RESET_n_5,
      sig_init_done_reg_0 => I_RESET_n_4,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0_axi_datamover is
  port (
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_mm2s_aresetn : in STD_LOGIC;
    mm2s_halt : in STD_LOGIC;
    mm2s_halt_cmplt : out STD_LOGIC;
    mm2s_err : out STD_LOGIC;
    m_axis_mm2s_cmdsts_aclk : in STD_LOGIC;
    m_axis_mm2s_cmdsts_aresetn : in STD_LOGIC;
    s_axis_mm2s_cmd_tvalid : in STD_LOGIC;
    s_axis_mm2s_cmd_tready : out STD_LOGIC;
    s_axis_mm2s_cmd_tdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_mm2s_sts_tvalid : out STD_LOGIC;
    m_axis_mm2s_sts_tready : in STD_LOGIC;
    m_axis_mm2s_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_mm2s_sts_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_sts_tlast : out STD_LOGIC;
    mm2s_allow_addr_req : in STD_LOGIC;
    mm2s_addr_req_posted : out STD_LOGIC;
    mm2s_rd_xfer_cmplt : out STD_LOGIC;
    m_axi_mm2s_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    mm2s_dbg_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mm2s_dbg_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axi_s2mm_aresetn : in STD_LOGIC;
    s2mm_halt : in STD_LOGIC;
    s2mm_halt_cmplt : out STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    m_axis_s2mm_cmdsts_awclk : in STD_LOGIC;
    m_axis_s2mm_cmdsts_aresetn : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_s2mm_sts_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_sts_tlast : out STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    s2mm_addr_req_posted : out STD_LOGIC;
    s2mm_wr_xfer_cmplt : out STD_LOGIC;
    s2mm_ld_nxt_len : out STD_LOGIC;
    s2mm_wr_len : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tlast : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_CMD_WIDTH : integer;
  attribute C_CMD_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 72;
  attribute C_ENABLE_CACHE_USER : integer;
  attribute C_ENABLE_CACHE_USER of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_ENABLE_MM2S_ADV_SIG : integer;
  attribute C_ENABLE_MM2S_ADV_SIG of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_ENABLE_MM2S_TKEEP : integer;
  attribute C_ENABLE_MM2S_TKEEP of ps_axi_datamover_1_0_axi_datamover : entity is 1;
  attribute C_ENABLE_S2MM_ADV_SIG : integer;
  attribute C_ENABLE_S2MM_ADV_SIG of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_ENABLE_S2MM_TKEEP : integer;
  attribute C_ENABLE_S2MM_TKEEP of ps_axi_datamover_1_0_axi_datamover : entity is 1;
  attribute C_ENABLE_SKID_BUF : string;
  attribute C_ENABLE_SKID_BUF of ps_axi_datamover_1_0_axi_datamover : entity is "11111";
  attribute C_FAMILY : string;
  attribute C_FAMILY of ps_axi_datamover_1_0_axi_datamover : entity is "zynquplus";
  attribute C_INCLUDE_MM2S : integer;
  attribute C_INCLUDE_MM2S of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_INCLUDE_MM2S_DRE : integer;
  attribute C_INCLUDE_MM2S_DRE of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_INCLUDE_MM2S_STSFIFO : integer;
  attribute C_INCLUDE_MM2S_STSFIFO of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_INCLUDE_S2MM : integer;
  attribute C_INCLUDE_S2MM of ps_axi_datamover_1_0_axi_datamover : entity is 1;
  attribute C_INCLUDE_S2MM_DRE : integer;
  attribute C_INCLUDE_S2MM_DRE of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_INCLUDE_S2MM_STSFIFO : integer;
  attribute C_INCLUDE_S2MM_STSFIFO of ps_axi_datamover_1_0_axi_datamover : entity is 1;
  attribute C_MCDMA : integer;
  attribute C_MCDMA of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_MICRO_DMA : integer;
  attribute C_MICRO_DMA of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_MM2S_ADDR_PIPE_DEPTH : integer;
  attribute C_MM2S_ADDR_PIPE_DEPTH of ps_axi_datamover_1_0_axi_datamover : entity is 3;
  attribute C_MM2S_BTT_USED : integer;
  attribute C_MM2S_BTT_USED of ps_axi_datamover_1_0_axi_datamover : entity is 16;
  attribute C_MM2S_BURST_SIZE : integer;
  attribute C_MM2S_BURST_SIZE of ps_axi_datamover_1_0_axi_datamover : entity is 16;
  attribute C_MM2S_INCLUDE_SF : integer;
  attribute C_MM2S_INCLUDE_SF of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_MM2S_STSCMD_FIFO_DEPTH : integer;
  attribute C_MM2S_STSCMD_FIFO_DEPTH of ps_axi_datamover_1_0_axi_datamover : entity is 4;
  attribute C_MM2S_STSCMD_IS_ASYNC : integer;
  attribute C_MM2S_STSCMD_IS_ASYNC of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_M_AXIS_MM2S_TDATA_WIDTH : integer;
  attribute C_M_AXIS_MM2S_TDATA_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 32;
  attribute C_M_AXI_MM2S_ADDR_WIDTH : integer;
  attribute C_M_AXI_MM2S_ADDR_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 32;
  attribute C_M_AXI_MM2S_ARID : integer;
  attribute C_M_AXI_MM2S_ARID of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_M_AXI_MM2S_DATA_WIDTH : integer;
  attribute C_M_AXI_MM2S_DATA_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 32;
  attribute C_M_AXI_MM2S_ID_WIDTH : integer;
  attribute C_M_AXI_MM2S_ID_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 4;
  attribute C_M_AXI_S2MM_ADDR_WIDTH : integer;
  attribute C_M_AXI_S2MM_ADDR_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 32;
  attribute C_M_AXI_S2MM_AWID : integer;
  attribute C_M_AXI_S2MM_AWID of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_M_AXI_S2MM_DATA_WIDTH : integer;
  attribute C_M_AXI_S2MM_DATA_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 128;
  attribute C_M_AXI_S2MM_ID_WIDTH : integer;
  attribute C_M_AXI_S2MM_ID_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 1;
  attribute C_S2MM_ADDR_PIPE_DEPTH : integer;
  attribute C_S2MM_ADDR_PIPE_DEPTH of ps_axi_datamover_1_0_axi_datamover : entity is 4;
  attribute C_S2MM_BTT_USED : integer;
  attribute C_S2MM_BTT_USED of ps_axi_datamover_1_0_axi_datamover : entity is 16;
  attribute C_S2MM_BURST_SIZE : integer;
  attribute C_S2MM_BURST_SIZE of ps_axi_datamover_1_0_axi_datamover : entity is 64;
  attribute C_S2MM_INCLUDE_SF : integer;
  attribute C_S2MM_INCLUDE_SF of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_S2MM_STSCMD_FIFO_DEPTH : integer;
  attribute C_S2MM_STSCMD_FIFO_DEPTH of ps_axi_datamover_1_0_axi_datamover : entity is 4;
  attribute C_S2MM_STSCMD_IS_ASYNC : integer;
  attribute C_S2MM_STSCMD_IS_ASYNC of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_S2MM_SUPPORT_INDET_BTT : integer;
  attribute C_S2MM_SUPPORT_INDET_BTT of ps_axi_datamover_1_0_axi_datamover : entity is 0;
  attribute C_S_AXIS_S2MM_TDATA_WIDTH : integer;
  attribute C_S_AXIS_S2MM_TDATA_WIDTH of ps_axi_datamover_1_0_axi_datamover : entity is 128;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_datamover_1_0_axi_datamover : entity is "axi_datamover";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ps_axi_datamover_1_0_axi_datamover : entity is "yes";
end ps_axi_datamover_1_0_axi_datamover;

architecture STRUCTURE of ps_axi_datamover_1_0_axi_datamover is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_s2mm_awburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_s2mm_awlen\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^m_axi_s2mm_awsize\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute dont_touch : string;
  attribute dont_touch of m_axis_mm2s_cmdsts_aclk : signal is "true";
  attribute dont_touch of m_axis_s2mm_cmdsts_awclk : signal is "true";
begin
  m_axi_mm2s_araddr(31) <= \<const0>\;
  m_axi_mm2s_araddr(30) <= \<const0>\;
  m_axi_mm2s_araddr(29) <= \<const0>\;
  m_axi_mm2s_araddr(28) <= \<const0>\;
  m_axi_mm2s_araddr(27) <= \<const0>\;
  m_axi_mm2s_araddr(26) <= \<const0>\;
  m_axi_mm2s_araddr(25) <= \<const0>\;
  m_axi_mm2s_araddr(24) <= \<const0>\;
  m_axi_mm2s_araddr(23) <= \<const0>\;
  m_axi_mm2s_araddr(22) <= \<const0>\;
  m_axi_mm2s_araddr(21) <= \<const0>\;
  m_axi_mm2s_araddr(20) <= \<const0>\;
  m_axi_mm2s_araddr(19) <= \<const0>\;
  m_axi_mm2s_araddr(18) <= \<const0>\;
  m_axi_mm2s_araddr(17) <= \<const0>\;
  m_axi_mm2s_araddr(16) <= \<const0>\;
  m_axi_mm2s_araddr(15) <= \<const0>\;
  m_axi_mm2s_araddr(14) <= \<const0>\;
  m_axi_mm2s_araddr(13) <= \<const0>\;
  m_axi_mm2s_araddr(12) <= \<const0>\;
  m_axi_mm2s_araddr(11) <= \<const0>\;
  m_axi_mm2s_araddr(10) <= \<const0>\;
  m_axi_mm2s_araddr(9) <= \<const0>\;
  m_axi_mm2s_araddr(8) <= \<const0>\;
  m_axi_mm2s_araddr(7) <= \<const0>\;
  m_axi_mm2s_araddr(6) <= \<const0>\;
  m_axi_mm2s_araddr(5) <= \<const0>\;
  m_axi_mm2s_araddr(4) <= \<const0>\;
  m_axi_mm2s_araddr(3) <= \<const0>\;
  m_axi_mm2s_araddr(2) <= \<const0>\;
  m_axi_mm2s_araddr(1) <= \<const0>\;
  m_axi_mm2s_araddr(0) <= \<const0>\;
  m_axi_mm2s_arburst(1) <= \<const0>\;
  m_axi_mm2s_arburst(0) <= \<const0>\;
  m_axi_mm2s_arcache(3) <= \<const0>\;
  m_axi_mm2s_arcache(2) <= \<const0>\;
  m_axi_mm2s_arcache(1) <= \<const0>\;
  m_axi_mm2s_arcache(0) <= \<const0>\;
  m_axi_mm2s_arid(3) <= \<const0>\;
  m_axi_mm2s_arid(2) <= \<const0>\;
  m_axi_mm2s_arid(1) <= \<const0>\;
  m_axi_mm2s_arid(0) <= \<const0>\;
  m_axi_mm2s_arlen(7) <= \<const0>\;
  m_axi_mm2s_arlen(6) <= \<const0>\;
  m_axi_mm2s_arlen(5) <= \<const0>\;
  m_axi_mm2s_arlen(4) <= \<const0>\;
  m_axi_mm2s_arlen(3) <= \<const0>\;
  m_axi_mm2s_arlen(2) <= \<const0>\;
  m_axi_mm2s_arlen(1) <= \<const0>\;
  m_axi_mm2s_arlen(0) <= \<const0>\;
  m_axi_mm2s_arprot(2) <= \<const0>\;
  m_axi_mm2s_arprot(1) <= \<const0>\;
  m_axi_mm2s_arprot(0) <= \<const0>\;
  m_axi_mm2s_arsize(2) <= \<const0>\;
  m_axi_mm2s_arsize(1) <= \<const0>\;
  m_axi_mm2s_arsize(0) <= \<const0>\;
  m_axi_mm2s_aruser(3) <= \<const0>\;
  m_axi_mm2s_aruser(2) <= \<const0>\;
  m_axi_mm2s_aruser(1) <= \<const0>\;
  m_axi_mm2s_aruser(0) <= \<const0>\;
  m_axi_mm2s_arvalid <= \<const0>\;
  m_axi_mm2s_rready <= \<const0>\;
  m_axi_s2mm_awburst(1) <= \<const0>\;
  m_axi_s2mm_awburst(0) <= \^m_axi_s2mm_awburst\(0);
  m_axi_s2mm_awcache(3) <= \<const0>\;
  m_axi_s2mm_awcache(2) <= \<const0>\;
  m_axi_s2mm_awcache(1) <= \<const0>\;
  m_axi_s2mm_awcache(0) <= \<const0>\;
  m_axi_s2mm_awid(0) <= \<const0>\;
  m_axi_s2mm_awlen(7) <= \<const0>\;
  m_axi_s2mm_awlen(6) <= \<const0>\;
  m_axi_s2mm_awlen(5 downto 0) <= \^m_axi_s2mm_awlen\(5 downto 0);
  m_axi_s2mm_awprot(2) <= \<const0>\;
  m_axi_s2mm_awprot(1) <= \<const0>\;
  m_axi_s2mm_awprot(0) <= \<const0>\;
  m_axi_s2mm_awsize(2) <= \^m_axi_s2mm_awsize\(2);
  m_axi_s2mm_awsize(1) <= \<const0>\;
  m_axi_s2mm_awsize(0) <= \<const0>\;
  m_axi_s2mm_awuser(3) <= \<const0>\;
  m_axi_s2mm_awuser(2) <= \<const0>\;
  m_axi_s2mm_awuser(1) <= \<const0>\;
  m_axi_s2mm_awuser(0) <= \<const0>\;
  m_axis_mm2s_sts_tdata(7) <= \<const0>\;
  m_axis_mm2s_sts_tdata(6) <= \<const0>\;
  m_axis_mm2s_sts_tdata(5) <= \<const0>\;
  m_axis_mm2s_sts_tdata(4) <= \<const0>\;
  m_axis_mm2s_sts_tdata(3) <= \<const0>\;
  m_axis_mm2s_sts_tdata(2) <= \<const0>\;
  m_axis_mm2s_sts_tdata(1) <= \<const0>\;
  m_axis_mm2s_sts_tdata(0) <= \<const0>\;
  m_axis_mm2s_sts_tkeep(0) <= \<const0>\;
  m_axis_mm2s_sts_tlast <= \<const0>\;
  m_axis_mm2s_sts_tvalid <= \<const0>\;
  m_axis_mm2s_tdata(31) <= \<const0>\;
  m_axis_mm2s_tdata(30) <= \<const0>\;
  m_axis_mm2s_tdata(29) <= \<const0>\;
  m_axis_mm2s_tdata(28) <= \<const0>\;
  m_axis_mm2s_tdata(27) <= \<const0>\;
  m_axis_mm2s_tdata(26) <= \<const0>\;
  m_axis_mm2s_tdata(25) <= \<const0>\;
  m_axis_mm2s_tdata(24) <= \<const0>\;
  m_axis_mm2s_tdata(23) <= \<const0>\;
  m_axis_mm2s_tdata(22) <= \<const0>\;
  m_axis_mm2s_tdata(21) <= \<const0>\;
  m_axis_mm2s_tdata(20) <= \<const0>\;
  m_axis_mm2s_tdata(19) <= \<const0>\;
  m_axis_mm2s_tdata(18) <= \<const0>\;
  m_axis_mm2s_tdata(17) <= \<const0>\;
  m_axis_mm2s_tdata(16) <= \<const0>\;
  m_axis_mm2s_tdata(15) <= \<const0>\;
  m_axis_mm2s_tdata(14) <= \<const0>\;
  m_axis_mm2s_tdata(13) <= \<const0>\;
  m_axis_mm2s_tdata(12) <= \<const0>\;
  m_axis_mm2s_tdata(11) <= \<const0>\;
  m_axis_mm2s_tdata(10) <= \<const0>\;
  m_axis_mm2s_tdata(9) <= \<const0>\;
  m_axis_mm2s_tdata(8) <= \<const0>\;
  m_axis_mm2s_tdata(7) <= \<const0>\;
  m_axis_mm2s_tdata(6) <= \<const0>\;
  m_axis_mm2s_tdata(5) <= \<const0>\;
  m_axis_mm2s_tdata(4) <= \<const0>\;
  m_axis_mm2s_tdata(3) <= \<const0>\;
  m_axis_mm2s_tdata(2) <= \<const0>\;
  m_axis_mm2s_tdata(1) <= \<const0>\;
  m_axis_mm2s_tdata(0) <= \<const0>\;
  m_axis_mm2s_tkeep(3) <= \<const0>\;
  m_axis_mm2s_tkeep(2) <= \<const0>\;
  m_axis_mm2s_tkeep(1) <= \<const0>\;
  m_axis_mm2s_tkeep(0) <= \<const0>\;
  m_axis_mm2s_tlast <= \<const0>\;
  m_axis_mm2s_tvalid <= \<const0>\;
  m_axis_s2mm_sts_tkeep(0) <= \<const0>\;
  m_axis_s2mm_sts_tlast <= \<const0>\;
  mm2s_addr_req_posted <= \<const0>\;
  mm2s_dbg_data(31) <= \<const0>\;
  mm2s_dbg_data(30) <= \<const0>\;
  mm2s_dbg_data(29) <= \<const0>\;
  mm2s_dbg_data(28) <= \<const0>\;
  mm2s_dbg_data(27) <= \<const0>\;
  mm2s_dbg_data(26) <= \<const0>\;
  mm2s_dbg_data(25) <= \<const0>\;
  mm2s_dbg_data(24) <= \<const0>\;
  mm2s_dbg_data(23) <= \<const0>\;
  mm2s_dbg_data(22) <= \<const0>\;
  mm2s_dbg_data(21) <= \<const0>\;
  mm2s_dbg_data(20) <= \<const0>\;
  mm2s_dbg_data(19) <= \<const0>\;
  mm2s_dbg_data(18) <= \<const0>\;
  mm2s_dbg_data(17) <= \<const0>\;
  mm2s_dbg_data(16) <= \<const0>\;
  mm2s_dbg_data(15) <= \<const0>\;
  mm2s_dbg_data(14) <= \<const0>\;
  mm2s_dbg_data(13) <= \<const0>\;
  mm2s_dbg_data(12) <= \<const0>\;
  mm2s_dbg_data(11) <= \<const0>\;
  mm2s_dbg_data(10) <= \<const0>\;
  mm2s_dbg_data(9) <= \<const0>\;
  mm2s_dbg_data(8) <= \<const0>\;
  mm2s_dbg_data(7) <= \<const0>\;
  mm2s_dbg_data(6) <= \<const0>\;
  mm2s_dbg_data(5) <= \<const0>\;
  mm2s_dbg_data(4) <= \<const0>\;
  mm2s_dbg_data(3) <= \<const0>\;
  mm2s_dbg_data(2) <= \<const0>\;
  mm2s_dbg_data(1) <= \<const0>\;
  mm2s_dbg_data(0) <= \<const0>\;
  mm2s_err <= \<const0>\;
  mm2s_halt_cmplt <= \<const0>\;
  mm2s_rd_xfer_cmplt <= \<const0>\;
  s2mm_dbg_data(31) <= \<const0>\;
  s2mm_dbg_data(30) <= \<const0>\;
  s2mm_dbg_data(29) <= \<const0>\;
  s2mm_dbg_data(28) <= \<const0>\;
  s2mm_dbg_data(27) <= \<const0>\;
  s2mm_dbg_data(26) <= \<const0>\;
  s2mm_dbg_data(25) <= \<const0>\;
  s2mm_dbg_data(24) <= \<const0>\;
  s2mm_dbg_data(23) <= \<const0>\;
  s2mm_dbg_data(22) <= \<const0>\;
  s2mm_dbg_data(21) <= \<const0>\;
  s2mm_dbg_data(20) <= \<const0>\;
  s2mm_dbg_data(19) <= \<const0>\;
  s2mm_dbg_data(18) <= \<const0>\;
  s2mm_dbg_data(17) <= \<const0>\;
  s2mm_dbg_data(16) <= \<const0>\;
  s2mm_dbg_data(15) <= \<const0>\;
  s2mm_dbg_data(14) <= \<const0>\;
  s2mm_dbg_data(13) <= \<const0>\;
  s2mm_dbg_data(12) <= \<const0>\;
  s2mm_dbg_data(11) <= \<const0>\;
  s2mm_dbg_data(10) <= \<const0>\;
  s2mm_dbg_data(9) <= \<const0>\;
  s2mm_dbg_data(8) <= \<const0>\;
  s2mm_dbg_data(7) <= \<const0>\;
  s2mm_dbg_data(6) <= \<const0>\;
  s2mm_dbg_data(5) <= \<const0>\;
  s2mm_dbg_data(4) <= \<const0>\;
  s2mm_dbg_data(3) <= \<const0>\;
  s2mm_dbg_data(2) <= \<const0>\;
  s2mm_dbg_data(1) <= \<const0>\;
  s2mm_dbg_data(0) <= \<const0>\;
  s2mm_halt_cmplt <= \<const0>\;
  s2mm_ld_nxt_len <= \<const0>\;
  s2mm_wr_len(7) <= \<const0>\;
  s2mm_wr_len(6) <= \<const0>\;
  s2mm_wr_len(5) <= \<const0>\;
  s2mm_wr_len(4) <= \<const0>\;
  s2mm_wr_len(3) <= \<const0>\;
  s2mm_wr_len(2) <= \<const0>\;
  s2mm_wr_len(1) <= \<const0>\;
  s2mm_wr_len(0) <= \<const0>\;
  s2mm_wr_xfer_cmplt <= \<const0>\;
  s_axis_mm2s_cmd_tready <= \<const0>\;
\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER\: entity work.ps_axi_datamover_1_0_axi_datamover_s2mm_full_wrap
     port map (
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_aresetn => m_axi_s2mm_aresetn,
      m_axi_s2mm_awaddr(31 downto 0) => m_axi_s2mm_awaddr(31 downto 0),
      m_axi_s2mm_awburst(0) => \^m_axi_s2mm_awburst\(0),
      m_axi_s2mm_awlen(5 downto 0) => \^m_axi_s2mm_awlen\(5 downto 0),
      m_axi_s2mm_awready => m_axi_s2mm_awready,
      m_axi_s2mm_awsize(0) => \^m_axi_s2mm_awsize\(2),
      m_axi_s2mm_awvalid => m_axi_s2mm_awvalid,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      m_axi_s2mm_wdata(127 downto 0) => m_axi_s2mm_wdata(127 downto 0),
      m_axi_s2mm_wlast => m_axi_s2mm_wlast,
      m_axi_s2mm_wready => m_axi_s2mm_wready,
      m_axi_s2mm_wstrb(15 downto 0) => m_axi_s2mm_wstrb(15 downto 0),
      m_axi_s2mm_wvalid => m_axi_s2mm_wvalid,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      s2mm_addr_req_posted => s2mm_addr_req_posted,
      s2mm_err => s2mm_err,
      s_axis_s2mm_cmd_tdata(53 downto 18) => s_axis_s2mm_cmd_tdata(67 downto 32),
      s_axis_s2mm_cmd_tdata(17) => s_axis_s2mm_cmd_tdata(30),
      s_axis_s2mm_cmd_tdata(16) => s_axis_s2mm_cmd_tdata(23),
      s_axis_s2mm_cmd_tdata(15 downto 0) => s_axis_s2mm_cmd_tdata(15 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      s_axis_s2mm_tdata(127 downto 0) => s_axis_s2mm_tdata(127 downto 0),
      s_axis_s2mm_tkeep(15 downto 0) => s_axis_s2mm_tkeep(15 downto 0),
      s_axis_s2mm_tlast => s_axis_s2mm_tlast,
      s_axis_s2mm_tready => s_axis_s2mm_tready,
      s_axis_s2mm_tvalid => s_axis_s2mm_tvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_datamover_1_0 is
  port (
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axi_s2mm_aresetn : in STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    m_axis_s2mm_cmdsts_awclk : in STD_LOGIC;
    m_axis_s2mm_cmdsts_aresetn : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_s2mm_sts_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_sts_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tlast : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_axi_datamover_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_axi_datamover_1_0 : entity is "ps_axi_datamover_1_0,axi_datamover,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ps_axi_datamover_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ps_axi_datamover_1_0 : entity is "axi_datamover,Vivado 2025.1";
end ps_axi_datamover_1_0;

architecture STRUCTURE of ps_axi_datamover_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_s2mm_awburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_s2mm_awlen\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^m_axi_s2mm_awsize\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_U0_m_axi_mm2s_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_mm2s_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_mm2s_sts_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_mm2s_sts_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_mm2s_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_s2mm_sts_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_addr_req_posted_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_err_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_halt_cmplt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_rd_xfer_cmplt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s2mm_addr_req_posted_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s2mm_halt_cmplt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s2mm_ld_nxt_len_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s2mm_wr_xfer_cmplt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_mm2s_cmd_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_mm2s_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_mm2s_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_mm2s_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_mm2s_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_mm2s_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_mm2s_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_mm2s_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_mm2s_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_s2mm_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_m_axi_s2mm_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_s2mm_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_s2mm_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_U0_m_axi_s2mm_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_s2mm_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_s2mm_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axis_mm2s_sts_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_mm2s_sts_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_mm2s_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axis_s2mm_sts_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_mm2s_dbg_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s2mm_dbg_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s2mm_wr_len_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute C_CMD_WIDTH : integer;
  attribute C_CMD_WIDTH of U0 : label is 72;
  attribute C_ENABLE_CACHE_USER : integer;
  attribute C_ENABLE_CACHE_USER of U0 : label is 0;
  attribute C_ENABLE_MM2S_ADV_SIG : integer;
  attribute C_ENABLE_MM2S_ADV_SIG of U0 : label is 0;
  attribute C_ENABLE_MM2S_TKEEP : integer;
  attribute C_ENABLE_MM2S_TKEEP of U0 : label is 1;
  attribute C_ENABLE_S2MM_ADV_SIG : integer;
  attribute C_ENABLE_S2MM_ADV_SIG of U0 : label is 0;
  attribute C_ENABLE_S2MM_TKEEP : integer;
  attribute C_ENABLE_S2MM_TKEEP of U0 : label is 1;
  attribute C_ENABLE_SKID_BUF : string;
  attribute C_ENABLE_SKID_BUF of U0 : label is "11111";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_INCLUDE_MM2S : integer;
  attribute C_INCLUDE_MM2S of U0 : label is 0;
  attribute C_INCLUDE_MM2S_DRE : integer;
  attribute C_INCLUDE_MM2S_DRE of U0 : label is 0;
  attribute C_INCLUDE_MM2S_STSFIFO : integer;
  attribute C_INCLUDE_MM2S_STSFIFO of U0 : label is 0;
  attribute C_INCLUDE_S2MM : integer;
  attribute C_INCLUDE_S2MM of U0 : label is 1;
  attribute C_INCLUDE_S2MM_DRE : integer;
  attribute C_INCLUDE_S2MM_DRE of U0 : label is 0;
  attribute C_INCLUDE_S2MM_STSFIFO : integer;
  attribute C_INCLUDE_S2MM_STSFIFO of U0 : label is 1;
  attribute C_MCDMA : integer;
  attribute C_MCDMA of U0 : label is 0;
  attribute C_MICRO_DMA : integer;
  attribute C_MICRO_DMA of U0 : label is 0;
  attribute C_MM2S_ADDR_PIPE_DEPTH : integer;
  attribute C_MM2S_ADDR_PIPE_DEPTH of U0 : label is 3;
  attribute C_MM2S_BTT_USED : integer;
  attribute C_MM2S_BTT_USED of U0 : label is 16;
  attribute C_MM2S_BURST_SIZE : integer;
  attribute C_MM2S_BURST_SIZE of U0 : label is 16;
  attribute C_MM2S_INCLUDE_SF : integer;
  attribute C_MM2S_INCLUDE_SF of U0 : label is 0;
  attribute C_MM2S_STSCMD_FIFO_DEPTH : integer;
  attribute C_MM2S_STSCMD_FIFO_DEPTH of U0 : label is 4;
  attribute C_MM2S_STSCMD_IS_ASYNC : integer;
  attribute C_MM2S_STSCMD_IS_ASYNC of U0 : label is 0;
  attribute C_M_AXIS_MM2S_TDATA_WIDTH : integer;
  attribute C_M_AXIS_MM2S_TDATA_WIDTH of U0 : label is 32;
  attribute C_M_AXI_MM2S_ADDR_WIDTH : integer;
  attribute C_M_AXI_MM2S_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AXI_MM2S_ARID : integer;
  attribute C_M_AXI_MM2S_ARID of U0 : label is 0;
  attribute C_M_AXI_MM2S_DATA_WIDTH : integer;
  attribute C_M_AXI_MM2S_DATA_WIDTH of U0 : label is 32;
  attribute C_M_AXI_MM2S_ID_WIDTH : integer;
  attribute C_M_AXI_MM2S_ID_WIDTH of U0 : label is 4;
  attribute C_M_AXI_S2MM_ADDR_WIDTH : integer;
  attribute C_M_AXI_S2MM_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AXI_S2MM_AWID : integer;
  attribute C_M_AXI_S2MM_AWID of U0 : label is 0;
  attribute C_M_AXI_S2MM_DATA_WIDTH : integer;
  attribute C_M_AXI_S2MM_DATA_WIDTH of U0 : label is 128;
  attribute C_M_AXI_S2MM_ID_WIDTH : integer;
  attribute C_M_AXI_S2MM_ID_WIDTH of U0 : label is 1;
  attribute C_S2MM_ADDR_PIPE_DEPTH : integer;
  attribute C_S2MM_ADDR_PIPE_DEPTH of U0 : label is 4;
  attribute C_S2MM_BTT_USED : integer;
  attribute C_S2MM_BTT_USED of U0 : label is 16;
  attribute C_S2MM_BURST_SIZE : integer;
  attribute C_S2MM_BURST_SIZE of U0 : label is 64;
  attribute C_S2MM_INCLUDE_SF : integer;
  attribute C_S2MM_INCLUDE_SF of U0 : label is 0;
  attribute C_S2MM_STSCMD_FIFO_DEPTH : integer;
  attribute C_S2MM_STSCMD_FIFO_DEPTH of U0 : label is 4;
  attribute C_S2MM_STSCMD_IS_ASYNC : integer;
  attribute C_S2MM_STSCMD_IS_ASYNC of U0 : label is 0;
  attribute C_S2MM_SUPPORT_INDET_BTT : integer;
  attribute C_S2MM_SUPPORT_INDET_BTT of U0 : label is 0;
  attribute C_S_AXIS_S2MM_TDATA_WIDTH : integer;
  attribute C_S_AXIS_S2MM_TDATA_WIDTH of U0 : label is 128;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of m_axi_s2mm_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_S2MM_ACLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of m_axi_s2mm_aclk : signal is "slave M_AXI_S2MM_ACLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axi_s2mm_aclk : signal is "XIL_INTERFACENAME M_AXI_S2MM_ACLK, ASSOCIATED_BUSIF M_AXI_S2MM:S_AXIS_S2MM, ASSOCIATED_RESET m_axi_s2mm_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axi_s2mm_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXI_S2MM_ARESETN RST";
  attribute x_interface_mode of m_axi_s2mm_aresetn : signal is "slave M_AXI_S2MM_ARESETN";
  attribute x_interface_parameter of m_axi_s2mm_aresetn : signal is "XIL_INTERFACENAME M_AXI_S2MM_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_s2mm_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWREADY";
  attribute x_interface_info of m_axi_s2mm_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWVALID";
  attribute x_interface_info of m_axi_s2mm_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BREADY";
  attribute x_interface_info of m_axi_s2mm_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BVALID";
  attribute x_interface_info of m_axi_s2mm_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WLAST";
  attribute x_interface_info of m_axi_s2mm_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WREADY";
  attribute x_interface_info of m_axi_s2mm_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WVALID";
  attribute x_interface_info of m_axis_s2mm_cmdsts_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_S2MM_CMDSTS_ARESETN RST";
  attribute x_interface_mode of m_axis_s2mm_cmdsts_aresetn : signal is "slave M_AXIS_S2MM_CMDSTS_ARESETN";
  attribute x_interface_parameter of m_axis_s2mm_cmdsts_aresetn : signal is "XIL_INTERFACENAME M_AXIS_S2MM_CMDSTS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_s2mm_cmdsts_awclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_S2MM_CMDSTS_AWCLK CLK";
  attribute x_interface_mode of m_axis_s2mm_cmdsts_awclk : signal is "slave M_AXIS_S2MM_CMDSTS_AWCLK";
  attribute x_interface_parameter of m_axis_s2mm_cmdsts_awclk : signal is "XIL_INTERFACENAME M_AXIS_S2MM_CMDSTS_AWCLK, ASSOCIATED_BUSIF S_AXIS_S2MM_CMD:M_AXIS_S2MM_STS, ASSOCIATED_RESET m_axis_s2mm_cmdsts_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axis_s2mm_sts_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TLAST";
  attribute x_interface_info of m_axis_s2mm_sts_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TREADY";
  attribute x_interface_info of m_axis_s2mm_sts_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TVALID";
  attribute x_interface_mode of m_axis_s2mm_sts_tvalid : signal is "master M_AXIS_S2MM_STS";
  attribute x_interface_parameter of m_axis_s2mm_sts_tvalid : signal is "XIL_INTERFACENAME M_AXIS_S2MM_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_cmd_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TREADY";
  attribute x_interface_info of s_axis_s2mm_cmd_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TVALID";
  attribute x_interface_mode of s_axis_s2mm_cmd_tvalid : signal is "slave S_AXIS_S2MM_CMD";
  attribute x_interface_parameter of s_axis_s2mm_cmd_tvalid : signal is "XIL_INTERFACENAME S_AXIS_S2MM_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TLAST";
  attribute x_interface_info of s_axis_s2mm_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TREADY";
  attribute x_interface_info of s_axis_s2mm_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TVALID";
  attribute x_interface_info of m_axi_s2mm_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWADDR";
  attribute x_interface_mode of m_axi_s2mm_awaddr : signal is "master M_AXI_S2MM";
  attribute x_interface_parameter of m_axi_s2mm_awaddr : signal is "XIL_INTERFACENAME M_AXI_S2MM, NUM_WRITE_OUTSTANDING 2, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 333250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, MAX_BURST_LENGTH 64, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_s2mm_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWBURST";
  attribute x_interface_info of m_axi_s2mm_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWCACHE";
  attribute x_interface_info of m_axi_s2mm_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWLEN";
  attribute x_interface_info of m_axi_s2mm_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWPROT";
  attribute x_interface_info of m_axi_s2mm_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWSIZE";
  attribute x_interface_info of m_axi_s2mm_awuser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWUSER";
  attribute x_interface_info of m_axi_s2mm_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BRESP";
  attribute x_interface_info of m_axi_s2mm_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WDATA";
  attribute x_interface_info of m_axi_s2mm_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WSTRB";
  attribute x_interface_info of m_axis_s2mm_sts_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TDATA";
  attribute x_interface_info of m_axis_s2mm_sts_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TKEEP";
  attribute x_interface_info of s_axis_s2mm_cmd_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TDATA";
  attribute x_interface_info of s_axis_s2mm_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TDATA";
  attribute x_interface_mode of s_axis_s2mm_tdata : signal is "slave S_AXIS_S2MM";
  attribute x_interface_parameter of s_axis_s2mm_tdata : signal is "XIL_INTERFACENAME S_AXIS_S2MM, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TKEEP";
begin
  m_axi_s2mm_awburst(1) <= \<const0>\;
  m_axi_s2mm_awburst(0) <= \^m_axi_s2mm_awburst\(0);
  m_axi_s2mm_awcache(3) <= \<const0>\;
  m_axi_s2mm_awcache(2) <= \<const0>\;
  m_axi_s2mm_awcache(1) <= \<const1>\;
  m_axi_s2mm_awcache(0) <= \<const1>\;
  m_axi_s2mm_awlen(7) <= \<const0>\;
  m_axi_s2mm_awlen(6) <= \<const0>\;
  m_axi_s2mm_awlen(5 downto 0) <= \^m_axi_s2mm_awlen\(5 downto 0);
  m_axi_s2mm_awprot(2) <= \<const0>\;
  m_axi_s2mm_awprot(1) <= \<const0>\;
  m_axi_s2mm_awprot(0) <= \<const0>\;
  m_axi_s2mm_awsize(2) <= \^m_axi_s2mm_awsize\(2);
  m_axi_s2mm_awsize(1) <= \<const0>\;
  m_axi_s2mm_awsize(0) <= \<const0>\;
  m_axi_s2mm_awuser(3) <= \<const0>\;
  m_axi_s2mm_awuser(2) <= \<const0>\;
  m_axi_s2mm_awuser(1) <= \<const0>\;
  m_axi_s2mm_awuser(0) <= \<const0>\;
  m_axis_s2mm_sts_tkeep(0) <= \<const1>\;
  m_axis_s2mm_sts_tlast <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ps_axi_datamover_1_0_axi_datamover
     port map (
      m_axi_mm2s_aclk => '0',
      m_axi_mm2s_araddr(31 downto 0) => NLW_U0_m_axi_mm2s_araddr_UNCONNECTED(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => NLW_U0_m_axi_mm2s_arburst_UNCONNECTED(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => NLW_U0_m_axi_mm2s_arcache_UNCONNECTED(3 downto 0),
      m_axi_mm2s_aresetn => '1',
      m_axi_mm2s_arid(3 downto 0) => NLW_U0_m_axi_mm2s_arid_UNCONNECTED(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => NLW_U0_m_axi_mm2s_arlen_UNCONNECTED(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => NLW_U0_m_axi_mm2s_arprot_UNCONNECTED(2 downto 0),
      m_axi_mm2s_arready => '0',
      m_axi_mm2s_arsize(2 downto 0) => NLW_U0_m_axi_mm2s_arsize_UNCONNECTED(2 downto 0),
      m_axi_mm2s_aruser(3 downto 0) => NLW_U0_m_axi_mm2s_aruser_UNCONNECTED(3 downto 0),
      m_axi_mm2s_arvalid => NLW_U0_m_axi_mm2s_arvalid_UNCONNECTED,
      m_axi_mm2s_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_mm2s_rlast => '0',
      m_axi_mm2s_rready => NLW_U0_m_axi_mm2s_rready_UNCONNECTED,
      m_axi_mm2s_rresp(1 downto 0) => B"00",
      m_axi_mm2s_rvalid => '0',
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_aresetn => m_axi_s2mm_aresetn,
      m_axi_s2mm_awaddr(31 downto 0) => m_axi_s2mm_awaddr(31 downto 0),
      m_axi_s2mm_awburst(1) => NLW_U0_m_axi_s2mm_awburst_UNCONNECTED(1),
      m_axi_s2mm_awburst(0) => \^m_axi_s2mm_awburst\(0),
      m_axi_s2mm_awcache(3 downto 0) => NLW_U0_m_axi_s2mm_awcache_UNCONNECTED(3 downto 0),
      m_axi_s2mm_awid(0) => NLW_U0_m_axi_s2mm_awid_UNCONNECTED(0),
      m_axi_s2mm_awlen(7 downto 6) => NLW_U0_m_axi_s2mm_awlen_UNCONNECTED(7 downto 6),
      m_axi_s2mm_awlen(5 downto 0) => \^m_axi_s2mm_awlen\(5 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => NLW_U0_m_axi_s2mm_awprot_UNCONNECTED(2 downto 0),
      m_axi_s2mm_awready => m_axi_s2mm_awready,
      m_axi_s2mm_awsize(2) => \^m_axi_s2mm_awsize\(2),
      m_axi_s2mm_awsize(1 downto 0) => NLW_U0_m_axi_s2mm_awsize_UNCONNECTED(1 downto 0),
      m_axi_s2mm_awuser(3 downto 0) => NLW_U0_m_axi_s2mm_awuser_UNCONNECTED(3 downto 0),
      m_axi_s2mm_awvalid => m_axi_s2mm_awvalid,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      m_axi_s2mm_wdata(127 downto 0) => m_axi_s2mm_wdata(127 downto 0),
      m_axi_s2mm_wlast => m_axi_s2mm_wlast,
      m_axi_s2mm_wready => m_axi_s2mm_wready,
      m_axi_s2mm_wstrb(15 downto 0) => m_axi_s2mm_wstrb(15 downto 0),
      m_axi_s2mm_wvalid => m_axi_s2mm_wvalid,
      m_axis_mm2s_cmdsts_aclk => '0',
      m_axis_mm2s_cmdsts_aresetn => '1',
      m_axis_mm2s_sts_tdata(7 downto 0) => NLW_U0_m_axis_mm2s_sts_tdata_UNCONNECTED(7 downto 0),
      m_axis_mm2s_sts_tkeep(0) => NLW_U0_m_axis_mm2s_sts_tkeep_UNCONNECTED(0),
      m_axis_mm2s_sts_tlast => NLW_U0_m_axis_mm2s_sts_tlast_UNCONNECTED,
      m_axis_mm2s_sts_tready => '0',
      m_axis_mm2s_sts_tvalid => NLW_U0_m_axis_mm2s_sts_tvalid_UNCONNECTED,
      m_axis_mm2s_tdata(31 downto 0) => NLW_U0_m_axis_mm2s_tdata_UNCONNECTED(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_U0_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => NLW_U0_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => '0',
      m_axis_mm2s_tvalid => NLW_U0_m_axis_mm2s_tvalid_UNCONNECTED,
      m_axis_s2mm_cmdsts_aresetn => '0',
      m_axis_s2mm_cmdsts_awclk => m_axis_s2mm_cmdsts_awclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tkeep(0) => NLW_U0_m_axis_s2mm_sts_tkeep_UNCONNECTED(0),
      m_axis_s2mm_sts_tlast => NLW_U0_m_axis_s2mm_sts_tlast_UNCONNECTED,
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      mm2s_addr_req_posted => NLW_U0_mm2s_addr_req_posted_UNCONNECTED,
      mm2s_allow_addr_req => '1',
      mm2s_dbg_data(31 downto 0) => NLW_U0_mm2s_dbg_data_UNCONNECTED(31 downto 0),
      mm2s_dbg_sel(3 downto 0) => B"0000",
      mm2s_err => NLW_U0_mm2s_err_UNCONNECTED,
      mm2s_halt => '0',
      mm2s_halt_cmplt => NLW_U0_mm2s_halt_cmplt_UNCONNECTED,
      mm2s_rd_xfer_cmplt => NLW_U0_mm2s_rd_xfer_cmplt_UNCONNECTED,
      s2mm_addr_req_posted => NLW_U0_s2mm_addr_req_posted_UNCONNECTED,
      s2mm_allow_addr_req => '1',
      s2mm_dbg_data(31 downto 0) => NLW_U0_s2mm_dbg_data_UNCONNECTED(31 downto 0),
      s2mm_dbg_sel(3 downto 0) => B"0000",
      s2mm_err => s2mm_err,
      s2mm_halt => '0',
      s2mm_halt_cmplt => NLW_U0_s2mm_halt_cmplt_UNCONNECTED,
      s2mm_ld_nxt_len => NLW_U0_s2mm_ld_nxt_len_UNCONNECTED,
      s2mm_wr_len(7 downto 0) => NLW_U0_s2mm_wr_len_UNCONNECTED(7 downto 0),
      s2mm_wr_xfer_cmplt => NLW_U0_s2mm_wr_xfer_cmplt_UNCONNECTED,
      s_axis_mm2s_cmd_tdata(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axis_mm2s_cmd_tready => NLW_U0_s_axis_mm2s_cmd_tready_UNCONNECTED,
      s_axis_mm2s_cmd_tvalid => '0',
      s_axis_s2mm_cmd_tdata(71 downto 68) => B"0000",
      s_axis_s2mm_cmd_tdata(67 downto 32) => s_axis_s2mm_cmd_tdata(67 downto 32),
      s_axis_s2mm_cmd_tdata(31) => '0',
      s_axis_s2mm_cmd_tdata(30) => s_axis_s2mm_cmd_tdata(30),
      s_axis_s2mm_cmd_tdata(29 downto 24) => B"000000",
      s_axis_s2mm_cmd_tdata(23) => s_axis_s2mm_cmd_tdata(23),
      s_axis_s2mm_cmd_tdata(22 downto 16) => B"0000000",
      s_axis_s2mm_cmd_tdata(15 downto 0) => s_axis_s2mm_cmd_tdata(15 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      s_axis_s2mm_tdata(127 downto 0) => s_axis_s2mm_tdata(127 downto 0),
      s_axis_s2mm_tkeep(15 downto 0) => s_axis_s2mm_tkeep(15 downto 0),
      s_axis_s2mm_tlast => s_axis_s2mm_tlast,
      s_axis_s2mm_tready => s_axis_s2mm_tready,
      s_axis_s2mm_tvalid => s_axis_s2mm_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
