-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Feb  5 00:11:20 2026
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_burst_0_0/ps_comp_burst_0_0_sim_netlist.vhdl
-- Design      : ps_comp_burst_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_burst_0_0_one_to_four is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    wr : in STD_LOGIC;
    env : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_diff : in STD_LOGIC_VECTOR ( 19 downto 0 );
    size : in STD_LOGIC_VECTOR ( 10 downto 0 );
    read_back : in STD_LOGIC;
    active : out STD_LOGIC;
    env_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    env_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    env_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    env_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_diff_0 : out STD_LOGIC_VECTOR ( 19 downto 0 );
    phase_diff_1 : out STD_LOGIC_VECTOR ( 19 downto 0 );
    phase_diff_2 : out STD_LOGIC_VECTOR ( 19 downto 0 );
    phase_diff_3 : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_burst_0_0_one_to_four : entity is "one_to_four";
end ps_comp_burst_0_0_one_to_four;

architecture STRUCTURE of ps_comp_burst_0_0_one_to_four is
  signal active_1 : STD_LOGIC;
  signal env_in_val : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \env_in_val__0\ : STD_LOGIC_VECTOR ( 63 downto 15 );
  signal mem_wr : STD_LOGIC;
  signal \one_to_four.active_0_i_1_n_0\ : STD_LOGIC;
  signal \one_to_four.active_0_i_2_n_0\ : STD_LOGIC;
  signal \one_to_four.active_0_reg_n_0\ : STD_LOGIC;
  signal \one_to_four.counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \one_to_four.counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \one_to_four.counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \one_to_four.counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \one_to_four.counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \one_to_four.counter[6]_i_3_n_0\ : STD_LOGIC;
  signal \one_to_four.counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \one_to_four.mem_wr_i_1_n_0\ : STD_LOGIC;
  signal \one_to_four.rd_ptr_reg\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \one_to_four.rd_ptr_rep[8]_i_2_n_0\ : STD_LOGIC;
  signal \one_to_four.wr_offset[0]_i_1_n_0\ : STD_LOGIC;
  signal \one_to_four.wr_offset[1]_i_1_n_0\ : STD_LOGIC;
  signal \one_to_four.wr_offset[1]_i_2_n_0\ : STD_LOGIC;
  signal \one_to_four.wr_ptr[8]_i_1_n_0\ : STD_LOGIC;
  signal \one_to_four.wr_ptr[8]_i_4_n_0\ : STD_LOGIC;
  signal \one_to_four.wr_ptr_reg\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal phase_diff_in_val : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal phase_diff_out_val : STD_LOGIC_VECTOR ( 79 downto 72 );
  signal phase_in_val : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rd_ptr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal read_back_i : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_offset : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wr_ptr : STD_LOGIC;
  signal \NLW_one_to_four.mem_env_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_env_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_env_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_env_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_env_reg_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_one_to_four.mem_env_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_phase_diff_reg_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_phase_diff_reg_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_one_to_four.mem_phase_diff_reg_1_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_phase_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_phase_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_phase_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_one_to_four.mem_phase_reg_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_one_to_four.mem_phase_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \one_to_four.counter[10]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \one_to_four.counter[6]_i_3\ : label is "soft_lutpair0";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \one_to_four.mem_env_reg\ : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \one_to_four.mem_env_reg\ : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \one_to_four.mem_env_reg\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \one_to_four.mem_env_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \one_to_four.mem_env_reg\ : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \one_to_four.mem_env_reg\ : label is "one_to_four/one_to_four.mem_env_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \one_to_four.mem_env_reg\ : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \one_to_four.mem_env_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \one_to_four.mem_env_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \one_to_four.mem_env_reg\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \one_to_four.mem_env_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \one_to_four.mem_env_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \one_to_four.mem_env_reg\ : label is 63;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \one_to_four.mem_phase_diff_reg_0\ : label is "p8_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \one_to_four.mem_phase_diff_reg_0\ : label is "p8_d64";
  attribute METHODOLOGY_DRC_VIOS of \one_to_four.mem_phase_diff_reg_0\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of \one_to_four.mem_phase_diff_reg_0\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \one_to_four.mem_phase_diff_reg_0\ : label is 40960;
  attribute RTL_RAM_NAME of \one_to_four.mem_phase_diff_reg_0\ : label is "one_to_four/one_to_four.mem_phase_diff_reg";
  attribute RTL_RAM_STYLE of \one_to_four.mem_phase_diff_reg_0\ : label is "block";
  attribute RTL_RAM_TYPE of \one_to_four.mem_phase_diff_reg_0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \one_to_four.mem_phase_diff_reg_0\ : label is 0;
  attribute ram_addr_end of \one_to_four.mem_phase_diff_reg_0\ : label is 511;
  attribute ram_offset of \one_to_four.mem_phase_diff_reg_0\ : label is 0;
  attribute ram_slice_begin of \one_to_four.mem_phase_diff_reg_0\ : label is 0;
  attribute ram_slice_end of \one_to_four.mem_phase_diff_reg_0\ : label is 71;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \one_to_four.mem_phase_diff_reg_1\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \one_to_four.mem_phase_diff_reg_1\ : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of \one_to_four.mem_phase_diff_reg_1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of \one_to_four.mem_phase_diff_reg_1\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \one_to_four.mem_phase_diff_reg_1\ : label is 40960;
  attribute RTL_RAM_NAME of \one_to_four.mem_phase_diff_reg_1\ : label is "one_to_four/one_to_four.mem_phase_diff_reg";
  attribute RTL_RAM_STYLE of \one_to_four.mem_phase_diff_reg_1\ : label is "block";
  attribute RTL_RAM_TYPE of \one_to_four.mem_phase_diff_reg_1\ : label is "RAM_SDP";
  attribute ram_addr_begin of \one_to_four.mem_phase_diff_reg_1\ : label is 0;
  attribute ram_addr_end of \one_to_four.mem_phase_diff_reg_1\ : label is 511;
  attribute ram_offset of \one_to_four.mem_phase_diff_reg_1\ : label is 0;
  attribute ram_slice_begin of \one_to_four.mem_phase_diff_reg_1\ : label is 72;
  attribute ram_slice_end of \one_to_four.mem_phase_diff_reg_1\ : label is 79;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \one_to_four.mem_phase_reg\ : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \one_to_four.mem_phase_reg\ : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS of \one_to_four.mem_phase_reg\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of \one_to_four.mem_phase_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \one_to_four.mem_phase_reg\ : label is 32768;
  attribute RTL_RAM_NAME of \one_to_four.mem_phase_reg\ : label is "one_to_four/one_to_four.mem_phase_reg";
  attribute RTL_RAM_STYLE of \one_to_four.mem_phase_reg\ : label is "block";
  attribute RTL_RAM_TYPE of \one_to_four.mem_phase_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin of \one_to_four.mem_phase_reg\ : label is 0;
  attribute ram_addr_end of \one_to_four.mem_phase_reg\ : label is 511;
  attribute ram_offset of \one_to_four.mem_phase_reg\ : label is 0;
  attribute ram_slice_begin of \one_to_four.mem_phase_reg\ : label is 0;
  attribute ram_slice_end of \one_to_four.mem_phase_reg\ : label is 63;
  attribute SOFT_HLUTNM of \one_to_four.rd_ptr_rep[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \one_to_four.rd_ptr_rep[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \one_to_four.rd_ptr_rep[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \one_to_four.rd_ptr_rep[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \one_to_four.rd_ptr_rep[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \one_to_four.rd_ptr_rep[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \one_to_four.wr_offset[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \one_to_four.wr_offset[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \one_to_four.wr_ptr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \one_to_four.wr_ptr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \one_to_four.wr_ptr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \one_to_four.wr_ptr[4]_i_1\ : label is "soft_lutpair2";
begin
\one_to_four.active_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEE2E"
    )
        port map (
      I0 => read_back_i,
      I1 => \one_to_four.active_0_reg_n_0\,
      I2 => \one_to_four.active_0_i_2_n_0\,
      I3 => \one_to_four.counter[10]_i_4_n_0\,
      I4 => \one_to_four.counter[6]_i_2_n_0\,
      I5 => reset,
      O => \one_to_four.active_0_i_1_n_0\
    );
\one_to_four.active_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => \one_to_four.active_0_reg_n_0\,
      O => \one_to_four.active_0_i_2_n_0\
    );
\one_to_four.active_0_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \one_to_four.active_0_i_1_n_0\,
      Q => \one_to_four.active_0_reg_n_0\,
      R => '0'
    );
\one_to_four.active_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \one_to_four.active_0_reg_n_0\,
      Q => active_1,
      R => '0'
    );
\one_to_four.active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active_1,
      Q => active,
      R => '0'
    );
\one_to_four.counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFC00"
    )
        port map (
      I0 => size(0),
      I1 => \one_to_four.counter[6]_i_2_n_0\,
      I2 => \one_to_four.counter[10]_i_4_n_0\,
      I3 => sel0(0),
      I4 => read_back_i,
      O => p_1_in(0)
    );
\one_to_four.counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => read_back_i,
      I1 => \one_to_four.active_0_reg_n_0\,
      O => \one_to_four.counter[10]_i_1_n_0\
    );
\one_to_four.counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFC0000"
    )
        port map (
      I0 => size(10),
      I1 => \one_to_four.counter[10]_i_3_n_0\,
      I2 => \one_to_four.counter[10]_i_4_n_0\,
      I3 => sel0(9),
      I4 => sel0(10),
      I5 => read_back_i,
      O => p_1_in(10)
    );
\one_to_four.counter[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(8),
      O => \one_to_four.counter[10]_i_3_n_0\
    );
\one_to_four.counter[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(2),
      I4 => sel0(3),
      O => \one_to_four.counter[10]_i_4_n_0\
    );
\one_to_four.counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFC00"
    )
        port map (
      I0 => size(1),
      I1 => \one_to_four.counter[6]_i_2_n_0\,
      I2 => \one_to_four.counter[10]_i_4_n_0\,
      I3 => sel0(1),
      I4 => read_back_i,
      O => p_1_in(1)
    );
\one_to_four.counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFFFC"
    )
        port map (
      I0 => size(2),
      I1 => sel0(4),
      I2 => \one_to_four.counter[4]_i_2_n_0\,
      I3 => sel0(3),
      I4 => read_back_i,
      I5 => sel0(2),
      O => p_1_in(2)
    );
\one_to_four.counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF999800009998"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => \one_to_four.counter[4]_i_2_n_0\,
      I4 => read_back_i,
      I5 => size(3),
      O => p_1_in(3)
    );
\one_to_four.counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE1E00000E1E0"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(4),
      I3 => \one_to_four.counter[4]_i_2_n_0\,
      I4 => read_back_i,
      I5 => size(4),
      O => p_1_in(4)
    );
\one_to_four.counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(10),
      I2 => sel0(7),
      I3 => sel0(8),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \one_to_four.counter[4]_i_2_n_0\
    );
\one_to_four.counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF999800009998"
    )
        port map (
      I0 => \one_to_four.counter[6]_i_3_n_0\,
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => \one_to_four.counter[6]_i_2_n_0\,
      I4 => read_back_i,
      I5 => size(5),
      O => p_1_in(5)
    );
\one_to_four.counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFC020000FC02"
    )
        port map (
      I0 => \one_to_four.counter[6]_i_2_n_0\,
      I1 => \one_to_four.counter[6]_i_3_n_0\,
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => read_back_i,
      I5 => size(6),
      O => p_1_in(6)
    );
\one_to_four.counter[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(7),
      I2 => sel0(10),
      I3 => sel0(9),
      O => \one_to_four.counter[6]_i_2_n_0\
    );
\one_to_four.counter[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(4),
      O => \one_to_four.counter[6]_i_3_n_0\
    );
\one_to_four.counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF00E0000F00E"
    )
        port map (
      I0 => \one_to_four.counter[8]_i_2_n_0\,
      I1 => sel0(8),
      I2 => sel0(7),
      I3 => \one_to_four.counter[10]_i_4_n_0\,
      I4 => read_back_i,
      I5 => size(7),
      O => p_1_in(7)
    );
\one_to_four.counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0C20000F0C2"
    )
        port map (
      I0 => \one_to_four.counter[8]_i_2_n_0\,
      I1 => sel0(7),
      I2 => sel0(8),
      I3 => \one_to_four.counter[10]_i_4_n_0\,
      I4 => read_back_i,
      I5 => size(8),
      O => p_1_in(8)
    );
\one_to_four.counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(10),
      O => \one_to_four.counter[8]_i_2_n_0\
    );
\one_to_four.counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCC20000CCC2"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(9),
      I2 => \one_to_four.counter[10]_i_4_n_0\,
      I3 => \one_to_four.counter[10]_i_3_n_0\,
      I4 => read_back_i,
      I5 => size(9),
      O => p_1_in(9)
    );
\one_to_four.counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(0),
      Q => sel0(0),
      R => '0'
    );
\one_to_four.counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(10),
      Q => sel0(10),
      R => '0'
    );
\one_to_four.counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(1),
      Q => sel0(1),
      R => '0'
    );
\one_to_four.counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(2),
      Q => sel0(2),
      R => '0'
    );
\one_to_four.counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(3),
      Q => sel0(3),
      R => '0'
    );
\one_to_four.counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(4),
      Q => sel0(4),
      R => '0'
    );
\one_to_four.counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(5),
      Q => sel0(5),
      R => '0'
    );
\one_to_four.counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(6),
      Q => sel0(6),
      R => '0'
    );
\one_to_four.counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(7),
      Q => sel0(7),
      R => '0'
    );
\one_to_four.counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(8),
      Q => sel0(8),
      R => '0'
    );
\one_to_four.counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.counter[10]_i_1_n_0\,
      D => p_1_in(9),
      Q => sel0(9),
      R => '0'
    );
\one_to_four.env_in_val[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => wr_offset(0),
      I1 => read_back_i,
      I2 => reset,
      I3 => wr,
      I4 => wr_offset(1),
      O => \env_in_val__0\(15)
    );
\one_to_four.env_in_val[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => read_back_i,
      I1 => reset,
      I2 => wr,
      I3 => wr_offset(0),
      I4 => wr_offset(1),
      O => \env_in_val__0\(31)
    );
\one_to_four.env_in_val[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => wr_offset(0),
      I1 => read_back_i,
      I2 => reset,
      I3 => wr,
      I4 => wr_offset(1),
      O => \env_in_val__0\(47)
    );
\one_to_four.env_in_val[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => read_back_i,
      I1 => reset,
      I2 => wr,
      I3 => wr_offset(0),
      I4 => wr_offset(1),
      O => \env_in_val__0\(63)
    );
\one_to_four.env_in_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(0),
      Q => env_in_val(0),
      R => '0'
    );
\one_to_four.env_in_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(10),
      Q => env_in_val(10),
      R => '0'
    );
\one_to_four.env_in_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(11),
      Q => env_in_val(11),
      R => '0'
    );
\one_to_four.env_in_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(12),
      Q => env_in_val(12),
      R => '0'
    );
\one_to_four.env_in_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(13),
      Q => env_in_val(13),
      R => '0'
    );
\one_to_four.env_in_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(14),
      Q => env_in_val(14),
      R => '0'
    );
\one_to_four.env_in_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(15),
      Q => env_in_val(15),
      R => '0'
    );
\one_to_four.env_in_val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(0),
      Q => env_in_val(16),
      R => '0'
    );
\one_to_four.env_in_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(1),
      Q => env_in_val(17),
      R => '0'
    );
\one_to_four.env_in_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(2),
      Q => env_in_val(18),
      R => '0'
    );
\one_to_four.env_in_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(3),
      Q => env_in_val(19),
      R => '0'
    );
\one_to_four.env_in_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(1),
      Q => env_in_val(1),
      R => '0'
    );
\one_to_four.env_in_val_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(4),
      Q => env_in_val(20),
      R => '0'
    );
\one_to_four.env_in_val_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(5),
      Q => env_in_val(21),
      R => '0'
    );
\one_to_four.env_in_val_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(6),
      Q => env_in_val(22),
      R => '0'
    );
\one_to_four.env_in_val_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(7),
      Q => env_in_val(23),
      R => '0'
    );
\one_to_four.env_in_val_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(8),
      Q => env_in_val(24),
      R => '0'
    );
\one_to_four.env_in_val_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(9),
      Q => env_in_val(25),
      R => '0'
    );
\one_to_four.env_in_val_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(10),
      Q => env_in_val(26),
      R => '0'
    );
\one_to_four.env_in_val_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(11),
      Q => env_in_val(27),
      R => '0'
    );
\one_to_four.env_in_val_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(12),
      Q => env_in_val(28),
      R => '0'
    );
\one_to_four.env_in_val_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(13),
      Q => env_in_val(29),
      R => '0'
    );
\one_to_four.env_in_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(2),
      Q => env_in_val(2),
      R => '0'
    );
\one_to_four.env_in_val_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(14),
      Q => env_in_val(30),
      R => '0'
    );
\one_to_four.env_in_val_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => env(15),
      Q => env_in_val(31),
      R => '0'
    );
\one_to_four.env_in_val_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(0),
      Q => env_in_val(32),
      R => '0'
    );
\one_to_four.env_in_val_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(1),
      Q => env_in_val(33),
      R => '0'
    );
\one_to_four.env_in_val_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(2),
      Q => env_in_val(34),
      R => '0'
    );
\one_to_four.env_in_val_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(3),
      Q => env_in_val(35),
      R => '0'
    );
\one_to_four.env_in_val_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(4),
      Q => env_in_val(36),
      R => '0'
    );
\one_to_four.env_in_val_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(5),
      Q => env_in_val(37),
      R => '0'
    );
\one_to_four.env_in_val_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(6),
      Q => env_in_val(38),
      R => '0'
    );
\one_to_four.env_in_val_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(7),
      Q => env_in_val(39),
      R => '0'
    );
\one_to_four.env_in_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(3),
      Q => env_in_val(3),
      R => '0'
    );
\one_to_four.env_in_val_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(8),
      Q => env_in_val(40),
      R => '0'
    );
\one_to_four.env_in_val_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(9),
      Q => env_in_val(41),
      R => '0'
    );
\one_to_four.env_in_val_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(10),
      Q => env_in_val(42),
      R => '0'
    );
\one_to_four.env_in_val_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(11),
      Q => env_in_val(43),
      R => '0'
    );
\one_to_four.env_in_val_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(12),
      Q => env_in_val(44),
      R => '0'
    );
\one_to_four.env_in_val_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(13),
      Q => env_in_val(45),
      R => '0'
    );
\one_to_four.env_in_val_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(14),
      Q => env_in_val(46),
      R => '0'
    );
\one_to_four.env_in_val_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => env(15),
      Q => env_in_val(47),
      R => '0'
    );
\one_to_four.env_in_val_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(0),
      Q => env_in_val(48),
      R => '0'
    );
\one_to_four.env_in_val_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(1),
      Q => env_in_val(49),
      R => '0'
    );
\one_to_four.env_in_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(4),
      Q => env_in_val(4),
      R => '0'
    );
\one_to_four.env_in_val_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(2),
      Q => env_in_val(50),
      R => '0'
    );
\one_to_four.env_in_val_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(3),
      Q => env_in_val(51),
      R => '0'
    );
\one_to_four.env_in_val_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(4),
      Q => env_in_val(52),
      R => '0'
    );
\one_to_four.env_in_val_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(5),
      Q => env_in_val(53),
      R => '0'
    );
\one_to_four.env_in_val_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(6),
      Q => env_in_val(54),
      R => '0'
    );
\one_to_four.env_in_val_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(7),
      Q => env_in_val(55),
      R => '0'
    );
\one_to_four.env_in_val_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(8),
      Q => env_in_val(56),
      R => '0'
    );
\one_to_four.env_in_val_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(9),
      Q => env_in_val(57),
      R => '0'
    );
\one_to_four.env_in_val_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(10),
      Q => env_in_val(58),
      R => '0'
    );
\one_to_four.env_in_val_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(11),
      Q => env_in_val(59),
      R => '0'
    );
\one_to_four.env_in_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(5),
      Q => env_in_val(5),
      R => '0'
    );
\one_to_four.env_in_val_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(12),
      Q => env_in_val(60),
      R => '0'
    );
\one_to_four.env_in_val_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(13),
      Q => env_in_val(61),
      R => '0'
    );
\one_to_four.env_in_val_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(14),
      Q => env_in_val(62),
      R => '0'
    );
\one_to_four.env_in_val_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => env(15),
      Q => env_in_val(63),
      R => '0'
    );
\one_to_four.env_in_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(6),
      Q => env_in_val(6),
      R => '0'
    );
\one_to_four.env_in_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(7),
      Q => env_in_val(7),
      R => '0'
    );
\one_to_four.env_in_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(8),
      Q => env_in_val(8),
      R => '0'
    );
\one_to_four.env_in_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => env(9),
      Q => env_in_val(9),
      R => '0'
    );
\one_to_four.mem_env_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 1,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => rd_ptr(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => \one_to_four.wr_ptr_reg\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => \NLW_one_to_four.mem_env_reg_CASDINA_UNCONNECTED\(31 downto 0),
      CASDINB(31 downto 0) => \NLW_one_to_four.mem_env_reg_CASDINB_UNCONNECTED\(31 downto 0),
      CASDINPA(3 downto 0) => \NLW_one_to_four.mem_env_reg_CASDINPA_UNCONNECTED\(3 downto 0),
      CASDINPB(3 downto 0) => \NLW_one_to_four.mem_env_reg_CASDINPB_UNCONNECTED\(3 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_one_to_four.mem_env_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_one_to_four.mem_env_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_one_to_four.mem_env_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_one_to_four.mem_env_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_one_to_four.mem_env_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_one_to_four.mem_env_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => \NLW_one_to_four.mem_env_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => env_in_val(31 downto 0),
      DINBDIN(31 downto 0) => env_in_val(63 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 16) => env_1(15 downto 0),
      DOUTADOUT(15 downto 0) => env_0(15 downto 0),
      DOUTBDOUT(31 downto 16) => env_3(15 downto 0),
      DOUTBDOUT(15 downto 0) => env_2(15 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_one_to_four.mem_env_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_one_to_four.mem_env_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_one_to_four.mem_env_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_one_to_four.mem_env_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_one_to_four.mem_env_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_wr,
      WEBWE(6) => mem_wr,
      WEBWE(5) => mem_wr,
      WEBWE(4) => mem_wr,
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\one_to_four.mem_phase_diff_reg_0\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 1,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => rd_ptr(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => \one_to_four.wr_ptr_reg\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_CASDINA_UNCONNECTED\(31 downto 0),
      CASDINB(31 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_CASDINB_UNCONNECTED\(31 downto 0),
      CASDINPA(3 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_CASDINPA_UNCONNECTED\(3 downto 0),
      CASDINPB(3 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_CASDINPB_UNCONNECTED\(3 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_one_to_four.mem_phase_diff_reg_0_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_one_to_four.mem_phase_diff_reg_0_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => \NLW_one_to_four.mem_phase_diff_reg_0_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => phase_diff_in_val(31 downto 0),
      DINBDIN(31 downto 0) => phase_diff_in_val(63 downto 32),
      DINPADINP(3 downto 0) => phase_diff_in_val(67 downto 64),
      DINPBDINP(3 downto 0) => phase_diff_in_val(71 downto 68),
      DOUTADOUT(31 downto 20) => phase_diff_1(11 downto 0),
      DOUTADOUT(19 downto 0) => phase_diff_0(19 downto 0),
      DOUTBDOUT(31 downto 28) => phase_diff_3(3 downto 0),
      DOUTBDOUT(27 downto 8) => phase_diff_2(19 downto 0),
      DOUTBDOUT(7 downto 0) => phase_diff_1(19 downto 12),
      DOUTPADOUTP(3 downto 0) => phase_diff_3(7 downto 4),
      DOUTPBDOUTP(3 downto 0) => phase_diff_3(11 downto 8),
      ECCPARITY(7 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_one_to_four.mem_phase_diff_reg_0_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_wr,
      WEBWE(6) => mem_wr,
      WEBWE(5) => mem_wr,
      WEBWE(4) => mem_wr,
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\one_to_four.mem_phase_diff_reg_1\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => rd_ptr(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 5) => \one_to_four.wr_ptr_reg\(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_CASDINA_UNCONNECTED\(15 downto 0),
      CASDINB(15 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_CASDINB_UNCONNECTED\(15 downto 0),
      CASDINPA(1 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_CASDINPA_UNCONNECTED\(1 downto 0),
      CASDINPB(1 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_CASDINPB_UNCONNECTED\(1 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DINADIN(15 downto 8) => B"11111111",
      DINADIN(7 downto 0) => phase_diff_in_val(79 downto 72),
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"11",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 8) => \NLW_one_to_four.mem_phase_diff_reg_1_DOUTADOUT_UNCONNECTED\(15 downto 8),
      DOUTADOUT(7 downto 0) => phase_diff_out_val(79 downto 72),
      DOUTBDOUT(15 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_DOUTBDOUT_UNCONNECTED\(15 downto 0),
      DOUTPADOUTP(1 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_DOUTPADOUTP_UNCONNECTED\(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => \NLW_one_to_four.mem_phase_diff_reg_1_DOUTPBDOUTP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\one_to_four.mem_phase_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 1,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => rd_ptr(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => \one_to_four.wr_ptr_reg\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => \NLW_one_to_four.mem_phase_reg_CASDINA_UNCONNECTED\(31 downto 0),
      CASDINB(31 downto 0) => \NLW_one_to_four.mem_phase_reg_CASDINB_UNCONNECTED\(31 downto 0),
      CASDINPA(3 downto 0) => \NLW_one_to_four.mem_phase_reg_CASDINPA_UNCONNECTED\(3 downto 0),
      CASDINPB(3 downto 0) => \NLW_one_to_four.mem_phase_reg_CASDINPB_UNCONNECTED\(3 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_one_to_four.mem_phase_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_one_to_four.mem_phase_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_one_to_four.mem_phase_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_one_to_four.mem_phase_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_one_to_four.mem_phase_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_one_to_four.mem_phase_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => \NLW_one_to_four.mem_phase_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => phase_in_val(31 downto 0),
      DINBDIN(31 downto 0) => phase_in_val(63 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 16) => phase_1(15 downto 0),
      DOUTADOUT(15 downto 0) => phase_0(15 downto 0),
      DOUTBDOUT(31 downto 16) => phase_3(15 downto 0),
      DOUTBDOUT(15 downto 0) => phase_2(15 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_one_to_four.mem_phase_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_one_to_four.mem_phase_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_one_to_four.mem_phase_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_one_to_four.mem_phase_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_one_to_four.mem_phase_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_wr,
      WEBWE(6) => mem_wr,
      WEBWE(5) => mem_wr,
      WEBWE(4) => mem_wr,
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\one_to_four.mem_wr_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008E"
    )
        port map (
      I0 => wr_offset(1),
      I1 => wr_offset(0),
      I2 => wr,
      I3 => read_back_i,
      I4 => reset,
      O => \one_to_four.mem_wr_i_1_n_0\
    );
\one_to_four.mem_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \one_to_four.mem_wr_i_1_n_0\,
      Q => mem_wr,
      R => '0'
    );
\one_to_four.phase_diff_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_diff_out_val(72),
      Q => phase_diff_3(12),
      R => '0'
    );
\one_to_four.phase_diff_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_diff_out_val(73),
      Q => phase_diff_3(13),
      R => '0'
    );
\one_to_four.phase_diff_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_diff_out_val(74),
      Q => phase_diff_3(14),
      R => '0'
    );
\one_to_four.phase_diff_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_diff_out_val(75),
      Q => phase_diff_3(15),
      R => '0'
    );
\one_to_four.phase_diff_3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_diff_out_val(76),
      Q => phase_diff_3(16),
      R => '0'
    );
\one_to_four.phase_diff_3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_diff_out_val(77),
      Q => phase_diff_3(17),
      R => '0'
    );
\one_to_four.phase_diff_3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_diff_out_val(78),
      Q => phase_diff_3(18),
      R => '0'
    );
\one_to_four.phase_diff_3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_diff_out_val(79),
      Q => phase_diff_3(19),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(0),
      Q => phase_diff_in_val(0),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(10),
      Q => phase_diff_in_val(10),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(11),
      Q => phase_diff_in_val(11),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(12),
      Q => phase_diff_in_val(12),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(13),
      Q => phase_diff_in_val(13),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(14),
      Q => phase_diff_in_val(14),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(15),
      Q => phase_diff_in_val(15),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(16),
      Q => phase_diff_in_val(16),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(17),
      Q => phase_diff_in_val(17),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(18),
      Q => phase_diff_in_val(18),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(19),
      Q => phase_diff_in_val(19),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(1),
      Q => phase_diff_in_val(1),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(0),
      Q => phase_diff_in_val(20),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(1),
      Q => phase_diff_in_val(21),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(2),
      Q => phase_diff_in_val(22),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(3),
      Q => phase_diff_in_val(23),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(4),
      Q => phase_diff_in_val(24),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(5),
      Q => phase_diff_in_val(25),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(6),
      Q => phase_diff_in_val(26),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(7),
      Q => phase_diff_in_val(27),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(8),
      Q => phase_diff_in_val(28),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(9),
      Q => phase_diff_in_val(29),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(2),
      Q => phase_diff_in_val(2),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(10),
      Q => phase_diff_in_val(30),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(11),
      Q => phase_diff_in_val(31),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(12),
      Q => phase_diff_in_val(32),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(13),
      Q => phase_diff_in_val(33),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(14),
      Q => phase_diff_in_val(34),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(15),
      Q => phase_diff_in_val(35),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(16),
      Q => phase_diff_in_val(36),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(17),
      Q => phase_diff_in_val(37),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(18),
      Q => phase_diff_in_val(38),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase_diff(19),
      Q => phase_diff_in_val(39),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(3),
      Q => phase_diff_in_val(3),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(0),
      Q => phase_diff_in_val(40),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(1),
      Q => phase_diff_in_val(41),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(2),
      Q => phase_diff_in_val(42),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(3),
      Q => phase_diff_in_val(43),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(4),
      Q => phase_diff_in_val(44),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(5),
      Q => phase_diff_in_val(45),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(6),
      Q => phase_diff_in_val(46),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(7),
      Q => phase_diff_in_val(47),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(8),
      Q => phase_diff_in_val(48),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(9),
      Q => phase_diff_in_val(49),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(4),
      Q => phase_diff_in_val(4),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(10),
      Q => phase_diff_in_val(50),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(11),
      Q => phase_diff_in_val(51),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(12),
      Q => phase_diff_in_val(52),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(13),
      Q => phase_diff_in_val(53),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(14),
      Q => phase_diff_in_val(54),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(15),
      Q => phase_diff_in_val(55),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(16),
      Q => phase_diff_in_val(56),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(17),
      Q => phase_diff_in_val(57),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(18),
      Q => phase_diff_in_val(58),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase_diff(19),
      Q => phase_diff_in_val(59),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(5),
      Q => phase_diff_in_val(5),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(0),
      Q => phase_diff_in_val(60),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(1),
      Q => phase_diff_in_val(61),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(2),
      Q => phase_diff_in_val(62),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(3),
      Q => phase_diff_in_val(63),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(4),
      Q => phase_diff_in_val(64),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(5),
      Q => phase_diff_in_val(65),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(6),
      Q => phase_diff_in_val(66),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(7),
      Q => phase_diff_in_val(67),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(8),
      Q => phase_diff_in_val(68),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(9),
      Q => phase_diff_in_val(69),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(6),
      Q => phase_diff_in_val(6),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(10),
      Q => phase_diff_in_val(70),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(11),
      Q => phase_diff_in_val(71),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(12),
      Q => phase_diff_in_val(72),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(13),
      Q => phase_diff_in_val(73),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(14),
      Q => phase_diff_in_val(74),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(15),
      Q => phase_diff_in_val(75),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(16),
      Q => phase_diff_in_val(76),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(17),
      Q => phase_diff_in_val(77),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(18),
      Q => phase_diff_in_val(78),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase_diff(19),
      Q => phase_diff_in_val(79),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(7),
      Q => phase_diff_in_val(7),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(8),
      Q => phase_diff_in_val(8),
      R => '0'
    );
\one_to_four.phase_diff_in_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase_diff(9),
      Q => phase_diff_in_val(9),
      R => '0'
    );
\one_to_four.phase_in_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(0),
      Q => phase_in_val(0),
      R => '0'
    );
\one_to_four.phase_in_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(10),
      Q => phase_in_val(10),
      R => '0'
    );
\one_to_four.phase_in_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(11),
      Q => phase_in_val(11),
      R => '0'
    );
\one_to_four.phase_in_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(12),
      Q => phase_in_val(12),
      R => '0'
    );
\one_to_four.phase_in_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(13),
      Q => phase_in_val(13),
      R => '0'
    );
\one_to_four.phase_in_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(14),
      Q => phase_in_val(14),
      R => '0'
    );
\one_to_four.phase_in_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(15),
      Q => phase_in_val(15),
      R => '0'
    );
\one_to_four.phase_in_val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(0),
      Q => phase_in_val(16),
      R => '0'
    );
\one_to_four.phase_in_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(1),
      Q => phase_in_val(17),
      R => '0'
    );
\one_to_four.phase_in_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(2),
      Q => phase_in_val(18),
      R => '0'
    );
\one_to_four.phase_in_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(3),
      Q => phase_in_val(19),
      R => '0'
    );
\one_to_four.phase_in_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(1),
      Q => phase_in_val(1),
      R => '0'
    );
\one_to_four.phase_in_val_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(4),
      Q => phase_in_val(20),
      R => '0'
    );
\one_to_four.phase_in_val_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(5),
      Q => phase_in_val(21),
      R => '0'
    );
\one_to_four.phase_in_val_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(6),
      Q => phase_in_val(22),
      R => '0'
    );
\one_to_four.phase_in_val_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(7),
      Q => phase_in_val(23),
      R => '0'
    );
\one_to_four.phase_in_val_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(8),
      Q => phase_in_val(24),
      R => '0'
    );
\one_to_four.phase_in_val_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(9),
      Q => phase_in_val(25),
      R => '0'
    );
\one_to_four.phase_in_val_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(10),
      Q => phase_in_val(26),
      R => '0'
    );
\one_to_four.phase_in_val_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(11),
      Q => phase_in_val(27),
      R => '0'
    );
\one_to_four.phase_in_val_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(12),
      Q => phase_in_val(28),
      R => '0'
    );
\one_to_four.phase_in_val_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(13),
      Q => phase_in_val(29),
      R => '0'
    );
\one_to_four.phase_in_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(2),
      Q => phase_in_val(2),
      R => '0'
    );
\one_to_four.phase_in_val_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(14),
      Q => phase_in_val(30),
      R => '0'
    );
\one_to_four.phase_in_val_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(31),
      D => phase(15),
      Q => phase_in_val(31),
      R => '0'
    );
\one_to_four.phase_in_val_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(0),
      Q => phase_in_val(32),
      R => '0'
    );
\one_to_four.phase_in_val_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(1),
      Q => phase_in_val(33),
      R => '0'
    );
\one_to_four.phase_in_val_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(2),
      Q => phase_in_val(34),
      R => '0'
    );
\one_to_four.phase_in_val_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(3),
      Q => phase_in_val(35),
      R => '0'
    );
\one_to_four.phase_in_val_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(4),
      Q => phase_in_val(36),
      R => '0'
    );
\one_to_four.phase_in_val_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(5),
      Q => phase_in_val(37),
      R => '0'
    );
\one_to_four.phase_in_val_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(6),
      Q => phase_in_val(38),
      R => '0'
    );
\one_to_four.phase_in_val_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(7),
      Q => phase_in_val(39),
      R => '0'
    );
\one_to_four.phase_in_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(3),
      Q => phase_in_val(3),
      R => '0'
    );
\one_to_four.phase_in_val_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(8),
      Q => phase_in_val(40),
      R => '0'
    );
\one_to_four.phase_in_val_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(9),
      Q => phase_in_val(41),
      R => '0'
    );
\one_to_four.phase_in_val_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(10),
      Q => phase_in_val(42),
      R => '0'
    );
\one_to_four.phase_in_val_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(11),
      Q => phase_in_val(43),
      R => '0'
    );
\one_to_four.phase_in_val_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(12),
      Q => phase_in_val(44),
      R => '0'
    );
\one_to_four.phase_in_val_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(13),
      Q => phase_in_val(45),
      R => '0'
    );
\one_to_four.phase_in_val_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(14),
      Q => phase_in_val(46),
      R => '0'
    );
\one_to_four.phase_in_val_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(47),
      D => phase(15),
      Q => phase_in_val(47),
      R => '0'
    );
\one_to_four.phase_in_val_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(0),
      Q => phase_in_val(48),
      R => '0'
    );
\one_to_four.phase_in_val_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(1),
      Q => phase_in_val(49),
      R => '0'
    );
\one_to_four.phase_in_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(4),
      Q => phase_in_val(4),
      R => '0'
    );
\one_to_four.phase_in_val_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(2),
      Q => phase_in_val(50),
      R => '0'
    );
\one_to_four.phase_in_val_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(3),
      Q => phase_in_val(51),
      R => '0'
    );
\one_to_four.phase_in_val_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(4),
      Q => phase_in_val(52),
      R => '0'
    );
\one_to_four.phase_in_val_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(5),
      Q => phase_in_val(53),
      R => '0'
    );
\one_to_four.phase_in_val_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(6),
      Q => phase_in_val(54),
      R => '0'
    );
\one_to_four.phase_in_val_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(7),
      Q => phase_in_val(55),
      R => '0'
    );
\one_to_four.phase_in_val_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(8),
      Q => phase_in_val(56),
      R => '0'
    );
\one_to_four.phase_in_val_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(9),
      Q => phase_in_val(57),
      R => '0'
    );
\one_to_four.phase_in_val_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(10),
      Q => phase_in_val(58),
      R => '0'
    );
\one_to_four.phase_in_val_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(11),
      Q => phase_in_val(59),
      R => '0'
    );
\one_to_four.phase_in_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(5),
      Q => phase_in_val(5),
      R => '0'
    );
\one_to_four.phase_in_val_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(12),
      Q => phase_in_val(60),
      R => '0'
    );
\one_to_four.phase_in_val_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(13),
      Q => phase_in_val(61),
      R => '0'
    );
\one_to_four.phase_in_val_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(14),
      Q => phase_in_val(62),
      R => '0'
    );
\one_to_four.phase_in_val_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(63),
      D => phase(15),
      Q => phase_in_val(63),
      R => '0'
    );
\one_to_four.phase_in_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(6),
      Q => phase_in_val(6),
      R => '0'
    );
\one_to_four.phase_in_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(7),
      Q => phase_in_val(7),
      R => '0'
    );
\one_to_four.phase_in_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(8),
      Q => phase_in_val(8),
      R => '0'
    );
\one_to_four.phase_in_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \env_in_val__0\(15),
      D => phase(9),
      Q => phase_in_val(9),
      R => '0'
    );
\one_to_four.rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(0),
      Q => \one_to_four.rd_ptr_reg\(0),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(1),
      Q => \one_to_four.rd_ptr_reg\(1),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(2),
      Q => \one_to_four.rd_ptr_reg\(2),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(3),
      Q => \one_to_four.rd_ptr_reg\(3),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(4),
      Q => \one_to_four.rd_ptr_reg\(4),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(5),
      Q => \one_to_four.rd_ptr_reg\(5),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(6),
      Q => \one_to_four.rd_ptr_reg\(6),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(7),
      Q => \one_to_four.rd_ptr_reg\(7),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(8),
      Q => \one_to_four.rd_ptr_reg\(8),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(0),
      Q => rd_ptr(0),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(1),
      Q => rd_ptr(1),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(2),
      Q => rd_ptr(2),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(3),
      Q => rd_ptr(3),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(4),
      Q => rd_ptr(4),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(5),
      Q => rd_ptr(5),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(6),
      Q => rd_ptr(6),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(7),
      Q => rd_ptr(7),
      R => read_back_i
    );
\one_to_four.rd_ptr_reg_rep[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \one_to_four.active_0_reg_n_0\,
      D => \p_0_in__0\(8),
      Q => rd_ptr(8),
      R => read_back_i
    );
\one_to_four.rd_ptr_rep[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(0),
      O => \p_0_in__0\(0)
    );
\one_to_four.rd_ptr_rep[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(0),
      I1 => \one_to_four.rd_ptr_reg\(1),
      O => \p_0_in__0\(1)
    );
\one_to_four.rd_ptr_rep[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(1),
      I1 => \one_to_four.rd_ptr_reg\(0),
      I2 => \one_to_four.rd_ptr_reg\(2),
      O => \p_0_in__0\(2)
    );
\one_to_four.rd_ptr_rep[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(2),
      I1 => \one_to_four.rd_ptr_reg\(0),
      I2 => \one_to_four.rd_ptr_reg\(1),
      I3 => \one_to_four.rd_ptr_reg\(3),
      O => \p_0_in__0\(3)
    );
\one_to_four.rd_ptr_rep[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(3),
      I1 => \one_to_four.rd_ptr_reg\(1),
      I2 => \one_to_four.rd_ptr_reg\(0),
      I3 => \one_to_four.rd_ptr_reg\(2),
      I4 => \one_to_four.rd_ptr_reg\(4),
      O => \p_0_in__0\(4)
    );
\one_to_four.rd_ptr_rep[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(4),
      I1 => \one_to_four.rd_ptr_reg\(2),
      I2 => \one_to_four.rd_ptr_reg\(0),
      I3 => \one_to_four.rd_ptr_reg\(1),
      I4 => \one_to_four.rd_ptr_reg\(3),
      I5 => \one_to_four.rd_ptr_reg\(5),
      O => \p_0_in__0\(5)
    );
\one_to_four.rd_ptr_rep[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \one_to_four.rd_ptr_rep[8]_i_2_n_0\,
      I1 => \one_to_four.rd_ptr_reg\(6),
      O => \p_0_in__0\(6)
    );
\one_to_four.rd_ptr_rep[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(6),
      I1 => \one_to_four.rd_ptr_rep[8]_i_2_n_0\,
      I2 => \one_to_four.rd_ptr_reg\(7),
      O => \p_0_in__0\(7)
    );
\one_to_four.rd_ptr_rep[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(7),
      I1 => \one_to_four.rd_ptr_rep[8]_i_2_n_0\,
      I2 => \one_to_four.rd_ptr_reg\(6),
      I3 => \one_to_four.rd_ptr_reg\(8),
      O => \p_0_in__0\(8)
    );
\one_to_four.rd_ptr_rep[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \one_to_four.rd_ptr_reg\(4),
      I1 => \one_to_four.rd_ptr_reg\(2),
      I2 => \one_to_four.rd_ptr_reg\(0),
      I3 => \one_to_four.rd_ptr_reg\(1),
      I4 => \one_to_four.rd_ptr_reg\(3),
      I5 => \one_to_four.rd_ptr_reg\(5),
      O => \one_to_four.rd_ptr_rep[8]_i_2_n_0\
    );
\one_to_four.read_back_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => read_back,
      Q => read_back_i,
      R => '0'
    );
\one_to_four.wr_offset[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_offset(0),
      O => \one_to_four.wr_offset[0]_i_1_n_0\
    );
\one_to_four.wr_offset[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => read_back_i,
      I1 => reset,
      I2 => wr,
      O => \one_to_four.wr_offset[1]_i_1_n_0\
    );
\one_to_four.wr_offset[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_offset(0),
      I1 => wr_offset(1),
      O => \one_to_four.wr_offset[1]_i_2_n_0\
    );
\one_to_four.wr_offset_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \one_to_four.wr_offset[0]_i_1_n_0\,
      Q => wr_offset(0),
      R => \one_to_four.wr_offset[1]_i_1_n_0\
    );
\one_to_four.wr_offset_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \one_to_four.wr_offset[1]_i_2_n_0\,
      Q => wr_offset(1),
      R => \one_to_four.wr_offset[1]_i_1_n_0\
    );
\one_to_four.wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(0),
      O => p_0_in(0)
    );
\one_to_four.wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(0),
      I1 => \one_to_four.wr_ptr_reg\(1),
      O => p_0_in(1)
    );
\one_to_four.wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(1),
      I1 => \one_to_four.wr_ptr_reg\(0),
      I2 => \one_to_four.wr_ptr_reg\(2),
      O => p_0_in(2)
    );
\one_to_four.wr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(2),
      I1 => \one_to_four.wr_ptr_reg\(0),
      I2 => \one_to_four.wr_ptr_reg\(1),
      I3 => \one_to_four.wr_ptr_reg\(3),
      O => p_0_in(3)
    );
\one_to_four.wr_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(3),
      I1 => \one_to_four.wr_ptr_reg\(1),
      I2 => \one_to_four.wr_ptr_reg\(0),
      I3 => \one_to_four.wr_ptr_reg\(2),
      I4 => \one_to_four.wr_ptr_reg\(4),
      O => p_0_in(4)
    );
\one_to_four.wr_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(4),
      I1 => \one_to_four.wr_ptr_reg\(2),
      I2 => \one_to_four.wr_ptr_reg\(0),
      I3 => \one_to_four.wr_ptr_reg\(1),
      I4 => \one_to_four.wr_ptr_reg\(3),
      I5 => \one_to_four.wr_ptr_reg\(5),
      O => p_0_in(5)
    );
\one_to_four.wr_ptr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \one_to_four.wr_ptr[8]_i_4_n_0\,
      I1 => \one_to_four.wr_ptr_reg\(6),
      O => p_0_in(6)
    );
\one_to_four.wr_ptr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(6),
      I1 => \one_to_four.wr_ptr[8]_i_4_n_0\,
      I2 => \one_to_four.wr_ptr_reg\(7),
      O => p_0_in(7)
    );
\one_to_four.wr_ptr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset,
      I1 => read_back_i,
      O => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wr,
      I1 => mem_wr,
      O => wr_ptr
    );
\one_to_four.wr_ptr[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(7),
      I1 => \one_to_four.wr_ptr[8]_i_4_n_0\,
      I2 => \one_to_four.wr_ptr_reg\(6),
      I3 => \one_to_four.wr_ptr_reg\(8),
      O => p_0_in(8)
    );
\one_to_four.wr_ptr[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \one_to_four.wr_ptr_reg\(4),
      I1 => \one_to_four.wr_ptr_reg\(2),
      I2 => \one_to_four.wr_ptr_reg\(0),
      I3 => \one_to_four.wr_ptr_reg\(1),
      I4 => \one_to_four.wr_ptr_reg\(3),
      I5 => \one_to_four.wr_ptr_reg\(5),
      O => \one_to_four.wr_ptr[8]_i_4_n_0\
    );
\one_to_four.wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(0),
      Q => \one_to_four.wr_ptr_reg\(0),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(1),
      Q => \one_to_four.wr_ptr_reg\(1),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(2),
      Q => \one_to_four.wr_ptr_reg\(2),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(3),
      Q => \one_to_four.wr_ptr_reg\(3),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(4),
      Q => \one_to_four.wr_ptr_reg\(4),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(5),
      Q => \one_to_four.wr_ptr_reg\(5),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(6),
      Q => \one_to_four.wr_ptr_reg\(6),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(7),
      Q => \one_to_four.wr_ptr_reg\(7),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
\one_to_four.wr_ptr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_ptr,
      D => p_0_in(8),
      Q => \one_to_four.wr_ptr_reg\(8),
      R => \one_to_four.wr_ptr[8]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_burst_0_0_comp_stat is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    wr : in STD_LOGIC;
    freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    size : in STD_LOGIC_VECTOR ( 10 downto 0 );
    max_pos : in STD_LOGIC_VECTOR ( 10 downto 0 );
    env_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    env_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    env_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    env_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    active : out STD_LOGIC;
    pos : out STD_LOGIC_VECTOR ( 10 downto 0 );
    env : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    max_phase : out STD_LOGIC_VECTOR ( 15 downto 0 );
    env_sum : out STD_LOGIC_VECTOR ( 31 downto 0 );
    env_sum2 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    phase_sum : out STD_LOGIC_VECTOR ( 31 downto 0 );
    phase_sum2 : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_burst_0_0_comp_stat : entity is "comp_stat";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_comp_burst_0_0_comp_stat : entity is "soft";
end ps_comp_burst_0_0_comp_stat;

architecture STRUCTURE of ps_comp_burst_0_0_comp_stat is
  component ps_comp_burst_0_0_ila_2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 21 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_comp_burst_0_0_ila_2;
  signal \^active\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of active : signal is std.standard.true;
  signal clear : STD_LOGIC;
  signal \comp_stat.active_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.active_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.active_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.active_reg0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_env_1[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.curr_phase[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[10]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[10]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[2]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[3]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[5]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[5]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[6]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.down_pos[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.env[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.env[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.env[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.env[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.filling_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.max_phase[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_10_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_11_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_12_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_5_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_6_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_7_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_8_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[15]_i_9_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[7]_i_5_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[7]_i_6_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[7]_i_7_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[7]_i_8_n_0\ : STD_LOGIC;
  signal \comp_stat.phase[7]_i_9_n_0\ : STD_LOGIC;
  signal \comp_stat.phase_reg0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \comp_stat.phase_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \comp_stat.phase_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \comp_stat.phase_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \comp_stat.phase_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \comp_stat.phase_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \comp_stat.phase_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \comp_stat.phase_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \comp_stat.phase_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.phase_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \comp_stat.phase_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \comp_stat.phase_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \comp_stat.phase_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \comp_stat.phase_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \comp_stat.phase_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \comp_stat.phase_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \comp_stat.pos_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pos_1[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_10_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_11_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_12_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_13_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_14_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_15_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_16_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_17_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_18_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_19_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_5_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_6_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_7_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_8_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[15]_i_9_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[16]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[17]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[18]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[19]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[20]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_10_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_11_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_12_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_13_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_14_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_15_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_16_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_17_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_5_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_6_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_7_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_8_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[21]_i_9_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_10_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_11_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_12_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_13_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_14_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_15_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_16_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_17_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_18_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_19_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_5_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_6_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_7_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_8_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[7]_i_9_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_3_n_4\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_3_n_3\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_3_n_4\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_3_n_5\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_3_n_6\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_3_n_7\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_4_n_3\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_4_n_4\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_4_n_5\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_4_n_6\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[21]_i_4_n_7\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_3_n_4\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \comp_stat.pred_phase_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \comp_stat.proc_up_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.proc_up_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_pos_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_pos_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_pos_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_stat.rd_pos_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[5]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[6]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[7]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_reg_n_0_[8]\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[1]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[2]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[2]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[3]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[3]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[4]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[5]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[5]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[5]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[6]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[6]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_10_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_11_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_12_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_5_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_6_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_7_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_8_n_0\ : STD_LOGIC;
  signal \comp_stat.rd_ptr_rep[8]_i_9_n_0\ : STD_LOGIC;
  signal \comp_stat.start_down_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.start_down_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.start_down_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.start_up_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.stop_down[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_10_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_11_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_12_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_5_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_6_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_7_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_8_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[10]_i_9_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_10_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_11_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_12_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_13_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_14_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_15_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_16_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_17_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_18_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_19_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_20_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_21_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_22_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_23_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_24_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_25_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_26_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_27_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_28_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_30_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_31_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_5_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_6_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_7_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_8_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count[7]_i_9_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[10]_i_3_n_6\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[10]_i_3_n_7\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[10]_i_4_n_6\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[10]_i_4_n_7\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_3_n_4\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \comp_stat.up_count_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \comp_stat.up_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[10]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[2]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[3]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[5]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[9]_i_2_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[9]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.up_pos[9]_i_4_n_0\ : STD_LOGIC;
  signal \comp_stat.wr_ptr[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_stat.wr_ptr_reg\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal curr_env_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of curr_env_1 : signal is std.standard.true;
  signal curr_env_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of curr_env_2 : signal is std.standard.true;
  signal curr_phase : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of curr_phase : signal is std.standard.true;
  signal down_delay : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of down_delay : signal is std.standard.true;
  signal down_pos : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of down_pos : signal is std.standard.true;
  signal \^env\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^env\ : signal is std.standard.true;
  signal env_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal env_out : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal filling : STD_LOGIC;
  signal \^max_phase\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^max_phase\ : signal is std.standard.true;
  signal mem_wr : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^phase\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of \^phase\ : signal is std.standard.true;
  signal phase_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal phase_out : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^pos\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of \^pos\ : signal is std.standard.true;
  signal pos_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal pred_phase : STD_LOGIC_VECTOR ( 21 downto 0 );
  attribute MARK_DEBUG of pred_phase : signal is std.standard.true;
  signal pred_phase0 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal pred_phase01_in : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal prev_phase : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of prev_phase : signal is std.standard.true;
  signal proc_up : STD_LOGIC;
  attribute MARK_DEBUG of proc_up : signal is std.standard.true;
  signal rd_pos : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rd_ptr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal start_down : STD_LOGIC;
  attribute MARK_DEBUG of start_down : signal is std.standard.true;
  signal start_up : STD_LOGIC;
  attribute MARK_DEBUG of start_up : signal is std.standard.true;
  signal stop_down : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of stop_down : signal is std.standard.true;
  signal up_count : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of up_count : signal is std.standard.true;
  signal up_count0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \up_count__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal up_delay : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of up_delay : signal is std.standard.true;
  signal up_pos : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of up_pos : signal is std.standard.true;
  signal \NLW_comp_stat.mem_env_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_stat.mem_env_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_stat.mem_env_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_stat.mem_env_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_stat.mem_env_reg_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_stat.mem_env_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_stat.mem_phase_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_stat.mem_phase_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_stat.mem_phase_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_stat.mem_phase_reg_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_stat.mem_phase_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_comp_stat.phase_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_comp_stat.pred_phase_reg[21]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_comp_stat.pred_phase_reg[21]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_comp_stat.pred_phase_reg[21]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_comp_stat.pred_phase_reg[21]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_comp_stat.up_count_reg[10]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_comp_stat.up_count_reg[10]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_stat.up_count_reg[10]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_comp_stat.up_count_reg[10]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute KEEP : string;
  attribute KEEP of \comp_stat.active_reg\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[11]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[12]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[13]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[14]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[15]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_1_reg[9]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[11]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[12]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[13]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[14]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[15]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_env_2_reg[9]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[11]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[12]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[13]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[14]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[15]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.curr_phase_reg[9]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \comp_stat.down_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.down_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.down_delay_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.down_pos_reg[9]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[11]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[12]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[13]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[14]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[15]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.env_reg[9]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[11]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[12]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[13]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[14]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[15]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.max_phase_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.max_phase_reg[9]\ : label is "yes";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \comp_stat.mem_env_reg\ : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \comp_stat.mem_env_reg\ : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \comp_stat.mem_env_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \comp_stat.mem_env_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \comp_stat.mem_env_reg\ : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \comp_stat.mem_env_reg\ : label is "comp_stat/comp_stat.mem_env_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \comp_stat.mem_env_reg\ : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \comp_stat.mem_env_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \comp_stat.mem_env_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \comp_stat.mem_env_reg\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \comp_stat.mem_env_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \comp_stat.mem_env_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \comp_stat.mem_env_reg\ : label is 63;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \comp_stat.mem_phase_reg\ : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \comp_stat.mem_phase_reg\ : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS of \comp_stat.mem_phase_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of \comp_stat.mem_phase_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \comp_stat.mem_phase_reg\ : label is 32768;
  attribute RTL_RAM_NAME of \comp_stat.mem_phase_reg\ : label is "comp_stat/comp_stat.mem_phase_reg";
  attribute RTL_RAM_STYLE of \comp_stat.mem_phase_reg\ : label is "block";
  attribute RTL_RAM_TYPE of \comp_stat.mem_phase_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin of \comp_stat.mem_phase_reg\ : label is 0;
  attribute ram_addr_end of \comp_stat.mem_phase_reg\ : label is 511;
  attribute ram_offset of \comp_stat.mem_phase_reg\ : label is 0;
  attribute ram_slice_begin of \comp_stat.mem_phase_reg\ : label is 0;
  attribute ram_slice_end of \comp_stat.mem_phase_reg\ : label is 63;
  attribute KEEP of \comp_stat.phase_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[11]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[12]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[13]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[14]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \comp_stat.phase_reg[15]_i_2\ : label is 35;
  attribute KEEP of \comp_stat.phase_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_stat.phase_reg[7]_i_1\ : label is 35;
  attribute KEEP of \comp_stat.phase_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.phase_reg[9]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.pos_reg[9]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[11]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[12]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[13]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[14]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_stat.pred_phase_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_stat.pred_phase_reg[15]_i_3\ : label is 35;
  attribute KEEP of \comp_stat.pred_phase_reg[16]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[17]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[18]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[19]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[20]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[21]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_stat.pred_phase_reg[21]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_stat.pred_phase_reg[21]_i_4\ : label is 35;
  attribute KEEP of \comp_stat.pred_phase_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_stat.pred_phase_reg[7]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_stat.pred_phase_reg[7]_i_3\ : label is 35;
  attribute KEEP of \comp_stat.pred_phase_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.pred_phase_reg[9]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[11]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[12]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[13]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[14]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[15]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.prev_phase_reg[9]\ : label is "yes";
  attribute KEEP of \comp_stat.proc_up_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \comp_stat.rd_ptr_rep[3]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \comp_stat.rd_ptr_rep[4]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \comp_stat.rd_ptr_rep[5]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \comp_stat.rd_ptr_rep[5]_i_4\ : label is "soft_lutpair7";
  attribute KEEP of \comp_stat.start_down_reg\ : label is "yes";
  attribute KEEP of \comp_stat.start_up_reg\ : label is "yes";
  attribute mark_debug_string of \comp_stat.stop_down_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.stop_down_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[10]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_stat.up_count_reg[10]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_stat.up_count_reg[10]_i_4\ : label is 35;
  attribute KEEP of \comp_stat.up_count_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_stat.up_count_reg[7]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_stat.up_count_reg[7]_i_3\ : label is 35;
  attribute KEEP of \comp_stat.up_count_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.up_count_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_count_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_stat.up_delay_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[0]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[10]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[1]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[2]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[3]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[4]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[5]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[6]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[7]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[8]\ : label is "yes";
  attribute KEEP of \comp_stat.up_pos_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM of \comp_stat.wr_ptr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \comp_stat.wr_ptr[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \comp_stat.wr_ptr[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \comp_stat.wr_ptr[4]_i_1\ : label is "soft_lutpair8";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_2,ila,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
begin
  active <= \^active\;
  env(15 downto 0) <= \^env\(15 downto 0);
  max_phase(15 downto 0) <= \^max_phase\(15 downto 0);
  phase(15 downto 0) <= \^phase\(15 downto 0);
  pos(10 downto 0) <= \^pos\(10 downto 0);
\comp_stat.active_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC0FFF8F8F"
    )
        port map (
      I0 => \comp_stat.active_i_2_n_0\,
      I1 => \^active\,
      I2 => \comp_stat.active_i_3_n_0\,
      I3 => \comp_stat.active_i_4_n_0\,
      I4 => \comp_stat.down_pos[5]_i_3_n_0\,
      I5 => reset,
      O => \comp_stat.active_reg0\
    );
\comp_stat.active_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => stop_down(1),
      I1 => start_down,
      I2 => proc_up,
      O => \comp_stat.active_i_2_n_0\
    );
\comp_stat.active_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => up_delay(0),
      I1 => start_up,
      I2 => proc_up,
      I3 => up_delay(1),
      O => \comp_stat.active_i_3_n_0\
    );
\comp_stat.active_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => proc_up,
      I1 => down_delay(0),
      I2 => start_down,
      I3 => down_delay(1),
      O => \comp_stat.active_i_4_n_0\
    );
\comp_stat.active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.active_reg0\,
      Q => \^active\,
      R => '0'
    );
\comp_stat.curr_env_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(16),
      I1 => env_out(0),
      I2 => env_out(48),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(32),
      O => \comp_stat.curr_env_1[0]_i_1_n_0\
    );
\comp_stat.curr_env_1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(26),
      I1 => env_out(10),
      I2 => env_out(58),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(42),
      O => \comp_stat.curr_env_1[10]_i_1_n_0\
    );
\comp_stat.curr_env_1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(27),
      I1 => env_out(11),
      I2 => env_out(59),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(43),
      O => \comp_stat.curr_env_1[11]_i_1_n_0\
    );
\comp_stat.curr_env_1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(28),
      I1 => env_out(12),
      I2 => env_out(60),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(44),
      O => \comp_stat.curr_env_1[12]_i_1_n_0\
    );
\comp_stat.curr_env_1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(29),
      I1 => env_out(13),
      I2 => env_out(61),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(45),
      O => \comp_stat.curr_env_1[13]_i_1_n_0\
    );
\comp_stat.curr_env_1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(30),
      I1 => env_out(14),
      I2 => env_out(62),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(46),
      O => \comp_stat.curr_env_1[14]_i_1_n_0\
    );
\comp_stat.curr_env_1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(31),
      I1 => env_out(15),
      I2 => env_out(63),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(47),
      O => \comp_stat.curr_env_1[15]_i_1_n_0\
    );
\comp_stat.curr_env_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(17),
      I1 => env_out(1),
      I2 => env_out(49),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(33),
      O => \comp_stat.curr_env_1[1]_i_1_n_0\
    );
\comp_stat.curr_env_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(18),
      I1 => env_out(2),
      I2 => env_out(50),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(34),
      O => \comp_stat.curr_env_1[2]_i_1_n_0\
    );
\comp_stat.curr_env_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(19),
      I1 => env_out(3),
      I2 => env_out(51),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(35),
      O => \comp_stat.curr_env_1[3]_i_1_n_0\
    );
\comp_stat.curr_env_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(20),
      I1 => env_out(4),
      I2 => env_out(52),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(36),
      O => \comp_stat.curr_env_1[4]_i_1_n_0\
    );
\comp_stat.curr_env_1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(21),
      I1 => env_out(5),
      I2 => env_out(53),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(37),
      O => \comp_stat.curr_env_1[5]_i_1_n_0\
    );
\comp_stat.curr_env_1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(22),
      I1 => env_out(6),
      I2 => env_out(54),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(38),
      O => \comp_stat.curr_env_1[6]_i_1_n_0\
    );
\comp_stat.curr_env_1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(23),
      I1 => env_out(7),
      I2 => env_out(55),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(39),
      O => \comp_stat.curr_env_1[7]_i_1_n_0\
    );
\comp_stat.curr_env_1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(24),
      I1 => env_out(8),
      I2 => env_out(56),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(40),
      O => \comp_stat.curr_env_1[8]_i_1_n_0\
    );
\comp_stat.curr_env_1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => env_out(25),
      I1 => env_out(9),
      I2 => env_out(57),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => env_out(41),
      O => \comp_stat.curr_env_1[9]_i_1_n_0\
    );
\comp_stat.curr_env_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[0]_i_1_n_0\,
      Q => curr_env_1(0),
      R => '0'
    );
\comp_stat.curr_env_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[10]_i_1_n_0\,
      Q => curr_env_1(10),
      R => '0'
    );
\comp_stat.curr_env_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[11]_i_1_n_0\,
      Q => curr_env_1(11),
      R => '0'
    );
\comp_stat.curr_env_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[12]_i_1_n_0\,
      Q => curr_env_1(12),
      R => '0'
    );
\comp_stat.curr_env_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[13]_i_1_n_0\,
      Q => curr_env_1(13),
      R => '0'
    );
\comp_stat.curr_env_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[14]_i_1_n_0\,
      Q => curr_env_1(14),
      R => '0'
    );
\comp_stat.curr_env_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[15]_i_1_n_0\,
      Q => curr_env_1(15),
      R => '0'
    );
\comp_stat.curr_env_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[1]_i_1_n_0\,
      Q => curr_env_1(1),
      R => '0'
    );
\comp_stat.curr_env_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[2]_i_1_n_0\,
      Q => curr_env_1(2),
      R => '0'
    );
\comp_stat.curr_env_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[3]_i_1_n_0\,
      Q => curr_env_1(3),
      R => '0'
    );
\comp_stat.curr_env_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[4]_i_1_n_0\,
      Q => curr_env_1(4),
      R => '0'
    );
\comp_stat.curr_env_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[5]_i_1_n_0\,
      Q => curr_env_1(5),
      R => '0'
    );
\comp_stat.curr_env_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[6]_i_1_n_0\,
      Q => curr_env_1(6),
      R => '0'
    );
\comp_stat.curr_env_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[7]_i_1_n_0\,
      Q => curr_env_1(7),
      R => '0'
    );
\comp_stat.curr_env_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[8]_i_1_n_0\,
      Q => curr_env_1(8),
      R => '0'
    );
\comp_stat.curr_env_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_env_1[9]_i_1_n_0\,
      Q => curr_env_1(9),
      R => '0'
    );
\comp_stat.curr_env_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(0),
      Q => curr_env_2(0),
      R => '0'
    );
\comp_stat.curr_env_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(10),
      Q => curr_env_2(10),
      R => '0'
    );
\comp_stat.curr_env_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(11),
      Q => curr_env_2(11),
      R => '0'
    );
\comp_stat.curr_env_2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(12),
      Q => curr_env_2(12),
      R => '0'
    );
\comp_stat.curr_env_2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(13),
      Q => curr_env_2(13),
      R => '0'
    );
\comp_stat.curr_env_2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(14),
      Q => curr_env_2(14),
      R => '0'
    );
\comp_stat.curr_env_2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(15),
      Q => curr_env_2(15),
      R => '0'
    );
\comp_stat.curr_env_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(1),
      Q => curr_env_2(1),
      R => '0'
    );
\comp_stat.curr_env_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(2),
      Q => curr_env_2(2),
      R => '0'
    );
\comp_stat.curr_env_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(3),
      Q => curr_env_2(3),
      R => '0'
    );
\comp_stat.curr_env_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(4),
      Q => curr_env_2(4),
      R => '0'
    );
\comp_stat.curr_env_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(5),
      Q => curr_env_2(5),
      R => '0'
    );
\comp_stat.curr_env_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(6),
      Q => curr_env_2(6),
      R => '0'
    );
\comp_stat.curr_env_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(7),
      Q => curr_env_2(7),
      R => '0'
    );
\comp_stat.curr_env_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(8),
      Q => curr_env_2(8),
      R => '0'
    );
\comp_stat.curr_env_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_env_1(9),
      Q => curr_env_2(9),
      R => '0'
    );
\comp_stat.curr_phase[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(16),
      I1 => phase_out(0),
      I2 => phase_out(48),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(32),
      O => \comp_stat.curr_phase[0]_i_1_n_0\
    );
\comp_stat.curr_phase[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(26),
      I1 => phase_out(10),
      I2 => phase_out(58),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(42),
      O => \comp_stat.curr_phase[10]_i_1_n_0\
    );
\comp_stat.curr_phase[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(27),
      I1 => phase_out(11),
      I2 => phase_out(59),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(43),
      O => \comp_stat.curr_phase[11]_i_1_n_0\
    );
\comp_stat.curr_phase[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(28),
      I1 => phase_out(12),
      I2 => phase_out(60),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(44),
      O => \comp_stat.curr_phase[12]_i_1_n_0\
    );
\comp_stat.curr_phase[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(29),
      I1 => phase_out(13),
      I2 => phase_out(61),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(45),
      O => \comp_stat.curr_phase[13]_i_1_n_0\
    );
\comp_stat.curr_phase[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(30),
      I1 => phase_out(14),
      I2 => phase_out(62),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(46),
      O => \comp_stat.curr_phase[14]_i_1_n_0\
    );
\comp_stat.curr_phase[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(31),
      I1 => phase_out(15),
      I2 => phase_out(63),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(47),
      O => \comp_stat.curr_phase[15]_i_1_n_0\
    );
\comp_stat.curr_phase[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(17),
      I1 => phase_out(1),
      I2 => phase_out(49),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(33),
      O => \comp_stat.curr_phase[1]_i_1_n_0\
    );
\comp_stat.curr_phase[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(18),
      I1 => phase_out(2),
      I2 => phase_out(50),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(34),
      O => \comp_stat.curr_phase[2]_i_1_n_0\
    );
\comp_stat.curr_phase[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(19),
      I1 => phase_out(3),
      I2 => phase_out(51),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(35),
      O => \comp_stat.curr_phase[3]_i_1_n_0\
    );
\comp_stat.curr_phase[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(20),
      I1 => phase_out(4),
      I2 => phase_out(52),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(36),
      O => \comp_stat.curr_phase[4]_i_1_n_0\
    );
\comp_stat.curr_phase[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(21),
      I1 => phase_out(5),
      I2 => phase_out(53),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(37),
      O => \comp_stat.curr_phase[5]_i_1_n_0\
    );
\comp_stat.curr_phase[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(22),
      I1 => phase_out(6),
      I2 => phase_out(54),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(38),
      O => \comp_stat.curr_phase[6]_i_1_n_0\
    );
\comp_stat.curr_phase[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(23),
      I1 => phase_out(7),
      I2 => phase_out(55),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(39),
      O => \comp_stat.curr_phase[7]_i_1_n_0\
    );
\comp_stat.curr_phase[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(24),
      I1 => phase_out(8),
      I2 => phase_out(56),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(40),
      O => \comp_stat.curr_phase[8]_i_1_n_0\
    );
\comp_stat.curr_phase[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => phase_out(25),
      I1 => phase_out(9),
      I2 => phase_out(57),
      I3 => rd_pos(1),
      I4 => rd_pos(0),
      I5 => phase_out(41),
      O => \comp_stat.curr_phase[9]_i_1_n_0\
    );
\comp_stat.curr_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[0]_i_1_n_0\,
      Q => curr_phase(0),
      R => '0'
    );
\comp_stat.curr_phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[10]_i_1_n_0\,
      Q => curr_phase(10),
      R => '0'
    );
\comp_stat.curr_phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[11]_i_1_n_0\,
      Q => curr_phase(11),
      R => '0'
    );
\comp_stat.curr_phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[12]_i_1_n_0\,
      Q => curr_phase(12),
      R => '0'
    );
\comp_stat.curr_phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[13]_i_1_n_0\,
      Q => curr_phase(13),
      R => '0'
    );
\comp_stat.curr_phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[14]_i_1_n_0\,
      Q => curr_phase(14),
      R => '0'
    );
\comp_stat.curr_phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[15]_i_1_n_0\,
      Q => curr_phase(15),
      R => '0'
    );
\comp_stat.curr_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[1]_i_1_n_0\,
      Q => curr_phase(1),
      R => '0'
    );
\comp_stat.curr_phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[2]_i_1_n_0\,
      Q => curr_phase(2),
      R => '0'
    );
\comp_stat.curr_phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[3]_i_1_n_0\,
      Q => curr_phase(3),
      R => '0'
    );
\comp_stat.curr_phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[4]_i_1_n_0\,
      Q => curr_phase(4),
      R => '0'
    );
\comp_stat.curr_phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[5]_i_1_n_0\,
      Q => curr_phase(5),
      R => '0'
    );
\comp_stat.curr_phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[6]_i_1_n_0\,
      Q => curr_phase(6),
      R => '0'
    );
\comp_stat.curr_phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[7]_i_1_n_0\,
      Q => curr_phase(7),
      R => '0'
    );
\comp_stat.curr_phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[8]_i_1_n_0\,
      Q => curr_phase(8),
      R => '0'
    );
\comp_stat.curr_phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.curr_phase[9]_i_1_n_0\,
      Q => curr_phase(9),
      R => '0'
    );
\comp_stat.down_delay[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => down_delay(0),
      I1 => start_down,
      I2 => down_delay(0),
      O => \comp_stat.down_delay[0]_i_1_n_0\
    );
\comp_stat.down_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_delay[0]_i_1_n_0\,
      Q => down_delay(0),
      R => reset
    );
\comp_stat.down_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => down_delay(0),
      Q => down_delay(1),
      R => '0'
    );
\comp_stat.down_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => down_delay(1),
      Q => down_delay(2),
      R => '0'
    );
\comp_stat.down_pos[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC000CA"
    )
        port map (
      I0 => \comp_stat.down_pos[5]_i_3_n_0\,
      I1 => max_pos(0),
      I2 => down_delay(0),
      I3 => start_down,
      I4 => down_pos(0),
      O => \comp_stat.down_pos[0]_i_1_n_0\
    );
\comp_stat.down_pos[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCACCCACCCACCCA0"
    )
        port map (
      I0 => max_pos(10),
      I1 => down_pos(10),
      I2 => down_delay(0),
      I3 => start_down,
      I4 => \comp_stat.down_pos[10]_i_2_n_0\,
      I5 => down_pos(9),
      O => \comp_stat.down_pos[10]_i_1_n_0\
    );
\comp_stat.down_pos[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => down_pos(8),
      I1 => down_pos(1),
      I2 => down_pos(0),
      I3 => down_pos(2),
      I4 => \comp_stat.down_pos[10]_i_3_n_0\,
      I5 => down_pos(7),
      O => \comp_stat.down_pos[10]_i_2_n_0\
    );
\comp_stat.down_pos[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => down_pos(5),
      I1 => down_pos(6),
      I2 => down_pos(3),
      I3 => down_pos(4),
      O => \comp_stat.down_pos[10]_i_3_n_0\
    );
\comp_stat.down_pos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FF000FD02FD02"
    )
        port map (
      I0 => \comp_stat.down_pos[5]_i_3_n_0\,
      I1 => down_pos(0),
      I2 => start_down,
      I3 => down_pos(1),
      I4 => max_pos(1),
      I5 => down_delay(0),
      O => \comp_stat.down_pos[1]_i_1_n_0\
    );
\comp_stat.down_pos[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3C0E2E2"
    )
        port map (
      I0 => \comp_stat.down_pos[2]_i_2_n_0\,
      I1 => start_down,
      I2 => down_pos(2),
      I3 => max_pos(2),
      I4 => down_delay(0),
      O => \comp_stat.down_pos[2]_i_1_n_0\
    );
\comp_stat.down_pos[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0000E"
    )
        port map (
      I0 => \comp_stat.down_pos[7]_i_3_n_0\,
      I1 => \comp_stat.down_pos[10]_i_3_n_0\,
      I2 => down_pos(1),
      I3 => down_pos(0),
      I4 => down_pos(2),
      O => \comp_stat.down_pos[2]_i_2_n_0\
    );
\comp_stat.down_pos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0880000F044"
    )
        port map (
      I0 => \comp_stat.down_pos[3]_i_2_n_0\,
      I1 => \comp_stat.down_pos[5]_i_3_n_0\,
      I2 => max_pos(3),
      I3 => down_delay(0),
      I4 => start_down,
      I5 => down_pos(3),
      O => \comp_stat.down_pos[3]_i_1_n_0\
    );
\comp_stat.down_pos[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => down_pos(2),
      I1 => down_pos(0),
      I2 => down_pos(1),
      O => \comp_stat.down_pos[3]_i_2_n_0\
    );
\comp_stat.down_pos[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3C0D1D1"
    )
        port map (
      I0 => \comp_stat.down_pos[4]_i_2_n_0\,
      I1 => start_down,
      I2 => down_pos(4),
      I3 => max_pos(4),
      I4 => down_delay(0),
      O => \comp_stat.down_pos[4]_i_1_n_0\
    );
\comp_stat.down_pos[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FFFFFFFF01"
    )
        port map (
      I0 => \comp_stat.down_pos[7]_i_3_n_0\,
      I1 => down_pos(5),
      I2 => down_pos(6),
      I3 => down_pos(3),
      I4 => \comp_stat.down_pos[3]_i_2_n_0\,
      I5 => down_pos(4),
      O => \comp_stat.down_pos[4]_i_2_n_0\
    );
\comp_stat.down_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FF000F804F804"
    )
        port map (
      I0 => \comp_stat.down_pos[5]_i_2_n_0\,
      I1 => \comp_stat.down_pos[5]_i_3_n_0\,
      I2 => start_down,
      I3 => down_pos(5),
      I4 => max_pos(5),
      I5 => down_delay(0),
      O => \comp_stat.down_pos[5]_i_1_n_0\
    );
\comp_stat.down_pos[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => down_pos(1),
      I1 => down_pos(0),
      I2 => down_pos(2),
      I3 => down_pos(3),
      I4 => down_pos(4),
      O => \comp_stat.down_pos[5]_i_2_n_0\
    );
\comp_stat.down_pos[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \comp_stat.down_pos[7]_i_3_n_0\,
      I1 => down_pos(5),
      I2 => down_pos(6),
      I3 => down_pos(3),
      I4 => down_pos(4),
      I5 => \comp_stat.down_pos[3]_i_2_n_0\,
      O => \comp_stat.down_pos[5]_i_3_n_0\
    );
\comp_stat.down_pos[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE54FF44AA10BB00"
    )
        port map (
      I0 => start_down,
      I1 => down_delay(0),
      I2 => \comp_stat.down_pos[7]_i_3_n_0\,
      I3 => down_pos(6),
      I4 => \comp_stat.down_pos[6]_i_2_n_0\,
      I5 => max_pos(6),
      O => \comp_stat.down_pos[6]_i_1_n_0\
    );
\comp_stat.down_pos[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => down_pos(5),
      I1 => down_pos(4),
      I2 => down_pos(3),
      I3 => down_pos(2),
      I4 => down_pos(0),
      I5 => down_pos(1),
      O => \comp_stat.down_pos[6]_i_2_n_0\
    );
\comp_stat.down_pos[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FF000FB04FB04"
    )
        port map (
      I0 => \comp_stat.down_pos[7]_i_2_n_0\,
      I1 => \comp_stat.down_pos[7]_i_3_n_0\,
      I2 => start_down,
      I3 => down_pos(7),
      I4 => max_pos(7),
      I5 => down_delay(0),
      O => \comp_stat.down_pos[7]_i_1_n_0\
    );
\comp_stat.down_pos[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \comp_stat.down_pos[3]_i_2_n_0\,
      I1 => down_pos(4),
      I2 => down_pos(3),
      I3 => down_pos(6),
      I4 => down_pos(5),
      O => \comp_stat.down_pos[7]_i_2_n_0\
    );
\comp_stat.down_pos[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => down_pos(7),
      I1 => down_pos(10),
      I2 => down_pos(9),
      I3 => down_pos(8),
      O => \comp_stat.down_pos[7]_i_3_n_0\
    );
\comp_stat.down_pos[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FF000F708F708"
    )
        port map (
      I0 => \comp_stat.down_pos[8]_i_2_n_0\,
      I1 => \comp_stat.down_pos[8]_i_3_n_0\,
      I2 => start_down,
      I3 => down_pos(8),
      I4 => max_pos(8),
      I5 => down_delay(0),
      O => \comp_stat.down_pos[8]_i_1_n_0\
    );
\comp_stat.down_pos[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => down_pos(7),
      I1 => down_pos(5),
      I2 => down_pos(6),
      I3 => down_pos(3),
      I4 => down_pos(4),
      I5 => \comp_stat.down_pos[3]_i_2_n_0\,
      O => \comp_stat.down_pos[8]_i_2_n_0\
    );
\comp_stat.down_pos[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => down_pos(8),
      I1 => down_pos(9),
      I2 => down_pos(10),
      O => \comp_stat.down_pos[8]_i_3_n_0\
    );
\comp_stat.down_pos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FF000FA04FA04"
    )
        port map (
      I0 => \comp_stat.down_pos[10]_i_2_n_0\,
      I1 => down_pos(10),
      I2 => start_down,
      I3 => down_pos(9),
      I4 => max_pos(9),
      I5 => down_delay(0),
      O => \comp_stat.down_pos[9]_i_1_n_0\
    );
\comp_stat.down_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[0]_i_1_n_0\,
      Q => down_pos(0),
      R => reset
    );
\comp_stat.down_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[10]_i_1_n_0\,
      Q => down_pos(10),
      R => reset
    );
\comp_stat.down_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[1]_i_1_n_0\,
      Q => down_pos(1),
      R => reset
    );
\comp_stat.down_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[2]_i_1_n_0\,
      Q => down_pos(2),
      R => reset
    );
\comp_stat.down_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[3]_i_1_n_0\,
      Q => down_pos(3),
      R => reset
    );
\comp_stat.down_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[4]_i_1_n_0\,
      Q => down_pos(4),
      R => reset
    );
\comp_stat.down_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[5]_i_1_n_0\,
      Q => down_pos(5),
      R => reset
    );
\comp_stat.down_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[6]_i_1_n_0\,
      Q => down_pos(6),
      R => reset
    );
\comp_stat.down_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[7]_i_1_n_0\,
      Q => down_pos(7),
      R => reset
    );
\comp_stat.down_pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[8]_i_1_n_0\,
      Q => down_pos(8),
      R => reset
    );
\comp_stat.down_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.down_pos[9]_i_1_n_0\,
      Q => down_pos(9),
      R => reset
    );
\comp_stat.env[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(0),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[0]_i_1_n_0\
    );
\comp_stat.env[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(10),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[10]_i_1_n_0\
    );
\comp_stat.env[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(11),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[11]_i_1_n_0\
    );
\comp_stat.env[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(12),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[12]_i_1_n_0\
    );
\comp_stat.env[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(13),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[13]_i_1_n_0\
    );
\comp_stat.env[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(14),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[14]_i_1_n_0\
    );
\comp_stat.env[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => proc_up,
      I1 => up_delay(2),
      I2 => up_delay(0),
      I3 => start_up,
      I4 => up_delay(1),
      O => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(15),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[15]_i_2_n_0\
    );
\comp_stat.env[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAA8"
    )
        port map (
      I0 => \comp_stat.env[15]_i_4_n_0\,
      I1 => stop_down(0),
      I2 => \comp_stat.down_pos[3]_i_2_n_0\,
      I3 => \comp_stat.down_pos[10]_i_3_n_0\,
      I4 => \comp_stat.down_pos[7]_i_3_n_0\,
      I5 => proc_up,
      O => \comp_stat.env[15]_i_3_n_0\
    );
\comp_stat.env[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => down_delay(1),
      I1 => start_down,
      I2 => down_delay(0),
      O => \comp_stat.env[15]_i_4_n_0\
    );
\comp_stat.env[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(1),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[1]_i_1_n_0\
    );
\comp_stat.env[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(2),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[2]_i_1_n_0\
    );
\comp_stat.env[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(3),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[3]_i_1_n_0\
    );
\comp_stat.env[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(4),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[4]_i_1_n_0\
    );
\comp_stat.env[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(5),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[5]_i_1_n_0\
    );
\comp_stat.env[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(6),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[6]_i_1_n_0\
    );
\comp_stat.env[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(7),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[7]_i_1_n_0\
    );
\comp_stat.env[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(8),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[8]_i_1_n_0\
    );
\comp_stat.env[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_env_2(9),
      I1 => \comp_stat.env[15]_i_3_n_0\,
      O => \comp_stat.env[9]_i_1_n_0\
    );
\comp_stat.env_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(0),
      Q => env_in(0),
      R => '0'
    );
\comp_stat.env_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(10),
      Q => env_in(10),
      R => '0'
    );
\comp_stat.env_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(11),
      Q => env_in(11),
      R => '0'
    );
\comp_stat.env_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(12),
      Q => env_in(12),
      R => '0'
    );
\comp_stat.env_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(13),
      Q => env_in(13),
      R => '0'
    );
\comp_stat.env_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(14),
      Q => env_in(14),
      R => '0'
    );
\comp_stat.env_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(15),
      Q => env_in(15),
      R => '0'
    );
\comp_stat.env_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(0),
      Q => env_in(16),
      R => '0'
    );
\comp_stat.env_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(1),
      Q => env_in(17),
      R => '0'
    );
\comp_stat.env_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(2),
      Q => env_in(18),
      R => '0'
    );
\comp_stat.env_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(3),
      Q => env_in(19),
      R => '0'
    );
\comp_stat.env_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(1),
      Q => env_in(1),
      R => '0'
    );
\comp_stat.env_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(4),
      Q => env_in(20),
      R => '0'
    );
\comp_stat.env_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(5),
      Q => env_in(21),
      R => '0'
    );
\comp_stat.env_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(6),
      Q => env_in(22),
      R => '0'
    );
\comp_stat.env_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(7),
      Q => env_in(23),
      R => '0'
    );
\comp_stat.env_in_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(8),
      Q => env_in(24),
      R => '0'
    );
\comp_stat.env_in_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(9),
      Q => env_in(25),
      R => '0'
    );
\comp_stat.env_in_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(10),
      Q => env_in(26),
      R => '0'
    );
\comp_stat.env_in_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(11),
      Q => env_in(27),
      R => '0'
    );
\comp_stat.env_in_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(12),
      Q => env_in(28),
      R => '0'
    );
\comp_stat.env_in_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(13),
      Q => env_in(29),
      R => '0'
    );
\comp_stat.env_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(2),
      Q => env_in(2),
      R => '0'
    );
\comp_stat.env_in_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(14),
      Q => env_in(30),
      R => '0'
    );
\comp_stat.env_in_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_1(15),
      Q => env_in(31),
      R => '0'
    );
\comp_stat.env_in_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(0),
      Q => env_in(32),
      R => '0'
    );
\comp_stat.env_in_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(1),
      Q => env_in(33),
      R => '0'
    );
\comp_stat.env_in_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(2),
      Q => env_in(34),
      R => '0'
    );
\comp_stat.env_in_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(3),
      Q => env_in(35),
      R => '0'
    );
\comp_stat.env_in_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(4),
      Q => env_in(36),
      R => '0'
    );
\comp_stat.env_in_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(5),
      Q => env_in(37),
      R => '0'
    );
\comp_stat.env_in_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(6),
      Q => env_in(38),
      R => '0'
    );
\comp_stat.env_in_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(7),
      Q => env_in(39),
      R => '0'
    );
\comp_stat.env_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(3),
      Q => env_in(3),
      R => '0'
    );
\comp_stat.env_in_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(8),
      Q => env_in(40),
      R => '0'
    );
\comp_stat.env_in_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(9),
      Q => env_in(41),
      R => '0'
    );
\comp_stat.env_in_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(10),
      Q => env_in(42),
      R => '0'
    );
\comp_stat.env_in_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(11),
      Q => env_in(43),
      R => '0'
    );
\comp_stat.env_in_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(12),
      Q => env_in(44),
      R => '0'
    );
\comp_stat.env_in_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(13),
      Q => env_in(45),
      R => '0'
    );
\comp_stat.env_in_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(14),
      Q => env_in(46),
      R => '0'
    );
\comp_stat.env_in_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_2(15),
      Q => env_in(47),
      R => '0'
    );
\comp_stat.env_in_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(0),
      Q => env_in(48),
      R => '0'
    );
\comp_stat.env_in_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(1),
      Q => env_in(49),
      R => '0'
    );
\comp_stat.env_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(4),
      Q => env_in(4),
      R => '0'
    );
\comp_stat.env_in_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(2),
      Q => env_in(50),
      R => '0'
    );
\comp_stat.env_in_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(3),
      Q => env_in(51),
      R => '0'
    );
\comp_stat.env_in_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(4),
      Q => env_in(52),
      R => '0'
    );
\comp_stat.env_in_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(5),
      Q => env_in(53),
      R => '0'
    );
\comp_stat.env_in_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(6),
      Q => env_in(54),
      R => '0'
    );
\comp_stat.env_in_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(7),
      Q => env_in(55),
      R => '0'
    );
\comp_stat.env_in_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(8),
      Q => env_in(56),
      R => '0'
    );
\comp_stat.env_in_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(9),
      Q => env_in(57),
      R => '0'
    );
\comp_stat.env_in_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(10),
      Q => env_in(58),
      R => '0'
    );
\comp_stat.env_in_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(11),
      Q => env_in(59),
      R => '0'
    );
\comp_stat.env_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(5),
      Q => env_in(5),
      R => '0'
    );
\comp_stat.env_in_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(12),
      Q => env_in(60),
      R => '0'
    );
\comp_stat.env_in_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(13),
      Q => env_in(61),
      R => '0'
    );
\comp_stat.env_in_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(14),
      Q => env_in(62),
      R => '0'
    );
\comp_stat.env_in_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_3(15),
      Q => env_in(63),
      R => '0'
    );
\comp_stat.env_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(6),
      Q => env_in(6),
      R => '0'
    );
\comp_stat.env_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(7),
      Q => env_in(7),
      R => '0'
    );
\comp_stat.env_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(8),
      Q => env_in(8),
      R => '0'
    );
\comp_stat.env_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_0(9),
      Q => env_in(9),
      R => '0'
    );
\comp_stat.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[0]_i_1_n_0\,
      Q => \^env\(0),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[10]_i_1_n_0\,
      Q => \^env\(10),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[11]_i_1_n_0\,
      Q => \^env\(11),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[12]_i_1_n_0\,
      Q => \^env\(12),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[13]_i_1_n_0\,
      Q => \^env\(13),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[14]_i_1_n_0\,
      Q => \^env\(14),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[15]_i_2_n_0\,
      Q => \^env\(15),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[1]_i_1_n_0\,
      Q => \^env\(1),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[2]_i_1_n_0\,
      Q => \^env\(2),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[3]_i_1_n_0\,
      Q => \^env\(3),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[4]_i_1_n_0\,
      Q => \^env\(4),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[5]_i_1_n_0\,
      Q => \^env\(5),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[6]_i_1_n_0\,
      Q => \^env\(6),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[7]_i_1_n_0\,
      Q => \^env\(7),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[8]_i_1_n_0\,
      Q => \^env\(8),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.env[9]_i_1_n_0\,
      Q => \^env\(9),
      R => \comp_stat.env[15]_i_1_n_0\
    );
\comp_stat.filling_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"C"
    )
        port map (
      I0 => filling,
      I1 => wr,
      O => \comp_stat.filling_i_1_n_0\
    );
\comp_stat.filling_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.filling_i_1_n_0\,
      Q => filling,
      R => reset
    );
\comp_stat.max_phase[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(0),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(0),
      O => \comp_stat.max_phase[0]_i_1_n_0\
    );
\comp_stat.max_phase[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(10),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(10),
      O => \comp_stat.max_phase[10]_i_1_n_0\
    );
\comp_stat.max_phase[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(11),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(11),
      O => \comp_stat.max_phase[11]_i_1_n_0\
    );
\comp_stat.max_phase[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(12),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(12),
      O => \comp_stat.max_phase[12]_i_1_n_0\
    );
\comp_stat.max_phase[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(13),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(13),
      O => \comp_stat.max_phase[13]_i_1_n_0\
    );
\comp_stat.max_phase[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(14),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(14),
      O => \comp_stat.max_phase[14]_i_1_n_0\
    );
\comp_stat.max_phase[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(15),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(15),
      O => \comp_stat.max_phase[15]_i_1_n_0\
    );
\comp_stat.max_phase[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(1),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(1),
      O => \comp_stat.max_phase[1]_i_1_n_0\
    );
\comp_stat.max_phase[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(2),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(2),
      O => \comp_stat.max_phase[2]_i_1_n_0\
    );
\comp_stat.max_phase[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(3),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(3),
      O => \comp_stat.max_phase[3]_i_1_n_0\
    );
\comp_stat.max_phase[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(4),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(4),
      O => \comp_stat.max_phase[4]_i_1_n_0\
    );
\comp_stat.max_phase[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(5),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(5),
      O => \comp_stat.max_phase[5]_i_1_n_0\
    );
\comp_stat.max_phase[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(6),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(6),
      O => \comp_stat.max_phase[6]_i_1_n_0\
    );
\comp_stat.max_phase[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(7),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(7),
      O => \comp_stat.max_phase[7]_i_1_n_0\
    );
\comp_stat.max_phase[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(8),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(8),
      O => \comp_stat.max_phase[8]_i_1_n_0\
    );
\comp_stat.max_phase[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \^max_phase\(9),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => up_delay(1),
      I4 => curr_phase(9),
      O => \comp_stat.max_phase[9]_i_1_n_0\
    );
\comp_stat.max_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[0]_i_1_n_0\,
      Q => \^max_phase\(0),
      R => '0'
    );
\comp_stat.max_phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[10]_i_1_n_0\,
      Q => \^max_phase\(10),
      R => '0'
    );
\comp_stat.max_phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[11]_i_1_n_0\,
      Q => \^max_phase\(11),
      R => '0'
    );
\comp_stat.max_phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[12]_i_1_n_0\,
      Q => \^max_phase\(12),
      R => '0'
    );
\comp_stat.max_phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[13]_i_1_n_0\,
      Q => \^max_phase\(13),
      R => '0'
    );
\comp_stat.max_phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[14]_i_1_n_0\,
      Q => \^max_phase\(14),
      R => '0'
    );
\comp_stat.max_phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[15]_i_1_n_0\,
      Q => \^max_phase\(15),
      R => '0'
    );
\comp_stat.max_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[1]_i_1_n_0\,
      Q => \^max_phase\(1),
      R => '0'
    );
\comp_stat.max_phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[2]_i_1_n_0\,
      Q => \^max_phase\(2),
      R => '0'
    );
\comp_stat.max_phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[3]_i_1_n_0\,
      Q => \^max_phase\(3),
      R => '0'
    );
\comp_stat.max_phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[4]_i_1_n_0\,
      Q => \^max_phase\(4),
      R => '0'
    );
\comp_stat.max_phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[5]_i_1_n_0\,
      Q => \^max_phase\(5),
      R => '0'
    );
\comp_stat.max_phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[6]_i_1_n_0\,
      Q => \^max_phase\(6),
      R => '0'
    );
\comp_stat.max_phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[7]_i_1_n_0\,
      Q => \^max_phase\(7),
      R => '0'
    );
\comp_stat.max_phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[8]_i_1_n_0\,
      Q => \^max_phase\(8),
      R => '0'
    );
\comp_stat.max_phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => proc_up,
      D => \comp_stat.max_phase[9]_i_1_n_0\,
      Q => \^max_phase\(9),
      R => '0'
    );
\comp_stat.mem_env_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => rd_ptr(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => \comp_stat.wr_ptr_reg\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => \NLW_comp_stat.mem_env_reg_CASDINA_UNCONNECTED\(31 downto 0),
      CASDINB(31 downto 0) => \NLW_comp_stat.mem_env_reg_CASDINB_UNCONNECTED\(31 downto 0),
      CASDINPA(3 downto 0) => \NLW_comp_stat.mem_env_reg_CASDINPA_UNCONNECTED\(3 downto 0),
      CASDINPB(3 downto 0) => \NLW_comp_stat.mem_env_reg_CASDINPB_UNCONNECTED\(3 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_comp_stat.mem_env_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_comp_stat.mem_env_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_comp_stat.mem_env_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_comp_stat.mem_env_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_comp_stat.mem_env_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_comp_stat.mem_env_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => \NLW_comp_stat.mem_env_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => env_in(31 downto 0),
      DINBDIN(31 downto 0) => env_in(63 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => env_out(31 downto 0),
      DOUTBDOUT(31 downto 0) => env_out(63 downto 32),
      DOUTPADOUTP(3 downto 0) => \NLW_comp_stat.mem_env_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_comp_stat.mem_env_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_comp_stat.mem_env_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_comp_stat.mem_env_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_comp_stat.mem_env_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_wr,
      WEBWE(6) => mem_wr,
      WEBWE(5) => mem_wr,
      WEBWE(4) => mem_wr,
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\comp_stat.mem_phase_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => rd_ptr(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => \comp_stat.wr_ptr_reg\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => \NLW_comp_stat.mem_phase_reg_CASDINA_UNCONNECTED\(31 downto 0),
      CASDINB(31 downto 0) => \NLW_comp_stat.mem_phase_reg_CASDINB_UNCONNECTED\(31 downto 0),
      CASDINPA(3 downto 0) => \NLW_comp_stat.mem_phase_reg_CASDINPA_UNCONNECTED\(3 downto 0),
      CASDINPB(3 downto 0) => \NLW_comp_stat.mem_phase_reg_CASDINPB_UNCONNECTED\(3 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_comp_stat.mem_phase_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_comp_stat.mem_phase_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_comp_stat.mem_phase_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_comp_stat.mem_phase_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_comp_stat.mem_phase_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_comp_stat.mem_phase_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => \NLW_comp_stat.mem_phase_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => phase_in(31 downto 0),
      DINBDIN(31 downto 0) => phase_in(63 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => phase_out(31 downto 0),
      DOUTBDOUT(31 downto 0) => phase_out(63 downto 32),
      DOUTPADOUTP(3 downto 0) => \NLW_comp_stat.mem_phase_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_comp_stat.mem_phase_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_comp_stat.mem_phase_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_comp_stat.mem_phase_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_comp_stat.mem_phase_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_wr,
      WEBWE(6) => mem_wr,
      WEBWE(5) => mem_wr,
      WEBWE(4) => mem_wr,
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\comp_stat.mem_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr,
      Q => mem_wr,
      R => '0'
    );
\comp_stat.phase[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => up_delay(2),
      I1 => up_delay(0),
      I2 => start_up,
      I3 => proc_up,
      I4 => \comp_stat.phase[15]_i_3_n_0\,
      O => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(9),
      I1 => pred_phase(15),
      O => \comp_stat.phase[15]_i_10_n_0\
    );
\comp_stat.phase[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(8),
      I1 => pred_phase(14),
      O => \comp_stat.phase[15]_i_11_n_0\
    );
\comp_stat.phase[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => down_delay(0),
      I1 => start_down,
      O => \comp_stat.phase[15]_i_12_n_0\
    );
\comp_stat.phase[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFE0000"
    )
        port map (
      I0 => \comp_stat.down_pos[7]_i_3_n_0\,
      I1 => \comp_stat.down_pos[10]_i_3_n_0\,
      I2 => \comp_stat.down_pos[3]_i_2_n_0\,
      I3 => stop_down(0),
      I4 => \comp_stat.phase[15]_i_12_n_0\,
      I5 => down_delay(1),
      O => \comp_stat.phase[15]_i_3_n_0\
    );
\comp_stat.phase[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(15),
      I1 => pred_phase(21),
      O => \comp_stat.phase[15]_i_4_n_0\
    );
\comp_stat.phase[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(14),
      I1 => pred_phase(20),
      O => \comp_stat.phase[15]_i_5_n_0\
    );
\comp_stat.phase[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(13),
      I1 => pred_phase(19),
      O => \comp_stat.phase[15]_i_6_n_0\
    );
\comp_stat.phase[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(12),
      I1 => pred_phase(18),
      O => \comp_stat.phase[15]_i_7_n_0\
    );
\comp_stat.phase[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(11),
      I1 => pred_phase(17),
      O => \comp_stat.phase[15]_i_8_n_0\
    );
\comp_stat.phase[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(10),
      I1 => pred_phase(16),
      O => \comp_stat.phase[15]_i_9_n_0\
    );
\comp_stat.phase[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(7),
      I1 => pred_phase(13),
      O => \comp_stat.phase[7]_i_2_n_0\
    );
\comp_stat.phase[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(6),
      I1 => pred_phase(12),
      O => \comp_stat.phase[7]_i_3_n_0\
    );
\comp_stat.phase[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(5),
      I1 => pred_phase(11),
      O => \comp_stat.phase[7]_i_4_n_0\
    );
\comp_stat.phase[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(4),
      I1 => pred_phase(10),
      O => \comp_stat.phase[7]_i_5_n_0\
    );
\comp_stat.phase[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(3),
      I1 => pred_phase(9),
      O => \comp_stat.phase[7]_i_6_n_0\
    );
\comp_stat.phase[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(2),
      I1 => pred_phase(8),
      O => \comp_stat.phase[7]_i_7_n_0\
    );
\comp_stat.phase[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(1),
      I1 => pred_phase(7),
      O => \comp_stat.phase[7]_i_8_n_0\
    );
\comp_stat.phase[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_phase(0),
      I1 => pred_phase(6),
      O => \comp_stat.phase[7]_i_9_n_0\
    );
\comp_stat.phase_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(0),
      Q => phase_in(0),
      R => '0'
    );
\comp_stat.phase_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(10),
      Q => phase_in(10),
      R => '0'
    );
\comp_stat.phase_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(11),
      Q => phase_in(11),
      R => '0'
    );
\comp_stat.phase_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(12),
      Q => phase_in(12),
      R => '0'
    );
\comp_stat.phase_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(13),
      Q => phase_in(13),
      R => '0'
    );
\comp_stat.phase_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(14),
      Q => phase_in(14),
      R => '0'
    );
\comp_stat.phase_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(15),
      Q => phase_in(15),
      R => '0'
    );
\comp_stat.phase_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(0),
      Q => phase_in(16),
      R => '0'
    );
\comp_stat.phase_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(1),
      Q => phase_in(17),
      R => '0'
    );
\comp_stat.phase_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(2),
      Q => phase_in(18),
      R => '0'
    );
\comp_stat.phase_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(3),
      Q => phase_in(19),
      R => '0'
    );
\comp_stat.phase_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(1),
      Q => phase_in(1),
      R => '0'
    );
\comp_stat.phase_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(4),
      Q => phase_in(20),
      R => '0'
    );
\comp_stat.phase_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(5),
      Q => phase_in(21),
      R => '0'
    );
\comp_stat.phase_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(6),
      Q => phase_in(22),
      R => '0'
    );
\comp_stat.phase_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(7),
      Q => phase_in(23),
      R => '0'
    );
\comp_stat.phase_in_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(8),
      Q => phase_in(24),
      R => '0'
    );
\comp_stat.phase_in_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(9),
      Q => phase_in(25),
      R => '0'
    );
\comp_stat.phase_in_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(10),
      Q => phase_in(26),
      R => '0'
    );
\comp_stat.phase_in_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(11),
      Q => phase_in(27),
      R => '0'
    );
\comp_stat.phase_in_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(12),
      Q => phase_in(28),
      R => '0'
    );
\comp_stat.phase_in_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(13),
      Q => phase_in(29),
      R => '0'
    );
\comp_stat.phase_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(2),
      Q => phase_in(2),
      R => '0'
    );
\comp_stat.phase_in_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(14),
      Q => phase_in(30),
      R => '0'
    );
\comp_stat.phase_in_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_1(15),
      Q => phase_in(31),
      R => '0'
    );
\comp_stat.phase_in_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(0),
      Q => phase_in(32),
      R => '0'
    );
\comp_stat.phase_in_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(1),
      Q => phase_in(33),
      R => '0'
    );
\comp_stat.phase_in_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(2),
      Q => phase_in(34),
      R => '0'
    );
\comp_stat.phase_in_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(3),
      Q => phase_in(35),
      R => '0'
    );
\comp_stat.phase_in_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(4),
      Q => phase_in(36),
      R => '0'
    );
\comp_stat.phase_in_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(5),
      Q => phase_in(37),
      R => '0'
    );
\comp_stat.phase_in_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(6),
      Q => phase_in(38),
      R => '0'
    );
\comp_stat.phase_in_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(7),
      Q => phase_in(39),
      R => '0'
    );
\comp_stat.phase_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(3),
      Q => phase_in(3),
      R => '0'
    );
\comp_stat.phase_in_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(8),
      Q => phase_in(40),
      R => '0'
    );
\comp_stat.phase_in_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(9),
      Q => phase_in(41),
      R => '0'
    );
\comp_stat.phase_in_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(10),
      Q => phase_in(42),
      R => '0'
    );
\comp_stat.phase_in_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(11),
      Q => phase_in(43),
      R => '0'
    );
\comp_stat.phase_in_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(12),
      Q => phase_in(44),
      R => '0'
    );
\comp_stat.phase_in_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(13),
      Q => phase_in(45),
      R => '0'
    );
\comp_stat.phase_in_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(14),
      Q => phase_in(46),
      R => '0'
    );
\comp_stat.phase_in_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_2(15),
      Q => phase_in(47),
      R => '0'
    );
\comp_stat.phase_in_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(0),
      Q => phase_in(48),
      R => '0'
    );
\comp_stat.phase_in_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(1),
      Q => phase_in(49),
      R => '0'
    );
\comp_stat.phase_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(4),
      Q => phase_in(4),
      R => '0'
    );
\comp_stat.phase_in_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(2),
      Q => phase_in(50),
      R => '0'
    );
\comp_stat.phase_in_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(3),
      Q => phase_in(51),
      R => '0'
    );
\comp_stat.phase_in_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(4),
      Q => phase_in(52),
      R => '0'
    );
\comp_stat.phase_in_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(5),
      Q => phase_in(53),
      R => '0'
    );
\comp_stat.phase_in_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(6),
      Q => phase_in(54),
      R => '0'
    );
\comp_stat.phase_in_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(7),
      Q => phase_in(55),
      R => '0'
    );
\comp_stat.phase_in_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(8),
      Q => phase_in(56),
      R => '0'
    );
\comp_stat.phase_in_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(9),
      Q => phase_in(57),
      R => '0'
    );
\comp_stat.phase_in_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(10),
      Q => phase_in(58),
      R => '0'
    );
\comp_stat.phase_in_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(11),
      Q => phase_in(59),
      R => '0'
    );
\comp_stat.phase_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(5),
      Q => phase_in(5),
      R => '0'
    );
\comp_stat.phase_in_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(12),
      Q => phase_in(60),
      R => '0'
    );
\comp_stat.phase_in_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(13),
      Q => phase_in(61),
      R => '0'
    );
\comp_stat.phase_in_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(14),
      Q => phase_in(62),
      R => '0'
    );
\comp_stat.phase_in_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_3(15),
      Q => phase_in(63),
      R => '0'
    );
\comp_stat.phase_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(6),
      Q => phase_in(6),
      R => '0'
    );
\comp_stat.phase_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(7),
      Q => phase_in(7),
      R => '0'
    );
\comp_stat.phase_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(8),
      Q => phase_in(8),
      R => '0'
    );
\comp_stat.phase_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_0(9),
      Q => phase_in(9),
      R => '0'
    );
\comp_stat.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(0),
      Q => \^phase\(0),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(10),
      Q => \^phase\(10),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(11),
      Q => \^phase\(11),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(12),
      Q => \^phase\(12),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(13),
      Q => \^phase\(13),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(14),
      Q => \^phase\(14),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(15),
      Q => \^phase\(15),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_stat.phase_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_comp_stat.phase_reg[15]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \comp_stat.phase_reg[15]_i_2_n_1\,
      CO(5) => \comp_stat.phase_reg[15]_i_2_n_2\,
      CO(4) => \comp_stat.phase_reg[15]_i_2_n_3\,
      CO(3) => \comp_stat.phase_reg[15]_i_2_n_4\,
      CO(2) => \comp_stat.phase_reg[15]_i_2_n_5\,
      CO(1) => \comp_stat.phase_reg[15]_i_2_n_6\,
      CO(0) => \comp_stat.phase_reg[15]_i_2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => prev_phase(14 downto 8),
      O(7 downto 0) => \comp_stat.phase_reg0\(15 downto 8),
      S(7) => \comp_stat.phase[15]_i_4_n_0\,
      S(6) => \comp_stat.phase[15]_i_5_n_0\,
      S(5) => \comp_stat.phase[15]_i_6_n_0\,
      S(4) => \comp_stat.phase[15]_i_7_n_0\,
      S(3) => \comp_stat.phase[15]_i_8_n_0\,
      S(2) => \comp_stat.phase[15]_i_9_n_0\,
      S(1) => \comp_stat.phase[15]_i_10_n_0\,
      S(0) => \comp_stat.phase[15]_i_11_n_0\
    );
\comp_stat.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(1),
      Q => \^phase\(1),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(2),
      Q => \^phase\(2),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(3),
      Q => \^phase\(3),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(4),
      Q => \^phase\(4),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(5),
      Q => \^phase\(5),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(6),
      Q => \^phase\(6),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(7),
      Q => \^phase\(7),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \comp_stat.phase_reg[7]_i_1_n_0\,
      CO(6) => \comp_stat.phase_reg[7]_i_1_n_1\,
      CO(5) => \comp_stat.phase_reg[7]_i_1_n_2\,
      CO(4) => \comp_stat.phase_reg[7]_i_1_n_3\,
      CO(3) => \comp_stat.phase_reg[7]_i_1_n_4\,
      CO(2) => \comp_stat.phase_reg[7]_i_1_n_5\,
      CO(1) => \comp_stat.phase_reg[7]_i_1_n_6\,
      CO(0) => \comp_stat.phase_reg[7]_i_1_n_7\,
      DI(7 downto 0) => prev_phase(7 downto 0),
      O(7 downto 0) => \comp_stat.phase_reg0\(7 downto 0),
      S(7) => \comp_stat.phase[7]_i_2_n_0\,
      S(6) => \comp_stat.phase[7]_i_3_n_0\,
      S(5) => \comp_stat.phase[7]_i_4_n_0\,
      S(4) => \comp_stat.phase[7]_i_5_n_0\,
      S(3) => \comp_stat.phase[7]_i_6_n_0\,
      S(2) => \comp_stat.phase[7]_i_7_n_0\,
      S(1) => \comp_stat.phase[7]_i_8_n_0\,
      S(0) => \comp_stat.phase[7]_i_9_n_0\
    );
\comp_stat.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(8),
      Q => \^phase\(8),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.phase_reg0\(9),
      Q => \^phase\(9),
      R => \comp_stat.phase[15]_i_1_n_0\
    );
\comp_stat.pos_1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(0),
      I1 => proc_up,
      I2 => down_pos(0),
      O => \comp_stat.pos_1[0]_i_1_n_0\
    );
\comp_stat.pos_1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(10),
      I1 => proc_up,
      I2 => down_pos(10),
      O => \comp_stat.pos_1[10]_i_1_n_0\
    );
\comp_stat.pos_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(1),
      I1 => proc_up,
      I2 => down_pos(1),
      O => \comp_stat.pos_1[1]_i_1_n_0\
    );
\comp_stat.pos_1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(2),
      I1 => proc_up,
      I2 => down_pos(2),
      O => \comp_stat.pos_1[2]_i_1_n_0\
    );
\comp_stat.pos_1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(3),
      I1 => proc_up,
      I2 => down_pos(3),
      O => \comp_stat.pos_1[3]_i_1_n_0\
    );
\comp_stat.pos_1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(4),
      I1 => proc_up,
      I2 => down_pos(4),
      O => \comp_stat.pos_1[4]_i_1_n_0\
    );
\comp_stat.pos_1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(5),
      I1 => proc_up,
      I2 => down_pos(5),
      O => \comp_stat.pos_1[5]_i_1_n_0\
    );
\comp_stat.pos_1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(6),
      I1 => proc_up,
      I2 => down_pos(6),
      O => \comp_stat.pos_1[6]_i_1_n_0\
    );
\comp_stat.pos_1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(7),
      I1 => proc_up,
      I2 => down_pos(7),
      O => \comp_stat.pos_1[7]_i_1_n_0\
    );
\comp_stat.pos_1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(8),
      I1 => proc_up,
      I2 => down_pos(8),
      O => \comp_stat.pos_1[8]_i_1_n_0\
    );
\comp_stat.pos_1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_pos(9),
      I1 => proc_up,
      I2 => down_pos(9),
      O => \comp_stat.pos_1[9]_i_1_n_0\
    );
\comp_stat.pos_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[0]_i_1_n_0\,
      Q => pos_1(0),
      R => '0'
    );
\comp_stat.pos_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[10]_i_1_n_0\,
      Q => pos_1(10),
      R => '0'
    );
\comp_stat.pos_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[1]_i_1_n_0\,
      Q => pos_1(1),
      R => '0'
    );
\comp_stat.pos_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[2]_i_1_n_0\,
      Q => pos_1(2),
      R => '0'
    );
\comp_stat.pos_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[3]_i_1_n_0\,
      Q => pos_1(3),
      R => '0'
    );
\comp_stat.pos_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[4]_i_1_n_0\,
      Q => pos_1(4),
      R => '0'
    );
\comp_stat.pos_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[5]_i_1_n_0\,
      Q => pos_1(5),
      R => '0'
    );
\comp_stat.pos_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[6]_i_1_n_0\,
      Q => pos_1(6),
      R => '0'
    );
\comp_stat.pos_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[7]_i_1_n_0\,
      Q => pos_1(7),
      R => '0'
    );
\comp_stat.pos_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[8]_i_1_n_0\,
      Q => pos_1(8),
      R => '0'
    );
\comp_stat.pos_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pos_1[9]_i_1_n_0\,
      Q => pos_1(9),
      R => '0'
    );
\comp_stat.pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(0),
      Q => \^pos\(0),
      R => '0'
    );
\comp_stat.pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(10),
      Q => \^pos\(10),
      R => '0'
    );
\comp_stat.pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(1),
      Q => \^pos\(1),
      R => '0'
    );
\comp_stat.pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(2),
      Q => \^pos\(2),
      R => '0'
    );
\comp_stat.pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(3),
      Q => \^pos\(3),
      R => '0'
    );
\comp_stat.pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(4),
      Q => \^pos\(4),
      R => '0'
    );
\comp_stat.pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(5),
      Q => \^pos\(5),
      R => '0'
    );
\comp_stat.pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(6),
      Q => \^pos\(6),
      R => '0'
    );
\comp_stat.pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(7),
      Q => \^pos\(7),
      R => '0'
    );
\comp_stat.pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(8),
      Q => \^pos\(8),
      R => '0'
    );
\comp_stat.pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pos_1(9),
      Q => \^pos\(9),
      R => '0'
    );
\comp_stat.pred_phase[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \comp_stat.active_i_3_n_0\,
      I1 => pred_phase01_in(0),
      I2 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I3 => pred_phase0(0),
      O => \comp_stat.pred_phase[0]_i_1_n_0\
    );
\comp_stat.pred_phase[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(4),
      I2 => pred_phase01_in(10),
      I3 => \comp_stat.active_i_3_n_0\,
      I4 => pred_phase0(10),
      I5 => \comp_stat.pred_phase[21]_i_5_n_0\,
      O => \comp_stat.pred_phase[10]_i_1_n_0\
    );
\comp_stat.pred_phase[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I1 => pred_phase0(11),
      I2 => pred_phase01_in(11),
      I3 => \comp_stat.active_i_3_n_0\,
      I4 => curr_phase(5),
      I5 => \comp_stat.pred_phase[21]_i_2_n_0\,
      O => \comp_stat.pred_phase[11]_i_1_n_0\
    );
\comp_stat.pred_phase[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(6),
      I2 => pred_phase0(12),
      I3 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I4 => pred_phase01_in(12),
      I5 => \comp_stat.active_i_3_n_0\,
      O => \comp_stat.pred_phase[12]_i_1_n_0\
    );
\comp_stat.pred_phase[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I1 => pred_phase0(13),
      I2 => pred_phase01_in(13),
      I3 => \comp_stat.active_i_3_n_0\,
      I4 => curr_phase(7),
      I5 => \comp_stat.pred_phase[21]_i_2_n_0\,
      O => \comp_stat.pred_phase[13]_i_1_n_0\
    );
\comp_stat.pred_phase[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(8),
      I2 => pred_phase01_in(14),
      I3 => \comp_stat.active_i_3_n_0\,
      I4 => pred_phase0(14),
      I5 => \comp_stat.pred_phase[21]_i_5_n_0\,
      O => \comp_stat.pred_phase[14]_i_1_n_0\
    );
\comp_stat.pred_phase[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(9),
      I2 => pred_phase01_in(15),
      I3 => \comp_stat.active_i_3_n_0\,
      I4 => pred_phase0(15),
      I5 => \comp_stat.pred_phase[21]_i_5_n_0\,
      O => \comp_stat.pred_phase[15]_i_1_n_0\
    );
\comp_stat.pred_phase[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(9),
      I1 => freq(9),
      O => \comp_stat.pred_phase[15]_i_10_n_0\
    );
\comp_stat.pred_phase[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(8),
      I1 => freq(8),
      O => \comp_stat.pred_phase[15]_i_11_n_0\
    );
\comp_stat.pred_phase[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(15),
      I1 => freq(15),
      O => \comp_stat.pred_phase[15]_i_12_n_0\
    );
\comp_stat.pred_phase[15]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(14),
      I1 => freq(14),
      O => \comp_stat.pred_phase[15]_i_13_n_0\
    );
\comp_stat.pred_phase[15]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(13),
      I1 => freq(13),
      O => \comp_stat.pred_phase[15]_i_14_n_0\
    );
\comp_stat.pred_phase[15]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(12),
      I1 => freq(12),
      O => \comp_stat.pred_phase[15]_i_15_n_0\
    );
\comp_stat.pred_phase[15]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(11),
      I1 => freq(11),
      O => \comp_stat.pred_phase[15]_i_16_n_0\
    );
\comp_stat.pred_phase[15]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(10),
      I1 => freq(10),
      O => \comp_stat.pred_phase[15]_i_17_n_0\
    );
\comp_stat.pred_phase[15]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(9),
      I1 => freq(9),
      O => \comp_stat.pred_phase[15]_i_18_n_0\
    );
\comp_stat.pred_phase[15]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(8),
      I1 => freq(8),
      O => \comp_stat.pred_phase[15]_i_19_n_0\
    );
\comp_stat.pred_phase[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(15),
      I1 => freq(15),
      O => \comp_stat.pred_phase[15]_i_4_n_0\
    );
\comp_stat.pred_phase[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(14),
      I1 => freq(14),
      O => \comp_stat.pred_phase[15]_i_5_n_0\
    );
\comp_stat.pred_phase[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(13),
      I1 => freq(13),
      O => \comp_stat.pred_phase[15]_i_6_n_0\
    );
\comp_stat.pred_phase[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(12),
      I1 => freq(12),
      O => \comp_stat.pred_phase[15]_i_7_n_0\
    );
\comp_stat.pred_phase[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(11),
      I1 => freq(11),
      O => \comp_stat.pred_phase[15]_i_8_n_0\
    );
\comp_stat.pred_phase[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(10),
      I1 => freq(10),
      O => \comp_stat.pred_phase[15]_i_9_n_0\
    );
\comp_stat.pred_phase[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I1 => pred_phase0(16),
      I2 => curr_phase(10),
      I3 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I4 => pred_phase01_in(16),
      I5 => \comp_stat.active_i_3_n_0\,
      O => \comp_stat.pred_phase[16]_i_1_n_0\
    );
\comp_stat.pred_phase[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(11),
      I2 => pred_phase0(17),
      I3 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I4 => pred_phase01_in(17),
      I5 => \comp_stat.active_i_3_n_0\,
      O => \comp_stat.pred_phase[17]_i_1_n_0\
    );
\comp_stat.pred_phase[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(12),
      I2 => pred_phase0(18),
      I3 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I4 => pred_phase01_in(18),
      I5 => \comp_stat.active_i_3_n_0\,
      O => \comp_stat.pred_phase[18]_i_1_n_0\
    );
\comp_stat.pred_phase[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I1 => pred_phase0(19),
      I2 => pred_phase01_in(19),
      I3 => \comp_stat.active_i_3_n_0\,
      I4 => curr_phase(13),
      I5 => \comp_stat.pred_phase[21]_i_2_n_0\,
      O => \comp_stat.pred_phase[19]_i_1_n_0\
    );
\comp_stat.pred_phase[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \comp_stat.active_i_3_n_0\,
      I1 => pred_phase01_in(1),
      I2 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I3 => pred_phase0(1),
      O => \comp_stat.pred_phase[1]_i_1_n_0\
    );
\comp_stat.pred_phase[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(14),
      I2 => pred_phase0(20),
      I3 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I4 => pred_phase01_in(20),
      I5 => \comp_stat.active_i_3_n_0\,
      O => \comp_stat.pred_phase[20]_i_1_n_0\
    );
\comp_stat.pred_phase[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(15),
      I2 => pred_phase01_in(21),
      I3 => \comp_stat.active_i_3_n_0\,
      I4 => pred_phase0(21),
      I5 => \comp_stat.pred_phase[21]_i_5_n_0\,
      O => \comp_stat.pred_phase[21]_i_1_n_0\
    );
\comp_stat.pred_phase[21]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(17),
      I1 => freq(17),
      O => \comp_stat.pred_phase[21]_i_10_n_0\
    );
\comp_stat.pred_phase[21]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(16),
      I1 => freq(16),
      O => \comp_stat.pred_phase[21]_i_11_n_0\
    );
\comp_stat.pred_phase[21]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(21),
      O => \comp_stat.pred_phase[21]_i_12_n_0\
    );
\comp_stat.pred_phase[21]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(20),
      O => \comp_stat.pred_phase[21]_i_13_n_0\
    );
\comp_stat.pred_phase[21]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(19),
      I1 => freq(19),
      O => \comp_stat.pred_phase[21]_i_14_n_0\
    );
\comp_stat.pred_phase[21]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(18),
      I1 => freq(18),
      O => \comp_stat.pred_phase[21]_i_15_n_0\
    );
\comp_stat.pred_phase[21]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(17),
      I1 => freq(17),
      O => \comp_stat.pred_phase[21]_i_16_n_0\
    );
\comp_stat.pred_phase[21]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(16),
      I1 => freq(16),
      O => \comp_stat.pred_phase[21]_i_17_n_0\
    );
\comp_stat.pred_phase[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888A"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_6_n_0\,
      I1 => \comp_stat.pred_phase[21]_i_7_n_0\,
      I2 => stop_down(0),
      I3 => \comp_stat.down_pos[3]_i_2_n_0\,
      I4 => \comp_stat.down_pos[10]_i_3_n_0\,
      I5 => \comp_stat.down_pos[7]_i_3_n_0\,
      O => \comp_stat.pred_phase[21]_i_2_n_0\
    );
\comp_stat.pred_phase[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
        port map (
      I0 => proc_up,
      I1 => \comp_stat.env[15]_i_4_n_0\,
      I2 => stop_down(0),
      I3 => \comp_stat.down_pos[3]_i_2_n_0\,
      I4 => \comp_stat.down_pos[10]_i_3_n_0\,
      I5 => \comp_stat.down_pos[7]_i_3_n_0\,
      O => \comp_stat.pred_phase[21]_i_5_n_0\
    );
\comp_stat.pred_phase[21]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => up_delay(1),
      I1 => start_up,
      I2 => up_delay(0),
      I3 => proc_up,
      O => \comp_stat.pred_phase[21]_i_6_n_0\
    );
\comp_stat.pred_phase[21]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => start_down,
      I1 => down_delay(0),
      I2 => down_delay(1),
      I3 => proc_up,
      O => \comp_stat.pred_phase[21]_i_7_n_0\
    );
\comp_stat.pred_phase[21]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(19),
      I1 => freq(19),
      O => \comp_stat.pred_phase[21]_i_8_n_0\
    );
\comp_stat.pred_phase[21]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(18),
      I1 => freq(18),
      O => \comp_stat.pred_phase[21]_i_9_n_0\
    );
\comp_stat.pred_phase[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \comp_stat.active_i_3_n_0\,
      I1 => pred_phase01_in(2),
      I2 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I3 => pred_phase0(2),
      O => \comp_stat.pred_phase[2]_i_1_n_0\
    );
\comp_stat.pred_phase[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \comp_stat.active_i_3_n_0\,
      I1 => pred_phase01_in(3),
      I2 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I3 => pred_phase0(3),
      O => \comp_stat.pred_phase[3]_i_1_n_0\
    );
\comp_stat.pred_phase[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \comp_stat.active_i_3_n_0\,
      I1 => pred_phase01_in(4),
      I2 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I3 => pred_phase0(4),
      O => \comp_stat.pred_phase[4]_i_1_n_0\
    );
\comp_stat.pred_phase[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \comp_stat.active_i_3_n_0\,
      I1 => pred_phase01_in(5),
      I2 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I3 => pred_phase0(5),
      O => \comp_stat.pred_phase[5]_i_1_n_0\
    );
\comp_stat.pred_phase[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I1 => pred_phase0(6),
      I2 => curr_phase(0),
      I3 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I4 => pred_phase01_in(6),
      I5 => \comp_stat.active_i_3_n_0\,
      O => \comp_stat.pred_phase[6]_i_1_n_0\
    );
\comp_stat.pred_phase[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(1),
      I2 => pred_phase0(7),
      I3 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I4 => pred_phase01_in(7),
      I5 => \comp_stat.active_i_3_n_0\,
      O => \comp_stat.pred_phase[7]_i_1_n_0\
    );
\comp_stat.pred_phase[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(1),
      I1 => freq(1),
      O => \comp_stat.pred_phase[7]_i_10_n_0\
    );
\comp_stat.pred_phase[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(0),
      I1 => freq(0),
      O => \comp_stat.pred_phase[7]_i_11_n_0\
    );
\comp_stat.pred_phase[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(7),
      I1 => freq(7),
      O => \comp_stat.pred_phase[7]_i_12_n_0\
    );
\comp_stat.pred_phase[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(6),
      I1 => freq(6),
      O => \comp_stat.pred_phase[7]_i_13_n_0\
    );
\comp_stat.pred_phase[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(5),
      I1 => freq(5),
      O => \comp_stat.pred_phase[7]_i_14_n_0\
    );
\comp_stat.pred_phase[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(4),
      I1 => freq(4),
      O => \comp_stat.pred_phase[7]_i_15_n_0\
    );
\comp_stat.pred_phase[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(3),
      I1 => freq(3),
      O => \comp_stat.pred_phase[7]_i_16_n_0\
    );
\comp_stat.pred_phase[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(2),
      I1 => freq(2),
      O => \comp_stat.pred_phase[7]_i_17_n_0\
    );
\comp_stat.pred_phase[7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(1),
      I1 => freq(1),
      O => \comp_stat.pred_phase[7]_i_18_n_0\
    );
\comp_stat.pred_phase[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pred_phase(0),
      I1 => freq(0),
      O => \comp_stat.pred_phase[7]_i_19_n_0\
    );
\comp_stat.pred_phase[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(7),
      I1 => freq(7),
      O => \comp_stat.pred_phase[7]_i_4_n_0\
    );
\comp_stat.pred_phase[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(6),
      I1 => freq(6),
      O => \comp_stat.pred_phase[7]_i_5_n_0\
    );
\comp_stat.pred_phase[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(5),
      I1 => freq(5),
      O => \comp_stat.pred_phase[7]_i_6_n_0\
    );
\comp_stat.pred_phase[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(4),
      I1 => freq(4),
      O => \comp_stat.pred_phase[7]_i_7_n_0\
    );
\comp_stat.pred_phase[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(3),
      I1 => freq(3),
      O => \comp_stat.pred_phase[7]_i_8_n_0\
    );
\comp_stat.pred_phase[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pred_phase(2),
      I1 => freq(2),
      O => \comp_stat.pred_phase[7]_i_9_n_0\
    );
\comp_stat.pred_phase[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I1 => pred_phase0(8),
      I2 => pred_phase01_in(8),
      I3 => \comp_stat.active_i_3_n_0\,
      I4 => curr_phase(2),
      I5 => \comp_stat.pred_phase[21]_i_2_n_0\,
      O => \comp_stat.pred_phase[8]_i_1_n_0\
    );
\comp_stat.pred_phase[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \comp_stat.pred_phase[21]_i_2_n_0\,
      I1 => curr_phase(3),
      I2 => pred_phase0(9),
      I3 => \comp_stat.pred_phase[21]_i_5_n_0\,
      I4 => pred_phase01_in(9),
      I5 => \comp_stat.active_i_3_n_0\,
      O => \comp_stat.pred_phase[9]_i_1_n_0\
    );
\comp_stat.pred_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[0]_i_1_n_0\,
      Q => pred_phase(0),
      R => '0'
    );
\comp_stat.pred_phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[10]_i_1_n_0\,
      Q => pred_phase(10),
      R => '0'
    );
\comp_stat.pred_phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[11]_i_1_n_0\,
      Q => pred_phase(11),
      R => '0'
    );
\comp_stat.pred_phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[12]_i_1_n_0\,
      Q => pred_phase(12),
      R => '0'
    );
\comp_stat.pred_phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[13]_i_1_n_0\,
      Q => pred_phase(13),
      R => '0'
    );
\comp_stat.pred_phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[14]_i_1_n_0\,
      Q => pred_phase(14),
      R => '0'
    );
\comp_stat.pred_phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[15]_i_1_n_0\,
      Q => pred_phase(15),
      R => '0'
    );
\comp_stat.pred_phase_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_stat.pred_phase_reg[7]_i_3_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_stat.pred_phase_reg[15]_i_2_n_0\,
      CO(6) => \comp_stat.pred_phase_reg[15]_i_2_n_1\,
      CO(5) => \comp_stat.pred_phase_reg[15]_i_2_n_2\,
      CO(4) => \comp_stat.pred_phase_reg[15]_i_2_n_3\,
      CO(3) => \comp_stat.pred_phase_reg[15]_i_2_n_4\,
      CO(2) => \comp_stat.pred_phase_reg[15]_i_2_n_5\,
      CO(1) => \comp_stat.pred_phase_reg[15]_i_2_n_6\,
      CO(0) => \comp_stat.pred_phase_reg[15]_i_2_n_7\,
      DI(7 downto 0) => pred_phase(15 downto 8),
      O(7 downto 0) => pred_phase01_in(15 downto 8),
      S(7) => \comp_stat.pred_phase[15]_i_4_n_0\,
      S(6) => \comp_stat.pred_phase[15]_i_5_n_0\,
      S(5) => \comp_stat.pred_phase[15]_i_6_n_0\,
      S(4) => \comp_stat.pred_phase[15]_i_7_n_0\,
      S(3) => \comp_stat.pred_phase[15]_i_8_n_0\,
      S(2) => \comp_stat.pred_phase[15]_i_9_n_0\,
      S(1) => \comp_stat.pred_phase[15]_i_10_n_0\,
      S(0) => \comp_stat.pred_phase[15]_i_11_n_0\
    );
\comp_stat.pred_phase_reg[15]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_stat.pred_phase_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_stat.pred_phase_reg[15]_i_3_n_0\,
      CO(6) => \comp_stat.pred_phase_reg[15]_i_3_n_1\,
      CO(5) => \comp_stat.pred_phase_reg[15]_i_3_n_2\,
      CO(4) => \comp_stat.pred_phase_reg[15]_i_3_n_3\,
      CO(3) => \comp_stat.pred_phase_reg[15]_i_3_n_4\,
      CO(2) => \comp_stat.pred_phase_reg[15]_i_3_n_5\,
      CO(1) => \comp_stat.pred_phase_reg[15]_i_3_n_6\,
      CO(0) => \comp_stat.pred_phase_reg[15]_i_3_n_7\,
      DI(7 downto 0) => pred_phase(15 downto 8),
      O(7 downto 0) => pred_phase0(15 downto 8),
      S(7) => \comp_stat.pred_phase[15]_i_12_n_0\,
      S(6) => \comp_stat.pred_phase[15]_i_13_n_0\,
      S(5) => \comp_stat.pred_phase[15]_i_14_n_0\,
      S(4) => \comp_stat.pred_phase[15]_i_15_n_0\,
      S(3) => \comp_stat.pred_phase[15]_i_16_n_0\,
      S(2) => \comp_stat.pred_phase[15]_i_17_n_0\,
      S(1) => \comp_stat.pred_phase[15]_i_18_n_0\,
      S(0) => \comp_stat.pred_phase[15]_i_19_n_0\
    );
\comp_stat.pred_phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[16]_i_1_n_0\,
      Q => pred_phase(16),
      R => '0'
    );
\comp_stat.pred_phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[17]_i_1_n_0\,
      Q => pred_phase(17),
      R => '0'
    );
\comp_stat.pred_phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[18]_i_1_n_0\,
      Q => pred_phase(18),
      R => '0'
    );
\comp_stat.pred_phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[19]_i_1_n_0\,
      Q => pred_phase(19),
      R => '0'
    );
\comp_stat.pred_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[1]_i_1_n_0\,
      Q => pred_phase(1),
      R => '0'
    );
\comp_stat.pred_phase_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[20]_i_1_n_0\,
      Q => pred_phase(20),
      R => '0'
    );
\comp_stat.pred_phase_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[21]_i_1_n_0\,
      Q => pred_phase(21),
      R => '0'
    );
\comp_stat.pred_phase_reg[21]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_stat.pred_phase_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_comp_stat.pred_phase_reg[21]_i_3_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \comp_stat.pred_phase_reg[21]_i_3_n_3\,
      CO(3) => \comp_stat.pred_phase_reg[21]_i_3_n_4\,
      CO(2) => \comp_stat.pred_phase_reg[21]_i_3_n_5\,
      CO(1) => \comp_stat.pred_phase_reg[21]_i_3_n_6\,
      CO(0) => \comp_stat.pred_phase_reg[21]_i_3_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => pred_phase(19 downto 16),
      O(7 downto 6) => \NLW_comp_stat.pred_phase_reg[21]_i_3_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => pred_phase01_in(21 downto 16),
      S(7 downto 6) => B"00",
      S(5 downto 4) => pred_phase(21 downto 20),
      S(3) => \comp_stat.pred_phase[21]_i_8_n_0\,
      S(2) => \comp_stat.pred_phase[21]_i_9_n_0\,
      S(1) => \comp_stat.pred_phase[21]_i_10_n_0\,
      S(0) => \comp_stat.pred_phase[21]_i_11_n_0\
    );
\comp_stat.pred_phase_reg[21]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_stat.pred_phase_reg[15]_i_3_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_comp_stat.pred_phase_reg[21]_i_4_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \comp_stat.pred_phase_reg[21]_i_4_n_3\,
      CO(3) => \comp_stat.pred_phase_reg[21]_i_4_n_4\,
      CO(2) => \comp_stat.pred_phase_reg[21]_i_4_n_5\,
      CO(1) => \comp_stat.pred_phase_reg[21]_i_4_n_6\,
      CO(0) => \comp_stat.pred_phase_reg[21]_i_4_n_7\,
      DI(7 downto 5) => B"000",
      DI(4 downto 0) => pred_phase(20 downto 16),
      O(7 downto 6) => \NLW_comp_stat.pred_phase_reg[21]_i_4_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => pred_phase0(21 downto 16),
      S(7 downto 6) => B"00",
      S(5) => \comp_stat.pred_phase[21]_i_12_n_0\,
      S(4) => \comp_stat.pred_phase[21]_i_13_n_0\,
      S(3) => \comp_stat.pred_phase[21]_i_14_n_0\,
      S(2) => \comp_stat.pred_phase[21]_i_15_n_0\,
      S(1) => \comp_stat.pred_phase[21]_i_16_n_0\,
      S(0) => \comp_stat.pred_phase[21]_i_17_n_0\
    );
\comp_stat.pred_phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[2]_i_1_n_0\,
      Q => pred_phase(2),
      R => '0'
    );
\comp_stat.pred_phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[3]_i_1_n_0\,
      Q => pred_phase(3),
      R => '0'
    );
\comp_stat.pred_phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[4]_i_1_n_0\,
      Q => pred_phase(4),
      R => '0'
    );
\comp_stat.pred_phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[5]_i_1_n_0\,
      Q => pred_phase(5),
      R => '0'
    );
\comp_stat.pred_phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[6]_i_1_n_0\,
      Q => pred_phase(6),
      R => '0'
    );
\comp_stat.pred_phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[7]_i_1_n_0\,
      Q => pred_phase(7),
      R => '0'
    );
\comp_stat.pred_phase_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \comp_stat.pred_phase_reg[7]_i_2_n_0\,
      CO(6) => \comp_stat.pred_phase_reg[7]_i_2_n_1\,
      CO(5) => \comp_stat.pred_phase_reg[7]_i_2_n_2\,
      CO(4) => \comp_stat.pred_phase_reg[7]_i_2_n_3\,
      CO(3) => \comp_stat.pred_phase_reg[7]_i_2_n_4\,
      CO(2) => \comp_stat.pred_phase_reg[7]_i_2_n_5\,
      CO(1) => \comp_stat.pred_phase_reg[7]_i_2_n_6\,
      CO(0) => \comp_stat.pred_phase_reg[7]_i_2_n_7\,
      DI(7 downto 0) => pred_phase(7 downto 0),
      O(7 downto 0) => pred_phase0(7 downto 0),
      S(7) => \comp_stat.pred_phase[7]_i_4_n_0\,
      S(6) => \comp_stat.pred_phase[7]_i_5_n_0\,
      S(5) => \comp_stat.pred_phase[7]_i_6_n_0\,
      S(4) => \comp_stat.pred_phase[7]_i_7_n_0\,
      S(3) => \comp_stat.pred_phase[7]_i_8_n_0\,
      S(2) => \comp_stat.pred_phase[7]_i_9_n_0\,
      S(1) => \comp_stat.pred_phase[7]_i_10_n_0\,
      S(0) => \comp_stat.pred_phase[7]_i_11_n_0\
    );
\comp_stat.pred_phase_reg[7]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_stat.pred_phase_reg[7]_i_3_n_0\,
      CO(6) => \comp_stat.pred_phase_reg[7]_i_3_n_1\,
      CO(5) => \comp_stat.pred_phase_reg[7]_i_3_n_2\,
      CO(4) => \comp_stat.pred_phase_reg[7]_i_3_n_3\,
      CO(3) => \comp_stat.pred_phase_reg[7]_i_3_n_4\,
      CO(2) => \comp_stat.pred_phase_reg[7]_i_3_n_5\,
      CO(1) => \comp_stat.pred_phase_reg[7]_i_3_n_6\,
      CO(0) => \comp_stat.pred_phase_reg[7]_i_3_n_7\,
      DI(7 downto 0) => pred_phase(7 downto 0),
      O(7 downto 0) => pred_phase01_in(7 downto 0),
      S(7) => \comp_stat.pred_phase[7]_i_12_n_0\,
      S(6) => \comp_stat.pred_phase[7]_i_13_n_0\,
      S(5) => \comp_stat.pred_phase[7]_i_14_n_0\,
      S(4) => \comp_stat.pred_phase[7]_i_15_n_0\,
      S(3) => \comp_stat.pred_phase[7]_i_16_n_0\,
      S(2) => \comp_stat.pred_phase[7]_i_17_n_0\,
      S(1) => \comp_stat.pred_phase[7]_i_18_n_0\,
      S(0) => \comp_stat.pred_phase[7]_i_19_n_0\
    );
\comp_stat.pred_phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[8]_i_1_n_0\,
      Q => pred_phase(8),
      R => '0'
    );
\comp_stat.pred_phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.pred_phase[9]_i_1_n_0\,
      Q => pred_phase(9),
      R => '0'
    );
\comp_stat.prev_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(0),
      Q => prev_phase(0),
      R => '0'
    );
\comp_stat.prev_phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(10),
      Q => prev_phase(10),
      R => '0'
    );
\comp_stat.prev_phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(11),
      Q => prev_phase(11),
      R => '0'
    );
\comp_stat.prev_phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(12),
      Q => prev_phase(12),
      R => '0'
    );
\comp_stat.prev_phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(13),
      Q => prev_phase(13),
      R => '0'
    );
\comp_stat.prev_phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(14),
      Q => prev_phase(14),
      R => '0'
    );
\comp_stat.prev_phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(15),
      Q => prev_phase(15),
      R => '0'
    );
\comp_stat.prev_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(1),
      Q => prev_phase(1),
      R => '0'
    );
\comp_stat.prev_phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(2),
      Q => prev_phase(2),
      R => '0'
    );
\comp_stat.prev_phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(3),
      Q => prev_phase(3),
      R => '0'
    );
\comp_stat.prev_phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(4),
      Q => prev_phase(4),
      R => '0'
    );
\comp_stat.prev_phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(5),
      Q => prev_phase(5),
      R => '0'
    );
\comp_stat.prev_phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(6),
      Q => prev_phase(6),
      R => '0'
    );
\comp_stat.prev_phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(7),
      Q => prev_phase(7),
      R => '0'
    );
\comp_stat.prev_phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(8),
      Q => prev_phase(8),
      R => '0'
    );
\comp_stat.prev_phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_phase(9),
      Q => prev_phase(9),
      R => '0'
    );
\comp_stat.proc_up_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0C"
    )
        port map (
      I0 => \comp_stat.proc_up_i_2_n_0\,
      I1 => filling,
      I2 => wr,
      I3 => proc_up,
      O => \comp_stat.proc_up_i_1_n_0\
    );
\comp_stat.proc_up_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => up_count(0),
      I1 => up_count(6),
      I2 => up_count(10),
      I3 => \comp_stat.rd_ptr_rep[8]_i_10_n_0\,
      I4 => \comp_stat.rd_ptr_rep[8]_i_11_n_0\,
      I5 => \comp_stat.rd_ptr_rep[8]_i_12_n_0\,
      O => \comp_stat.proc_up_i_2_n_0\
    );
\comp_stat.proc_up_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.proc_up_i_1_n_0\,
      Q => proc_up,
      R => reset
    );
\comp_stat.rd_pos_1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \comp_stat.rd_pos_1_reg_n_0_[0]\,
      I1 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I2 => max_pos(0),
      O => \comp_stat.rd_pos_1[0]_i_1_n_0\
    );
\comp_stat.rd_pos_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4FF44F4F444"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I1 => max_pos(1),
      I2 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I3 => \comp_stat.rd_pos_1_reg_n_0_[0]\,
      I4 => \comp_stat.rd_pos_1_reg_n_0_[1]\,
      I5 => \comp_stat.rd_ptr_rep[1]_i_2_n_0\,
      O => \comp_stat.rd_pos_1[1]_i_1_n_0\
    );
\comp_stat.rd_pos_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.rd_pos_1[0]_i_1_n_0\,
      Q => \comp_stat.rd_pos_1_reg_n_0_[0]\,
      R => '0'
    );
\comp_stat.rd_pos_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.rd_pos_1[1]_i_1_n_0\,
      Q => \comp_stat.rd_pos_1_reg_n_0_[1]\,
      R => '0'
    );
\comp_stat.rd_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.rd_pos_1_reg_n_0_[0]\,
      Q => rd_pos(0),
      R => '0'
    );
\comp_stat.rd_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.rd_pos_1_reg_n_0_[1]\,
      Q => rd_pos(1),
      R => '0'
    );
\comp_stat.rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[0]_i_1_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[0]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[1]_i_1_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[1]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[2]_i_1_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[2]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[3]_i_1_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[3]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[4]_i_1_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[4]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[5]_i_1_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[5]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[6]_i_1_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[6]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[7]_i_1_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[7]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[8]_i_2_n_0\,
      Q => \comp_stat.rd_ptr_reg_n_0_[8]\,
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[0]_i_1_n_0\,
      Q => rd_ptr(0),
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[1]_i_1_n_0\,
      Q => rd_ptr(1),
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[2]_i_1_n_0\,
      Q => rd_ptr(2),
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[3]_i_1_n_0\,
      Q => rd_ptr(3),
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[4]_i_1_n_0\,
      Q => rd_ptr(4),
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[5]_i_1_n_0\,
      Q => rd_ptr(5),
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[6]_i_1_n_0\,
      Q => rd_ptr(6),
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[7]_i_1_n_0\,
      Q => rd_ptr(7),
      R => '0'
    );
\comp_stat.rd_ptr_reg_rep[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.rd_ptr_rep[8]_i_1_n_0\,
      D => \comp_stat.rd_ptr_rep[8]_i_2_n_0\,
      Q => rd_ptr(8),
      R => '0'
    );
\comp_stat.rd_ptr_rep[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I1 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I2 => max_pos(2),
      O => \comp_stat.rd_ptr_rep[0]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4FF44F4F444"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I1 => max_pos(3),
      I2 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I5 => \comp_stat.rd_ptr_rep[1]_i_2_n_0\,
      O => \comp_stat.rd_ptr_rep[1]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => filling,
      I1 => proc_up,
      O => \comp_stat.rd_ptr_rep[1]_i_2_n_0\
    );
\comp_stat.rd_ptr_rep[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4FFF4"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I1 => max_pos(4),
      I2 => \comp_stat.rd_ptr_rep[2]_i_2_n_0\,
      I3 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I4 => \comp_stat.rd_ptr_rep[2]_i_3_n_0\,
      I5 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      O => \comp_stat.rd_ptr_rep[2]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100001"
    )
        port map (
      I0 => proc_up,
      I1 => filling,
      I2 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      O => \comp_stat.rd_ptr_rep[2]_i_2_n_0\
    );
\comp_stat.rd_ptr_rep[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      O => \comp_stat.rd_ptr_rep[2]_i_3_n_0\
    );
\comp_stat.rd_ptr_rep[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4FFF4"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I1 => max_pos(5),
      I2 => \comp_stat.rd_ptr_rep[3]_i_2_n_0\,
      I3 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I4 => \comp_stat.rd_ptr_rep[3]_i_3_n_0\,
      I5 => \comp_stat.rd_ptr_reg_n_0_[3]\,
      O => \comp_stat.rd_ptr_rep[3]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111000000001"
    )
        port map (
      I0 => proc_up,
      I1 => filling,
      I2 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I5 => \comp_stat.rd_ptr_reg_n_0_[3]\,
      O => \comp_stat.rd_ptr_rep[3]_i_2_n_0\
    );
\comp_stat.rd_ptr_rep[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I2 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      O => \comp_stat.rd_ptr_rep[3]_i_3_n_0\
    );
\comp_stat.rd_ptr_rep[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4FFF4"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I1 => max_pos(6),
      I2 => \comp_stat.rd_ptr_rep[4]_i_2_n_0\,
      I3 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I4 => \comp_stat.rd_ptr_rep[4]_i_3_n_0\,
      I5 => \comp_stat.rd_ptr_reg_n_0_[4]\,
      O => \comp_stat.rd_ptr_rep[4]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[1]_i_2_n_0\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[3]\,
      I2 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      I5 => \comp_stat.rd_ptr_reg_n_0_[4]\,
      O => \comp_stat.rd_ptr_rep[4]_i_2_n_0\
    );
\comp_stat.rd_ptr_rep[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I2 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[3]\,
      O => \comp_stat.rd_ptr_rep[4]_i_3_n_0\
    );
\comp_stat.rd_ptr_rep[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF44444F4"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I1 => max_pos(7),
      I2 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I3 => \comp_stat.rd_ptr_rep[5]_i_2_n_0\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[5]\,
      I5 => \comp_stat.rd_ptr_rep[5]_i_3_n_0\,
      O => \comp_stat.rd_ptr_rep[5]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[3]\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I2 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[4]\,
      O => \comp_stat.rd_ptr_rep[5]_i_2_n_0\
    );
\comp_stat.rd_ptr_rep[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => proc_up,
      I1 => filling,
      I2 => \comp_stat.rd_ptr_rep[5]_i_4_n_0\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[5]\,
      O => \comp_stat.rd_ptr_rep[5]_i_3_n_0\
    );
\comp_stat.rd_ptr_rep[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[4]\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      I2 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[3]\,
      O => \comp_stat.rd_ptr_rep[5]_i_4_n_0\
    );
\comp_stat.rd_ptr_rep[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEAAEEAFFFFAEEA"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[6]_i_2_n_0\,
      I1 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I2 => \comp_stat.rd_ptr_rep[6]_i_3_n_0\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[6]\,
      I4 => max_pos(8),
      I5 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      O => \comp_stat.rd_ptr_rep[6]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => proc_up,
      I1 => filling,
      I2 => \comp_stat.rd_ptr_rep[8]_i_8_n_0\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[6]\,
      O => \comp_stat.rd_ptr_rep[6]_i_2_n_0\
    );
\comp_stat.rd_ptr_rep[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[5]\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[4]\,
      I2 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I5 => \comp_stat.rd_ptr_reg_n_0_[3]\,
      O => \comp_stat.rd_ptr_rep[6]_i_3_n_0\
    );
\comp_stat.rd_ptr_rep[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEAAEEAFFFFAEEA"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[7]_i_2_n_0\,
      I1 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I2 => \comp_stat.rd_ptr_rep[7]_i_3_n_0\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[7]\,
      I4 => max_pos(9),
      I5 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      O => \comp_stat.rd_ptr_rep[7]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100001"
    )
        port map (
      I0 => proc_up,
      I1 => filling,
      I2 => \comp_stat.rd_ptr_reg_n_0_[6]\,
      I3 => \comp_stat.rd_ptr_rep[8]_i_8_n_0\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[7]\,
      O => \comp_stat.rd_ptr_rep[7]_i_2_n_0\
    );
\comp_stat.rd_ptr_rep[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[6]_i_3_n_0\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[6]\,
      O => \comp_stat.rd_ptr_rep[7]_i_3_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F0F0F0F0F0FBF"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[8]\,
      I1 => \comp_stat.rd_ptr_rep[8]_i_3_n_0\,
      I2 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      I3 => proc_up,
      I4 => \comp_stat.rd_pos_1_reg_n_0_[0]\,
      I5 => \comp_stat.rd_pos_1_reg_n_0_[1]\,
      O => \comp_stat.rd_ptr_rep[8]_i_1_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_count(8),
      I1 => up_count(7),
      O => \comp_stat.rd_ptr_rep[8]_i_10_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_count(5),
      I1 => up_count(4),
      O => \comp_stat.rd_ptr_rep[8]_i_11_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_count(1),
      I1 => up_count(2),
      I2 => up_count(9),
      I3 => up_count(3),
      O => \comp_stat.rd_ptr_rep[8]_i_12_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[8]_i_5_n_0\,
      I1 => \comp_stat.rd_ptr_rep[8]_i_6_n_0\,
      I2 => \comp_stat.rd_ptr_rep[8]_i_7_n_0\,
      I3 => max_pos(10),
      I4 => \comp_stat.rd_ptr_rep[8]_i_4_n_0\,
      O => \comp_stat.rd_ptr_rep[8]_i_2_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[7]\,
      I1 => \comp_stat.rd_ptr_rep[8]_i_8_n_0\,
      I2 => \comp_stat.rd_ptr_reg_n_0_[6]\,
      O => \comp_stat.rd_ptr_rep[8]_i_3_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF7"
    )
        port map (
      I0 => proc_up,
      I1 => \comp_stat.rd_ptr_rep[8]_i_9_n_0\,
      I2 => \comp_stat.rd_ptr_rep[8]_i_10_n_0\,
      I3 => \comp_stat.rd_ptr_rep[8]_i_11_n_0\,
      I4 => \comp_stat.rd_ptr_rep[8]_i_12_n_0\,
      I5 => filling,
      O => \comp_stat.rd_ptr_rep[8]_i_4_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111000000001"
    )
        port map (
      I0 => proc_up,
      I1 => filling,
      I2 => \comp_stat.rd_ptr_reg_n_0_[7]\,
      I3 => \comp_stat.rd_ptr_rep[8]_i_8_n_0\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[6]\,
      I5 => \comp_stat.rd_ptr_reg_n_0_[8]\,
      O => \comp_stat.rd_ptr_rep[8]_i_5_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFD00000000"
    )
        port map (
      I0 => \comp_stat.rd_ptr_rep[8]_i_9_n_0\,
      I1 => \comp_stat.rd_ptr_rep[8]_i_10_n_0\,
      I2 => \comp_stat.rd_ptr_rep[8]_i_11_n_0\,
      I3 => \comp_stat.rd_ptr_rep[8]_i_12_n_0\,
      I4 => filling,
      I5 => proc_up,
      O => \comp_stat.rd_ptr_rep[8]_i_6_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[8]\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[7]\,
      I2 => \comp_stat.rd_ptr_rep[6]_i_3_n_0\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[6]\,
      O => \comp_stat.rd_ptr_rep[8]_i_7_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \comp_stat.rd_ptr_reg_n_0_[5]\,
      I1 => \comp_stat.rd_ptr_reg_n_0_[3]\,
      I2 => \comp_stat.rd_ptr_reg_n_0_[1]\,
      I3 => \comp_stat.rd_ptr_reg_n_0_[0]\,
      I4 => \comp_stat.rd_ptr_reg_n_0_[2]\,
      I5 => \comp_stat.rd_ptr_reg_n_0_[4]\,
      O => \comp_stat.rd_ptr_rep[8]_i_8_n_0\
    );
\comp_stat.rd_ptr_rep[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => up_count(10),
      I1 => up_count(6),
      I2 => up_count(0),
      O => \comp_stat.rd_ptr_rep[8]_i_9_n_0\
    );
\comp_stat.start_down_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \comp_stat.start_down_i_2_n_0\,
      I1 => proc_up,
      I2 => filling,
      O => \comp_stat.start_down_i_1_n_0\
    );
\comp_stat.start_down_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => up_count(9),
      I1 => up_count(6),
      I2 => \comp_stat.start_down_i_3_n_0\,
      I3 => up_count(7),
      I4 => up_count(8),
      I5 => up_count(10),
      O => \comp_stat.start_down_i_2_n_0\
    );
\comp_stat.start_down_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => up_count(3),
      I1 => up_count(0),
      I2 => up_count(1),
      I3 => up_count(2),
      I4 => up_count(4),
      I5 => up_count(5),
      O => \comp_stat.start_down_i_3_n_0\
    );
\comp_stat.start_down_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.start_down_i_1_n_0\,
      Q => start_down,
      R => '0'
    );
\comp_stat.start_up_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => start_up,
      I1 => wr,
      I2 => filling,
      O => \comp_stat.start_up_i_1_n_0\
    );
\comp_stat.start_up_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.start_up_i_1_n_0\,
      Q => start_up,
      R => reset
    );
\comp_stat.stop_down[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004500"
    )
        port map (
      I0 => proc_up,
      I1 => stop_down(0),
      I2 => stop_down(1),
      I3 => \^active\,
      I4 => reset,
      I5 => \comp_stat.down_pos[5]_i_3_n_0\,
      O => \comp_stat.stop_down[0]_i_1_n_0\
    );
\comp_stat.stop_down_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.stop_down[0]_i_1_n_0\,
      Q => stop_down(0),
      R => '0'
    );
\comp_stat.stop_down_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stop_down(0),
      Q => stop_down(1),
      R => '0'
    );
\comp_stat.up_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(0),
      I1 => filling,
      I2 => \up_count__0\(0),
      O => \p_1_in__0\(0)
    );
\comp_stat.up_count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => proc_up,
      I1 => filling,
      O => \comp_stat.up_count[10]_i_1_n_0\
    );
\comp_stat.up_count[10]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_count(9),
      I1 => up_count(10),
      O => \comp_stat.up_count[10]_i_10_n_0\
    );
\comp_stat.up_count[10]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_count(8),
      I1 => up_count(9),
      O => \comp_stat.up_count[10]_i_11_n_0\
    );
\comp_stat.up_count[10]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_count(7),
      I1 => up_count(8),
      O => \comp_stat.up_count[10]_i_12_n_0\
    );
\comp_stat.up_count[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(10),
      I1 => filling,
      I2 => \up_count__0\(10),
      O => \p_1_in__0\(10)
    );
\comp_stat.up_count[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => size(8),
      I1 => max_pos(8),
      O => \comp_stat.up_count[10]_i_5_n_0\
    );
\comp_stat.up_count[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => size(7),
      I1 => max_pos(7),
      O => \comp_stat.up_count[10]_i_6_n_0\
    );
\comp_stat.up_count[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(9),
      I1 => size(9),
      I2 => size(10),
      I3 => max_pos(10),
      O => \comp_stat.up_count[10]_i_7_n_0\
    );
\comp_stat.up_count[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(8),
      I1 => size(8),
      I2 => size(9),
      I3 => max_pos(9),
      O => \comp_stat.up_count[10]_i_8_n_0\
    );
\comp_stat.up_count[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(7),
      I1 => size(7),
      I2 => size(8),
      I3 => max_pos(8),
      O => \comp_stat.up_count[10]_i_9_n_0\
    );
\comp_stat.up_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(1),
      I1 => filling,
      I2 => \up_count__0\(1),
      O => \p_1_in__0\(1)
    );
\comp_stat.up_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(2),
      I1 => filling,
      I2 => \up_count__0\(2),
      O => \p_1_in__0\(2)
    );
\comp_stat.up_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(3),
      I1 => filling,
      I2 => \up_count__0\(3),
      O => \p_1_in__0\(3)
    );
\comp_stat.up_count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(4),
      I1 => filling,
      I2 => \up_count__0\(4),
      O => \p_1_in__0\(4)
    );
\comp_stat.up_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(5),
      I1 => filling,
      I2 => \up_count__0\(5),
      O => \p_1_in__0\(5)
    );
\comp_stat.up_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(6),
      I1 => filling,
      I2 => \up_count__0\(6),
      O => \p_1_in__0\(6)
    );
\comp_stat.up_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(7),
      I1 => filling,
      I2 => \up_count__0\(7),
      O => \p_1_in__0\(7)
    );
\comp_stat.up_count[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => size(0),
      I1 => max_pos(0),
      O => \comp_stat.up_count[7]_i_10_n_0\
    );
\comp_stat.up_count[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(6),
      I1 => size(6),
      I2 => size(7),
      I3 => max_pos(7),
      O => \comp_stat.up_count[7]_i_11_n_0\
    );
\comp_stat.up_count[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(5),
      I1 => size(5),
      I2 => size(6),
      I3 => max_pos(6),
      O => \comp_stat.up_count[7]_i_12_n_0\
    );
\comp_stat.up_count[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(4),
      I1 => size(4),
      I2 => size(5),
      I3 => max_pos(5),
      O => \comp_stat.up_count[7]_i_13_n_0\
    );
\comp_stat.up_count[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(3),
      I1 => size(3),
      I2 => size(4),
      I3 => max_pos(4),
      O => \comp_stat.up_count[7]_i_14_n_0\
    );
\comp_stat.up_count[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(2),
      I1 => size(2),
      I2 => size(3),
      I3 => max_pos(3),
      O => \comp_stat.up_count[7]_i_15_n_0\
    );
\comp_stat.up_count[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => max_pos(1),
      I1 => size(1),
      I2 => size(2),
      I3 => max_pos(2),
      O => \comp_stat.up_count[7]_i_16_n_0\
    );
\comp_stat.up_count[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => max_pos(0),
      I1 => size(0),
      I2 => size(1),
      I3 => max_pos(1),
      O => \comp_stat.up_count[7]_i_17_n_0\
    );
\comp_stat.up_count[7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => max_pos(0),
      I1 => size(0),
      O => \comp_stat.up_count[7]_i_18_n_0\
    );
\comp_stat.up_count[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => up_count(10),
      I1 => \comp_stat.up_count[7]_i_28_n_0\,
      I2 => up_count(8),
      I3 => up_count(7),
      I4 => up_count(6),
      I5 => up_count(9),
      O => \comp_stat.up_count[7]_i_19_n_0\
    );
\comp_stat.up_count[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_count(6),
      I1 => up_count(7),
      O => \comp_stat.up_count[7]_i_20_n_0\
    );
\comp_stat.up_count[7]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_count(5),
      I1 => up_count(6),
      O => \comp_stat.up_count[7]_i_21_n_0\
    );
\comp_stat.up_count[7]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_count(4),
      I1 => up_count(5),
      O => \comp_stat.up_count[7]_i_22_n_0\
    );
\comp_stat.up_count[7]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_count(3),
      I1 => up_count(4),
      O => \comp_stat.up_count[7]_i_23_n_0\
    );
\comp_stat.up_count[7]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_count(2),
      I1 => up_count(3),
      O => \comp_stat.up_count[7]_i_24_n_0\
    );
\comp_stat.up_count[7]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_out(1),
      I1 => up_count(2),
      O => \comp_stat.up_count[7]_i_25_n_0\
    );
\comp_stat.up_count[7]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_out(1),
      I1 => up_count(1),
      O => \comp_stat.up_count[7]_i_26_n_0\
    );
\comp_stat.up_count[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => up_count(0),
      I1 => up_count(9),
      I2 => \comp_stat.up_count[7]_i_30_n_0\,
      I3 => \comp_stat.up_count[7]_i_31_n_0\,
      I4 => \comp_stat.rd_ptr_rep[8]_i_10_n_0\,
      I5 => up_count(10),
      O => \comp_stat.up_count[7]_i_27_n_0\
    );
\comp_stat.up_count[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => up_count(0),
      I1 => up_count(1),
      I2 => up_count(2),
      I3 => up_count(5),
      I4 => up_count(4),
      I5 => up_count(3),
      O => \comp_stat.up_count[7]_i_28_n_0\
    );
\comp_stat.up_count[7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => up_count(10),
      I1 => \comp_stat.up_count[7]_i_28_n_0\,
      I2 => up_count(8),
      I3 => up_count(7),
      I4 => up_count(6),
      I5 => up_count(9),
      O => p_0_out(1)
    );
\comp_stat.up_count[7]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => up_count(8),
      I1 => up_count(7),
      I2 => up_count(6),
      O => \comp_stat.up_count[7]_i_30_n_0\
    );
\comp_stat.up_count[7]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => up_count(0),
      I1 => up_count(1),
      I2 => up_count(2),
      I3 => up_count(5),
      I4 => up_count(4),
      I5 => up_count(3),
      O => \comp_stat.up_count[7]_i_31_n_0\
    );
\comp_stat.up_count[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => size(6),
      I1 => max_pos(6),
      O => \comp_stat.up_count[7]_i_4_n_0\
    );
\comp_stat.up_count[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => size(5),
      I1 => max_pos(5),
      O => \comp_stat.up_count[7]_i_5_n_0\
    );
\comp_stat.up_count[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => size(4),
      I1 => max_pos(4),
      O => \comp_stat.up_count[7]_i_6_n_0\
    );
\comp_stat.up_count[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => size(3),
      I1 => max_pos(3),
      O => \comp_stat.up_count[7]_i_7_n_0\
    );
\comp_stat.up_count[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => size(2),
      I1 => max_pos(2),
      O => \comp_stat.up_count[7]_i_8_n_0\
    );
\comp_stat.up_count[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => size(1),
      I1 => max_pos(1),
      O => \comp_stat.up_count[7]_i_9_n_0\
    );
\comp_stat.up_count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(8),
      I1 => filling,
      I2 => \up_count__0\(8),
      O => \p_1_in__0\(8)
    );
\comp_stat.up_count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => up_count0(9),
      I1 => filling,
      I2 => \up_count__0\(9),
      O => \p_1_in__0\(9)
    );
\comp_stat.up_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(0),
      Q => up_count(0),
      R => '0'
    );
\comp_stat.up_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(10),
      Q => up_count(10),
      R => '0'
    );
\comp_stat.up_count_reg[10]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_stat.up_count_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_comp_stat.up_count_reg[10]_i_3_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \comp_stat.up_count_reg[10]_i_3_n_6\,
      CO(0) => \comp_stat.up_count_reg[10]_i_3_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \comp_stat.up_count[10]_i_5_n_0\,
      DI(0) => \comp_stat.up_count[10]_i_6_n_0\,
      O(7 downto 3) => \NLW_comp_stat.up_count_reg[10]_i_3_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => up_count0(10 downto 8),
      S(7 downto 3) => B"00000",
      S(2) => \comp_stat.up_count[10]_i_7_n_0\,
      S(1) => \comp_stat.up_count[10]_i_8_n_0\,
      S(0) => \comp_stat.up_count[10]_i_9_n_0\
    );
\comp_stat.up_count_reg[10]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_stat.up_count_reg[7]_i_3_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_comp_stat.up_count_reg[10]_i_4_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \comp_stat.up_count_reg[10]_i_4_n_6\,
      CO(0) => \comp_stat.up_count_reg[10]_i_4_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => up_count(8 downto 7),
      O(7 downto 3) => \NLW_comp_stat.up_count_reg[10]_i_4_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \up_count__0\(10 downto 8),
      S(7 downto 3) => B"00000",
      S(2) => \comp_stat.up_count[10]_i_10_n_0\,
      S(1) => \comp_stat.up_count[10]_i_11_n_0\,
      S(0) => \comp_stat.up_count[10]_i_12_n_0\
    );
\comp_stat.up_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(1),
      Q => up_count(1),
      R => '0'
    );
\comp_stat.up_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(2),
      Q => up_count(2),
      R => '0'
    );
\comp_stat.up_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => up_count(3),
      R => '0'
    );
\comp_stat.up_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(4),
      Q => up_count(4),
      R => '0'
    );
\comp_stat.up_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => up_count(5),
      R => '0'
    );
\comp_stat.up_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(6),
      Q => up_count(6),
      R => '0'
    );
\comp_stat.up_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => up_count(7),
      R => '0'
    );
\comp_stat.up_count_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \comp_stat.up_count_reg[7]_i_2_n_0\,
      CO(6) => \comp_stat.up_count_reg[7]_i_2_n_1\,
      CO(5) => \comp_stat.up_count_reg[7]_i_2_n_2\,
      CO(4) => \comp_stat.up_count_reg[7]_i_2_n_3\,
      CO(3) => \comp_stat.up_count_reg[7]_i_2_n_4\,
      CO(2) => \comp_stat.up_count_reg[7]_i_2_n_5\,
      CO(1) => \comp_stat.up_count_reg[7]_i_2_n_6\,
      CO(0) => \comp_stat.up_count_reg[7]_i_2_n_7\,
      DI(7) => \comp_stat.up_count[7]_i_4_n_0\,
      DI(6) => \comp_stat.up_count[7]_i_5_n_0\,
      DI(5) => \comp_stat.up_count[7]_i_6_n_0\,
      DI(4) => \comp_stat.up_count[7]_i_7_n_0\,
      DI(3) => \comp_stat.up_count[7]_i_8_n_0\,
      DI(2) => \comp_stat.up_count[7]_i_9_n_0\,
      DI(1) => \comp_stat.up_count[7]_i_10_n_0\,
      DI(0) => '1',
      O(7 downto 0) => up_count0(7 downto 0),
      S(7) => \comp_stat.up_count[7]_i_11_n_0\,
      S(6) => \comp_stat.up_count[7]_i_12_n_0\,
      S(5) => \comp_stat.up_count[7]_i_13_n_0\,
      S(4) => \comp_stat.up_count[7]_i_14_n_0\,
      S(3) => \comp_stat.up_count[7]_i_15_n_0\,
      S(2) => \comp_stat.up_count[7]_i_16_n_0\,
      S(1) => \comp_stat.up_count[7]_i_17_n_0\,
      S(0) => \comp_stat.up_count[7]_i_18_n_0\
    );
\comp_stat.up_count_reg[7]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_stat.up_count_reg[7]_i_3_n_0\,
      CO(6) => \comp_stat.up_count_reg[7]_i_3_n_1\,
      CO(5) => \comp_stat.up_count_reg[7]_i_3_n_2\,
      CO(4) => \comp_stat.up_count_reg[7]_i_3_n_3\,
      CO(3) => \comp_stat.up_count_reg[7]_i_3_n_4\,
      CO(2) => \comp_stat.up_count_reg[7]_i_3_n_5\,
      CO(1) => \comp_stat.up_count_reg[7]_i_3_n_6\,
      CO(0) => \comp_stat.up_count_reg[7]_i_3_n_7\,
      DI(7 downto 3) => up_count(6 downto 2),
      DI(2) => \comp_stat.up_count[7]_i_19_n_0\,
      DI(1 downto 0) => up_count(1 downto 0),
      O(7 downto 0) => \up_count__0\(7 downto 0),
      S(7) => \comp_stat.up_count[7]_i_20_n_0\,
      S(6) => \comp_stat.up_count[7]_i_21_n_0\,
      S(5) => \comp_stat.up_count[7]_i_22_n_0\,
      S(4) => \comp_stat.up_count[7]_i_23_n_0\,
      S(3) => \comp_stat.up_count[7]_i_24_n_0\,
      S(2) => \comp_stat.up_count[7]_i_25_n_0\,
      S(1) => \comp_stat.up_count[7]_i_26_n_0\,
      S(0) => \comp_stat.up_count[7]_i_27_n_0\
    );
\comp_stat.up_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(8),
      Q => up_count(8),
      R => '0'
    );
\comp_stat.up_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_stat.up_count[10]_i_1_n_0\,
      D => \p_1_in__0\(9),
      Q => up_count(9),
      R => '0'
    );
\comp_stat.up_delay[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => start_up,
      I1 => up_delay(0),
      I2 => up_delay(0),
      O => \comp_stat.up_delay[0]_i_1_n_0\
    );
\comp_stat.up_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_delay[0]_i_1_n_0\,
      Q => up_delay(0),
      R => reset
    );
\comp_stat.up_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => up_delay(0),
      Q => up_delay(1),
      R => '0'
    );
\comp_stat.up_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => up_delay(1),
      Q => up_delay(2),
      R => '0'
    );
\comp_stat.up_pos[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCACCC3CCCACCCC"
    )
        port map (
      I0 => max_pos(0),
      I1 => up_pos(0),
      I2 => reset,
      I3 => start_up,
      I4 => up_delay(0),
      I5 => proc_up,
      O => \comp_stat.up_pos[0]_i_1_n_0\
    );
\comp_stat.up_pos[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03010001"
    )
        port map (
      I0 => \comp_stat.up_pos[10]_i_2_n_0\,
      I1 => start_up,
      I2 => reset,
      I3 => up_delay(0),
      I4 => max_pos(10),
      I5 => up_pos(10),
      O => \comp_stat.up_pos[10]_i_1_n_0\
    );
\comp_stat.up_pos[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => up_pos(6),
      I1 => \comp_stat.up_pos[5]_i_2_n_0\,
      I2 => up_pos(5),
      I3 => up_pos(9),
      I4 => up_pos(8),
      I5 => up_pos(7),
      O => \comp_stat.up_pos[10]_i_2_n_0\
    );
\comp_stat.up_pos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF000F078F078F0"
    )
        port map (
      I0 => up_pos(0),
      I1 => proc_up,
      I2 => up_pos(1),
      I3 => \comp_stat.up_pos[9]_i_4_n_0\,
      I4 => max_pos(1),
      I5 => up_delay(0),
      O => \comp_stat.up_pos[1]_i_1_n_0\
    );
\comp_stat.up_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFA000C0005"
    )
        port map (
      I0 => \comp_stat.up_pos[2]_i_2_n_0\,
      I1 => max_pos(2),
      I2 => start_up,
      I3 => reset,
      I4 => up_delay(0),
      I5 => up_pos(2),
      O => \comp_stat.up_pos[2]_i_1_n_0\
    );
\comp_stat.up_pos[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => up_pos(0),
      I1 => proc_up,
      I2 => up_pos(1),
      O => \comp_stat.up_pos[2]_i_2_n_0\
    );
\comp_stat.up_pos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFA000C0005"
    )
        port map (
      I0 => \comp_stat.up_pos[3]_i_2_n_0\,
      I1 => max_pos(3),
      I2 => start_up,
      I3 => reset,
      I4 => up_delay(0),
      I5 => up_pos(3),
      O => \comp_stat.up_pos[3]_i_1_n_0\
    );
\comp_stat.up_pos[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => up_pos(1),
      I1 => proc_up,
      I2 => up_pos(0),
      I3 => up_pos(2),
      O => \comp_stat.up_pos[3]_i_2_n_0\
    );
\comp_stat.up_pos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFA000C0005"
    )
        port map (
      I0 => \comp_stat.up_pos[4]_i_2_n_0\,
      I1 => max_pos(4),
      I2 => start_up,
      I3 => reset,
      I4 => up_delay(0),
      I5 => up_pos(4),
      O => \comp_stat.up_pos[4]_i_1_n_0\
    );
\comp_stat.up_pos[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => up_pos(2),
      I1 => up_pos(0),
      I2 => proc_up,
      I3 => up_pos(1),
      I4 => up_pos(3),
      O => \comp_stat.up_pos[4]_i_2_n_0\
    );
\comp_stat.up_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFA000C0005"
    )
        port map (
      I0 => \comp_stat.up_pos[5]_i_2_n_0\,
      I1 => max_pos(5),
      I2 => start_up,
      I3 => reset,
      I4 => up_delay(0),
      I5 => up_pos(5),
      O => \comp_stat.up_pos[5]_i_1_n_0\
    );
\comp_stat.up_pos[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => up_pos(3),
      I1 => up_pos(1),
      I2 => proc_up,
      I3 => up_pos(0),
      I4 => up_pos(2),
      I5 => up_pos(4),
      O => \comp_stat.up_pos[5]_i_2_n_0\
    );
\comp_stat.up_pos[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFA000C0005"
    )
        port map (
      I0 => \comp_stat.up_pos[7]_i_2_n_0\,
      I1 => max_pos(6),
      I2 => start_up,
      I3 => reset,
      I4 => up_delay(0),
      I5 => up_pos(6),
      O => \comp_stat.up_pos[6]_i_1_n_0\
    );
\comp_stat.up_pos[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF808FB0BF80BF80"
    )
        port map (
      I0 => max_pos(7),
      I1 => up_delay(0),
      I2 => \comp_stat.up_pos[9]_i_4_n_0\,
      I3 => up_pos(7),
      I4 => \comp_stat.up_pos[7]_i_2_n_0\,
      I5 => up_pos(6),
      O => \comp_stat.up_pos[7]_i_1_n_0\
    );
\comp_stat.up_pos[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \comp_stat.up_pos[5]_i_2_n_0\,
      I1 => up_pos(5),
      O => \comp_stat.up_pos[7]_i_2_n_0\
    );
\comp_stat.up_pos[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF77FFF0008800"
    )
        port map (
      I0 => \comp_stat.up_pos[9]_i_3_n_0\,
      I1 => up_pos(7),
      I2 => max_pos(8),
      I3 => \comp_stat.up_pos[9]_i_4_n_0\,
      I4 => up_delay(0),
      I5 => up_pos(8),
      O => \comp_stat.up_pos[8]_i_1_n_0\
    );
\comp_stat.up_pos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFBBFFF0004400"
    )
        port map (
      I0 => \comp_stat.up_pos[9]_i_2_n_0\,
      I1 => \comp_stat.up_pos[9]_i_3_n_0\,
      I2 => max_pos(9),
      I3 => \comp_stat.up_pos[9]_i_4_n_0\,
      I4 => up_delay(0),
      I5 => up_pos(9),
      O => \comp_stat.up_pos[9]_i_1_n_0\
    );
\comp_stat.up_pos[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => up_pos(8),
      I1 => up_pos(7),
      O => \comp_stat.up_pos[9]_i_2_n_0\
    );
\comp_stat.up_pos[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => up_pos(6),
      I1 => up_pos(5),
      I2 => \comp_stat.up_pos[5]_i_2_n_0\,
      O => \comp_stat.up_pos[9]_i_3_n_0\
    );
\comp_stat.up_pos[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start_up,
      I1 => reset,
      O => \comp_stat.up_pos[9]_i_4_n_0\
    );
\comp_stat.up_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[0]_i_1_n_0\,
      Q => up_pos(0),
      R => '0'
    );
\comp_stat.up_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[10]_i_1_n_0\,
      Q => up_pos(10),
      R => '0'
    );
\comp_stat.up_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[1]_i_1_n_0\,
      Q => up_pos(1),
      R => '0'
    );
\comp_stat.up_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[2]_i_1_n_0\,
      Q => up_pos(2),
      R => '0'
    );
\comp_stat.up_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[3]_i_1_n_0\,
      Q => up_pos(3),
      R => '0'
    );
\comp_stat.up_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[4]_i_1_n_0\,
      Q => up_pos(4),
      R => '0'
    );
\comp_stat.up_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[5]_i_1_n_0\,
      Q => up_pos(5),
      R => '0'
    );
\comp_stat.up_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[6]_i_1_n_0\,
      Q => up_pos(6),
      R => '0'
    );
\comp_stat.up_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[7]_i_1_n_0\,
      Q => up_pos(7),
      R => '0'
    );
\comp_stat.up_pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[8]_i_1_n_0\,
      Q => up_pos(8),
      R => '0'
    );
\comp_stat.up_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_stat.up_pos[9]_i_1_n_0\,
      Q => up_pos(9),
      R => '0'
    );
\comp_stat.wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \comp_stat.wr_ptr_reg\(0),
      O => \p_0_in__0\(0)
    );
\comp_stat.wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_stat.wr_ptr_reg\(0),
      I1 => \comp_stat.wr_ptr_reg\(1),
      O => \p_0_in__0\(1)
    );
\comp_stat.wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \comp_stat.wr_ptr_reg\(0),
      I1 => \comp_stat.wr_ptr_reg\(1),
      I2 => \comp_stat.wr_ptr_reg\(2),
      O => \p_0_in__0\(2)
    );
\comp_stat.wr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \comp_stat.wr_ptr_reg\(1),
      I1 => \comp_stat.wr_ptr_reg\(0),
      I2 => \comp_stat.wr_ptr_reg\(2),
      I3 => \comp_stat.wr_ptr_reg\(3),
      O => \p_0_in__0\(3)
    );
\comp_stat.wr_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \comp_stat.wr_ptr_reg\(2),
      I1 => \comp_stat.wr_ptr_reg\(0),
      I2 => \comp_stat.wr_ptr_reg\(1),
      I3 => \comp_stat.wr_ptr_reg\(3),
      I4 => \comp_stat.wr_ptr_reg\(4),
      O => \p_0_in__0\(4)
    );
\comp_stat.wr_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \comp_stat.wr_ptr_reg\(3),
      I1 => \comp_stat.wr_ptr_reg\(1),
      I2 => \comp_stat.wr_ptr_reg\(0),
      I3 => \comp_stat.wr_ptr_reg\(2),
      I4 => \comp_stat.wr_ptr_reg\(4),
      I5 => \comp_stat.wr_ptr_reg\(5),
      O => \p_0_in__0\(5)
    );
\comp_stat.wr_ptr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_stat.wr_ptr[8]_i_3_n_0\,
      I1 => \comp_stat.wr_ptr_reg\(6),
      O => \p_0_in__0\(6)
    );
\comp_stat.wr_ptr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \comp_stat.wr_ptr[8]_i_3_n_0\,
      I1 => \comp_stat.wr_ptr_reg\(6),
      I2 => \comp_stat.wr_ptr_reg\(7),
      O => \p_0_in__0\(7)
    );
\comp_stat.wr_ptr[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mem_wr,
      O => clear
    );
\comp_stat.wr_ptr[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \comp_stat.wr_ptr_reg\(6),
      I1 => \comp_stat.wr_ptr[8]_i_3_n_0\,
      I2 => \comp_stat.wr_ptr_reg\(7),
      I3 => \comp_stat.wr_ptr_reg\(8),
      O => \p_0_in__0\(8)
    );
\comp_stat.wr_ptr[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \comp_stat.wr_ptr_reg\(5),
      I1 => \comp_stat.wr_ptr_reg\(3),
      I2 => \comp_stat.wr_ptr_reg\(1),
      I3 => \comp_stat.wr_ptr_reg\(0),
      I4 => \comp_stat.wr_ptr_reg\(2),
      I5 => \comp_stat.wr_ptr_reg\(4),
      O => \comp_stat.wr_ptr[8]_i_3_n_0\
    );
\comp_stat.wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \comp_stat.wr_ptr_reg\(0),
      R => clear
    );
\comp_stat.wr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \comp_stat.wr_ptr_reg\(1),
      R => clear
    );
\comp_stat.wr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \comp_stat.wr_ptr_reg\(2),
      R => clear
    );
\comp_stat.wr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \comp_stat.wr_ptr_reg\(3),
      R => clear
    );
\comp_stat.wr_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \comp_stat.wr_ptr_reg\(4),
      R => clear
    );
\comp_stat.wr_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \comp_stat.wr_ptr_reg\(5),
      R => clear
    );
\comp_stat.wr_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \comp_stat.wr_ptr_reg\(6),
      R => clear
    );
\comp_stat.wr_ptr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \comp_stat.wr_ptr_reg\(7),
      R => clear
    );
\comp_stat.wr_ptr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => \comp_stat.wr_ptr_reg\(8),
      R => clear
    );
ila_i: component ps_comp_burst_0_0_ila_2
     port map (
      clk => clk,
      probe0(10 downto 0) => size(10 downto 0),
      probe1(10 downto 0) => max_pos(10 downto 0),
      probe10(10 downto 0) => down_pos(10 downto 0),
      probe11(15 downto 0) => curr_env_1(15 downto 0),
      probe12(15 downto 0) => curr_env_2(15 downto 0),
      probe13(15 downto 0) => curr_phase(15 downto 0),
      probe14(21 downto 0) => pred_phase(21 downto 0),
      probe15(15 downto 0) => prev_phase(15 downto 0),
      probe16(0) => \^active\,
      probe17(10 downto 0) => \^pos\(10 downto 0),
      probe18(15 downto 0) => \^env\(15 downto 0),
      probe19(15 downto 0) => \^phase\(15 downto 0),
      probe2(0) => proc_up,
      probe20(15 downto 0) => \^max_phase\(15 downto 0),
      probe3(0) => start_up,
      probe4(10 downto 0) => up_count(10 downto 0),
      probe5(0) => start_down,
      probe6(2 downto 0) => up_delay(2 downto 0),
      probe7(10 downto 0) => up_pos(10 downto 0),
      probe8(0) => stop_down(0),
      probe9(2 downto 0) => down_delay(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_burst_0_0_comp_burst is
  port (
    config_clk : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rt_clk : in STD_LOGIC;
    rt_enable : in STD_LOGIC;
    rt_start : in STD_LOGIC;
    rt_sample : in STD_LOGIC_VECTOR ( 61 downto 0 );
    rt_freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rt_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_wr : in STD_LOGIC;
    rt_env_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_env_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_env_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_env_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_phase_0 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rt_phase_1 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rt_phase_2 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rt_phase_3 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_burst_0_0_comp_burst : entity is "comp_burst";
end ps_comp_burst_0_0_comp_burst;

architecture STRUCTURE of ps_comp_burst_0_0_comp_burst is
  component ps_comp_burst_0_0_fifo_config is
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
  end component ps_comp_burst_0_0_fifo_config;
  component ps_comp_burst_0_0_fifo_stat_data is
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
  end component ps_comp_burst_0_0_fifo_stat_data;
  component ps_comp_burst_0_0_fifo_stat_meta is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 97 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 97 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component ps_comp_burst_0_0_fifo_stat_meta;
  component ps_comp_burst_0_0_ila_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component ps_comp_burst_0_0_ila_0;
  signal burst : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of burst : signal is std.standard.true;
  signal cfg_empty : STD_LOGIC;
  signal cfg_rd : STD_LOGIC;
  signal \comp_burst.burst_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.cfg_rd_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.complete_1_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.complete_1_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.complete_1_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.complete_1_reg_n_0\ : STD_LOGIC;
  signal \comp_burst.curr_size[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.curr_size[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.curr_size[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_active_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_active_reg_n_0\ : STD_LOGIC;
  signal \comp_burst.df_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_count[2]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_burst.df_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_burst.df_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \comp_burst.df_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \comp_burst.df_diff[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_19_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[15]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[16]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[17]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[18]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[19]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[7]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_1\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_10\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_11\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_12\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_13\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_14\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_15\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_2\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_3\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_4\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_5\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_6\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_7\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_8\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_11_n_9\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_8_n_12\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_8_n_13\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_8_n_14\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_8_n_15\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_8_n_5\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_8_n_6\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[19]_i_8_n_7\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_1\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_10\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_11\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_12\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_13\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_14\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_15\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_2\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_3\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_4\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_5\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_6\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_7\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_8\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_11_n_9\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.df_diff_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.df_done_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[2]\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[3]\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[4]\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[5]\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[6]\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[7]\ : STD_LOGIC;
  signal \comp_burst.df_ind_reg_n_0_[8]\ : STD_LOGIC;
  signal \comp_burst.df_low[19]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_low[19]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_low[19]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_low[19]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_19_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_20_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_21_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_22_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_23_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_24_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_25_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_26_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_27_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_28_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_29_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_30_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_31_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[0]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[3]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[4]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[5]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[5]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[6]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[6]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_19_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_20_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_21_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_22_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start[8]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_5_n_1\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_5_n_2\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_5_n_3\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_5_n_4\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_5_n_5\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_5_n_6\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_5_n_7\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_6_n_4\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_6_n_5\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_6_n_6\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_6_n_7\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_7_n_1\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_7_n_2\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_7_n_3\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_7_n_4\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_7_n_5\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_7_n_6\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[0]_i_7_n_7\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[8]_i_6_n_4\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[8]_i_6_n_5\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[8]_i_6_n_6\ : STD_LOGIC;
  signal \comp_burst.df_start_reg[8]_i_6_n_7\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[2]\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[3]\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[4]\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[5]\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[6]\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[7]\ : STD_LOGIC;
  signal \comp_burst.df_start_reg_n_0_[8]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[10]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[10]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[5]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[6]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr[9]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[10]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[2]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[3]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[4]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[5]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[6]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[7]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[8]\ : STD_LOGIC;
  signal \comp_burst.env_down_adr_reg_n_0_[9]\ : STD_LOGIC;
  signal \comp_burst.env_down_max_ind[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val[15]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.env_down_max_val_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.env_down_ptr[3]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_ptr[5]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_ptr[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_ptr[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_ptr_reg\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \comp_burst.env_down_val[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_down_val[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind[10]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_end_ind_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \comp_burst.env_end_ind_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \comp_burst.env_end_ind_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \comp_burst.env_end_ind_reg[10]_i_2_n_4\ : STD_LOGIC;
  signal \comp_burst.env_end_ind_reg[10]_i_2_n_5\ : STD_LOGIC;
  signal \comp_burst.env_end_ind_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.env_end_ind_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind[10]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_start_ind_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \comp_burst.env_start_ind_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \comp_burst.env_start_ind_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \comp_burst.env_start_ind_reg[10]_i_2_n_4\ : STD_LOGIC;
  signal \comp_burst.env_start_ind_reg[10]_i_2_n_5\ : STD_LOGIC;
  signal \comp_burst.env_start_ind_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.env_start_ind_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[10]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[10]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[2]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[3]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[4]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[5]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[6]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[7]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[8]\ : STD_LOGIC;
  signal \comp_burst.env_up_adr_reg_n_0_[9]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_ind[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_19_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val[15]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg[15]_i_3_n_4\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[0]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[10]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[11]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[12]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[13]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[14]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[15]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[1]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[2]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[3]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[4]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[5]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[6]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[7]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[8]\ : STD_LOGIC;
  signal \comp_burst.env_up_max_val_reg_n_0_[9]\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[8]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_ptr[8]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.env_up_val[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.filling_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.filling_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_68\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_69\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_70\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_71\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_72\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_73\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_74\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_75\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_76\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_77\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_78\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_79\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_80\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_81\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_82\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_83\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_84\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_85\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_86\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_87\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_88\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_89\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_90\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_91\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_92\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_93\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_94\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_95\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_96\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_97\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_98\ : STD_LOGIC;
  signal \comp_burst.mem_env_down_reg_n_99\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_68\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_69\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_70\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_71\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_72\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_73\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_74\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_75\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_76\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_77\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_78\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_79\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_80\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_81\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_82\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_83\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_84\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_85\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_86\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_87\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_88\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_89\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_90\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_91\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_92\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_93\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_94\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_95\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_96\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_97\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_98\ : STD_LOGIC;
  signal \comp_burst.mem_env_up_reg_n_99\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_124\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_125\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_126\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_127\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_128\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_129\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_130\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_131\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_68\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_69\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_70\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_71\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_72\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_73\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_74\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_75\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_76\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_77\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_78\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_79\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_80\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_81\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_82\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_83\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_84\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_85\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_86\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_87\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_88\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_89\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_90\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_91\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_92\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_93\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_94\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_95\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_96\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_97\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_98\ : STD_LOGIC;
  signal \comp_burst.mem_phase_reg_0_n_99\ : STD_LOGIC;
  signal \comp_burst.min_env[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[10]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[10]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[10]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[10]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[10]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[10]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[10]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_19_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos[7]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg00_out\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \comp_burst.p2_max_pos_reg2\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \comp_burst.p2_max_pos_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_max_pos_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_18_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[15]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[19]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[19]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[19]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[19]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[19]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[19]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[19]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[19]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff[7]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_1\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_10\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_11\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_12\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_13\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_14\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_15\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_2\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_3\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_4\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_8\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_10_n_9\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_6_n_12\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_6_n_13\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_6_n_14\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_6_n_15\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_6_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_6_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[19]_i_6_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_1\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_10\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_11\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_12\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_13\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_14\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_15\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_8\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_10_n_9\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_phase_diff_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[10]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \comp_burst.p2_size_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_3_n_1\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_3_n_2\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_3_n_3\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_3_n_4\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_3_n_5\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_3_n_6\ : STD_LOGIC;
  signal \comp_burst.p2_size_reg[10]_i_3_n_7\ : STD_LOGIC;
  signal \comp_burst.p2_wr_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p2_wr_reg_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[15]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[15]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[15]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[15]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[15]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[19]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[19]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[19]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[19]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[19]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[7]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[7]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[7]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[7]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq[7]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg0\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \comp_burst.p3_freq_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.p3_freq_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.phase_val[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[10]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[11]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[12]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[13]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[14]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[16]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[17]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[18]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[19]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.phase_val[9]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[15]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[21]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_10_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_11_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_12_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_13_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_14_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_15_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_16_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_17_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_4_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_5_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_6_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_7_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_8_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase[7]_i_9_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_10\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_11\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_12\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_13\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_14\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_15\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \comp_burst.pred_phase_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \comp_burst.run_env_end_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.run_env_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.run_env_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.run_env_i_3_n_0\ : STD_LOGIC;
  signal \comp_burst.run_env_reg_n_0\ : STD_LOGIC;
  signal \comp_burst.run_env_start_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.scan_start_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.scan_start_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_burst.wr_ptr[8]_i_3_n_0\ : STD_LOGIC;
  signal comp_env : STD_LOGIC;
  signal complete_2 : STD_LOGIC;
  attribute MARK_DEBUG of complete_2 : signal is std.standard.true;
  signal config_data_adr_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal curr_size : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal df_count : STD_LOGIC;
  signal df_diff : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of df_diff : signal is std.standard.true;
  signal df_done : STD_LOGIC;
  signal df_ind : STD_LOGIC_VECTOR ( 0 to 0 );
  signal df_low : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal df_start2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal env_down_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_down_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_down_adr0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal env_down_ind : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal env_down_max_ind : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal env_down_max_val : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_down_ptr0 : STD_LOGIC;
  signal env_down_val : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_end_ind : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal env_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal env_in0 : STD_LOGIC;
  signal env_start_ind : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal env_up_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_up_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_up_adr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal env_up_ind : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal env_up_max_ind : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal env_up_max_val : STD_LOGIC_VECTOR ( 0 to 0 );
  signal env_up_ptr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal env_up_val : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal filling : STD_LOGIC;
  signal in_angle : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of in_angle : signal is std.standard.true;
  signal in_freq : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of in_freq : signal is std.standard.true;
  signal load_env : STD_LOGIC;
  signal mem_wr : STD_LOGIC;
  attribute MARK_DEBUG of mem_wr : signal is std.standard.true;
  signal min_env : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal min_env0 : STD_LOGIC;
  signal p2_active : STD_LOGIC;
  attribute MARK_DEBUG of p2_active : signal is std.standard.true;
  signal p2_done : STD_LOGIC;
  signal p2_env : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_env_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_env_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_env_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_env_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_freq : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of p2_freq : signal is std.standard.true;
  signal p2_max_pos : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of p2_max_pos : signal is std.standard.true;
  signal p2_phase : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_phase_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_phase_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_phase_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_phase_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p2_phase_diff : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal p2_phase_diff02_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal p2_phase_diff_0 : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of p2_phase_diff_0 : signal is std.standard.true;
  signal p2_phase_diff_1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of p2_phase_diff_1 : signal is std.standard.true;
  signal p2_phase_diff_2 : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of p2_phase_diff_2 : signal is std.standard.true;
  signal p2_phase_diff_3 : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of p2_phase_diff_3 : signal is std.standard.true;
  signal p2_size : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of p2_size : signal is std.standard.true;
  signal p3_freq : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of p3_freq : signal is std.standard.true;
  signal p3_max_pos : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p3_size : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in1_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal phase_2 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_3 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_in : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal phase_val : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal pred_phase : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal rt_data_empty : STD_LOGIC;
  signal rt_data_in : STD_LOGIC_VECTOR ( 143 downto 0 );
  signal rt_data_in1 : STD_LOGIC;
  signal rt_data_out : STD_LOGIC_VECTOR ( 143 downto 0 );
  signal rt_data_rd : STD_LOGIC;
  signal rt_data_wr : STD_LOGIC;
  signal rt_meta_empty : STD_LOGIC;
  signal rt_meta_in : STD_LOGIC_VECTOR ( 97 downto 0 );
  signal rt_meta_in1 : STD_LOGIC;
  signal rt_meta_out : STD_LOGIC_VECTOR ( 97 downto 62 );
  signal rt_meta_rd : STD_LOGIC;
  signal rt_meta_wr : STD_LOGIC;
  signal run_env_end : STD_LOGIC;
  signal run_env_start : STD_LOGIC;
  signal scan_start : STD_LOGIC;
  attribute MARK_DEBUG of scan_start : signal is std.standard.true;
  signal wr_ptr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_comp_burst.df_diff_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_burst.df_diff_reg[19]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_comp_burst.df_diff_reg[19]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_burst.df_diff_reg[19]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_comp_burst.df_start_reg[0]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_comp_burst.env_down_max_val_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_burst.env_end_ind_reg[10]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_burst.env_start_ind_reg[10]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_burst.env_up_max_val_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_env_down_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_env_down_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_env_down_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_env_down_reg_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_burst.mem_env_down_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_env_up_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_env_up_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_env_up_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_env_up_reg_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_burst.mem_env_up_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_phase_reg_0_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_phase_reg_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_phase_reg_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_comp_burst.mem_phase_reg_0_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_comp_burst.mem_phase_reg_1_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_comp_burst.mem_phase_reg_1_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_comp_burst.p2_max_pos_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_comp_burst.p2_max_pos_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_burst.p2_max_pos_reg[10]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_comp_burst.p2_max_pos_reg[10]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_burst.p2_max_pos_reg[7]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_comp_burst.p2_phase_diff_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_burst.p2_phase_diff_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_comp_burst.p2_phase_diff_reg[19]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_burst.p2_phase_diff_reg[19]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_comp_burst.p2_size_reg[10]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_comp_burst.p2_size_reg[10]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_burst.p3_freq_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_comp_burst.p3_freq_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_comp_burst.pred_phase_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_comp_burst.pred_phase_reg[21]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_fifo_config_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_config_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_config_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_config_i_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 24 );
  signal NLW_fifo_rt_data_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_rt_data_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_rt_data_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_rt_meta_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_rt_meta_i_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 61 downto 0 );
  signal NLW_p3_i_active_UNCONNECTED : STD_LOGIC;
  signal NLW_p3_i_done_UNCONNECTED : STD_LOGIC;
  signal NLW_p3_i_env_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_p3_i_env_sum_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_p3_i_env_sum2_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p3_i_max_phase_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_p3_i_phase_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_p3_i_phase_sum_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_p3_i_phase_sum2_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p3_i_pos_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \comp_burst.burst_reg\ : label is "yes";
  attribute KEEP of \comp_burst.complete_2_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \comp_burst.curr_size[8]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \comp_burst.df_count[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \comp_burst.df_count[2]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \comp_burst.df_count[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \comp_burst.df_diff[19]_i_3\ : label is "soft_lutpair13";
  attribute KEEP of \comp_burst.df_diff_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \comp_burst.df_diff_reg[0]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[10]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[11]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[12]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[13]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[14]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \comp_burst.df_diff_reg[15]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.df_diff_reg[15]_i_2\ : label is 35;
  attribute KEEP of \comp_burst.df_diff_reg[16]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[16]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[17]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[17]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[18]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[18]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[19]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.df_diff_reg[19]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.df_diff_reg[19]_i_8\ : label is 35;
  attribute KEEP of \comp_burst.df_diff_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[1]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[2]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[3]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[4]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[5]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[6]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.df_diff_reg[7]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.df_diff_reg[7]_i_2\ : label is 35;
  attribute KEEP of \comp_burst.df_diff_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[8]\ : label is "yes";
  attribute KEEP of \comp_burst.df_diff_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.df_diff_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM of \comp_burst.df_ind[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \comp_burst.df_ind[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \comp_burst.df_ind[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \comp_burst.df_ind[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \comp_burst.df_ind[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \comp_burst.df_ind[8]_i_3\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD of \comp_burst.df_start_reg[0]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.df_start_reg[0]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.df_start_reg[0]_i_7\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.df_start_reg[8]_i_6\ : label is 35;
  attribute SOFT_HLUTNM of \comp_burst.env_down_adr[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \comp_burst.env_down_adr[10]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \comp_burst.env_down_adr[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \comp_burst.env_down_adr[4]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \comp_burst.env_down_adr[5]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \comp_burst.env_down_adr[9]_i_2\ : label is "soft_lutpair12";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \comp_burst.env_down_max_val_reg[15]_i_2\ : label is 11;
  attribute SOFT_HLUTNM of \comp_burst.env_down_ptr[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \comp_burst.env_down_ptr[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \comp_burst.env_down_ptr[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \comp_burst.env_down_ptr[5]_i_2\ : label is "soft_lutpair19";
  attribute COMPARATOR_THRESHOLD of \comp_burst.env_end_ind_reg[10]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \comp_burst.env_start_ind_reg[10]_i_2\ : label is 11;
  attribute SOFT_HLUTNM of \comp_burst.env_up_adr[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \comp_burst.env_up_adr[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \comp_burst.env_up_adr[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \comp_burst.env_up_adr[4]_i_1\ : label is "soft_lutpair15";
  attribute COMPARATOR_THRESHOLD of \comp_burst.env_up_max_val_reg[15]_i_3\ : label is 11;
  attribute SOFT_HLUTNM of \comp_burst.env_up_ptr[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \comp_burst.env_up_ptr[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \comp_burst.env_up_ptr[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \comp_burst.env_up_ptr[4]_i_1\ : label is "soft_lutpair18";
  attribute KEEP of \comp_burst.in_angle_reg[0]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[10]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[11]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[12]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[13]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[14]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[15]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[1]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[2]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[3]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[4]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[5]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[6]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[7]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[8]\ : label is "yes";
  attribute KEEP of \comp_burst.in_angle_reg[9]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[0]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[10]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[11]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[12]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[13]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[14]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[15]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[16]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[17]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[18]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[19]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[1]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[2]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[3]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[4]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[5]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[6]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[7]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[8]\ : label is "yes";
  attribute KEEP of \comp_burst.in_freq_reg[9]\ : label is "yes";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \comp_burst.mem_env_down_reg\ : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \comp_burst.mem_env_down_reg\ : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \comp_burst.mem_env_down_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \comp_burst.mem_env_down_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \comp_burst.mem_env_down_reg\ : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \comp_burst.mem_env_down_reg\ : label is "comp_burst/comp_burst.mem_env_down_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \comp_burst.mem_env_down_reg\ : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \comp_burst.mem_env_down_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \comp_burst.mem_env_down_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \comp_burst.mem_env_down_reg\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \comp_burst.mem_env_down_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \comp_burst.mem_env_down_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \comp_burst.mem_env_down_reg\ : label is 63;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \comp_burst.mem_env_up_reg\ : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \comp_burst.mem_env_up_reg\ : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS of \comp_burst.mem_env_up_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of \comp_burst.mem_env_up_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \comp_burst.mem_env_up_reg\ : label is 32768;
  attribute RTL_RAM_NAME of \comp_burst.mem_env_up_reg\ : label is "comp_burst/comp_burst.mem_env_up_reg";
  attribute RTL_RAM_STYLE of \comp_burst.mem_env_up_reg\ : label is "block";
  attribute RTL_RAM_TYPE of \comp_burst.mem_env_up_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin of \comp_burst.mem_env_up_reg\ : label is 0;
  attribute ram_addr_end of \comp_burst.mem_env_up_reg\ : label is 511;
  attribute ram_offset of \comp_burst.mem_env_up_reg\ : label is 0;
  attribute ram_slice_begin of \comp_burst.mem_env_up_reg\ : label is 0;
  attribute ram_slice_end of \comp_burst.mem_env_up_reg\ : label is 63;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \comp_burst.mem_phase_reg_0\ : label is "p8_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \comp_burst.mem_phase_reg_0\ : label is "p8_d64";
  attribute METHODOLOGY_DRC_VIOS of \comp_burst.mem_phase_reg_0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of \comp_burst.mem_phase_reg_0\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \comp_burst.mem_phase_reg_0\ : label is 40960;
  attribute RTL_RAM_NAME of \comp_burst.mem_phase_reg_0\ : label is "comp_burst/comp_burst.mem_phase_reg";
  attribute RTL_RAM_STYLE of \comp_burst.mem_phase_reg_0\ : label is "block";
  attribute RTL_RAM_TYPE of \comp_burst.mem_phase_reg_0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \comp_burst.mem_phase_reg_0\ : label is 0;
  attribute ram_addr_end of \comp_burst.mem_phase_reg_0\ : label is 511;
  attribute ram_offset of \comp_burst.mem_phase_reg_0\ : label is 0;
  attribute ram_slice_begin of \comp_burst.mem_phase_reg_0\ : label is 0;
  attribute ram_slice_end of \comp_burst.mem_phase_reg_0\ : label is 71;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \comp_burst.mem_phase_reg_1\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \comp_burst.mem_phase_reg_1\ : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of \comp_burst.mem_phase_reg_1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of \comp_burst.mem_phase_reg_1\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \comp_burst.mem_phase_reg_1\ : label is 40960;
  attribute RTL_RAM_NAME of \comp_burst.mem_phase_reg_1\ : label is "comp_burst/comp_burst.mem_phase_reg";
  attribute RTL_RAM_STYLE of \comp_burst.mem_phase_reg_1\ : label is "block";
  attribute RTL_RAM_TYPE of \comp_burst.mem_phase_reg_1\ : label is "RAM_SDP";
  attribute ram_addr_begin of \comp_burst.mem_phase_reg_1\ : label is 0;
  attribute ram_addr_end of \comp_burst.mem_phase_reg_1\ : label is 511;
  attribute ram_offset of \comp_burst.mem_phase_reg_1\ : label is 0;
  attribute ram_slice_begin of \comp_burst.mem_phase_reg_1\ : label is 72;
  attribute ram_slice_end of \comp_burst.mem_phase_reg_1\ : label is 79;
  attribute KEEP of \comp_burst.mem_wr_reg\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[0]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[10]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[11]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[12]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[13]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[14]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[15]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[16]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[16]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[17]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[17]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[18]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[18]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[19]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[19]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[1]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[2]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[3]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[4]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[5]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[6]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[7]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[8]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_freq_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_freq_reg[9]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[0]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[10]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.p2_max_pos_reg[10]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.p2_max_pos_reg[10]_i_2\ : label is 35;
  attribute KEEP of \comp_burst.p2_max_pos_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[1]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[2]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[3]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[4]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[5]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[6]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.p2_max_pos_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.p2_max_pos_reg[7]_i_2\ : label is 35;
  attribute KEEP of \comp_burst.p2_max_pos_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[8]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_max_pos_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_max_pos_reg[9]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.p2_phase_diff_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.p2_phase_diff_reg[15]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.p2_phase_diff_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.p2_phase_diff_reg[19]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.p2_phase_diff_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.p2_phase_diff_reg[7]_i_10\ : label is 35;
  attribute KEEP of \comp_burst.p2_size_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[0]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[10]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.p2_size_reg[10]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \comp_burst.p2_size_reg[10]_i_3\ : label is 35;
  attribute KEEP of \comp_burst.p2_size_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[1]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[2]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[3]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[4]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[5]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[6]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[7]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[8]\ : label is "yes";
  attribute KEEP of \comp_burst.p2_size_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p2_size_reg[9]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[0]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[10]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[11]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[12]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[13]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[14]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.p3_freq_reg[15]_i_1\ : label is 35;
  attribute KEEP of \comp_burst.p3_freq_reg[16]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[16]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[17]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[17]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[18]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[18]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[19]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.p3_freq_reg[19]_i_1\ : label is 35;
  attribute KEEP of \comp_burst.p3_freq_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[1]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[2]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[3]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[4]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[5]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[6]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \comp_burst.p3_freq_reg[7]_i_1\ : label is 35;
  attribute KEEP of \comp_burst.p3_freq_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[8]\ : label is "yes";
  attribute KEEP of \comp_burst.p3_freq_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_burst.p3_freq_reg[9]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \comp_burst.rt_meta_rd_reg\ : label is "no";
  attribute KEEP of \comp_burst.scan_start_reg\ : label is "yes";
  attribute SOFT_HLUTNM of \comp_burst.wr_ptr[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \comp_burst.wr_ptr[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \comp_burst.wr_ptr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \comp_burst.wr_ptr[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \comp_burst.wr_ptr[4]_i_1\ : label is "soft_lutpair16";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_config_i : label is "fifo_config,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_config_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_config_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_rt_data_i : label is "fifo_stat_data,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_rt_data_i : label is "yes";
  attribute x_core_info of fifo_rt_data_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_rt_meta_i : label is "fifo_stat_meta,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_rt_meta_i : label is "yes";
  attribute x_core_info of fifo_rt_meta_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_0,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p2_i : label is "soft";
  attribute KEEP_HIERARCHY of p3_i : label is "soft";
begin
\comp_burst.burst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rt_meta_empty,
      O => \comp_burst.burst_i_1_n_0\
    );
\comp_burst.burst_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.burst_i_1_n_0\,
      Q => burst,
      R => '0'
    );
\comp_burst.cfg_rd_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cfg_empty,
      O => \comp_burst.cfg_rd_i_1_n_0\
    );
\comp_burst.cfg_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.cfg_rd_i_1_n_0\,
      Q => cfg_rd,
      R => '0'
    );
\comp_burst.comp_env_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => load_env,
      Q => comp_env,
      R => '0'
    );
\comp_burst.complete_1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \comp_burst.complete_1_i_2_n_0\,
      I1 => env_down_ind(2),
      I2 => env_down_ind(1),
      I3 => env_down_ind(0),
      I4 => \comp_burst.complete_1_i_3_n_0\,
      O => \comp_burst.complete_1_i_1_n_0\
    );
\comp_burst.complete_1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => scan_start,
      I1 => run_env_end,
      I2 => env_down_ind(9),
      I3 => env_down_ind(10),
      I4 => run_env_start,
      I5 => \comp_burst.run_env_reg_n_0\,
      O => \comp_burst.complete_1_i_2_n_0\
    );
\comp_burst.complete_1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => env_down_ind(5),
      I1 => env_down_ind(6),
      I2 => env_down_ind(3),
      I3 => env_down_ind(4),
      I4 => env_down_ind(8),
      I5 => env_down_ind(7),
      O => \comp_burst.complete_1_i_3_n_0\
    );
\comp_burst.complete_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.complete_1_i_1_n_0\,
      Q => \comp_burst.complete_1_reg_n_0\,
      R => '0'
    );
\comp_burst.complete_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.complete_1_reg_n_0\,
      Q => complete_2,
      R => '0'
    );
\comp_burst.curr_size[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => mem_wr,
      O => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => wr_ptr(4),
      I1 => wr_ptr(3),
      I2 => wr_ptr(6),
      I3 => wr_ptr(5),
      I4 => \comp_burst.curr_size[8]_i_3_n_0\,
      I5 => mem_wr,
      O => \comp_burst.curr_size[8]_i_2_n_0\
    );
\comp_burst.curr_size[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wr_ptr(0),
      I1 => wr_ptr(7),
      I2 => wr_ptr(8),
      I3 => wr_ptr(2),
      I4 => wr_ptr(1),
      O => \comp_burst.curr_size[8]_i_3_n_0\
    );
\comp_burst.curr_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(0),
      Q => curr_size(0),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(1),
      Q => curr_size(1),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(2),
      Q => curr_size(2),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(3),
      Q => curr_size(3),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(4),
      Q => curr_size(4),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(5),
      Q => curr_size(5),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(6),
      Q => curr_size(6),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(7),
      Q => curr_size(7),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.curr_size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.curr_size[8]_i_2_n_0\,
      D => wr_ptr(8),
      Q => curr_size(8),
      R => \comp_burst.curr_size[8]_i_1_n_0\
    );
\comp_burst.df_active_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FF010000"
    )
        port map (
      I0 => \comp_burst.df_low[19]_i_2_n_0\,
      I1 => \comp_burst.df_low[19]_i_3_n_0\,
      I2 => \comp_burst.df_low[19]_i_4_n_0\,
      I3 => \comp_burst.df_active_reg_n_0\,
      I4 => p2_active,
      I5 => \comp_burst.df_diff[19]_i_3_n_0\,
      O => \comp_burst.df_active_i_1_n_0\
    );
\comp_burst.df_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_active_i_1_n_0\,
      Q => \comp_burst.df_active_reg_n_0\,
      R => '0'
    );
\comp_burst.df_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \comp_burst.df_count_reg_n_0_[0]\,
      O => \comp_burst.df_count[0]_i_1_n_0\
    );
\comp_burst.df_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.df_count_reg_n_0_[1]\,
      I1 => \comp_burst.df_count_reg_n_0_[0]\,
      O => \comp_burst.df_count[1]_i_1_n_0\
    );
\comp_burst.df_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p2_active,
      I1 => \comp_burst.df_active_reg_n_0\,
      O => \comp_burst.df_count[2]_i_1_n_0\
    );
\comp_burst.df_count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \comp_burst.df_count_reg_n_0_[3]\,
      I1 => \comp_burst.df_count_reg_n_0_[2]\,
      I2 => \comp_burst.df_count_reg_n_0_[1]\,
      I3 => \comp_burst.df_count_reg_n_0_[0]\,
      O => df_count
    );
\comp_burst.df_count[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \comp_burst.df_count_reg_n_0_[2]\,
      I1 => \comp_burst.df_count_reg_n_0_[1]\,
      I2 => \comp_burst.df_count_reg_n_0_[0]\,
      O => \comp_burst.df_count[2]_i_3_n_0\
    );
\comp_burst.df_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \comp_burst.df_count_reg_n_0_[3]\,
      I1 => \comp_burst.df_count_reg_n_0_[2]\,
      I2 => \comp_burst.df_count_reg_n_0_[1]\,
      I3 => \comp_burst.df_count_reg_n_0_[0]\,
      O => \comp_burst.df_count[3]_i_1_n_0\
    );
\comp_burst.df_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_count,
      D => \comp_burst.df_count[0]_i_1_n_0\,
      Q => \comp_burst.df_count_reg_n_0_[0]\,
      R => \comp_burst.df_count[2]_i_1_n_0\
    );
\comp_burst.df_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_count,
      D => \comp_burst.df_count[1]_i_1_n_0\,
      Q => \comp_burst.df_count_reg_n_0_[1]\,
      R => \comp_burst.df_count[2]_i_1_n_0\
    );
\comp_burst.df_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_count,
      D => \comp_burst.df_count[2]_i_3_n_0\,
      Q => \comp_burst.df_count_reg_n_0_[2]\,
      R => \comp_burst.df_count[2]_i_1_n_0\
    );
\comp_burst.df_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_count[3]_i_1_n_0\,
      Q => \comp_burst.df_count_reg_n_0_[3]\,
      R => \comp_burst.df_count[2]_i_1_n_0\
    );
\comp_burst.df_diff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(0),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(0),
      O => \comp_burst.df_diff[0]_i_1_n_0\
    );
\comp_burst.df_diff[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(10),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(10),
      O => \comp_burst.df_diff[10]_i_1_n_0\
    );
\comp_burst.df_diff[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(11),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(11),
      O => \comp_burst.df_diff[11]_i_1_n_0\
    );
\comp_burst.df_diff[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(12),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(12),
      O => \comp_burst.df_diff[12]_i_1_n_0\
    );
\comp_burst.df_diff[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(13),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(13),
      O => \comp_burst.df_diff[13]_i_1_n_0\
    );
\comp_burst.df_diff[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(14),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(14),
      O => \comp_burst.df_diff[14]_i_1_n_0\
    );
\comp_burst.df_diff[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(15),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(15),
      O => \comp_burst.df_diff[15]_i_1_n_0\
    );
\comp_burst.df_diff[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(8),
      I1 => \comp_burst.df_diff_reg[15]_i_11_n_15\,
      O => \comp_burst.df_diff[15]_i_10_n_0\
    );
\comp_burst.df_diff[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(15),
      O => \comp_burst.df_diff[15]_i_12_n_0\
    );
\comp_burst.df_diff[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(14),
      O => \comp_burst.df_diff[15]_i_13_n_0\
    );
\comp_burst.df_diff[15]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(13),
      O => \comp_burst.df_diff[15]_i_14_n_0\
    );
\comp_burst.df_diff[15]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(12),
      O => \comp_burst.df_diff[15]_i_15_n_0\
    );
\comp_burst.df_diff[15]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(11),
      O => \comp_burst.df_diff[15]_i_16_n_0\
    );
\comp_burst.df_diff[15]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(10),
      O => \comp_burst.df_diff[15]_i_17_n_0\
    );
\comp_burst.df_diff[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(9),
      O => \comp_burst.df_diff[15]_i_18_n_0\
    );
\comp_burst.df_diff[15]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(8),
      O => \comp_burst.df_diff[15]_i_19_n_0\
    );
\comp_burst.df_diff[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(15),
      I1 => \comp_burst.df_diff_reg[15]_i_11_n_8\,
      O => \comp_burst.df_diff[15]_i_3_n_0\
    );
\comp_burst.df_diff[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(14),
      I1 => \comp_burst.df_diff_reg[15]_i_11_n_9\,
      O => \comp_burst.df_diff[15]_i_4_n_0\
    );
\comp_burst.df_diff[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(13),
      I1 => \comp_burst.df_diff_reg[15]_i_11_n_10\,
      O => \comp_burst.df_diff[15]_i_5_n_0\
    );
\comp_burst.df_diff[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(12),
      I1 => \comp_burst.df_diff_reg[15]_i_11_n_11\,
      O => \comp_burst.df_diff[15]_i_6_n_0\
    );
\comp_burst.df_diff[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(11),
      I1 => \comp_burst.df_diff_reg[15]_i_11_n_12\,
      O => \comp_burst.df_diff[15]_i_7_n_0\
    );
\comp_burst.df_diff[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(10),
      I1 => \comp_burst.df_diff_reg[15]_i_11_n_13\,
      O => \comp_burst.df_diff[15]_i_8_n_0\
    );
\comp_burst.df_diff[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(9),
      I1 => \comp_burst.df_diff_reg[15]_i_11_n_14\,
      O => \comp_burst.df_diff[15]_i_9_n_0\
    );
\comp_burst.df_diff[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(16),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(16),
      O => \comp_burst.df_diff[16]_i_1_n_0\
    );
\comp_burst.df_diff[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(17),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(17),
      O => \comp_burst.df_diff[17]_i_1_n_0\
    );
\comp_burst.df_diff[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(18),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(18),
      O => \comp_burst.df_diff[18]_i_1_n_0\
    );
\comp_burst.df_diff[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(19),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(19),
      O => \comp_burst.df_diff[19]_i_1_n_0\
    );
\comp_burst.df_diff[19]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(18),
      O => \comp_burst.df_diff[19]_i_10_n_0\
    );
\comp_burst.df_diff[19]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(17),
      O => \comp_burst.df_diff[19]_i_11_n_0\
    );
\comp_burst.df_diff[19]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(16),
      O => \comp_burst.df_diff[19]_i_12_n_0\
    );
\comp_burst.df_diff[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \comp_burst.df_active_reg_n_0\,
      I1 => \comp_burst.df_count_reg_n_0_[0]\,
      I2 => \comp_burst.df_count_reg_n_0_[1]\,
      I3 => \comp_burst.df_count_reg_n_0_[2]\,
      I4 => \comp_burst.df_count_reg_n_0_[3]\,
      O => \comp_burst.df_diff[19]_i_3_n_0\
    );
\comp_burst.df_diff[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.df_diff_reg[19]_i_8_n_12\,
      I1 => p2_phase_diff_0(19),
      O => \comp_burst.df_diff[19]_i_4_n_0\
    );
\comp_burst.df_diff[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(18),
      I1 => \comp_burst.df_diff_reg[19]_i_8_n_13\,
      O => \comp_burst.df_diff[19]_i_5_n_0\
    );
\comp_burst.df_diff[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(17),
      I1 => \comp_burst.df_diff_reg[19]_i_8_n_14\,
      O => \comp_burst.df_diff[19]_i_6_n_0\
    );
\comp_burst.df_diff[19]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(16),
      I1 => \comp_burst.df_diff_reg[19]_i_8_n_15\,
      O => \comp_burst.df_diff[19]_i_7_n_0\
    );
\comp_burst.df_diff[19]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(19),
      O => \comp_burst.df_diff[19]_i_9_n_0\
    );
\comp_burst.df_diff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(1),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(1),
      O => \comp_burst.df_diff[1]_i_1_n_0\
    );
\comp_burst.df_diff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(2),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(2),
      O => \comp_burst.df_diff[2]_i_1_n_0\
    );
\comp_burst.df_diff[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(3),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(3),
      O => \comp_burst.df_diff[3]_i_1_n_0\
    );
\comp_burst.df_diff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(4),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(4),
      O => \comp_burst.df_diff[4]_i_1_n_0\
    );
\comp_burst.df_diff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(5),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(5),
      O => \comp_burst.df_diff[5]_i_1_n_0\
    );
\comp_burst.df_diff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(6),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(6),
      O => \comp_burst.df_diff[6]_i_1_n_0\
    );
\comp_burst.df_diff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(7),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(7),
      O => \comp_burst.df_diff[7]_i_1_n_0\
    );
\comp_burst.df_diff[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(0),
      I1 => \comp_burst.df_diff_reg[7]_i_11_n_15\,
      O => \comp_burst.df_diff[7]_i_10_n_0\
    );
\comp_burst.df_diff[7]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(7),
      O => \comp_burst.df_diff[7]_i_12_n_0\
    );
\comp_burst.df_diff[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(6),
      O => \comp_burst.df_diff[7]_i_13_n_0\
    );
\comp_burst.df_diff[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(5),
      O => \comp_burst.df_diff[7]_i_14_n_0\
    );
\comp_burst.df_diff[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(4),
      O => \comp_burst.df_diff[7]_i_15_n_0\
    );
\comp_burst.df_diff[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(3),
      O => \comp_burst.df_diff[7]_i_16_n_0\
    );
\comp_burst.df_diff[7]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(2),
      O => \comp_burst.df_diff[7]_i_17_n_0\
    );
\comp_burst.df_diff[7]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_low(1),
      O => \comp_burst.df_diff[7]_i_18_n_0\
    );
\comp_burst.df_diff[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(7),
      I1 => \comp_burst.df_diff_reg[7]_i_11_n_8\,
      O => \comp_burst.df_diff[7]_i_3_n_0\
    );
\comp_burst.df_diff[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(6),
      I1 => \comp_burst.df_diff_reg[7]_i_11_n_9\,
      O => \comp_burst.df_diff[7]_i_4_n_0\
    );
\comp_burst.df_diff[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(5),
      I1 => \comp_burst.df_diff_reg[7]_i_11_n_10\,
      O => \comp_burst.df_diff[7]_i_5_n_0\
    );
\comp_burst.df_diff[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(4),
      I1 => \comp_burst.df_diff_reg[7]_i_11_n_11\,
      O => \comp_burst.df_diff[7]_i_6_n_0\
    );
\comp_burst.df_diff[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(3),
      I1 => \comp_burst.df_diff_reg[7]_i_11_n_12\,
      O => \comp_burst.df_diff[7]_i_7_n_0\
    );
\comp_burst.df_diff[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(2),
      I1 => \comp_burst.df_diff_reg[7]_i_11_n_13\,
      O => \comp_burst.df_diff[7]_i_8_n_0\
    );
\comp_burst.df_diff[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_phase_diff_0(1),
      I1 => \comp_burst.df_diff_reg[7]_i_11_n_14\,
      O => \comp_burst.df_diff[7]_i_9_n_0\
    );
\comp_burst.df_diff[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(8),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(8),
      O => \comp_burst.df_diff[8]_i_1_n_0\
    );
\comp_burst.df_diff[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(9),
      I1 => \comp_burst.df_diff[19]_i_3_n_0\,
      I2 => df_diff(9),
      O => \comp_burst.df_diff[9]_i_1_n_0\
    );
\comp_burst.df_diff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[0]_i_1_n_0\,
      Q => df_diff(0),
      R => '0'
    );
\comp_burst.df_diff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[10]_i_1_n_0\,
      Q => df_diff(10),
      R => '0'
    );
\comp_burst.df_diff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[11]_i_1_n_0\,
      Q => df_diff(11),
      R => '0'
    );
\comp_burst.df_diff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[12]_i_1_n_0\,
      Q => df_diff(12),
      R => '0'
    );
\comp_burst.df_diff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[13]_i_1_n_0\,
      Q => df_diff(13),
      R => '0'
    );
\comp_burst.df_diff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[14]_i_1_n_0\,
      Q => df_diff(14),
      R => '0'
    );
\comp_burst.df_diff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[15]_i_1_n_0\,
      Q => df_diff(15),
      R => '0'
    );
\comp_burst.df_diff_reg[15]_i_11\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.df_diff_reg[7]_i_11_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_burst.df_diff_reg[15]_i_11_n_0\,
      CO(6) => \comp_burst.df_diff_reg[15]_i_11_n_1\,
      CO(5) => \comp_burst.df_diff_reg[15]_i_11_n_2\,
      CO(4) => \comp_burst.df_diff_reg[15]_i_11_n_3\,
      CO(3) => \comp_burst.df_diff_reg[15]_i_11_n_4\,
      CO(2) => \comp_burst.df_diff_reg[15]_i_11_n_5\,
      CO(1) => \comp_burst.df_diff_reg[15]_i_11_n_6\,
      CO(0) => \comp_burst.df_diff_reg[15]_i_11_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \comp_burst.df_diff_reg[15]_i_11_n_8\,
      O(6) => \comp_burst.df_diff_reg[15]_i_11_n_9\,
      O(5) => \comp_burst.df_diff_reg[15]_i_11_n_10\,
      O(4) => \comp_burst.df_diff_reg[15]_i_11_n_11\,
      O(3) => \comp_burst.df_diff_reg[15]_i_11_n_12\,
      O(2) => \comp_burst.df_diff_reg[15]_i_11_n_13\,
      O(1) => \comp_burst.df_diff_reg[15]_i_11_n_14\,
      O(0) => \comp_burst.df_diff_reg[15]_i_11_n_15\,
      S(7) => \comp_burst.df_diff[15]_i_12_n_0\,
      S(6) => \comp_burst.df_diff[15]_i_13_n_0\,
      S(5) => \comp_burst.df_diff[15]_i_14_n_0\,
      S(4) => \comp_burst.df_diff[15]_i_15_n_0\,
      S(3) => \comp_burst.df_diff[15]_i_16_n_0\,
      S(2) => \comp_burst.df_diff[15]_i_17_n_0\,
      S(1) => \comp_burst.df_diff[15]_i_18_n_0\,
      S(0) => \comp_burst.df_diff[15]_i_19_n_0\
    );
\comp_burst.df_diff_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.df_diff_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_burst.df_diff_reg[15]_i_2_n_0\,
      CO(6) => \comp_burst.df_diff_reg[15]_i_2_n_1\,
      CO(5) => \comp_burst.df_diff_reg[15]_i_2_n_2\,
      CO(4) => \comp_burst.df_diff_reg[15]_i_2_n_3\,
      CO(3) => \comp_burst.df_diff_reg[15]_i_2_n_4\,
      CO(2) => \comp_burst.df_diff_reg[15]_i_2_n_5\,
      CO(1) => \comp_burst.df_diff_reg[15]_i_2_n_6\,
      CO(0) => \comp_burst.df_diff_reg[15]_i_2_n_7\,
      DI(7 downto 0) => p2_phase_diff_0(15 downto 8),
      O(7 downto 0) => data0(15 downto 8),
      S(7) => \comp_burst.df_diff[15]_i_3_n_0\,
      S(6) => \comp_burst.df_diff[15]_i_4_n_0\,
      S(5) => \comp_burst.df_diff[15]_i_5_n_0\,
      S(4) => \comp_burst.df_diff[15]_i_6_n_0\,
      S(3) => \comp_burst.df_diff[15]_i_7_n_0\,
      S(2) => \comp_burst.df_diff[15]_i_8_n_0\,
      S(1) => \comp_burst.df_diff[15]_i_9_n_0\,
      S(0) => \comp_burst.df_diff[15]_i_10_n_0\
    );
\comp_burst.df_diff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[16]_i_1_n_0\,
      Q => df_diff(16),
      R => '0'
    );
\comp_burst.df_diff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[17]_i_1_n_0\,
      Q => df_diff(17),
      R => '0'
    );
\comp_burst.df_diff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[18]_i_1_n_0\,
      Q => df_diff(18),
      R => '0'
    );
\comp_burst.df_diff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[19]_i_1_n_0\,
      Q => df_diff(19),
      R => '0'
    );
\comp_burst.df_diff_reg[19]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.df_diff_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_comp_burst.df_diff_reg[19]_i_2_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \comp_burst.df_diff_reg[19]_i_2_n_5\,
      CO(1) => \comp_burst.df_diff_reg[19]_i_2_n_6\,
      CO(0) => \comp_burst.df_diff_reg[19]_i_2_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => p2_phase_diff_0(18 downto 16),
      O(7 downto 4) => \NLW_comp_burst.df_diff_reg[19]_i_2_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => data0(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \comp_burst.df_diff[19]_i_4_n_0\,
      S(2) => \comp_burst.df_diff[19]_i_5_n_0\,
      S(1) => \comp_burst.df_diff[19]_i_6_n_0\,
      S(0) => \comp_burst.df_diff[19]_i_7_n_0\
    );
\comp_burst.df_diff_reg[19]_i_8\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.df_diff_reg[15]_i_11_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_comp_burst.df_diff_reg[19]_i_8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \comp_burst.df_diff_reg[19]_i_8_n_5\,
      CO(1) => \comp_burst.df_diff_reg[19]_i_8_n_6\,
      CO(0) => \comp_burst.df_diff_reg[19]_i_8_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_comp_burst.df_diff_reg[19]_i_8_O_UNCONNECTED\(7 downto 4),
      O(3) => \comp_burst.df_diff_reg[19]_i_8_n_12\,
      O(2) => \comp_burst.df_diff_reg[19]_i_8_n_13\,
      O(1) => \comp_burst.df_diff_reg[19]_i_8_n_14\,
      O(0) => \comp_burst.df_diff_reg[19]_i_8_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \comp_burst.df_diff[19]_i_9_n_0\,
      S(2) => \comp_burst.df_diff[19]_i_10_n_0\,
      S(1) => \comp_burst.df_diff[19]_i_11_n_0\,
      S(0) => \comp_burst.df_diff[19]_i_12_n_0\
    );
\comp_burst.df_diff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[1]_i_1_n_0\,
      Q => df_diff(1),
      R => '0'
    );
\comp_burst.df_diff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[2]_i_1_n_0\,
      Q => df_diff(2),
      R => '0'
    );
\comp_burst.df_diff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[3]_i_1_n_0\,
      Q => df_diff(3),
      R => '0'
    );
\comp_burst.df_diff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[4]_i_1_n_0\,
      Q => df_diff(4),
      R => '0'
    );
\comp_burst.df_diff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[5]_i_1_n_0\,
      Q => df_diff(5),
      R => '0'
    );
\comp_burst.df_diff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[6]_i_1_n_0\,
      Q => df_diff(6),
      R => '0'
    );
\comp_burst.df_diff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[7]_i_1_n_0\,
      Q => df_diff(7),
      R => '0'
    );
\comp_burst.df_diff_reg[7]_i_11\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.df_diff_reg[7]_i_11_n_0\,
      CO(6) => \comp_burst.df_diff_reg[7]_i_11_n_1\,
      CO(5) => \comp_burst.df_diff_reg[7]_i_11_n_2\,
      CO(4) => \comp_burst.df_diff_reg[7]_i_11_n_3\,
      CO(3) => \comp_burst.df_diff_reg[7]_i_11_n_4\,
      CO(2) => \comp_burst.df_diff_reg[7]_i_11_n_5\,
      CO(1) => \comp_burst.df_diff_reg[7]_i_11_n_6\,
      CO(0) => \comp_burst.df_diff_reg[7]_i_11_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \comp_burst.df_diff_reg[7]_i_11_n_8\,
      O(6) => \comp_burst.df_diff_reg[7]_i_11_n_9\,
      O(5) => \comp_burst.df_diff_reg[7]_i_11_n_10\,
      O(4) => \comp_burst.df_diff_reg[7]_i_11_n_11\,
      O(3) => \comp_burst.df_diff_reg[7]_i_11_n_12\,
      O(2) => \comp_burst.df_diff_reg[7]_i_11_n_13\,
      O(1) => \comp_burst.df_diff_reg[7]_i_11_n_14\,
      O(0) => \comp_burst.df_diff_reg[7]_i_11_n_15\,
      S(7) => \comp_burst.df_diff[7]_i_12_n_0\,
      S(6) => \comp_burst.df_diff[7]_i_13_n_0\,
      S(5) => \comp_burst.df_diff[7]_i_14_n_0\,
      S(4) => \comp_burst.df_diff[7]_i_15_n_0\,
      S(3) => \comp_burst.df_diff[7]_i_16_n_0\,
      S(2) => \comp_burst.df_diff[7]_i_17_n_0\,
      S(1) => \comp_burst.df_diff[7]_i_18_n_0\,
      S(0) => df_low(0)
    );
\comp_burst.df_diff_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.df_diff_reg[7]_i_2_n_0\,
      CO(6) => \comp_burst.df_diff_reg[7]_i_2_n_1\,
      CO(5) => \comp_burst.df_diff_reg[7]_i_2_n_2\,
      CO(4) => \comp_burst.df_diff_reg[7]_i_2_n_3\,
      CO(3) => \comp_burst.df_diff_reg[7]_i_2_n_4\,
      CO(2) => \comp_burst.df_diff_reg[7]_i_2_n_5\,
      CO(1) => \comp_burst.df_diff_reg[7]_i_2_n_6\,
      CO(0) => \comp_burst.df_diff_reg[7]_i_2_n_7\,
      DI(7 downto 0) => p2_phase_diff_0(7 downto 0),
      O(7 downto 0) => data0(7 downto 0),
      S(7) => \comp_burst.df_diff[7]_i_3_n_0\,
      S(6) => \comp_burst.df_diff[7]_i_4_n_0\,
      S(5) => \comp_burst.df_diff[7]_i_5_n_0\,
      S(4) => \comp_burst.df_diff[7]_i_6_n_0\,
      S(3) => \comp_burst.df_diff[7]_i_7_n_0\,
      S(2) => \comp_burst.df_diff[7]_i_8_n_0\,
      S(1) => \comp_burst.df_diff[7]_i_9_n_0\,
      S(0) => \comp_burst.df_diff[7]_i_10_n_0\
    );
\comp_burst.df_diff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[8]_i_1_n_0\,
      Q => df_diff(8),
      R => '0'
    );
\comp_burst.df_diff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p2_active,
      D => \comp_burst.df_diff[9]_i_1_n_0\,
      Q => df_diff(9),
      R => '0'
    );
\comp_burst.df_done_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \comp_burst.df_count_reg_n_0_[3]\,
      I1 => \comp_burst.df_count_reg_n_0_[2]\,
      I2 => \comp_burst.df_count_reg_n_0_[1]\,
      I3 => \comp_burst.df_count_reg_n_0_[0]\,
      I4 => \comp_burst.df_active_reg_n_0\,
      I5 => p2_active,
      O => \comp_burst.df_done_i_1_n_0\
    );
\comp_burst.df_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_done_i_1_n_0\,
      Q => df_done,
      R => '0'
    );
\comp_burst.df_ind[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[0]\,
      O => \comp_burst.df_ind[0]_i_1_n_0\
    );
\comp_burst.df_ind[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[0]\,
      I1 => \comp_burst.df_ind_reg_n_0_[1]\,
      O => \comp_burst.df_ind[1]_i_1_n_0\
    );
\comp_burst.df_ind[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[2]\,
      I1 => \comp_burst.df_ind_reg_n_0_[0]\,
      I2 => \comp_burst.df_ind_reg_n_0_[1]\,
      O => \comp_burst.df_ind[2]_i_1_n_0\
    );
\comp_burst.df_ind[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[1]\,
      I1 => \comp_burst.df_ind_reg_n_0_[0]\,
      I2 => \comp_burst.df_ind_reg_n_0_[2]\,
      I3 => \comp_burst.df_ind_reg_n_0_[3]\,
      O => \comp_burst.df_ind[3]_i_1_n_0\
    );
\comp_burst.df_ind[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[4]\,
      I1 => \comp_burst.df_ind_reg_n_0_[1]\,
      I2 => \comp_burst.df_ind_reg_n_0_[0]\,
      I3 => \comp_burst.df_ind_reg_n_0_[2]\,
      I4 => \comp_burst.df_ind_reg_n_0_[3]\,
      O => \comp_burst.df_ind[4]_i_1_n_0\
    );
\comp_burst.df_ind[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[5]\,
      I1 => \comp_burst.df_ind_reg_n_0_[3]\,
      I2 => \comp_burst.df_ind_reg_n_0_[2]\,
      I3 => \comp_burst.df_ind_reg_n_0_[0]\,
      I4 => \comp_burst.df_ind_reg_n_0_[1]\,
      I5 => \comp_burst.df_ind_reg_n_0_[4]\,
      O => \comp_burst.df_ind[5]_i_1_n_0\
    );
\comp_burst.df_ind[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[6]\,
      I1 => \comp_burst.df_ind_reg_n_0_[4]\,
      I2 => \comp_burst.df_ind[8]_i_3_n_0\,
      I3 => \comp_burst.df_ind_reg_n_0_[5]\,
      O => \comp_burst.df_ind[6]_i_1_n_0\
    );
\comp_burst.df_ind[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[7]\,
      I1 => \comp_burst.df_ind_reg_n_0_[5]\,
      I2 => \comp_burst.df_ind[8]_i_3_n_0\,
      I3 => \comp_burst.df_ind_reg_n_0_[4]\,
      I4 => \comp_burst.df_ind_reg_n_0_[6]\,
      O => \comp_burst.df_ind[7]_i_1_n_0\
    );
\comp_burst.df_ind[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p2_active,
      O => df_ind(0)
    );
\comp_burst.df_ind[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[8]\,
      I1 => \comp_burst.df_ind_reg_n_0_[6]\,
      I2 => \comp_burst.df_ind_reg_n_0_[4]\,
      I3 => \comp_burst.df_ind[8]_i_3_n_0\,
      I4 => \comp_burst.df_ind_reg_n_0_[5]\,
      I5 => \comp_burst.df_ind_reg_n_0_[7]\,
      O => \comp_burst.df_ind[8]_i_2_n_0\
    );
\comp_burst.df_ind[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[3]\,
      I1 => \comp_burst.df_ind_reg_n_0_[2]\,
      I2 => \comp_burst.df_ind_reg_n_0_[0]\,
      I3 => \comp_burst.df_ind_reg_n_0_[1]\,
      O => \comp_burst.df_ind[8]_i_3_n_0\
    );
\comp_burst.df_ind_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[0]_i_1_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[0]\,
      R => df_ind(0)
    );
\comp_burst.df_ind_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[1]_i_1_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[1]\,
      R => df_ind(0)
    );
\comp_burst.df_ind_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[2]_i_1_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[2]\,
      R => df_ind(0)
    );
\comp_burst.df_ind_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[3]_i_1_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[3]\,
      R => df_ind(0)
    );
\comp_burst.df_ind_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[4]_i_1_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[4]\,
      R => df_ind(0)
    );
\comp_burst.df_ind_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[5]_i_1_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[5]\,
      R => df_ind(0)
    );
\comp_burst.df_ind_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[6]_i_1_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[6]\,
      R => df_ind(0)
    );
\comp_burst.df_ind_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[7]_i_1_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[7]\,
      R => df_ind(0)
    );
\comp_burst.df_ind_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.df_ind[8]_i_2_n_0\,
      Q => \comp_burst.df_ind_reg_n_0_[8]\,
      R => df_ind(0)
    );
\comp_burst.df_low[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \comp_burst.df_low[19]_i_2_n_0\,
      I1 => \comp_burst.df_low[19]_i_3_n_0\,
      I2 => \comp_burst.df_low[19]_i_4_n_0\,
      I3 => \comp_burst.df_active_reg_n_0\,
      I4 => p2_active,
      O => \comp_burst.df_low[19]_i_1_n_0\
    );
\comp_burst.df_low[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[1]\,
      I1 => \comp_burst.df_start_reg_n_0_[1]\,
      I2 => \comp_burst.df_ind_reg_n_0_[2]\,
      I3 => \comp_burst.df_start_reg_n_0_[2]\,
      I4 => \comp_burst.df_start_reg_n_0_[0]\,
      I5 => \comp_burst.df_ind_reg_n_0_[0]\,
      O => \comp_burst.df_low[19]_i_2_n_0\
    );
\comp_burst.df_low[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \comp_burst.df_start_reg_n_0_[8]\,
      I1 => \comp_burst.df_ind_reg_n_0_[8]\,
      I2 => \comp_burst.df_ind_reg_n_0_[7]\,
      I3 => \comp_burst.df_start_reg_n_0_[7]\,
      I4 => \comp_burst.df_ind_reg_n_0_[6]\,
      I5 => \comp_burst.df_start_reg_n_0_[6]\,
      O => \comp_burst.df_low[19]_i_3_n_0\
    );
\comp_burst.df_low[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \comp_burst.df_ind_reg_n_0_[4]\,
      I1 => \comp_burst.df_start_reg_n_0_[4]\,
      I2 => \comp_burst.df_ind_reg_n_0_[5]\,
      I3 => \comp_burst.df_start_reg_n_0_[5]\,
      I4 => \comp_burst.df_start_reg_n_0_[3]\,
      I5 => \comp_burst.df_ind_reg_n_0_[3]\,
      O => \comp_burst.df_low[19]_i_4_n_0\
    );
\comp_burst.df_low_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(0),
      Q => df_low(0),
      R => '0'
    );
\comp_burst.df_low_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(10),
      Q => df_low(10),
      R => '0'
    );
\comp_burst.df_low_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(11),
      Q => df_low(11),
      R => '0'
    );
\comp_burst.df_low_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(12),
      Q => df_low(12),
      R => '0'
    );
\comp_burst.df_low_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(13),
      Q => df_low(13),
      R => '0'
    );
\comp_burst.df_low_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(14),
      Q => df_low(14),
      R => '0'
    );
\comp_burst.df_low_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(15),
      Q => df_low(15),
      R => '0'
    );
\comp_burst.df_low_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(16),
      Q => df_low(16),
      R => '0'
    );
\comp_burst.df_low_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(17),
      Q => df_low(17),
      R => '0'
    );
\comp_burst.df_low_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(18),
      Q => df_low(18),
      R => '0'
    );
\comp_burst.df_low_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(19),
      Q => df_low(19),
      R => '0'
    );
\comp_burst.df_low_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(1),
      Q => df_low(1),
      R => '0'
    );
\comp_burst.df_low_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(2),
      Q => df_low(2),
      R => '0'
    );
\comp_burst.df_low_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(3),
      Q => df_low(3),
      R => '0'
    );
\comp_burst.df_low_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(4),
      Q => df_low(4),
      R => '0'
    );
\comp_burst.df_low_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(5),
      Q => df_low(5),
      R => '0'
    );
\comp_burst.df_low_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(6),
      Q => df_low(6),
      R => '0'
    );
\comp_burst.df_low_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(7),
      Q => df_low(7),
      R => '0'
    );
\comp_burst.df_low_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(8),
      Q => df_low(8),
      R => '0'
    );
\comp_burst.df_low_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.df_low[19]_i_1_n_0\,
      D => p2_phase_diff_0(9),
      Q => df_low(9),
      R => '0'
    );
\comp_burst.df_start[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000004"
    )
        port map (
      I0 => p2_size(2),
      I1 => \comp_burst.df_start[8]_i_4_n_0\,
      I2 => \comp_burst.df_start[0]_i_2_n_0\,
      I3 => \comp_burst.df_start[0]_i_3_n_0\,
      I4 => \comp_burst.df_start[0]_i_4_n_0\,
      I5 => p2_max_pos(2),
      O => \p_0_in1_in__0\(0)
    );
\comp_burst.df_start[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_10_n_0\
    );
\comp_burst.df_start[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_11_n_0\
    );
\comp_burst.df_start[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_12_n_0\
    );
\comp_burst.df_start[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_13_n_0\
    );
\comp_burst.df_start[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_14_n_0\
    );
\comp_burst.df_start[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD0202FD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_size(10),
      I4 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_15_n_0\
    );
\comp_burst.df_start[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_16_n_0\
    );
\comp_burst.df_start[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_17_n_0\
    );
\comp_burst.df_start[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_18_n_0\
    );
\comp_burst.df_start[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_19_n_0\
    );
\comp_burst.df_start[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => df_start2(12),
      I1 => df_start2(4),
      I2 => df_start2(31),
      I3 => df_start2(10),
      I4 => \comp_burst.df_start[8]_i_12_n_0\,
      O => \comp_burst.df_start[0]_i_2_n_0\
    );
\comp_burst.df_start[0]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_20_n_0\
    );
\comp_burst.df_start[0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_21_n_0\
    );
\comp_burst.df_start[0]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_22_n_0\
    );
\comp_burst.df_start[0]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_23_n_0\
    );
\comp_burst.df_start[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_24_n_0\
    );
\comp_burst.df_start[0]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_25_n_0\
    );
\comp_burst.df_start[0]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_26_n_0\
    );
\comp_burst.df_start[0]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_27_n_0\
    );
\comp_burst.df_start[0]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_28_n_0\
    );
\comp_burst.df_start[0]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_29_n_0\
    );
\comp_burst.df_start[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => df_start2(25),
      I1 => df_start2(18),
      I2 => df_start2(30),
      I3 => df_start2(13),
      I4 => \comp_burst.df_start[8]_i_10_n_0\,
      O => \comp_burst.df_start[0]_i_3_n_0\
    );
\comp_burst.df_start[0]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_30_n_0\
    );
\comp_burst.df_start[0]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_31_n_0\
    );
\comp_burst.df_start[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => df_start2(8),
      I1 => df_start2(20),
      I2 => df_start2(22),
      I3 => df_start2(5),
      I4 => df_start2(19),
      I5 => df_start2(16),
      O => \comp_burst.df_start[0]_i_4_n_0\
    );
\comp_burst.df_start[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_8_n_0\
    );
\comp_burst.df_start[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(10),
      O => \comp_burst.df_start[0]_i_9_n_0\
    );
\comp_burst.df_start[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF9F0090"
    )
        port map (
      I0 => p2_size(2),
      I1 => p2_size(3),
      I2 => \comp_burst.df_start[8]_i_4_n_0\,
      I3 => \comp_burst.df_start[8]_i_5_n_0\,
      I4 => p2_max_pos(3),
      O => \p_0_in1_in__0\(1)
    );
\comp_burst.df_start[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E100FFFFE1FF"
    )
        port map (
      I0 => p2_size(2),
      I1 => p2_size(3),
      I2 => p2_size(4),
      I3 => \comp_burst.df_start[8]_i_4_n_0\,
      I4 => \comp_burst.df_start[8]_i_5_n_0\,
      I5 => p2_max_pos(4),
      O => \p_0_in1_in__0\(2)
    );
\comp_burst.df_start[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F00900090FF9F"
    )
        port map (
      I0 => p2_size(5),
      I1 => \comp_burst.df_start[3]_i_2_n_0\,
      I2 => \comp_burst.df_start[8]_i_4_n_0\,
      I3 => \comp_burst.df_start[8]_i_5_n_0\,
      I4 => p2_max_pos(5),
      I5 => p2_max_pos(4),
      O => \p_0_in1_in__0\(3)
    );
\comp_burst.df_start[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p2_size(4),
      I1 => p2_size(3),
      I2 => p2_size(2),
      O => \comp_burst.df_start[3]_i_2_n_0\
    );
\comp_burst.df_start[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F00900090FF9F"
    )
        port map (
      I0 => p2_size(6),
      I1 => \comp_burst.df_start[4]_i_2_n_0\,
      I2 => \comp_burst.df_start[8]_i_4_n_0\,
      I3 => \comp_burst.df_start[8]_i_5_n_0\,
      I4 => \comp_burst.df_start[4]_i_3_n_0\,
      I5 => p2_max_pos(6),
      O => \p_0_in1_in__0\(4)
    );
\comp_burst.df_start[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => p2_size(5),
      I1 => p2_size(2),
      I2 => p2_size(3),
      I3 => p2_size(4),
      O => \comp_burst.df_start[4]_i_2_n_0\
    );
\comp_burst.df_start[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p2_max_pos(5),
      I1 => p2_max_pos(4),
      O => \comp_burst.df_start[4]_i_3_n_0\
    );
\comp_burst.df_start[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F00600060FF6F"
    )
        port map (
      I0 => p2_size(7),
      I1 => \comp_burst.df_start[5]_i_2_n_0\,
      I2 => \comp_burst.df_start[8]_i_4_n_0\,
      I3 => \comp_burst.df_start[8]_i_5_n_0\,
      I4 => \comp_burst.df_start[5]_i_3_n_0\,
      I5 => p2_max_pos(7),
      O => \p_0_in1_in__0\(5)
    );
\comp_burst.df_start[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00015555"
    )
        port map (
      I0 => p2_size(6),
      I1 => p2_size(4),
      I2 => p2_size(3),
      I3 => p2_size(2),
      I4 => p2_size(5),
      O => \comp_burst.df_start[5]_i_2_n_0\
    );
\comp_burst.df_start[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p2_max_pos(6),
      I1 => p2_max_pos(4),
      I2 => p2_max_pos(5),
      O => \comp_burst.df_start[5]_i_3_n_0\
    );
\comp_burst.df_start[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F00600060FF6F"
    )
        port map (
      I0 => p2_size(8),
      I1 => \comp_burst.df_start[6]_i_2_n_0\,
      I2 => \comp_burst.df_start[8]_i_4_n_0\,
      I3 => \comp_burst.df_start[8]_i_5_n_0\,
      I4 => p2_max_pos(8),
      I5 => \comp_burst.df_start[6]_i_3_n_0\,
      O => \p_0_in1_in__0\(6)
    );
\comp_burst.df_start[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005557"
    )
        port map (
      I0 => p2_size(5),
      I1 => p2_size(2),
      I2 => p2_size(3),
      I3 => p2_size(4),
      I4 => p2_size(6),
      I5 => p2_size(7),
      O => \comp_burst.df_start[6]_i_2_n_0\
    );
\comp_burst.df_start[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p2_max_pos(7),
      I1 => p2_max_pos(5),
      I2 => p2_max_pos(4),
      I3 => p2_max_pos(6),
      O => \comp_burst.df_start[6]_i_3_n_0\
    );
\comp_burst.df_start[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => complete_2,
      I1 => \comp_burst.df_start[8]_i_2_n_0\,
      I2 => p2_max_pos(10),
      O => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0060FF6FFF6F0060"
    )
        port map (
      I0 => p2_size(9),
      I1 => \comp_burst.df_start[7]_i_3_n_0\,
      I2 => \comp_burst.df_start[8]_i_4_n_0\,
      I3 => \comp_burst.df_start[8]_i_5_n_0\,
      I4 => p2_max_pos(9),
      I5 => \comp_burst.df_start[7]_i_4_n_0\,
      O => \p_0_in1_in__0\(7)
    );
\comp_burst.df_start[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p2_size(7),
      I1 => p2_size(6),
      I2 => \comp_burst.df_start[4]_i_2_n_0\,
      I3 => p2_size(8),
      O => \comp_burst.df_start[7]_i_3_n_0\
    );
\comp_burst.df_start[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p2_max_pos(8),
      I1 => p2_max_pos(6),
      I2 => p2_max_pos(4),
      I3 => p2_max_pos(5),
      I4 => p2_max_pos(7),
      O => \comp_burst.df_start[7]_i_4_n_0\
    );
\comp_burst.df_start[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444D044"
    )
        port map (
      I0 => \comp_burst.df_start[8]_i_2_n_0\,
      I1 => p2_max_pos(10),
      I2 => \comp_burst.df_start[8]_i_3_n_0\,
      I3 => \comp_burst.df_start[8]_i_4_n_0\,
      I4 => \comp_burst.df_start[8]_i_5_n_0\,
      O => \comp_burst.df_start[8]_i_1_n_0\
    );
\comp_burst.df_start[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => df_start2(3),
      I1 => df_start2(24),
      I2 => df_start2(11),
      I3 => df_start2(14),
      O => \comp_burst.df_start[8]_i_10_n_0\
    );
\comp_burst.df_start[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => df_start2(10),
      I1 => df_start2(31),
      I2 => df_start2(4),
      I3 => df_start2(12),
      O => \comp_burst.df_start[8]_i_11_n_0\
    );
\comp_burst.df_start[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => df_start2(7),
      I1 => df_start2(9),
      I2 => df_start2(21),
      I3 => df_start2(27),
      O => \comp_burst.df_start[8]_i_12_n_0\
    );
\comp_burst.df_start[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => p2_size(9),
      I1 => p2_max_pos(8),
      I2 => \comp_burst.df_start[8]_i_21_n_0\,
      I3 => p2_max_pos(9),
      O => \comp_burst.df_start[8]_i_13_n_0\
    );
\comp_burst.df_start[8]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p2_size(8),
      I1 => \comp_burst.df_start[8]_i_21_n_0\,
      I2 => p2_max_pos(8),
      O => \comp_burst.df_start[8]_i_14_n_0\
    );
\comp_burst.df_start[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955555556"
    )
        port map (
      I0 => p2_size(7),
      I1 => p2_max_pos(6),
      I2 => p2_max_pos(5),
      I3 => p2_max_pos(4),
      I4 => \comp_burst.df_start[8]_i_22_n_0\,
      I5 => p2_max_pos(7),
      O => \comp_burst.df_start[8]_i_15_n_0\
    );
\comp_burst.df_start[8]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955555556"
    )
        port map (
      I0 => p2_size(6),
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(4),
      I4 => p2_max_pos(5),
      I5 => p2_max_pos(6),
      O => \comp_burst.df_start[8]_i_16_n_0\
    );
\comp_burst.df_start[8]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => p2_size(5),
      I1 => p2_max_pos(4),
      I2 => p2_max_pos(3),
      I3 => p2_max_pos(2),
      I4 => p2_max_pos(5),
      O => \comp_burst.df_start[8]_i_17_n_0\
    );
\comp_burst.df_start[8]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => p2_size(4),
      I1 => p2_max_pos(2),
      I2 => p2_max_pos(3),
      I3 => p2_max_pos(4),
      O => \comp_burst.df_start[8]_i_18_n_0\
    );
\comp_burst.df_start[8]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p2_size(3),
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      O => \comp_burst.df_start[8]_i_19_n_0\
    );
\comp_burst.df_start[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p2_max_pos(7),
      I1 => p2_max_pos(5),
      I2 => p2_max_pos(4),
      I3 => p2_max_pos(6),
      I4 => p2_max_pos(8),
      I5 => p2_max_pos(9),
      O => \comp_burst.df_start[8]_i_2_n_0\
    );
\comp_burst.df_start[8]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_size(2),
      I1 => p2_max_pos(2),
      O => \comp_burst.df_start[8]_i_20_n_0\
    );
\comp_burst.df_start[8]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p2_max_pos(7),
      I1 => p2_max_pos(3),
      I2 => p2_max_pos(2),
      I3 => p2_max_pos(4),
      I4 => p2_max_pos(5),
      I5 => p2_max_pos(6),
      O => \comp_burst.df_start[8]_i_21_n_0\
    );
\comp_burst.df_start[8]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p2_max_pos(2),
      I1 => p2_max_pos(3),
      O => \comp_burst.df_start[8]_i_22_n_0\
    );
\comp_burst.df_start[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => p2_size(10),
      I1 => p2_size(9),
      I2 => p2_size(7),
      I3 => p2_size(6),
      I4 => \comp_burst.df_start[4]_i_2_n_0\,
      I5 => p2_size(8),
      O => \comp_burst.df_start[8]_i_3_n_0\
    );
\comp_burst.df_start[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000057"
    )
        port map (
      I0 => df_start2(2),
      I1 => df_start2(0),
      I2 => df_start2(1),
      I3 => \comp_burst.df_start[8]_i_7_n_0\,
      I4 => \comp_burst.df_start[8]_i_8_n_0\,
      O => \comp_burst.df_start[8]_i_4_n_0\
    );
\comp_burst.df_start[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \comp_burst.df_start[0]_i_4_n_0\,
      I1 => \comp_burst.df_start[8]_i_9_n_0\,
      I2 => \comp_burst.df_start[8]_i_10_n_0\,
      I3 => \comp_burst.df_start[8]_i_11_n_0\,
      I4 => \comp_burst.df_start[8]_i_12_n_0\,
      O => \comp_burst.df_start[8]_i_5_n_0\
    );
\comp_burst.df_start[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => df_start2(6),
      I1 => df_start2(15),
      I2 => df_start2(26),
      I3 => df_start2(29),
      O => \comp_burst.df_start[8]_i_7_n_0\
    );
\comp_burst.df_start[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => df_start2(17),
      I1 => df_start2(23),
      I2 => df_start2(28),
      O => \comp_burst.df_start[8]_i_8_n_0\
    );
\comp_burst.df_start[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => df_start2(13),
      I1 => df_start2(30),
      I2 => df_start2(18),
      I3 => df_start2(25),
      O => \comp_burst.df_start[8]_i_9_n_0\
    );
\comp_burst.df_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \p_0_in1_in__0\(0),
      Q => \comp_burst.df_start_reg_n_0_[0]\,
      R => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start_reg[0]_i_5\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.df_start_reg[8]_i_6_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_burst.df_start_reg[0]_i_5_n_0\,
      CO(6) => \comp_burst.df_start_reg[0]_i_5_n_1\,
      CO(5) => \comp_burst.df_start_reg[0]_i_5_n_2\,
      CO(4) => \comp_burst.df_start_reg[0]_i_5_n_3\,
      CO(3) => \comp_burst.df_start_reg[0]_i_5_n_4\,
      CO(2) => \comp_burst.df_start_reg[0]_i_5_n_5\,
      CO(1) => \comp_burst.df_start_reg[0]_i_5_n_6\,
      CO(0) => \comp_burst.df_start_reg[0]_i_5_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => p2_size(10),
      O(7 downto 0) => df_start2(15 downto 8),
      S(7) => \comp_burst.df_start[0]_i_8_n_0\,
      S(6) => \comp_burst.df_start[0]_i_9_n_0\,
      S(5) => \comp_burst.df_start[0]_i_10_n_0\,
      S(4) => \comp_burst.df_start[0]_i_11_n_0\,
      S(3) => \comp_burst.df_start[0]_i_12_n_0\,
      S(2) => \comp_burst.df_start[0]_i_13_n_0\,
      S(1) => \comp_burst.df_start[0]_i_14_n_0\,
      S(0) => \comp_burst.df_start[0]_i_15_n_0\
    );
\comp_burst.df_start_reg[0]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.df_start_reg[0]_i_7_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_comp_burst.df_start_reg[0]_i_6_CO_UNCONNECTED\(7),
      CO(6) => \comp_burst.df_start_reg[0]_i_6_n_1\,
      CO(5) => \comp_burst.df_start_reg[0]_i_6_n_2\,
      CO(4) => \comp_burst.df_start_reg[0]_i_6_n_3\,
      CO(3) => \comp_burst.df_start_reg[0]_i_6_n_4\,
      CO(2) => \comp_burst.df_start_reg[0]_i_6_n_5\,
      CO(1) => \comp_burst.df_start_reg[0]_i_6_n_6\,
      CO(0) => \comp_burst.df_start_reg[0]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => df_start2(31 downto 24),
      S(7) => \comp_burst.df_start[0]_i_16_n_0\,
      S(6) => \comp_burst.df_start[0]_i_17_n_0\,
      S(5) => \comp_burst.df_start[0]_i_18_n_0\,
      S(4) => \comp_burst.df_start[0]_i_19_n_0\,
      S(3) => \comp_burst.df_start[0]_i_20_n_0\,
      S(2) => \comp_burst.df_start[0]_i_21_n_0\,
      S(1) => \comp_burst.df_start[0]_i_22_n_0\,
      S(0) => \comp_burst.df_start[0]_i_23_n_0\
    );
\comp_burst.df_start_reg[0]_i_7\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.df_start_reg[0]_i_5_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_burst.df_start_reg[0]_i_7_n_0\,
      CO(6) => \comp_burst.df_start_reg[0]_i_7_n_1\,
      CO(5) => \comp_burst.df_start_reg[0]_i_7_n_2\,
      CO(4) => \comp_burst.df_start_reg[0]_i_7_n_3\,
      CO(3) => \comp_burst.df_start_reg[0]_i_7_n_4\,
      CO(2) => \comp_burst.df_start_reg[0]_i_7_n_5\,
      CO(1) => \comp_burst.df_start_reg[0]_i_7_n_6\,
      CO(0) => \comp_burst.df_start_reg[0]_i_7_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => df_start2(23 downto 16),
      S(7) => \comp_burst.df_start[0]_i_24_n_0\,
      S(6) => \comp_burst.df_start[0]_i_25_n_0\,
      S(5) => \comp_burst.df_start[0]_i_26_n_0\,
      S(4) => \comp_burst.df_start[0]_i_27_n_0\,
      S(3) => \comp_burst.df_start[0]_i_28_n_0\,
      S(2) => \comp_burst.df_start[0]_i_29_n_0\,
      S(1) => \comp_burst.df_start[0]_i_30_n_0\,
      S(0) => \comp_burst.df_start[0]_i_31_n_0\
    );
\comp_burst.df_start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \p_0_in1_in__0\(1),
      Q => \comp_burst.df_start_reg_n_0_[1]\,
      R => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \p_0_in1_in__0\(2),
      Q => \comp_burst.df_start_reg_n_0_[2]\,
      R => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \p_0_in1_in__0\(3),
      Q => \comp_burst.df_start_reg_n_0_[3]\,
      R => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \p_0_in1_in__0\(4),
      Q => \comp_burst.df_start_reg_n_0_[4]\,
      R => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \p_0_in1_in__0\(5),
      Q => \comp_burst.df_start_reg_n_0_[5]\,
      R => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \p_0_in1_in__0\(6),
      Q => \comp_burst.df_start_reg_n_0_[6]\,
      R => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \p_0_in1_in__0\(7),
      Q => \comp_burst.df_start_reg_n_0_[7]\,
      R => \comp_burst.df_start[7]_i_1_n_0\
    );
\comp_burst.df_start_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => complete_2,
      D => \comp_burst.df_start[8]_i_1_n_0\,
      Q => \comp_burst.df_start_reg_n_0_[8]\,
      R => '0'
    );
\comp_burst.df_start_reg[8]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.df_start_reg[8]_i_6_n_0\,
      CO(6) => \comp_burst.df_start_reg[8]_i_6_n_1\,
      CO(5) => \comp_burst.df_start_reg[8]_i_6_n_2\,
      CO(4) => \comp_burst.df_start_reg[8]_i_6_n_3\,
      CO(3) => \comp_burst.df_start_reg[8]_i_6_n_4\,
      CO(2) => \comp_burst.df_start_reg[8]_i_6_n_5\,
      CO(1) => \comp_burst.df_start_reg[8]_i_6_n_6\,
      CO(0) => \comp_burst.df_start_reg[8]_i_6_n_7\,
      DI(7 downto 0) => p2_size(9 downto 2),
      O(7 downto 0) => df_start2(7 downto 0),
      S(7) => \comp_burst.df_start[8]_i_13_n_0\,
      S(6) => \comp_burst.df_start[8]_i_14_n_0\,
      S(5) => \comp_burst.df_start[8]_i_15_n_0\,
      S(4) => \comp_burst.df_start[8]_i_16_n_0\,
      S(3) => \comp_burst.df_start[8]_i_17_n_0\,
      S(2) => \comp_burst.df_start[8]_i_18_n_0\,
      S(1) => \comp_burst.df_start[8]_i_19_n_0\,
      S(0) => \comp_burst.df_start[8]_i_20_n_0\
    );
\comp_burst.env_down_adr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      O => env_down_adr0(0)
    );
\comp_burst.env_down_adr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00A9A900FFA9A9"
    )
        port map (
      I0 => curr_size(8),
      I1 => \comp_burst.env_down_adr[10]_i_2_n_0\,
      I2 => curr_size(7),
      I3 => \comp_burst.env_down_adr[10]_i_3_n_0\,
      I4 => load_env,
      I5 => \comp_burst.env_down_adr_reg_n_0_[10]\,
      O => \comp_burst.env_down_adr[10]_i_1_n_0\
    );
\comp_burst.env_down_adr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => curr_size(5),
      I1 => curr_size(3),
      I2 => curr_size(1),
      I3 => curr_size(2),
      I4 => curr_size(4),
      I5 => curr_size(6),
      O => \comp_burst.env_down_adr[10]_i_2_n_0\
    );
\comp_burst.env_down_adr[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[8]\,
      I1 => \comp_burst.env_down_adr_reg_n_0_[6]\,
      I2 => \comp_burst.env_down_adr[7]_i_2_n_0\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[7]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[9]\,
      O => \comp_burst.env_down_adr[10]_i_3_n_0\
    );
\comp_burst.env_down_adr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I1 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      O => env_down_adr0(1)
    );
\comp_burst.env_down_adr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAA03AA"
    )
        port map (
      I0 => curr_size(0),
      I1 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I2 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I3 => load_env,
      I4 => \comp_burst.env_down_adr_reg_n_0_[2]\,
      O => \comp_burst.env_down_adr[2]_i_1_n_0\
    );
\comp_burst.env_down_adr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC000355555555"
    )
        port map (
      I0 => curr_size(1),
      I1 => \comp_burst.env_down_adr_reg_n_0_[2]\,
      I2 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[3]\,
      I5 => load_env,
      O => \comp_burst.env_down_adr[3]_i_1_n_0\
    );
\comp_burst.env_down_adr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9999F00F"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[4]\,
      I1 => \comp_burst.env_down_adr[4]_i_2_n_0\,
      I2 => curr_size(2),
      I3 => curr_size(1),
      I4 => load_env,
      O => \comp_burst.env_down_adr[4]_i_1_n_0\
    );
\comp_burst.env_down_adr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[2]\,
      I1 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I2 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[3]\,
      O => \comp_burst.env_down_adr[4]_i_2_n_0\
    );
\comp_burst.env_down_adr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFA9A9A9A9"
    )
        port map (
      I0 => curr_size(3),
      I1 => curr_size(1),
      I2 => curr_size(2),
      I3 => \comp_burst.env_down_adr[5]_i_2_n_0\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[5]\,
      I5 => load_env,
      O => \comp_burst.env_down_adr[5]_i_1_n_0\
    );
\comp_burst.env_down_adr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[3]\,
      I1 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I2 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[2]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[4]\,
      O => \comp_burst.env_down_adr[5]_i_2_n_0\
    );
\comp_burst.env_down_adr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999F0F0F00F"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[6]\,
      I1 => \comp_burst.env_down_adr[7]_i_2_n_0\,
      I2 => curr_size(4),
      I3 => \comp_burst.env_down_adr[6]_i_2_n_0\,
      I4 => curr_size(3),
      I5 => load_env,
      O => \comp_burst.env_down_adr[6]_i_1_n_0\
    );
\comp_burst.env_down_adr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => curr_size(1),
      I1 => curr_size(2),
      O => \comp_burst.env_down_adr[6]_i_2_n_0\
    );
\comp_burst.env_down_adr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0000F99999999"
    )
        port map (
      I0 => curr_size(5),
      I1 => \comp_burst.env_down_adr[8]_i_2_n_0\,
      I2 => \comp_burst.env_down_adr_reg_n_0_[6]\,
      I3 => \comp_burst.env_down_adr[7]_i_2_n_0\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[7]\,
      I5 => load_env,
      O => \comp_burst.env_down_adr[7]_i_1_n_0\
    );
\comp_burst.env_down_adr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[4]\,
      I1 => \comp_burst.env_down_adr_reg_n_0_[2]\,
      I2 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[3]\,
      I5 => \comp_burst.env_down_adr_reg_n_0_[5]\,
      O => \comp_burst.env_down_adr[7]_i_2_n_0\
    );
\comp_burst.env_down_adr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999F0F0F00F"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[8]\,
      I1 => \comp_burst.env_down_adr[9]_i_2_n_0\,
      I2 => curr_size(6),
      I3 => \comp_burst.env_down_adr[8]_i_2_n_0\,
      I4 => curr_size(5),
      I5 => load_env,
      O => \comp_burst.env_down_adr[8]_i_1_n_0\
    );
\comp_burst.env_down_adr[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => curr_size(3),
      I1 => curr_size(1),
      I2 => curr_size(2),
      I3 => curr_size(4),
      O => \comp_burst.env_down_adr[8]_i_2_n_0\
    );
\comp_burst.env_down_adr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0000F99999999"
    )
        port map (
      I0 => \comp_burst.env_down_adr[10]_i_2_n_0\,
      I1 => curr_size(7),
      I2 => \comp_burst.env_down_adr_reg_n_0_[8]\,
      I3 => \comp_burst.env_down_adr[9]_i_2_n_0\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[9]\,
      I5 => load_env,
      O => \comp_burst.env_down_adr[9]_i_1_n_0\
    );
\comp_burst.env_down_adr[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[6]\,
      I1 => \comp_burst.env_down_adr[7]_i_2_n_0\,
      I2 => \comp_burst.env_down_adr_reg_n_0_[7]\,
      O => \comp_burst.env_down_adr[9]_i_2_n_0\
    );
\comp_burst.env_down_adr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => env_down_adr0(0),
      Q => \comp_burst.env_down_adr_reg_n_0_[0]\,
      S => env_up_adr(0)
    );
\comp_burst.env_down_adr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[10]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[10]\,
      R => '0'
    );
\comp_burst.env_down_adr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => env_down_adr0(1),
      Q => \comp_burst.env_down_adr_reg_n_0_[1]\,
      S => env_up_adr(0)
    );
\comp_burst.env_down_adr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[2]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[2]\,
      R => '0'
    );
\comp_burst.env_down_adr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[3]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[3]\,
      R => '0'
    );
\comp_burst.env_down_adr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[4]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[4]\,
      R => '0'
    );
\comp_burst.env_down_adr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[5]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[5]\,
      R => '0'
    );
\comp_burst.env_down_adr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[6]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[6]\,
      R => '0'
    );
\comp_burst.env_down_adr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[7]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[7]\,
      R => '0'
    );
\comp_burst.env_down_adr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[8]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[8]\,
      R => '0'
    );
\comp_burst.env_down_adr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr[9]_i_1_n_0\,
      Q => \comp_burst.env_down_adr_reg_n_0_[9]\,
      R => '0'
    );
\comp_burst.env_down_ind_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[0]\,
      Q => env_down_ind(0),
      R => '0'
    );
\comp_burst.env_down_ind_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[10]\,
      Q => env_down_ind(10),
      R => '0'
    );
\comp_burst.env_down_ind_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[1]\,
      Q => env_down_ind(1),
      R => '0'
    );
\comp_burst.env_down_ind_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[2]\,
      Q => env_down_ind(2),
      R => '0'
    );
\comp_burst.env_down_ind_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[3]\,
      Q => env_down_ind(3),
      R => '0'
    );
\comp_burst.env_down_ind_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[4]\,
      Q => env_down_ind(4),
      R => '0'
    );
\comp_burst.env_down_ind_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[5]\,
      Q => env_down_ind(5),
      R => '0'
    );
\comp_burst.env_down_ind_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[6]\,
      Q => env_down_ind(6),
      R => '0'
    );
\comp_burst.env_down_ind_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[7]\,
      Q => env_down_ind(7),
      R => '0'
    );
\comp_burst.env_down_ind_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[8]\,
      Q => env_down_ind(8),
      R => '0'
    );
\comp_burst.env_down_ind_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_adr_reg_n_0_[9]\,
      Q => env_down_ind(9),
      R => '0'
    );
\comp_burst.env_down_max_ind[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => scan_start,
      I1 => comp_env,
      I2 => \comp_burst.env_down_max_val_reg[15]_i_2_n_0\,
      O => \comp_burst.env_down_max_ind[10]_i_1_n_0\
    );
\comp_burst.env_down_max_ind_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(0),
      Q => env_down_max_ind(0),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(10),
      Q => env_down_max_ind(10),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(1),
      Q => env_down_max_ind(1),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(2),
      Q => env_down_max_ind(2),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(3),
      Q => env_down_max_ind(3),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(4),
      Q => env_down_max_ind(4),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(5),
      Q => env_down_max_ind(5),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(6),
      Q => env_down_max_ind(6),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(7),
      Q => env_down_max_ind(7),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(8),
      Q => env_down_max_ind(8),
      R => '0'
    );
\comp_burst.env_down_max_ind_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_ind[10]_i_1_n_0\,
      D => env_down_ind(9),
      Q => env_down_max_ind(9),
      R => '0'
    );
\comp_burst.env_down_max_val[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \comp_burst.env_down_max_val_reg[15]_i_2_n_0\,
      I1 => scan_start,
      O => \comp_burst.env_down_max_val[15]_i_1_n_0\
    );
\comp_burst.env_down_max_val[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(1),
      I1 => env_down_max_val(1),
      I2 => env_down_val(0),
      I3 => env_down_max_val(0),
      O => \comp_burst.env_down_max_val[15]_i_10_n_0\
    );
\comp_burst.env_down_max_val[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_max_val(15),
      I1 => env_down_val(15),
      I2 => env_down_max_val(14),
      I3 => env_down_val(14),
      O => \comp_burst.env_down_max_val[15]_i_11_n_0\
    );
\comp_burst.env_down_max_val[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_max_val(13),
      I1 => env_down_val(13),
      I2 => env_down_max_val(12),
      I3 => env_down_val(12),
      O => \comp_burst.env_down_max_val[15]_i_12_n_0\
    );
\comp_burst.env_down_max_val[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_max_val(11),
      I1 => env_down_val(11),
      I2 => env_down_max_val(10),
      I3 => env_down_val(10),
      O => \comp_burst.env_down_max_val[15]_i_13_n_0\
    );
\comp_burst.env_down_max_val[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_max_val(9),
      I1 => env_down_val(9),
      I2 => env_down_max_val(8),
      I3 => env_down_val(8),
      O => \comp_burst.env_down_max_val[15]_i_14_n_0\
    );
\comp_burst.env_down_max_val[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_max_val(7),
      I1 => env_down_val(7),
      I2 => env_down_max_val(6),
      I3 => env_down_val(6),
      O => \comp_burst.env_down_max_val[15]_i_15_n_0\
    );
\comp_burst.env_down_max_val[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_max_val(5),
      I1 => env_down_val(5),
      I2 => env_down_max_val(4),
      I3 => env_down_val(4),
      O => \comp_burst.env_down_max_val[15]_i_16_n_0\
    );
\comp_burst.env_down_max_val[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_max_val(3),
      I1 => env_down_val(3),
      I2 => env_down_max_val(2),
      I3 => env_down_val(2),
      O => \comp_burst.env_down_max_val[15]_i_17_n_0\
    );
\comp_burst.env_down_max_val[15]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_max_val(1),
      I1 => env_down_val(1),
      I2 => env_down_max_val(0),
      I3 => env_down_val(0),
      O => \comp_burst.env_down_max_val[15]_i_18_n_0\
    );
\comp_burst.env_down_max_val[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(15),
      I1 => env_down_max_val(15),
      I2 => env_down_val(14),
      I3 => env_down_max_val(14),
      O => \comp_burst.env_down_max_val[15]_i_3_n_0\
    );
\comp_burst.env_down_max_val[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(13),
      I1 => env_down_max_val(13),
      I2 => env_down_val(12),
      I3 => env_down_max_val(12),
      O => \comp_burst.env_down_max_val[15]_i_4_n_0\
    );
\comp_burst.env_down_max_val[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(11),
      I1 => env_down_max_val(11),
      I2 => env_down_val(10),
      I3 => env_down_max_val(10),
      O => \comp_burst.env_down_max_val[15]_i_5_n_0\
    );
\comp_burst.env_down_max_val[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(9),
      I1 => env_down_max_val(9),
      I2 => env_down_val(8),
      I3 => env_down_max_val(8),
      O => \comp_burst.env_down_max_val[15]_i_6_n_0\
    );
\comp_burst.env_down_max_val[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(7),
      I1 => env_down_max_val(7),
      I2 => env_down_val(6),
      I3 => env_down_max_val(6),
      O => \comp_burst.env_down_max_val[15]_i_7_n_0\
    );
\comp_burst.env_down_max_val[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(5),
      I1 => env_down_max_val(5),
      I2 => env_down_val(4),
      I3 => env_down_max_val(4),
      O => \comp_burst.env_down_max_val[15]_i_8_n_0\
    );
\comp_burst.env_down_max_val[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(3),
      I1 => env_down_max_val(3),
      I2 => env_down_val(2),
      I3 => env_down_max_val(2),
      O => \comp_burst.env_down_max_val[15]_i_9_n_0\
    );
\comp_burst.env_down_max_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(0),
      Q => env_down_max_val(0),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(10),
      Q => env_down_max_val(10),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(11),
      Q => env_down_max_val(11),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(12),
      Q => env_down_max_val(12),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(13),
      Q => env_down_max_val(13),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(14),
      Q => env_down_max_val(14),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(15),
      Q => env_down_max_val(15),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.env_down_max_val_reg[15]_i_2_n_0\,
      CO(6) => \comp_burst.env_down_max_val_reg[15]_i_2_n_1\,
      CO(5) => \comp_burst.env_down_max_val_reg[15]_i_2_n_2\,
      CO(4) => \comp_burst.env_down_max_val_reg[15]_i_2_n_3\,
      CO(3) => \comp_burst.env_down_max_val_reg[15]_i_2_n_4\,
      CO(2) => \comp_burst.env_down_max_val_reg[15]_i_2_n_5\,
      CO(1) => \comp_burst.env_down_max_val_reg[15]_i_2_n_6\,
      CO(0) => \comp_burst.env_down_max_val_reg[15]_i_2_n_7\,
      DI(7) => \comp_burst.env_down_max_val[15]_i_3_n_0\,
      DI(6) => \comp_burst.env_down_max_val[15]_i_4_n_0\,
      DI(5) => \comp_burst.env_down_max_val[15]_i_5_n_0\,
      DI(4) => \comp_burst.env_down_max_val[15]_i_6_n_0\,
      DI(3) => \comp_burst.env_down_max_val[15]_i_7_n_0\,
      DI(2) => \comp_burst.env_down_max_val[15]_i_8_n_0\,
      DI(1) => \comp_burst.env_down_max_val[15]_i_9_n_0\,
      DI(0) => \comp_burst.env_down_max_val[15]_i_10_n_0\,
      O(7 downto 0) => \NLW_comp_burst.env_down_max_val_reg[15]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \comp_burst.env_down_max_val[15]_i_11_n_0\,
      S(6) => \comp_burst.env_down_max_val[15]_i_12_n_0\,
      S(5) => \comp_burst.env_down_max_val[15]_i_13_n_0\,
      S(4) => \comp_burst.env_down_max_val[15]_i_14_n_0\,
      S(3) => \comp_burst.env_down_max_val[15]_i_15_n_0\,
      S(2) => \comp_burst.env_down_max_val[15]_i_16_n_0\,
      S(1) => \comp_burst.env_down_max_val[15]_i_17_n_0\,
      S(0) => \comp_burst.env_down_max_val[15]_i_18_n_0\
    );
\comp_burst.env_down_max_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(1),
      Q => env_down_max_val(1),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(2),
      Q => env_down_max_val(2),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(3),
      Q => env_down_max_val(3),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(4),
      Q => env_down_max_val(4),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(5),
      Q => env_down_max_val(5),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(6),
      Q => env_down_max_val(6),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(7),
      Q => env_down_max_val(7),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(8),
      Q => env_down_max_val(8),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_max_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_down_max_val[15]_i_1_n_0\,
      D => env_down_val(9),
      Q => env_down_max_val(9),
      R => env_up_max_val(0)
    );
\comp_burst.env_down_ptr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \comp_burst.env_down_ptr_reg\(0),
      I1 => load_env,
      I2 => curr_size(0),
      O => \p_0_in__0\(0)
    );
\comp_burst.env_down_ptr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D11D"
    )
        port map (
      I0 => curr_size(1),
      I1 => load_env,
      I2 => \comp_burst.env_down_ptr_reg\(0),
      I3 => \comp_burst.env_down_ptr_reg\(1),
      O => \p_0_in__0\(1)
    );
\comp_burst.env_down_ptr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A9A9FF0000FF"
    )
        port map (
      I0 => \comp_burst.env_down_ptr_reg\(2),
      I1 => \comp_burst.env_down_ptr_reg\(1),
      I2 => \comp_burst.env_down_ptr_reg\(0),
      I3 => curr_size(2),
      I4 => curr_size(1),
      I5 => load_env,
      O => \p_0_in__0\(2)
    );
\comp_burst.env_down_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFA9A9A9A9"
    )
        port map (
      I0 => curr_size(3),
      I1 => curr_size(1),
      I2 => curr_size(2),
      I3 => \comp_burst.env_down_ptr[3]_i_2_n_0\,
      I4 => \comp_burst.env_down_ptr_reg\(3),
      I5 => load_env,
      O => \p_0_in__0\(3)
    );
\comp_burst.env_down_ptr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \comp_burst.env_down_ptr_reg\(1),
      I1 => \comp_burst.env_down_ptr_reg\(0),
      I2 => \comp_burst.env_down_ptr_reg\(2),
      O => \comp_burst.env_down_ptr[3]_i_2_n_0\
    );
\comp_burst.env_down_ptr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999F0F0F00F"
    )
        port map (
      I0 => \comp_burst.env_down_ptr_reg\(4),
      I1 => \comp_burst.env_down_ptr[5]_i_2_n_0\,
      I2 => curr_size(4),
      I3 => \comp_burst.env_down_adr[6]_i_2_n_0\,
      I4 => curr_size(3),
      I5 => load_env,
      O => \p_0_in__0\(4)
    );
\comp_burst.env_down_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0000F99999999"
    )
        port map (
      I0 => curr_size(5),
      I1 => \comp_burst.env_down_adr[8]_i_2_n_0\,
      I2 => \comp_burst.env_down_ptr_reg\(4),
      I3 => \comp_burst.env_down_ptr[5]_i_2_n_0\,
      I4 => \comp_burst.env_down_ptr_reg\(5),
      I5 => load_env,
      O => \p_0_in__0\(5)
    );
\comp_burst.env_down_ptr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \comp_burst.env_down_ptr_reg\(2),
      I1 => \comp_burst.env_down_ptr_reg\(0),
      I2 => \comp_burst.env_down_ptr_reg\(1),
      I3 => \comp_burst.env_down_ptr_reg\(3),
      O => \comp_burst.env_down_ptr[5]_i_2_n_0\
    );
\comp_burst.env_down_ptr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999F0F0F00F"
    )
        port map (
      I0 => \comp_burst.env_down_ptr_reg\(6),
      I1 => \comp_burst.env_down_ptr[7]_i_2_n_0\,
      I2 => curr_size(6),
      I3 => \comp_burst.env_down_adr[8]_i_2_n_0\,
      I4 => curr_size(5),
      I5 => load_env,
      O => \p_0_in__0\(6)
    );
\comp_burst.env_down_ptr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF09999000F9999"
    )
        port map (
      I0 => \comp_burst.env_down_adr[10]_i_2_n_0\,
      I1 => curr_size(7),
      I2 => \comp_burst.env_down_ptr[7]_i_2_n_0\,
      I3 => \comp_burst.env_down_ptr_reg\(6),
      I4 => load_env,
      I5 => \comp_burst.env_down_ptr_reg\(7),
      O => \p_0_in__0\(7)
    );
\comp_burst.env_down_ptr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \comp_burst.env_down_ptr_reg\(4),
      I1 => \comp_burst.env_down_ptr_reg\(2),
      I2 => \comp_burst.env_down_ptr_reg\(0),
      I3 => \comp_burst.env_down_ptr_reg\(1),
      I4 => \comp_burst.env_down_ptr_reg\(3),
      I5 => \comp_burst.env_down_ptr_reg\(5),
      O => \comp_burst.env_down_ptr[7]_i_2_n_0\
    );
\comp_burst.env_down_ptr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I1 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I2 => load_env,
      O => env_down_ptr0
    );
\comp_burst.env_down_ptr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00A9A900FFA9A9"
    )
        port map (
      I0 => curr_size(8),
      I1 => \comp_burst.env_down_adr[10]_i_2_n_0\,
      I2 => curr_size(7),
      I3 => \comp_burst.env_down_ptr[8]_i_3_n_0\,
      I4 => load_env,
      I5 => \comp_burst.env_down_ptr_reg\(8),
      O => \p_0_in__0\(8)
    );
\comp_burst.env_down_ptr[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \comp_burst.env_down_ptr_reg\(6),
      I1 => \comp_burst.env_down_ptr[7]_i_2_n_0\,
      I2 => \comp_burst.env_down_ptr_reg\(7),
      O => \comp_burst.env_down_ptr[8]_i_3_n_0\
    );
\comp_burst.env_down_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(0),
      Q => \comp_burst.env_down_ptr_reg\(0),
      R => '0'
    );
\comp_burst.env_down_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(1),
      Q => \comp_burst.env_down_ptr_reg\(1),
      R => '0'
    );
\comp_burst.env_down_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(2),
      Q => \comp_burst.env_down_ptr_reg\(2),
      R => '0'
    );
\comp_burst.env_down_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(3),
      Q => \comp_burst.env_down_ptr_reg\(3),
      R => '0'
    );
\comp_burst.env_down_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(4),
      Q => \comp_burst.env_down_ptr_reg\(4),
      R => '0'
    );
\comp_burst.env_down_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(5),
      Q => \comp_burst.env_down_ptr_reg\(5),
      R => '0'
    );
\comp_burst.env_down_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(6),
      Q => \comp_burst.env_down_ptr_reg\(6),
      R => '0'
    );
\comp_burst.env_down_ptr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(7),
      Q => \comp_burst.env_down_ptr_reg\(7),
      R => '0'
    );
\comp_burst.env_down_ptr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_down_ptr0,
      D => \p_0_in__0\(8),
      Q => \comp_burst.env_down_ptr_reg\(8),
      R => '0'
    );
\comp_burst.env_down_val[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(0),
      I1 => env_down_3(0),
      I2 => \comp_burst.mem_env_down_reg_n_99\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_83\,
      O => \comp_burst.env_down_val[0]_i_1_n_0\
    );
\comp_burst.env_down_val[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(10),
      I1 => env_down_3(10),
      I2 => \comp_burst.mem_env_down_reg_n_89\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_73\,
      O => \comp_burst.env_down_val[10]_i_1_n_0\
    );
\comp_burst.env_down_val[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(11),
      I1 => env_down_3(11),
      I2 => \comp_burst.mem_env_down_reg_n_88\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_72\,
      O => \comp_burst.env_down_val[11]_i_1_n_0\
    );
\comp_burst.env_down_val[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(12),
      I1 => env_down_3(12),
      I2 => \comp_burst.mem_env_down_reg_n_87\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_71\,
      O => \comp_burst.env_down_val[12]_i_1_n_0\
    );
\comp_burst.env_down_val[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(13),
      I1 => env_down_3(13),
      I2 => \comp_burst.mem_env_down_reg_n_86\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_70\,
      O => \comp_burst.env_down_val[13]_i_1_n_0\
    );
\comp_burst.env_down_val[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(14),
      I1 => env_down_3(14),
      I2 => \comp_burst.mem_env_down_reg_n_85\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_69\,
      O => \comp_burst.env_down_val[14]_i_1_n_0\
    );
\comp_burst.env_down_val[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(15),
      I1 => env_down_3(15),
      I2 => \comp_burst.mem_env_down_reg_n_84\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_68\,
      O => \comp_burst.env_down_val[15]_i_1_n_0\
    );
\comp_burst.env_down_val[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(1),
      I1 => env_down_3(1),
      I2 => \comp_burst.mem_env_down_reg_n_98\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_82\,
      O => \comp_burst.env_down_val[1]_i_1_n_0\
    );
\comp_burst.env_down_val[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(2),
      I1 => env_down_3(2),
      I2 => \comp_burst.mem_env_down_reg_n_97\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_81\,
      O => \comp_burst.env_down_val[2]_i_1_n_0\
    );
\comp_burst.env_down_val[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(3),
      I1 => env_down_3(3),
      I2 => \comp_burst.mem_env_down_reg_n_96\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_80\,
      O => \comp_burst.env_down_val[3]_i_1_n_0\
    );
\comp_burst.env_down_val[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(4),
      I1 => env_down_3(4),
      I2 => \comp_burst.mem_env_down_reg_n_95\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_79\,
      O => \comp_burst.env_down_val[4]_i_1_n_0\
    );
\comp_burst.env_down_val[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(5),
      I1 => env_down_3(5),
      I2 => \comp_burst.mem_env_down_reg_n_94\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_78\,
      O => \comp_burst.env_down_val[5]_i_1_n_0\
    );
\comp_burst.env_down_val[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(6),
      I1 => env_down_3(6),
      I2 => \comp_burst.mem_env_down_reg_n_93\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_77\,
      O => \comp_burst.env_down_val[6]_i_1_n_0\
    );
\comp_burst.env_down_val[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(7),
      I1 => env_down_3(7),
      I2 => \comp_burst.mem_env_down_reg_n_92\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_76\,
      O => \comp_burst.env_down_val[7]_i_1_n_0\
    );
\comp_burst.env_down_val[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(8),
      I1 => env_down_3(8),
      I2 => \comp_burst.mem_env_down_reg_n_91\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_75\,
      O => \comp_burst.env_down_val[8]_i_1_n_0\
    );
\comp_burst.env_down_val[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => env_down_2(9),
      I1 => env_down_3(9),
      I2 => \comp_burst.mem_env_down_reg_n_90\,
      I3 => \comp_burst.env_down_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_down_adr_reg_n_0_[0]\,
      I5 => \comp_burst.mem_env_down_reg_n_74\,
      O => \comp_burst.env_down_val[9]_i_1_n_0\
    );
\comp_burst.env_down_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[0]_i_1_n_0\,
      Q => env_down_val(0),
      R => '0'
    );
\comp_burst.env_down_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[10]_i_1_n_0\,
      Q => env_down_val(10),
      R => '0'
    );
\comp_burst.env_down_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[11]_i_1_n_0\,
      Q => env_down_val(11),
      R => '0'
    );
\comp_burst.env_down_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[12]_i_1_n_0\,
      Q => env_down_val(12),
      R => '0'
    );
\comp_burst.env_down_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[13]_i_1_n_0\,
      Q => env_down_val(13),
      R => '0'
    );
\comp_burst.env_down_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[14]_i_1_n_0\,
      Q => env_down_val(14),
      R => '0'
    );
\comp_burst.env_down_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[15]_i_1_n_0\,
      Q => env_down_val(15),
      R => '0'
    );
\comp_burst.env_down_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[1]_i_1_n_0\,
      Q => env_down_val(1),
      R => '0'
    );
\comp_burst.env_down_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[2]_i_1_n_0\,
      Q => env_down_val(2),
      R => '0'
    );
\comp_burst.env_down_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[3]_i_1_n_0\,
      Q => env_down_val(3),
      R => '0'
    );
\comp_burst.env_down_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[4]_i_1_n_0\,
      Q => env_down_val(4),
      R => '0'
    );
\comp_burst.env_down_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[5]_i_1_n_0\,
      Q => env_down_val(5),
      R => '0'
    );
\comp_burst.env_down_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[6]_i_1_n_0\,
      Q => env_down_val(6),
      R => '0'
    );
\comp_burst.env_down_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[7]_i_1_n_0\,
      Q => env_down_val(7),
      R => '0'
    );
\comp_burst.env_down_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[8]_i_1_n_0\,
      Q => env_down_val(8),
      R => '0'
    );
\comp_burst.env_down_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_down_val[9]_i_1_n_0\,
      Q => env_down_val(9),
      R => '0'
    );
\comp_burst.env_end_ind[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => run_env_end,
      I1 => \comp_burst.env_end_ind_reg[10]_i_2_n_0\,
      I2 => scan_start,
      I3 => comp_env,
      O => \comp_burst.env_end_ind[10]_i_1_n_0\
    );
\comp_burst.env_end_ind[10]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(1),
      I1 => min_env(1),
      I2 => env_down_val(0),
      I3 => min_env(0),
      O => \comp_burst.env_end_ind[10]_i_10_n_0\
    );
\comp_burst.env_end_ind[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_val(15),
      I1 => min_env(15),
      I2 => env_down_val(14),
      I3 => min_env(14),
      O => \comp_burst.env_end_ind[10]_i_11_n_0\
    );
\comp_burst.env_end_ind[10]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_val(13),
      I1 => min_env(13),
      I2 => env_down_val(12),
      I3 => min_env(12),
      O => \comp_burst.env_end_ind[10]_i_12_n_0\
    );
\comp_burst.env_end_ind[10]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_val(11),
      I1 => min_env(11),
      I2 => env_down_val(10),
      I3 => min_env(10),
      O => \comp_burst.env_end_ind[10]_i_13_n_0\
    );
\comp_burst.env_end_ind[10]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_val(9),
      I1 => min_env(9),
      I2 => env_down_val(8),
      I3 => min_env(8),
      O => \comp_burst.env_end_ind[10]_i_14_n_0\
    );
\comp_burst.env_end_ind[10]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_val(7),
      I1 => min_env(7),
      I2 => env_down_val(6),
      I3 => min_env(6),
      O => \comp_burst.env_end_ind[10]_i_15_n_0\
    );
\comp_burst.env_end_ind[10]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_val(5),
      I1 => min_env(5),
      I2 => env_down_val(4),
      I3 => min_env(4),
      O => \comp_burst.env_end_ind[10]_i_16_n_0\
    );
\comp_burst.env_end_ind[10]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_val(3),
      I1 => min_env(3),
      I2 => env_down_val(2),
      I3 => min_env(2),
      O => \comp_burst.env_end_ind[10]_i_17_n_0\
    );
\comp_burst.env_end_ind[10]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => env_down_val(1),
      I1 => min_env(1),
      I2 => env_down_val(0),
      I3 => min_env(0),
      O => \comp_burst.env_end_ind[10]_i_18_n_0\
    );
\comp_burst.env_end_ind[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(15),
      I1 => min_env(15),
      I2 => env_down_val(14),
      I3 => min_env(14),
      O => \comp_burst.env_end_ind[10]_i_3_n_0\
    );
\comp_burst.env_end_ind[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(13),
      I1 => min_env(13),
      I2 => env_down_val(12),
      I3 => min_env(12),
      O => \comp_burst.env_end_ind[10]_i_4_n_0\
    );
\comp_burst.env_end_ind[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(11),
      I1 => min_env(11),
      I2 => env_down_val(10),
      I3 => min_env(10),
      O => \comp_burst.env_end_ind[10]_i_5_n_0\
    );
\comp_burst.env_end_ind[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(9),
      I1 => min_env(9),
      I2 => env_down_val(8),
      I3 => min_env(8),
      O => \comp_burst.env_end_ind[10]_i_6_n_0\
    );
\comp_burst.env_end_ind[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(7),
      I1 => min_env(7),
      I2 => env_down_val(6),
      I3 => min_env(6),
      O => \comp_burst.env_end_ind[10]_i_7_n_0\
    );
\comp_burst.env_end_ind[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(5),
      I1 => min_env(5),
      I2 => env_down_val(4),
      I3 => min_env(4),
      O => \comp_burst.env_end_ind[10]_i_8_n_0\
    );
\comp_burst.env_end_ind[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_down_val(3),
      I1 => min_env(3),
      I2 => env_down_val(2),
      I3 => min_env(2),
      O => \comp_burst.env_end_ind[10]_i_9_n_0\
    );
\comp_burst.env_end_ind_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(0),
      Q => env_end_ind(0),
      R => '0'
    );
\comp_burst.env_end_ind_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(10),
      Q => env_end_ind(10),
      R => '0'
    );
\comp_burst.env_end_ind_reg[10]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \comp_burst.env_end_ind_reg[10]_i_2_n_0\,
      CO(6) => \comp_burst.env_end_ind_reg[10]_i_2_n_1\,
      CO(5) => \comp_burst.env_end_ind_reg[10]_i_2_n_2\,
      CO(4) => \comp_burst.env_end_ind_reg[10]_i_2_n_3\,
      CO(3) => \comp_burst.env_end_ind_reg[10]_i_2_n_4\,
      CO(2) => \comp_burst.env_end_ind_reg[10]_i_2_n_5\,
      CO(1) => \comp_burst.env_end_ind_reg[10]_i_2_n_6\,
      CO(0) => \comp_burst.env_end_ind_reg[10]_i_2_n_7\,
      DI(7) => \comp_burst.env_end_ind[10]_i_3_n_0\,
      DI(6) => \comp_burst.env_end_ind[10]_i_4_n_0\,
      DI(5) => \comp_burst.env_end_ind[10]_i_5_n_0\,
      DI(4) => \comp_burst.env_end_ind[10]_i_6_n_0\,
      DI(3) => \comp_burst.env_end_ind[10]_i_7_n_0\,
      DI(2) => \comp_burst.env_end_ind[10]_i_8_n_0\,
      DI(1) => \comp_burst.env_end_ind[10]_i_9_n_0\,
      DI(0) => \comp_burst.env_end_ind[10]_i_10_n_0\,
      O(7 downto 0) => \NLW_comp_burst.env_end_ind_reg[10]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \comp_burst.env_end_ind[10]_i_11_n_0\,
      S(6) => \comp_burst.env_end_ind[10]_i_12_n_0\,
      S(5) => \comp_burst.env_end_ind[10]_i_13_n_0\,
      S(4) => \comp_burst.env_end_ind[10]_i_14_n_0\,
      S(3) => \comp_burst.env_end_ind[10]_i_15_n_0\,
      S(2) => \comp_burst.env_end_ind[10]_i_16_n_0\,
      S(1) => \comp_burst.env_end_ind[10]_i_17_n_0\,
      S(0) => \comp_burst.env_end_ind[10]_i_18_n_0\
    );
\comp_burst.env_end_ind_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(1),
      Q => env_end_ind(1),
      R => '0'
    );
\comp_burst.env_end_ind_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(2),
      Q => env_end_ind(2),
      R => '0'
    );
\comp_burst.env_end_ind_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(3),
      Q => env_end_ind(3),
      R => '0'
    );
\comp_burst.env_end_ind_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(4),
      Q => env_end_ind(4),
      R => '0'
    );
\comp_burst.env_end_ind_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(5),
      Q => env_end_ind(5),
      R => '0'
    );
\comp_burst.env_end_ind_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(6),
      Q => env_end_ind(6),
      R => '0'
    );
\comp_burst.env_end_ind_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(7),
      Q => env_end_ind(7),
      R => '0'
    );
\comp_burst.env_end_ind_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(8),
      Q => env_end_ind(8),
      R => '0'
    );
\comp_burst.env_end_ind_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_end_ind[10]_i_1_n_0\,
      D => env_down_ind(9),
      Q => env_end_ind(9),
      R => '0'
    );
\comp_burst.env_in[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => filling,
      I1 => rt_data_empty,
      O => env_in0
    );
\comp_burst.env_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(0),
      Q => env_in(0),
      R => '0'
    );
\comp_burst.env_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(10),
      Q => env_in(10),
      R => '0'
    );
\comp_burst.env_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(11),
      Q => env_in(11),
      R => '0'
    );
\comp_burst.env_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(12),
      Q => env_in(12),
      R => '0'
    );
\comp_burst.env_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(13),
      Q => env_in(13),
      R => '0'
    );
\comp_burst.env_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(14),
      Q => env_in(14),
      R => '0'
    );
\comp_burst.env_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(15),
      Q => env_in(15),
      R => '0'
    );
\comp_burst.env_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(16),
      Q => env_in(16),
      R => '0'
    );
\comp_burst.env_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(17),
      Q => env_in(17),
      R => '0'
    );
\comp_burst.env_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(18),
      Q => env_in(18),
      R => '0'
    );
\comp_burst.env_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(19),
      Q => env_in(19),
      R => '0'
    );
\comp_burst.env_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(1),
      Q => env_in(1),
      R => '0'
    );
\comp_burst.env_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(20),
      Q => env_in(20),
      R => '0'
    );
\comp_burst.env_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(21),
      Q => env_in(21),
      R => '0'
    );
\comp_burst.env_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(22),
      Q => env_in(22),
      R => '0'
    );
\comp_burst.env_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(23),
      Q => env_in(23),
      R => '0'
    );
\comp_burst.env_in_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(24),
      Q => env_in(24),
      R => '0'
    );
\comp_burst.env_in_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(25),
      Q => env_in(25),
      R => '0'
    );
\comp_burst.env_in_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(26),
      Q => env_in(26),
      R => '0'
    );
\comp_burst.env_in_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(27),
      Q => env_in(27),
      R => '0'
    );
\comp_burst.env_in_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(28),
      Q => env_in(28),
      R => '0'
    );
\comp_burst.env_in_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(29),
      Q => env_in(29),
      R => '0'
    );
\comp_burst.env_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(2),
      Q => env_in(2),
      R => '0'
    );
\comp_burst.env_in_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(30),
      Q => env_in(30),
      R => '0'
    );
\comp_burst.env_in_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(31),
      Q => env_in(31),
      R => '0'
    );
\comp_burst.env_in_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(32),
      Q => env_in(32),
      R => '0'
    );
\comp_burst.env_in_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(33),
      Q => env_in(33),
      R => '0'
    );
\comp_burst.env_in_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(34),
      Q => env_in(34),
      R => '0'
    );
\comp_burst.env_in_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(35),
      Q => env_in(35),
      R => '0'
    );
\comp_burst.env_in_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(36),
      Q => env_in(36),
      R => '0'
    );
\comp_burst.env_in_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(37),
      Q => env_in(37),
      R => '0'
    );
\comp_burst.env_in_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(38),
      Q => env_in(38),
      R => '0'
    );
\comp_burst.env_in_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(39),
      Q => env_in(39),
      R => '0'
    );
\comp_burst.env_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(3),
      Q => env_in(3),
      R => '0'
    );
\comp_burst.env_in_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(40),
      Q => env_in(40),
      R => '0'
    );
\comp_burst.env_in_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(41),
      Q => env_in(41),
      R => '0'
    );
\comp_burst.env_in_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(42),
      Q => env_in(42),
      R => '0'
    );
\comp_burst.env_in_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(43),
      Q => env_in(43),
      R => '0'
    );
\comp_burst.env_in_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(44),
      Q => env_in(44),
      R => '0'
    );
\comp_burst.env_in_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(45),
      Q => env_in(45),
      R => '0'
    );
\comp_burst.env_in_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(46),
      Q => env_in(46),
      R => '0'
    );
\comp_burst.env_in_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(47),
      Q => env_in(47),
      R => '0'
    );
\comp_burst.env_in_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(48),
      Q => env_in(48),
      R => '0'
    );
\comp_burst.env_in_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(49),
      Q => env_in(49),
      R => '0'
    );
\comp_burst.env_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(4),
      Q => env_in(4),
      R => '0'
    );
\comp_burst.env_in_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(50),
      Q => env_in(50),
      R => '0'
    );
\comp_burst.env_in_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(51),
      Q => env_in(51),
      R => '0'
    );
\comp_burst.env_in_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(52),
      Q => env_in(52),
      R => '0'
    );
\comp_burst.env_in_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(53),
      Q => env_in(53),
      R => '0'
    );
\comp_burst.env_in_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(54),
      Q => env_in(54),
      R => '0'
    );
\comp_burst.env_in_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(55),
      Q => env_in(55),
      R => '0'
    );
\comp_burst.env_in_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(56),
      Q => env_in(56),
      R => '0'
    );
\comp_burst.env_in_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(57),
      Q => env_in(57),
      R => '0'
    );
\comp_burst.env_in_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(58),
      Q => env_in(58),
      R => '0'
    );
\comp_burst.env_in_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(59),
      Q => env_in(59),
      R => '0'
    );
\comp_burst.env_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(5),
      Q => env_in(5),
      R => '0'
    );
\comp_burst.env_in_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(60),
      Q => env_in(60),
      R => '0'
    );
\comp_burst.env_in_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(61),
      Q => env_in(61),
      R => '0'
    );
\comp_burst.env_in_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(62),
      Q => env_in(62),
      R => '0'
    );
\comp_burst.env_in_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(63),
      Q => env_in(63),
      R => '0'
    );
\comp_burst.env_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(6),
      Q => env_in(6),
      R => '0'
    );
\comp_burst.env_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(7),
      Q => env_in(7),
      R => '0'
    );
\comp_burst.env_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(8),
      Q => env_in(8),
      R => '0'
    );
\comp_burst.env_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(9),
      Q => env_in(9),
      R => '0'
    );
\comp_burst.env_start_ind[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \comp_burst.env_start_ind_reg[10]_i_2_n_0\,
      I1 => run_env_start,
      I2 => scan_start,
      I3 => comp_env,
      O => \comp_burst.env_start_ind[10]_i_1_n_0\
    );
\comp_burst.env_start_ind[10]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(1),
      I1 => min_env(1),
      I2 => env_up_val(0),
      I3 => min_env(0),
      O => \comp_burst.env_start_ind[10]_i_10_n_0\
    );
\comp_burst.env_start_ind[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => min_env(15),
      I1 => env_up_val(15),
      I2 => min_env(14),
      I3 => env_up_val(14),
      O => \comp_burst.env_start_ind[10]_i_11_n_0\
    );
\comp_burst.env_start_ind[10]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => min_env(13),
      I1 => env_up_val(13),
      I2 => min_env(12),
      I3 => env_up_val(12),
      O => \comp_burst.env_start_ind[10]_i_12_n_0\
    );
\comp_burst.env_start_ind[10]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => min_env(11),
      I1 => env_up_val(11),
      I2 => min_env(10),
      I3 => env_up_val(10),
      O => \comp_burst.env_start_ind[10]_i_13_n_0\
    );
\comp_burst.env_start_ind[10]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => min_env(9),
      I1 => env_up_val(9),
      I2 => min_env(8),
      I3 => env_up_val(8),
      O => \comp_burst.env_start_ind[10]_i_14_n_0\
    );
\comp_burst.env_start_ind[10]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => min_env(7),
      I1 => env_up_val(7),
      I2 => min_env(6),
      I3 => env_up_val(6),
      O => \comp_burst.env_start_ind[10]_i_15_n_0\
    );
\comp_burst.env_start_ind[10]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => min_env(5),
      I1 => env_up_val(5),
      I2 => min_env(4),
      I3 => env_up_val(4),
      O => \comp_burst.env_start_ind[10]_i_16_n_0\
    );
\comp_burst.env_start_ind[10]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => min_env(3),
      I1 => env_up_val(3),
      I2 => min_env(2),
      I3 => env_up_val(2),
      O => \comp_burst.env_start_ind[10]_i_17_n_0\
    );
\comp_burst.env_start_ind[10]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => min_env(1),
      I1 => env_up_val(1),
      I2 => min_env(0),
      I3 => env_up_val(0),
      O => \comp_burst.env_start_ind[10]_i_18_n_0\
    );
\comp_burst.env_start_ind[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(15),
      I1 => min_env(15),
      I2 => env_up_val(14),
      I3 => min_env(14),
      O => \comp_burst.env_start_ind[10]_i_3_n_0\
    );
\comp_burst.env_start_ind[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(13),
      I1 => min_env(13),
      I2 => env_up_val(12),
      I3 => min_env(12),
      O => \comp_burst.env_start_ind[10]_i_4_n_0\
    );
\comp_burst.env_start_ind[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(11),
      I1 => min_env(11),
      I2 => env_up_val(10),
      I3 => min_env(10),
      O => \comp_burst.env_start_ind[10]_i_5_n_0\
    );
\comp_burst.env_start_ind[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(9),
      I1 => min_env(9),
      I2 => env_up_val(8),
      I3 => min_env(8),
      O => \comp_burst.env_start_ind[10]_i_6_n_0\
    );
\comp_burst.env_start_ind[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(7),
      I1 => min_env(7),
      I2 => env_up_val(6),
      I3 => min_env(6),
      O => \comp_burst.env_start_ind[10]_i_7_n_0\
    );
\comp_burst.env_start_ind[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(5),
      I1 => min_env(5),
      I2 => env_up_val(4),
      I3 => min_env(4),
      O => \comp_burst.env_start_ind[10]_i_8_n_0\
    );
\comp_burst.env_start_ind[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(3),
      I1 => min_env(3),
      I2 => env_up_val(2),
      I3 => min_env(2),
      O => \comp_burst.env_start_ind[10]_i_9_n_0\
    );
\comp_burst.env_start_ind_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(0),
      Q => env_start_ind(0),
      R => '0'
    );
\comp_burst.env_start_ind_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(10),
      Q => env_start_ind(10),
      R => '0'
    );
\comp_burst.env_start_ind_reg[10]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \comp_burst.env_start_ind_reg[10]_i_2_n_0\,
      CO(6) => \comp_burst.env_start_ind_reg[10]_i_2_n_1\,
      CO(5) => \comp_burst.env_start_ind_reg[10]_i_2_n_2\,
      CO(4) => \comp_burst.env_start_ind_reg[10]_i_2_n_3\,
      CO(3) => \comp_burst.env_start_ind_reg[10]_i_2_n_4\,
      CO(2) => \comp_burst.env_start_ind_reg[10]_i_2_n_5\,
      CO(1) => \comp_burst.env_start_ind_reg[10]_i_2_n_6\,
      CO(0) => \comp_burst.env_start_ind_reg[10]_i_2_n_7\,
      DI(7) => \comp_burst.env_start_ind[10]_i_3_n_0\,
      DI(6) => \comp_burst.env_start_ind[10]_i_4_n_0\,
      DI(5) => \comp_burst.env_start_ind[10]_i_5_n_0\,
      DI(4) => \comp_burst.env_start_ind[10]_i_6_n_0\,
      DI(3) => \comp_burst.env_start_ind[10]_i_7_n_0\,
      DI(2) => \comp_burst.env_start_ind[10]_i_8_n_0\,
      DI(1) => \comp_burst.env_start_ind[10]_i_9_n_0\,
      DI(0) => \comp_burst.env_start_ind[10]_i_10_n_0\,
      O(7 downto 0) => \NLW_comp_burst.env_start_ind_reg[10]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \comp_burst.env_start_ind[10]_i_11_n_0\,
      S(6) => \comp_burst.env_start_ind[10]_i_12_n_0\,
      S(5) => \comp_burst.env_start_ind[10]_i_13_n_0\,
      S(4) => \comp_burst.env_start_ind[10]_i_14_n_0\,
      S(3) => \comp_burst.env_start_ind[10]_i_15_n_0\,
      S(2) => \comp_burst.env_start_ind[10]_i_16_n_0\,
      S(1) => \comp_burst.env_start_ind[10]_i_17_n_0\,
      S(0) => \comp_burst.env_start_ind[10]_i_18_n_0\
    );
\comp_burst.env_start_ind_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(1),
      Q => env_start_ind(1),
      R => '0'
    );
\comp_burst.env_start_ind_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(2),
      Q => env_start_ind(2),
      R => '0'
    );
\comp_burst.env_start_ind_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(3),
      Q => env_start_ind(3),
      R => '0'
    );
\comp_burst.env_start_ind_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(4),
      Q => env_start_ind(4),
      R => '0'
    );
\comp_burst.env_start_ind_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(5),
      Q => env_start_ind(5),
      R => '0'
    );
\comp_burst.env_start_ind_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(6),
      Q => env_start_ind(6),
      R => '0'
    );
\comp_burst.env_start_ind_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(7),
      Q => env_start_ind(7),
      R => '0'
    );
\comp_burst.env_start_ind_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(8),
      Q => env_start_ind(8),
      R => '0'
    );
\comp_burst.env_start_ind_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_start_ind[10]_i_1_n_0\,
      D => env_up_ind(9),
      Q => env_start_ind(9),
      R => '0'
    );
\comp_burst.env_up_adr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      O => \comp_burst.env_up_adr[0]_i_1_n_0\
    );
\comp_burst.env_up_adr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[8]\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[6]\,
      I2 => \comp_burst.env_up_adr[10]_i_2_n_0\,
      I3 => \comp_burst.env_up_adr_reg_n_0_[7]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[9]\,
      I5 => \comp_burst.env_up_adr_reg_n_0_[10]\,
      O => \comp_burst.env_up_adr[10]_i_1_n_0\
    );
\comp_burst.env_up_adr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[5]\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[3]\,
      I2 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I3 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[2]\,
      I5 => \comp_burst.env_up_adr_reg_n_0_[4]\,
      O => \comp_burst.env_up_adr[10]_i_2_n_0\
    );
\comp_burst.env_up_adr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      O => \comp_burst.env_up_adr[1]_i_1_n_0\
    );
\comp_burst.env_up_adr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I2 => \comp_burst.env_up_adr_reg_n_0_[2]\,
      O => \comp_burst.env_up_adr[2]_i_1_n_0\
    );
\comp_burst.env_up_adr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I2 => \comp_burst.env_up_adr_reg_n_0_[2]\,
      I3 => \comp_burst.env_up_adr_reg_n_0_[3]\,
      O => \comp_burst.env_up_adr[3]_i_1_n_0\
    );
\comp_burst.env_up_adr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[2]\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I2 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I3 => \comp_burst.env_up_adr_reg_n_0_[3]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[4]\,
      O => \comp_burst.env_up_adr[4]_i_1_n_0\
    );
\comp_burst.env_up_adr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[3]\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I2 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I3 => \comp_burst.env_up_adr_reg_n_0_[2]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[4]\,
      I5 => \comp_burst.env_up_adr_reg_n_0_[5]\,
      O => \comp_burst.env_up_adr[5]_i_1_n_0\
    );
\comp_burst.env_up_adr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.env_up_adr[10]_i_2_n_0\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[6]\,
      O => \comp_burst.env_up_adr[6]_i_1_n_0\
    );
\comp_burst.env_up_adr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \comp_burst.env_up_adr[10]_i_2_n_0\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[6]\,
      I2 => \comp_burst.env_up_adr_reg_n_0_[7]\,
      O => \comp_burst.env_up_adr[7]_i_1_n_0\
    );
\comp_burst.env_up_adr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[6]\,
      I1 => \comp_burst.env_up_adr[10]_i_2_n_0\,
      I2 => \comp_burst.env_up_adr_reg_n_0_[7]\,
      I3 => \comp_burst.env_up_adr_reg_n_0_[8]\,
      O => \comp_burst.env_up_adr[8]_i_1_n_0\
    );
\comp_burst.env_up_adr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[7]\,
      I1 => \comp_burst.env_up_adr[10]_i_2_n_0\,
      I2 => \comp_burst.env_up_adr_reg_n_0_[6]\,
      I3 => \comp_burst.env_up_adr_reg_n_0_[8]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[9]\,
      O => \comp_burst.env_up_adr[9]_i_1_n_0\
    );
\comp_burst.env_up_adr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[0]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[0]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[10]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[10]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[1]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[1]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[2]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[2]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[3]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[3]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[4]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[4]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[5]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[5]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[6]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[6]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[7]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[7]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[8]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[8]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_adr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr[9]_i_1_n_0\,
      Q => \comp_burst.env_up_adr_reg_n_0_[9]\,
      R => env_up_adr(0)
    );
\comp_burst.env_up_ind_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[0]\,
      Q => env_up_ind(0),
      R => '0'
    );
\comp_burst.env_up_ind_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[10]\,
      Q => env_up_ind(10),
      R => '0'
    );
\comp_burst.env_up_ind_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[1]\,
      Q => env_up_ind(1),
      R => '0'
    );
\comp_burst.env_up_ind_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[2]\,
      Q => env_up_ind(2),
      R => '0'
    );
\comp_burst.env_up_ind_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[3]\,
      Q => env_up_ind(3),
      R => '0'
    );
\comp_burst.env_up_ind_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[4]\,
      Q => env_up_ind(4),
      R => '0'
    );
\comp_burst.env_up_ind_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[5]\,
      Q => env_up_ind(5),
      R => '0'
    );
\comp_burst.env_up_ind_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[6]\,
      Q => env_up_ind(6),
      R => '0'
    );
\comp_burst.env_up_ind_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[7]\,
      Q => env_up_ind(7),
      R => '0'
    );
\comp_burst.env_up_ind_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[8]\,
      Q => env_up_ind(8),
      R => '0'
    );
\comp_burst.env_up_ind_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_adr_reg_n_0_[9]\,
      Q => env_up_ind(9),
      R => '0'
    );
\comp_burst.env_up_max_ind[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => scan_start,
      I1 => comp_env,
      I2 => \comp_burst.env_up_max_val_reg[15]_i_3_n_0\,
      O => \comp_burst.env_up_max_ind[10]_i_1_n_0\
    );
\comp_burst.env_up_max_ind_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(0),
      Q => env_up_max_ind(0),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(10),
      Q => env_up_max_ind(10),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(1),
      Q => env_up_max_ind(1),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(2),
      Q => env_up_max_ind(2),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(3),
      Q => env_up_max_ind(3),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(4),
      Q => env_up_max_ind(4),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(5),
      Q => env_up_max_ind(5),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(6),
      Q => env_up_max_ind(6),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(7),
      Q => env_up_max_ind(7),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(8),
      Q => env_up_max_ind(8),
      R => '0'
    );
\comp_burst.env_up_max_ind_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_ind[10]_i_1_n_0\,
      D => env_up_ind(9),
      Q => env_up_max_ind(9),
      R => '0'
    );
\comp_burst.env_up_max_val[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => comp_env,
      I1 => scan_start,
      O => env_up_max_val(0)
    );
\comp_burst.env_up_max_val[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(3),
      I1 => \comp_burst.env_up_max_val_reg_n_0_[3]\,
      I2 => env_up_val(2),
      I3 => \comp_burst.env_up_max_val_reg_n_0_[2]\,
      O => \comp_burst.env_up_max_val[15]_i_10_n_0\
    );
\comp_burst.env_up_max_val[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(1),
      I1 => \comp_burst.env_up_max_val_reg_n_0_[1]\,
      I2 => env_up_val(0),
      I3 => \comp_burst.env_up_max_val_reg_n_0_[0]\,
      O => \comp_burst.env_up_max_val[15]_i_11_n_0\
    );
\comp_burst.env_up_max_val[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg_n_0_[15]\,
      I1 => env_up_val(15),
      I2 => \comp_burst.env_up_max_val_reg_n_0_[14]\,
      I3 => env_up_val(14),
      O => \comp_burst.env_up_max_val[15]_i_12_n_0\
    );
\comp_burst.env_up_max_val[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg_n_0_[13]\,
      I1 => env_up_val(13),
      I2 => \comp_burst.env_up_max_val_reg_n_0_[12]\,
      I3 => env_up_val(12),
      O => \comp_burst.env_up_max_val[15]_i_13_n_0\
    );
\comp_burst.env_up_max_val[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg_n_0_[11]\,
      I1 => env_up_val(11),
      I2 => \comp_burst.env_up_max_val_reg_n_0_[10]\,
      I3 => env_up_val(10),
      O => \comp_burst.env_up_max_val[15]_i_14_n_0\
    );
\comp_burst.env_up_max_val[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg_n_0_[9]\,
      I1 => env_up_val(9),
      I2 => \comp_burst.env_up_max_val_reg_n_0_[8]\,
      I3 => env_up_val(8),
      O => \comp_burst.env_up_max_val[15]_i_15_n_0\
    );
\comp_burst.env_up_max_val[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg_n_0_[7]\,
      I1 => env_up_val(7),
      I2 => \comp_burst.env_up_max_val_reg_n_0_[6]\,
      I3 => env_up_val(6),
      O => \comp_burst.env_up_max_val[15]_i_16_n_0\
    );
\comp_burst.env_up_max_val[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg_n_0_[5]\,
      I1 => env_up_val(5),
      I2 => \comp_burst.env_up_max_val_reg_n_0_[4]\,
      I3 => env_up_val(4),
      O => \comp_burst.env_up_max_val[15]_i_17_n_0\
    );
\comp_burst.env_up_max_val[15]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg_n_0_[3]\,
      I1 => env_up_val(3),
      I2 => \comp_burst.env_up_max_val_reg_n_0_[2]\,
      I3 => env_up_val(2),
      O => \comp_burst.env_up_max_val[15]_i_18_n_0\
    );
\comp_burst.env_up_max_val[15]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg_n_0_[1]\,
      I1 => env_up_val(1),
      I2 => \comp_burst.env_up_max_val_reg_n_0_[0]\,
      I3 => env_up_val(0),
      O => \comp_burst.env_up_max_val[15]_i_19_n_0\
    );
\comp_burst.env_up_max_val[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \comp_burst.env_up_max_val_reg[15]_i_3_n_0\,
      I1 => scan_start,
      O => \comp_burst.env_up_max_val[15]_i_2_n_0\
    );
\comp_burst.env_up_max_val[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(15),
      I1 => \comp_burst.env_up_max_val_reg_n_0_[15]\,
      I2 => env_up_val(14),
      I3 => \comp_burst.env_up_max_val_reg_n_0_[14]\,
      O => \comp_burst.env_up_max_val[15]_i_4_n_0\
    );
\comp_burst.env_up_max_val[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(13),
      I1 => \comp_burst.env_up_max_val_reg_n_0_[13]\,
      I2 => env_up_val(12),
      I3 => \comp_burst.env_up_max_val_reg_n_0_[12]\,
      O => \comp_burst.env_up_max_val[15]_i_5_n_0\
    );
\comp_burst.env_up_max_val[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(11),
      I1 => \comp_burst.env_up_max_val_reg_n_0_[11]\,
      I2 => env_up_val(10),
      I3 => \comp_burst.env_up_max_val_reg_n_0_[10]\,
      O => \comp_burst.env_up_max_val[15]_i_6_n_0\
    );
\comp_burst.env_up_max_val[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(9),
      I1 => \comp_burst.env_up_max_val_reg_n_0_[9]\,
      I2 => env_up_val(8),
      I3 => \comp_burst.env_up_max_val_reg_n_0_[8]\,
      O => \comp_burst.env_up_max_val[15]_i_7_n_0\
    );
\comp_burst.env_up_max_val[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(7),
      I1 => \comp_burst.env_up_max_val_reg_n_0_[7]\,
      I2 => env_up_val(6),
      I3 => \comp_burst.env_up_max_val_reg_n_0_[6]\,
      O => \comp_burst.env_up_max_val[15]_i_8_n_0\
    );
\comp_burst.env_up_max_val[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => env_up_val(5),
      I1 => \comp_burst.env_up_max_val_reg_n_0_[5]\,
      I2 => env_up_val(4),
      I3 => \comp_burst.env_up_max_val_reg_n_0_[4]\,
      O => \comp_burst.env_up_max_val[15]_i_9_n_0\
    );
\comp_burst.env_up_max_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(0),
      Q => \comp_burst.env_up_max_val_reg_n_0_[0]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(10),
      Q => \comp_burst.env_up_max_val_reg_n_0_[10]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(11),
      Q => \comp_burst.env_up_max_val_reg_n_0_[11]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(12),
      Q => \comp_burst.env_up_max_val_reg_n_0_[12]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(13),
      Q => \comp_burst.env_up_max_val_reg_n_0_[13]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(14),
      Q => \comp_burst.env_up_max_val_reg_n_0_[14]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(15),
      Q => \comp_burst.env_up_max_val_reg_n_0_[15]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[15]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.env_up_max_val_reg[15]_i_3_n_0\,
      CO(6) => \comp_burst.env_up_max_val_reg[15]_i_3_n_1\,
      CO(5) => \comp_burst.env_up_max_val_reg[15]_i_3_n_2\,
      CO(4) => \comp_burst.env_up_max_val_reg[15]_i_3_n_3\,
      CO(3) => \comp_burst.env_up_max_val_reg[15]_i_3_n_4\,
      CO(2) => \comp_burst.env_up_max_val_reg[15]_i_3_n_5\,
      CO(1) => \comp_burst.env_up_max_val_reg[15]_i_3_n_6\,
      CO(0) => \comp_burst.env_up_max_val_reg[15]_i_3_n_7\,
      DI(7) => \comp_burst.env_up_max_val[15]_i_4_n_0\,
      DI(6) => \comp_burst.env_up_max_val[15]_i_5_n_0\,
      DI(5) => \comp_burst.env_up_max_val[15]_i_6_n_0\,
      DI(4) => \comp_burst.env_up_max_val[15]_i_7_n_0\,
      DI(3) => \comp_burst.env_up_max_val[15]_i_8_n_0\,
      DI(2) => \comp_burst.env_up_max_val[15]_i_9_n_0\,
      DI(1) => \comp_burst.env_up_max_val[15]_i_10_n_0\,
      DI(0) => \comp_burst.env_up_max_val[15]_i_11_n_0\,
      O(7 downto 0) => \NLW_comp_burst.env_up_max_val_reg[15]_i_3_O_UNCONNECTED\(7 downto 0),
      S(7) => \comp_burst.env_up_max_val[15]_i_12_n_0\,
      S(6) => \comp_burst.env_up_max_val[15]_i_13_n_0\,
      S(5) => \comp_burst.env_up_max_val[15]_i_14_n_0\,
      S(4) => \comp_burst.env_up_max_val[15]_i_15_n_0\,
      S(3) => \comp_burst.env_up_max_val[15]_i_16_n_0\,
      S(2) => \comp_burst.env_up_max_val[15]_i_17_n_0\,
      S(1) => \comp_burst.env_up_max_val[15]_i_18_n_0\,
      S(0) => \comp_burst.env_up_max_val[15]_i_19_n_0\
    );
\comp_burst.env_up_max_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(1),
      Q => \comp_burst.env_up_max_val_reg_n_0_[1]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(2),
      Q => \comp_burst.env_up_max_val_reg_n_0_[2]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(3),
      Q => \comp_burst.env_up_max_val_reg_n_0_[3]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(4),
      Q => \comp_burst.env_up_max_val_reg_n_0_[4]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(5),
      Q => \comp_burst.env_up_max_val_reg_n_0_[5]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(6),
      Q => \comp_burst.env_up_max_val_reg_n_0_[6]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(7),
      Q => \comp_burst.env_up_max_val_reg_n_0_[7]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(8),
      Q => \comp_burst.env_up_max_val_reg_n_0_[8]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_max_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_max_val[15]_i_2_n_0\,
      D => env_up_val(9),
      Q => \comp_burst.env_up_max_val_reg_n_0_[9]\,
      R => env_up_max_val(0)
    );
\comp_burst.env_up_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => env_up_ptr(0),
      O => \comp_burst.env_up_ptr[0]_i_1_n_0\
    );
\comp_burst.env_up_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_up_ptr(0),
      I1 => env_up_ptr(1),
      O => \comp_burst.env_up_ptr[1]_i_1_n_0\
    );
\comp_burst.env_up_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => env_up_ptr(0),
      I1 => env_up_ptr(1),
      I2 => env_up_ptr(2),
      O => \comp_burst.env_up_ptr[2]_i_1_n_0\
    );
\comp_burst.env_up_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => env_up_ptr(1),
      I1 => env_up_ptr(0),
      I2 => env_up_ptr(2),
      I3 => env_up_ptr(3),
      O => \comp_burst.env_up_ptr[3]_i_1_n_0\
    );
\comp_burst.env_up_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => env_up_ptr(2),
      I1 => env_up_ptr(0),
      I2 => env_up_ptr(1),
      I3 => env_up_ptr(3),
      I4 => env_up_ptr(4),
      O => \comp_burst.env_up_ptr[4]_i_1_n_0\
    );
\comp_burst.env_up_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => env_up_ptr(3),
      I1 => env_up_ptr(1),
      I2 => env_up_ptr(0),
      I3 => env_up_ptr(2),
      I4 => env_up_ptr(4),
      I5 => env_up_ptr(5),
      O => \comp_burst.env_up_ptr[5]_i_1_n_0\
    );
\comp_burst.env_up_ptr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.env_up_ptr[8]_i_4_n_0\,
      I1 => env_up_ptr(6),
      O => \comp_burst.env_up_ptr[6]_i_1_n_0\
    );
\comp_burst.env_up_ptr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \comp_burst.env_up_ptr[8]_i_4_n_0\,
      I1 => env_up_ptr(6),
      I2 => env_up_ptr(7),
      O => \comp_burst.env_up_ptr[7]_i_1_n_0\
    );
\comp_burst.env_up_ptr[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => load_env,
      O => env_up_adr(0)
    );
\comp_burst.env_up_ptr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I1 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      O => \comp_burst.env_up_ptr[8]_i_2_n_0\
    );
\comp_burst.env_up_ptr[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => env_up_ptr(6),
      I1 => \comp_burst.env_up_ptr[8]_i_4_n_0\,
      I2 => env_up_ptr(7),
      I3 => env_up_ptr(8),
      O => \comp_burst.env_up_ptr[8]_i_3_n_0\
    );
\comp_burst.env_up_ptr[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => env_up_ptr(5),
      I1 => env_up_ptr(3),
      I2 => env_up_ptr(1),
      I3 => env_up_ptr(0),
      I4 => env_up_ptr(2),
      I5 => env_up_ptr(4),
      O => \comp_burst.env_up_ptr[8]_i_4_n_0\
    );
\comp_burst.env_up_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[0]_i_1_n_0\,
      Q => env_up_ptr(0),
      R => env_up_adr(0)
    );
\comp_burst.env_up_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[1]_i_1_n_0\,
      Q => env_up_ptr(1),
      R => env_up_adr(0)
    );
\comp_burst.env_up_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[2]_i_1_n_0\,
      Q => env_up_ptr(2),
      R => env_up_adr(0)
    );
\comp_burst.env_up_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[3]_i_1_n_0\,
      Q => env_up_ptr(3),
      R => env_up_adr(0)
    );
\comp_burst.env_up_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[4]_i_1_n_0\,
      Q => env_up_ptr(4),
      R => env_up_adr(0)
    );
\comp_burst.env_up_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[5]_i_1_n_0\,
      Q => env_up_ptr(5),
      R => env_up_adr(0)
    );
\comp_burst.env_up_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[6]_i_1_n_0\,
      Q => env_up_ptr(6),
      R => env_up_adr(0)
    );
\comp_burst.env_up_ptr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[7]_i_1_n_0\,
      Q => env_up_ptr(7),
      R => env_up_adr(0)
    );
\comp_burst.env_up_ptr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.env_up_ptr[8]_i_2_n_0\,
      D => \comp_burst.env_up_ptr[8]_i_3_n_0\,
      Q => env_up_ptr(8),
      R => env_up_adr(0)
    );
\comp_burst.env_up_val[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_83\,
      I1 => \comp_burst.mem_env_up_reg_n_99\,
      I2 => env_up_3(0),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(0),
      O => \comp_burst.env_up_val[0]_i_1_n_0\
    );
\comp_burst.env_up_val[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_73\,
      I1 => \comp_burst.mem_env_up_reg_n_89\,
      I2 => env_up_3(10),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(10),
      O => \comp_burst.env_up_val[10]_i_1_n_0\
    );
\comp_burst.env_up_val[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_72\,
      I1 => \comp_burst.mem_env_up_reg_n_88\,
      I2 => env_up_3(11),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(11),
      O => \comp_burst.env_up_val[11]_i_1_n_0\
    );
\comp_burst.env_up_val[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_71\,
      I1 => \comp_burst.mem_env_up_reg_n_87\,
      I2 => env_up_3(12),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(12),
      O => \comp_burst.env_up_val[12]_i_1_n_0\
    );
\comp_burst.env_up_val[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_70\,
      I1 => \comp_burst.mem_env_up_reg_n_86\,
      I2 => env_up_3(13),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(13),
      O => \comp_burst.env_up_val[13]_i_1_n_0\
    );
\comp_burst.env_up_val[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_69\,
      I1 => \comp_burst.mem_env_up_reg_n_85\,
      I2 => env_up_3(14),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(14),
      O => \comp_burst.env_up_val[14]_i_1_n_0\
    );
\comp_burst.env_up_val[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_68\,
      I1 => \comp_burst.mem_env_up_reg_n_84\,
      I2 => env_up_3(15),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(15),
      O => \comp_burst.env_up_val[15]_i_1_n_0\
    );
\comp_burst.env_up_val[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_82\,
      I1 => \comp_burst.mem_env_up_reg_n_98\,
      I2 => env_up_3(1),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(1),
      O => \comp_burst.env_up_val[1]_i_1_n_0\
    );
\comp_burst.env_up_val[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_81\,
      I1 => \comp_burst.mem_env_up_reg_n_97\,
      I2 => env_up_3(2),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(2),
      O => \comp_burst.env_up_val[2]_i_1_n_0\
    );
\comp_burst.env_up_val[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_80\,
      I1 => \comp_burst.mem_env_up_reg_n_96\,
      I2 => env_up_3(3),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(3),
      O => \comp_burst.env_up_val[3]_i_1_n_0\
    );
\comp_burst.env_up_val[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_79\,
      I1 => \comp_burst.mem_env_up_reg_n_95\,
      I2 => env_up_3(4),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(4),
      O => \comp_burst.env_up_val[4]_i_1_n_0\
    );
\comp_burst.env_up_val[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_78\,
      I1 => \comp_burst.mem_env_up_reg_n_94\,
      I2 => env_up_3(5),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(5),
      O => \comp_burst.env_up_val[5]_i_1_n_0\
    );
\comp_burst.env_up_val[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_77\,
      I1 => \comp_burst.mem_env_up_reg_n_93\,
      I2 => env_up_3(6),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(6),
      O => \comp_burst.env_up_val[6]_i_1_n_0\
    );
\comp_burst.env_up_val[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_76\,
      I1 => \comp_burst.mem_env_up_reg_n_92\,
      I2 => env_up_3(7),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(7),
      O => \comp_burst.env_up_val[7]_i_1_n_0\
    );
\comp_burst.env_up_val[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_75\,
      I1 => \comp_burst.mem_env_up_reg_n_91\,
      I2 => env_up_3(8),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(8),
      O => \comp_burst.env_up_val[8]_i_1_n_0\
    );
\comp_burst.env_up_val[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_env_up_reg_n_74\,
      I1 => \comp_burst.mem_env_up_reg_n_90\,
      I2 => env_up_3(9),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => env_up_2(9),
      O => \comp_burst.env_up_val[9]_i_1_n_0\
    );
\comp_burst.env_up_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[0]_i_1_n_0\,
      Q => env_up_val(0),
      R => '0'
    );
\comp_burst.env_up_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[10]_i_1_n_0\,
      Q => env_up_val(10),
      R => '0'
    );
\comp_burst.env_up_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[11]_i_1_n_0\,
      Q => env_up_val(11),
      R => '0'
    );
\comp_burst.env_up_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[12]_i_1_n_0\,
      Q => env_up_val(12),
      R => '0'
    );
\comp_burst.env_up_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[13]_i_1_n_0\,
      Q => env_up_val(13),
      R => '0'
    );
\comp_burst.env_up_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[14]_i_1_n_0\,
      Q => env_up_val(14),
      R => '0'
    );
\comp_burst.env_up_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[15]_i_1_n_0\,
      Q => env_up_val(15),
      R => '0'
    );
\comp_burst.env_up_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[1]_i_1_n_0\,
      Q => env_up_val(1),
      R => '0'
    );
\comp_burst.env_up_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[2]_i_1_n_0\,
      Q => env_up_val(2),
      R => '0'
    );
\comp_burst.env_up_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[3]_i_1_n_0\,
      Q => env_up_val(3),
      R => '0'
    );
\comp_burst.env_up_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[4]_i_1_n_0\,
      Q => env_up_val(4),
      R => '0'
    );
\comp_burst.env_up_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[5]_i_1_n_0\,
      Q => env_up_val(5),
      R => '0'
    );
\comp_burst.env_up_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[6]_i_1_n_0\,
      Q => env_up_val(6),
      R => '0'
    );
\comp_burst.env_up_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[7]_i_1_n_0\,
      Q => env_up_val(7),
      R => '0'
    );
\comp_burst.env_up_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[8]_i_1_n_0\,
      Q => env_up_val(8),
      R => '0'
    );
\comp_burst.env_up_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.env_up_val[9]_i_1_n_0\,
      Q => env_up_val(9),
      R => '0'
    );
\comp_burst.filling_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => filling,
      I1 => rt_data_empty,
      I2 => \comp_burst.filling_i_2_n_0\,
      I3 => burst,
      O => \comp_burst.filling_i_1_n_0\
    );
\comp_burst.filling_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => '1',
      I1 => rt_data_empty,
      O => \comp_burst.filling_i_2_n_0\
    );
\comp_burst.filling_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.filling_i_1_n_0\,
      Q => filling,
      R => '0'
    );
\comp_burst.in_angle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(82),
      Q => in_angle(0),
      R => '0'
    );
\comp_burst.in_angle_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(92),
      Q => in_angle(10),
      R => '0'
    );
\comp_burst.in_angle_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(93),
      Q => in_angle(11),
      R => '0'
    );
\comp_burst.in_angle_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(94),
      Q => in_angle(12),
      R => '0'
    );
\comp_burst.in_angle_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(95),
      Q => in_angle(13),
      R => '0'
    );
\comp_burst.in_angle_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(96),
      Q => in_angle(14),
      R => '0'
    );
\comp_burst.in_angle_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(97),
      Q => in_angle(15),
      R => '0'
    );
\comp_burst.in_angle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(83),
      Q => in_angle(1),
      R => '0'
    );
\comp_burst.in_angle_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(84),
      Q => in_angle(2),
      R => '0'
    );
\comp_burst.in_angle_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(85),
      Q => in_angle(3),
      R => '0'
    );
\comp_burst.in_angle_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(86),
      Q => in_angle(4),
      R => '0'
    );
\comp_burst.in_angle_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(87),
      Q => in_angle(5),
      R => '0'
    );
\comp_burst.in_angle_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(88),
      Q => in_angle(6),
      R => '0'
    );
\comp_burst.in_angle_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(89),
      Q => in_angle(7),
      R => '0'
    );
\comp_burst.in_angle_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(90),
      Q => in_angle(8),
      R => '0'
    );
\comp_burst.in_angle_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(91),
      Q => in_angle(9),
      R => '0'
    );
\comp_burst.in_freq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(62),
      Q => in_freq(0),
      R => '0'
    );
\comp_burst.in_freq_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(72),
      Q => in_freq(10),
      R => '0'
    );
\comp_burst.in_freq_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(73),
      Q => in_freq(11),
      R => '0'
    );
\comp_burst.in_freq_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(74),
      Q => in_freq(12),
      R => '0'
    );
\comp_burst.in_freq_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(75),
      Q => in_freq(13),
      R => '0'
    );
\comp_burst.in_freq_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(76),
      Q => in_freq(14),
      R => '0'
    );
\comp_burst.in_freq_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(77),
      Q => in_freq(15),
      R => '0'
    );
\comp_burst.in_freq_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(78),
      Q => in_freq(16),
      R => '0'
    );
\comp_burst.in_freq_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(79),
      Q => in_freq(17),
      R => '0'
    );
\comp_burst.in_freq_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(80),
      Q => in_freq(18),
      R => '0'
    );
\comp_burst.in_freq_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(81),
      Q => in_freq(19),
      R => '0'
    );
\comp_burst.in_freq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(63),
      Q => in_freq(1),
      R => '0'
    );
\comp_burst.in_freq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(64),
      Q => in_freq(2),
      R => '0'
    );
\comp_burst.in_freq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(65),
      Q => in_freq(3),
      R => '0'
    );
\comp_burst.in_freq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(66),
      Q => in_freq(4),
      R => '0'
    );
\comp_burst.in_freq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(67),
      Q => in_freq(5),
      R => '0'
    );
\comp_burst.in_freq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(68),
      Q => in_freq(6),
      R => '0'
    );
\comp_burst.in_freq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(69),
      Q => in_freq(7),
      R => '0'
    );
\comp_burst.in_freq_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(70),
      Q => in_freq(8),
      R => '0'
    );
\comp_burst.in_freq_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.burst_i_1_n_0\,
      D => rt_meta_out(71),
      Q => in_freq(9),
      R => '0'
    );
\comp_burst.load_env_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.run_env_reg_n_0\,
      Q => load_env,
      R => '0'
    );
\comp_burst.mem_env_down_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => \comp_burst.env_down_ptr_reg\(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => wr_ptr(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => \NLW_comp_burst.mem_env_down_reg_CASDINA_UNCONNECTED\(31 downto 0),
      CASDINB(31 downto 0) => \NLW_comp_burst.mem_env_down_reg_CASDINB_UNCONNECTED\(31 downto 0),
      CASDINPA(3 downto 0) => \NLW_comp_burst.mem_env_down_reg_CASDINPA_UNCONNECTED\(3 downto 0),
      CASDINPB(3 downto 0) => \NLW_comp_burst.mem_env_down_reg_CASDINPB_UNCONNECTED\(3 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_comp_burst.mem_env_down_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_comp_burst.mem_env_down_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_comp_burst.mem_env_down_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_comp_burst.mem_env_down_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_comp_burst.mem_env_down_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_comp_burst.mem_env_down_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => \NLW_comp_burst.mem_env_down_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => env_in(31 downto 0),
      DINBDIN(31 downto 0) => env_in(63 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31) => \comp_burst.mem_env_down_reg_n_68\,
      DOUTADOUT(30) => \comp_burst.mem_env_down_reg_n_69\,
      DOUTADOUT(29) => \comp_burst.mem_env_down_reg_n_70\,
      DOUTADOUT(28) => \comp_burst.mem_env_down_reg_n_71\,
      DOUTADOUT(27) => \comp_burst.mem_env_down_reg_n_72\,
      DOUTADOUT(26) => \comp_burst.mem_env_down_reg_n_73\,
      DOUTADOUT(25) => \comp_burst.mem_env_down_reg_n_74\,
      DOUTADOUT(24) => \comp_burst.mem_env_down_reg_n_75\,
      DOUTADOUT(23) => \comp_burst.mem_env_down_reg_n_76\,
      DOUTADOUT(22) => \comp_burst.mem_env_down_reg_n_77\,
      DOUTADOUT(21) => \comp_burst.mem_env_down_reg_n_78\,
      DOUTADOUT(20) => \comp_burst.mem_env_down_reg_n_79\,
      DOUTADOUT(19) => \comp_burst.mem_env_down_reg_n_80\,
      DOUTADOUT(18) => \comp_burst.mem_env_down_reg_n_81\,
      DOUTADOUT(17) => \comp_burst.mem_env_down_reg_n_82\,
      DOUTADOUT(16) => \comp_burst.mem_env_down_reg_n_83\,
      DOUTADOUT(15) => \comp_burst.mem_env_down_reg_n_84\,
      DOUTADOUT(14) => \comp_burst.mem_env_down_reg_n_85\,
      DOUTADOUT(13) => \comp_burst.mem_env_down_reg_n_86\,
      DOUTADOUT(12) => \comp_burst.mem_env_down_reg_n_87\,
      DOUTADOUT(11) => \comp_burst.mem_env_down_reg_n_88\,
      DOUTADOUT(10) => \comp_burst.mem_env_down_reg_n_89\,
      DOUTADOUT(9) => \comp_burst.mem_env_down_reg_n_90\,
      DOUTADOUT(8) => \comp_burst.mem_env_down_reg_n_91\,
      DOUTADOUT(7) => \comp_burst.mem_env_down_reg_n_92\,
      DOUTADOUT(6) => \comp_burst.mem_env_down_reg_n_93\,
      DOUTADOUT(5) => \comp_burst.mem_env_down_reg_n_94\,
      DOUTADOUT(4) => \comp_burst.mem_env_down_reg_n_95\,
      DOUTADOUT(3) => \comp_burst.mem_env_down_reg_n_96\,
      DOUTADOUT(2) => \comp_burst.mem_env_down_reg_n_97\,
      DOUTADOUT(1) => \comp_burst.mem_env_down_reg_n_98\,
      DOUTADOUT(0) => \comp_burst.mem_env_down_reg_n_99\,
      DOUTBDOUT(31 downto 16) => env_down_3(15 downto 0),
      DOUTBDOUT(15 downto 0) => env_down_2(15 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_comp_burst.mem_env_down_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_comp_burst.mem_env_down_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_comp_burst.mem_env_down_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_comp_burst.mem_env_down_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_comp_burst.mem_env_down_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_wr,
      WEBWE(6) => mem_wr,
      WEBWE(5) => mem_wr,
      WEBWE(4) => mem_wr,
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\comp_burst.mem_env_up_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => env_up_ptr(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => wr_ptr(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => \NLW_comp_burst.mem_env_up_reg_CASDINA_UNCONNECTED\(31 downto 0),
      CASDINB(31 downto 0) => \NLW_comp_burst.mem_env_up_reg_CASDINB_UNCONNECTED\(31 downto 0),
      CASDINPA(3 downto 0) => \NLW_comp_burst.mem_env_up_reg_CASDINPA_UNCONNECTED\(3 downto 0),
      CASDINPB(3 downto 0) => \NLW_comp_burst.mem_env_up_reg_CASDINPB_UNCONNECTED\(3 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_comp_burst.mem_env_up_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_comp_burst.mem_env_up_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_comp_burst.mem_env_up_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_comp_burst.mem_env_up_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_comp_burst.mem_env_up_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_comp_burst.mem_env_up_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => \NLW_comp_burst.mem_env_up_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => env_in(31 downto 0),
      DINBDIN(31 downto 0) => env_in(63 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31) => \comp_burst.mem_env_up_reg_n_68\,
      DOUTADOUT(30) => \comp_burst.mem_env_up_reg_n_69\,
      DOUTADOUT(29) => \comp_burst.mem_env_up_reg_n_70\,
      DOUTADOUT(28) => \comp_burst.mem_env_up_reg_n_71\,
      DOUTADOUT(27) => \comp_burst.mem_env_up_reg_n_72\,
      DOUTADOUT(26) => \comp_burst.mem_env_up_reg_n_73\,
      DOUTADOUT(25) => \comp_burst.mem_env_up_reg_n_74\,
      DOUTADOUT(24) => \comp_burst.mem_env_up_reg_n_75\,
      DOUTADOUT(23) => \comp_burst.mem_env_up_reg_n_76\,
      DOUTADOUT(22) => \comp_burst.mem_env_up_reg_n_77\,
      DOUTADOUT(21) => \comp_burst.mem_env_up_reg_n_78\,
      DOUTADOUT(20) => \comp_burst.mem_env_up_reg_n_79\,
      DOUTADOUT(19) => \comp_burst.mem_env_up_reg_n_80\,
      DOUTADOUT(18) => \comp_burst.mem_env_up_reg_n_81\,
      DOUTADOUT(17) => \comp_burst.mem_env_up_reg_n_82\,
      DOUTADOUT(16) => \comp_burst.mem_env_up_reg_n_83\,
      DOUTADOUT(15) => \comp_burst.mem_env_up_reg_n_84\,
      DOUTADOUT(14) => \comp_burst.mem_env_up_reg_n_85\,
      DOUTADOUT(13) => \comp_burst.mem_env_up_reg_n_86\,
      DOUTADOUT(12) => \comp_burst.mem_env_up_reg_n_87\,
      DOUTADOUT(11) => \comp_burst.mem_env_up_reg_n_88\,
      DOUTADOUT(10) => \comp_burst.mem_env_up_reg_n_89\,
      DOUTADOUT(9) => \comp_burst.mem_env_up_reg_n_90\,
      DOUTADOUT(8) => \comp_burst.mem_env_up_reg_n_91\,
      DOUTADOUT(7) => \comp_burst.mem_env_up_reg_n_92\,
      DOUTADOUT(6) => \comp_burst.mem_env_up_reg_n_93\,
      DOUTADOUT(5) => \comp_burst.mem_env_up_reg_n_94\,
      DOUTADOUT(4) => \comp_burst.mem_env_up_reg_n_95\,
      DOUTADOUT(3) => \comp_burst.mem_env_up_reg_n_96\,
      DOUTADOUT(2) => \comp_burst.mem_env_up_reg_n_97\,
      DOUTADOUT(1) => \comp_burst.mem_env_up_reg_n_98\,
      DOUTADOUT(0) => \comp_burst.mem_env_up_reg_n_99\,
      DOUTBDOUT(31 downto 16) => env_up_3(15 downto 0),
      DOUTBDOUT(15 downto 0) => env_up_2(15 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_comp_burst.mem_env_up_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_comp_burst.mem_env_up_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_comp_burst.mem_env_up_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_comp_burst.mem_env_up_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_comp_burst.mem_env_up_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_wr,
      WEBWE(6) => mem_wr,
      WEBWE(5) => mem_wr,
      WEBWE(4) => mem_wr,
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\comp_burst.mem_phase_reg_0\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => env_up_ptr(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => wr_ptr(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => \NLW_comp_burst.mem_phase_reg_0_CASDINA_UNCONNECTED\(31 downto 0),
      CASDINB(31 downto 0) => \NLW_comp_burst.mem_phase_reg_0_CASDINB_UNCONNECTED\(31 downto 0),
      CASDINPA(3 downto 0) => \NLW_comp_burst.mem_phase_reg_0_CASDINPA_UNCONNECTED\(3 downto 0),
      CASDINPB(3 downto 0) => \NLW_comp_burst.mem_phase_reg_0_CASDINPB_UNCONNECTED\(3 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_comp_burst.mem_phase_reg_0_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_comp_burst.mem_phase_reg_0_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_comp_burst.mem_phase_reg_0_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_comp_burst.mem_phase_reg_0_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_comp_burst.mem_phase_reg_0_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_comp_burst.mem_phase_reg_0_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => \NLW_comp_burst.mem_phase_reg_0_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => phase_in(31 downto 0),
      DINBDIN(31 downto 0) => phase_in(63 downto 32),
      DINPADINP(3 downto 0) => phase_in(67 downto 64),
      DINPBDINP(3 downto 0) => phase_in(71 downto 68),
      DOUTADOUT(31) => \comp_burst.mem_phase_reg_0_n_68\,
      DOUTADOUT(30) => \comp_burst.mem_phase_reg_0_n_69\,
      DOUTADOUT(29) => \comp_burst.mem_phase_reg_0_n_70\,
      DOUTADOUT(28) => \comp_burst.mem_phase_reg_0_n_71\,
      DOUTADOUT(27) => \comp_burst.mem_phase_reg_0_n_72\,
      DOUTADOUT(26) => \comp_burst.mem_phase_reg_0_n_73\,
      DOUTADOUT(25) => \comp_burst.mem_phase_reg_0_n_74\,
      DOUTADOUT(24) => \comp_burst.mem_phase_reg_0_n_75\,
      DOUTADOUT(23) => \comp_burst.mem_phase_reg_0_n_76\,
      DOUTADOUT(22) => \comp_burst.mem_phase_reg_0_n_77\,
      DOUTADOUT(21) => \comp_burst.mem_phase_reg_0_n_78\,
      DOUTADOUT(20) => \comp_burst.mem_phase_reg_0_n_79\,
      DOUTADOUT(19) => \comp_burst.mem_phase_reg_0_n_80\,
      DOUTADOUT(18) => \comp_burst.mem_phase_reg_0_n_81\,
      DOUTADOUT(17) => \comp_burst.mem_phase_reg_0_n_82\,
      DOUTADOUT(16) => \comp_burst.mem_phase_reg_0_n_83\,
      DOUTADOUT(15) => \comp_burst.mem_phase_reg_0_n_84\,
      DOUTADOUT(14) => \comp_burst.mem_phase_reg_0_n_85\,
      DOUTADOUT(13) => \comp_burst.mem_phase_reg_0_n_86\,
      DOUTADOUT(12) => \comp_burst.mem_phase_reg_0_n_87\,
      DOUTADOUT(11) => \comp_burst.mem_phase_reg_0_n_88\,
      DOUTADOUT(10) => \comp_burst.mem_phase_reg_0_n_89\,
      DOUTADOUT(9) => \comp_burst.mem_phase_reg_0_n_90\,
      DOUTADOUT(8) => \comp_burst.mem_phase_reg_0_n_91\,
      DOUTADOUT(7) => \comp_burst.mem_phase_reg_0_n_92\,
      DOUTADOUT(6) => \comp_burst.mem_phase_reg_0_n_93\,
      DOUTADOUT(5) => \comp_burst.mem_phase_reg_0_n_94\,
      DOUTADOUT(4) => \comp_burst.mem_phase_reg_0_n_95\,
      DOUTADOUT(3) => \comp_burst.mem_phase_reg_0_n_96\,
      DOUTADOUT(2) => \comp_burst.mem_phase_reg_0_n_97\,
      DOUTADOUT(1) => \comp_burst.mem_phase_reg_0_n_98\,
      DOUTADOUT(0) => \comp_burst.mem_phase_reg_0_n_99\,
      DOUTBDOUT(31 downto 28) => phase_3(3 downto 0),
      DOUTBDOUT(27 downto 8) => phase_2(19 downto 0),
      DOUTBDOUT(7) => \comp_burst.mem_phase_reg_0_n_124\,
      DOUTBDOUT(6) => \comp_burst.mem_phase_reg_0_n_125\,
      DOUTBDOUT(5) => \comp_burst.mem_phase_reg_0_n_126\,
      DOUTBDOUT(4) => \comp_burst.mem_phase_reg_0_n_127\,
      DOUTBDOUT(3) => \comp_burst.mem_phase_reg_0_n_128\,
      DOUTBDOUT(2) => \comp_burst.mem_phase_reg_0_n_129\,
      DOUTBDOUT(1) => \comp_burst.mem_phase_reg_0_n_130\,
      DOUTBDOUT(0) => \comp_burst.mem_phase_reg_0_n_131\,
      DOUTPADOUTP(3 downto 0) => phase_3(7 downto 4),
      DOUTPBDOUTP(3 downto 0) => phase_3(11 downto 8),
      ECCPARITY(7 downto 0) => \NLW_comp_burst.mem_phase_reg_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_comp_burst.mem_phase_reg_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_comp_burst.mem_phase_reg_0_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_wr,
      WEBWE(6) => mem_wr,
      WEBWE(5) => mem_wr,
      WEBWE(4) => mem_wr,
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\comp_burst.mem_phase_reg_1\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => env_up_ptr(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 5) => wr_ptr(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => \NLW_comp_burst.mem_phase_reg_1_CASDINA_UNCONNECTED\(15 downto 0),
      CASDINB(15 downto 0) => \NLW_comp_burst.mem_phase_reg_1_CASDINB_UNCONNECTED\(15 downto 0),
      CASDINPA(1 downto 0) => \NLW_comp_burst.mem_phase_reg_1_CASDINPA_UNCONNECTED\(1 downto 0),
      CASDINPB(1 downto 0) => \NLW_comp_burst.mem_phase_reg_1_CASDINPB_UNCONNECTED\(1 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => \NLW_comp_burst.mem_phase_reg_1_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_comp_burst.mem_phase_reg_1_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_comp_burst.mem_phase_reg_1_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_comp_burst.mem_phase_reg_1_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DINADIN(15 downto 8) => B"11111111",
      DINADIN(7 downto 0) => phase_in(79 downto 72),
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"11",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 8) => \NLW_comp_burst.mem_phase_reg_1_DOUTADOUT_UNCONNECTED\(15 downto 8),
      DOUTADOUT(7 downto 0) => phase_3(19 downto 12),
      DOUTBDOUT(15 downto 0) => \NLW_comp_burst.mem_phase_reg_1_DOUTBDOUT_UNCONNECTED\(15 downto 0),
      DOUTPADOUTP(1 downto 0) => \NLW_comp_burst.mem_phase_reg_1_DOUTPADOUTP_UNCONNECTED\(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => \NLW_comp_burst.mem_phase_reg_1_DOUTPBDOUTP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => mem_wr,
      WEBWE(2) => mem_wr,
      WEBWE(1) => mem_wr,
      WEBWE(0) => mem_wr
    );
\comp_burst.mem_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => '1',
      Q => mem_wr,
      R => '0'
    );
\comp_burst.min_env[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => cfg_rd,
      I1 => \comp_burst.min_env[15]_i_2_n_0\,
      I2 => config_data_adr_out(0),
      I3 => config_data_adr_out(7),
      I4 => config_data_adr_out(5),
      I5 => config_data_adr_out(6),
      O => min_env0
    );
\comp_burst.min_env[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => config_data_adr_out(3),
      I1 => config_data_adr_out(4),
      I2 => config_data_adr_out(1),
      I3 => config_data_adr_out(2),
      O => \comp_burst.min_env[15]_i_2_n_0\
    );
\comp_burst.min_env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(8),
      Q => min_env(0),
      R => '0'
    );
\comp_burst.min_env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(18),
      Q => min_env(10),
      R => '0'
    );
\comp_burst.min_env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(19),
      Q => min_env(11),
      R => '0'
    );
\comp_burst.min_env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(20),
      Q => min_env(12),
      R => '0'
    );
\comp_burst.min_env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(21),
      Q => min_env(13),
      R => '0'
    );
\comp_burst.min_env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(22),
      Q => min_env(14),
      R => '0'
    );
\comp_burst.min_env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(23),
      Q => min_env(15),
      R => '0'
    );
\comp_burst.min_env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(9),
      Q => min_env(1),
      R => '0'
    );
\comp_burst.min_env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(10),
      Q => min_env(2),
      R => '0'
    );
\comp_burst.min_env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(11),
      Q => min_env(3),
      R => '0'
    );
\comp_burst.min_env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(12),
      Q => min_env(4),
      R => '0'
    );
\comp_burst.min_env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(13),
      Q => min_env(5),
      R => '0'
    );
\comp_burst.min_env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(14),
      Q => min_env(6),
      R => '0'
    );
\comp_burst.min_env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(15),
      Q => min_env(7),
      R => '0'
    );
\comp_burst.min_env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(16),
      Q => min_env(8),
      R => '0'
    );
\comp_burst.min_env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => min_env0,
      D => config_data_adr_out(17),
      Q => min_env(9),
      R => '0'
    );
\comp_burst.p2_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => complete_2,
      Q => p2_done,
      R => '0'
    );
\comp_burst.p2_env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(0),
      Q => p2_env(0),
      R => '0'
    );
\comp_burst.p2_env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(10),
      Q => p2_env(10),
      R => '0'
    );
\comp_burst.p2_env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(11),
      Q => p2_env(11),
      R => '0'
    );
\comp_burst.p2_env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(12),
      Q => p2_env(12),
      R => '0'
    );
\comp_burst.p2_env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(13),
      Q => p2_env(13),
      R => '0'
    );
\comp_burst.p2_env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(14),
      Q => p2_env(14),
      R => '0'
    );
\comp_burst.p2_env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(15),
      Q => p2_env(15),
      R => '0'
    );
\comp_burst.p2_env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(1),
      Q => p2_env(1),
      R => '0'
    );
\comp_burst.p2_env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(2),
      Q => p2_env(2),
      R => '0'
    );
\comp_burst.p2_env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(3),
      Q => p2_env(3),
      R => '0'
    );
\comp_burst.p2_env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(4),
      Q => p2_env(4),
      R => '0'
    );
\comp_burst.p2_env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(5),
      Q => p2_env(5),
      R => '0'
    );
\comp_burst.p2_env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(6),
      Q => p2_env(6),
      R => '0'
    );
\comp_burst.p2_env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(7),
      Q => p2_env(7),
      R => '0'
    );
\comp_burst.p2_env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(8),
      Q => p2_env(8),
      R => '0'
    );
\comp_burst.p2_env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_up_val(9),
      Q => p2_env(9),
      R => '0'
    );
\comp_burst.p2_freq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(0),
      Q => p2_freq(0),
      R => '0'
    );
\comp_burst.p2_freq_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(10),
      Q => p2_freq(10),
      R => '0'
    );
\comp_burst.p2_freq_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(11),
      Q => p2_freq(11),
      R => '0'
    );
\comp_burst.p2_freq_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(12),
      Q => p2_freq(12),
      R => '0'
    );
\comp_burst.p2_freq_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(13),
      Q => p2_freq(13),
      R => '0'
    );
\comp_burst.p2_freq_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(14),
      Q => p2_freq(14),
      R => '0'
    );
\comp_burst.p2_freq_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(15),
      Q => p2_freq(15),
      R => '0'
    );
\comp_burst.p2_freq_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(16),
      Q => p2_freq(16),
      R => '0'
    );
\comp_burst.p2_freq_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(17),
      Q => p2_freq(17),
      R => '0'
    );
\comp_burst.p2_freq_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(18),
      Q => p2_freq(18),
      R => '0'
    );
\comp_burst.p2_freq_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(19),
      Q => p2_freq(19),
      R => '0'
    );
\comp_burst.p2_freq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(1),
      Q => p2_freq(1),
      R => '0'
    );
\comp_burst.p2_freq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(2),
      Q => p2_freq(2),
      R => '0'
    );
\comp_burst.p2_freq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(3),
      Q => p2_freq(3),
      R => '0'
    );
\comp_burst.p2_freq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(4),
      Q => p2_freq(4),
      R => '0'
    );
\comp_burst.p2_freq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(5),
      Q => p2_freq(5),
      R => '0'
    );
\comp_burst.p2_freq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(6),
      Q => p2_freq(6),
      R => '0'
    );
\comp_burst.p2_freq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(7),
      Q => p2_freq(7),
      R => '0'
    );
\comp_burst.p2_freq_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(8),
      Q => p2_freq(8),
      R => '0'
    );
\comp_burst.p2_freq_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => in_freq(9),
      Q => p2_freq(9),
      R => '0'
    );
\comp_burst.p2_max_pos[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => env_start_ind(9),
      I1 => env_start_ind(7),
      I2 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      I3 => env_start_ind(6),
      I4 => env_start_ind(8),
      I5 => env_start_ind(10),
      O => \comp_burst.p2_max_pos[10]_i_3_n_0\
    );
\comp_burst.p2_max_pos[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(10),
      I1 => env_start_ind(9),
      I2 => env_start_ind(7),
      I3 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      I4 => env_start_ind(6),
      I5 => env_start_ind(8),
      O => \comp_burst.p2_max_pos[10]_i_4_n_0\
    );
\comp_burst.p2_max_pos[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(9),
      I1 => env_start_ind(8),
      I2 => env_start_ind(6),
      I3 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      I4 => env_start_ind(7),
      O => \comp_burst.p2_max_pos[10]_i_5_n_0\
    );
\comp_burst.p2_max_pos[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(10),
      I1 => env_up_max_ind(10),
      O => \comp_burst.p2_max_pos[10]_i_6_n_0\
    );
\comp_burst.p2_max_pos[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(9),
      I1 => env_up_max_ind(9),
      O => \comp_burst.p2_max_pos[10]_i_7_n_0\
    );
\comp_burst.p2_max_pos[10]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(8),
      I1 => env_up_max_ind(8),
      O => \comp_burst.p2_max_pos[10]_i_8_n_0\
    );
\comp_burst.p2_max_pos[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => env_start_ind(4),
      I1 => env_start_ind(2),
      I2 => env_start_ind(0),
      I3 => env_start_ind(1),
      I4 => env_start_ind(3),
      I5 => env_start_ind(5),
      O => \comp_burst.p2_max_pos[10]_i_9_n_0\
    );
\comp_burst.p2_max_pos[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(1),
      I1 => env_start_ind(0),
      O => \comp_burst.p2_max_pos[7]_i_10_n_0\
    );
\comp_burst.p2_max_pos[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(7),
      I1 => env_up_max_ind(7),
      O => \comp_burst.p2_max_pos[7]_i_11_n_0\
    );
\comp_burst.p2_max_pos[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(6),
      I1 => env_up_max_ind(6),
      O => \comp_burst.p2_max_pos[7]_i_12_n_0\
    );
\comp_burst.p2_max_pos[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(5),
      I1 => env_up_max_ind(5),
      O => \comp_burst.p2_max_pos[7]_i_13_n_0\
    );
\comp_burst.p2_max_pos[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(4),
      I1 => env_up_max_ind(4),
      O => \comp_burst.p2_max_pos[7]_i_14_n_0\
    );
\comp_burst.p2_max_pos[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(3),
      I1 => env_up_max_ind(3),
      O => \comp_burst.p2_max_pos[7]_i_15_n_0\
    );
\comp_burst.p2_max_pos[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(2),
      I1 => env_up_max_ind(2),
      O => \comp_burst.p2_max_pos[7]_i_16_n_0\
    );
\comp_burst.p2_max_pos[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(1),
      I1 => env_up_max_ind(1),
      O => \comp_burst.p2_max_pos[7]_i_17_n_0\
    );
\comp_burst.p2_max_pos[7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_down_max_ind(0),
      I1 => env_up_max_ind(0),
      O => \comp_burst.p2_max_pos[7]_i_18_n_0\
    );
\comp_burst.p2_max_pos[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => env_start_ind(4),
      I1 => env_start_ind(2),
      I2 => env_start_ind(0),
      I3 => env_start_ind(1),
      I4 => env_start_ind(3),
      I5 => env_start_ind(5),
      O => \comp_burst.p2_max_pos[7]_i_19_n_0\
    );
\comp_burst.p2_max_pos[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(8),
      I1 => env_start_ind(7),
      I2 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      I3 => env_start_ind(6),
      O => \comp_burst.p2_max_pos[7]_i_3_n_0\
    );
\comp_burst.p2_max_pos[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(7),
      I1 => env_start_ind(6),
      I2 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      O => \comp_burst.p2_max_pos[7]_i_4_n_0\
    );
\comp_burst.p2_max_pos[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(6),
      I1 => \comp_burst.p2_max_pos[7]_i_19_n_0\,
      O => \comp_burst.p2_max_pos[7]_i_5_n_0\
    );
\comp_burst.p2_max_pos[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(5),
      I1 => env_start_ind(4),
      I2 => env_start_ind(2),
      I3 => env_start_ind(0),
      I4 => env_start_ind(1),
      I5 => env_start_ind(3),
      O => \comp_burst.p2_max_pos[7]_i_6_n_0\
    );
\comp_burst.p2_max_pos[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(4),
      I1 => env_start_ind(3),
      I2 => env_start_ind(1),
      I3 => env_start_ind(0),
      I4 => env_start_ind(2),
      O => \comp_burst.p2_max_pos[7]_i_7_n_0\
    );
\comp_burst.p2_max_pos[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(3),
      I1 => env_start_ind(2),
      I2 => env_start_ind(0),
      I3 => env_start_ind(1),
      O => \comp_burst.p2_max_pos[7]_i_8_n_0\
    );
\comp_burst.p2_max_pos[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \comp_burst.p2_max_pos_reg2\(2),
      I1 => env_start_ind(1),
      I2 => env_start_ind(0),
      O => \comp_burst.p2_max_pos[7]_i_9_n_0\
    );
\comp_burst.p2_max_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(0),
      Q => p2_max_pos(0),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(10),
      Q => p2_max_pos(10),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p2_max_pos_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_comp_burst.p2_max_pos_reg[10]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \comp_burst.p2_max_pos_reg[10]_i_1_n_6\,
      CO(0) => \comp_burst.p2_max_pos_reg[10]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => \comp_burst.p2_max_pos_reg2\(10 downto 9),
      O(7 downto 3) => \NLW_comp_burst.p2_max_pos_reg[10]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \comp_burst.p2_max_pos_reg00_out\(10 downto 8),
      S(7 downto 3) => B"00000",
      S(2) => \comp_burst.p2_max_pos[10]_i_3_n_0\,
      S(1) => \comp_burst.p2_max_pos[10]_i_4_n_0\,
      S(0) => \comp_burst.p2_max_pos[10]_i_5_n_0\
    );
\comp_burst.p2_max_pos_reg[10]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p2_max_pos_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_comp_burst.p2_max_pos_reg[10]_i_2_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \comp_burst.p2_max_pos_reg[10]_i_2_n_6\,
      CO(0) => \comp_burst.p2_max_pos_reg[10]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => env_down_max_ind(9 downto 8),
      O(7 downto 3) => \NLW_comp_burst.p2_max_pos_reg[10]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \comp_burst.p2_max_pos_reg2\(10 downto 8),
      S(7 downto 3) => B"00000",
      S(2) => \comp_burst.p2_max_pos[10]_i_6_n_0\,
      S(1) => \comp_burst.p2_max_pos[10]_i_7_n_0\,
      S(0) => \comp_burst.p2_max_pos[10]_i_8_n_0\
    );
\comp_burst.p2_max_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(1),
      Q => p2_max_pos(1),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(2),
      Q => p2_max_pos(2),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(3),
      Q => p2_max_pos(3),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(4),
      Q => p2_max_pos(4),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(5),
      Q => p2_max_pos(5),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(6),
      Q => p2_max_pos(6),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(7),
      Q => p2_max_pos(7),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.p2_max_pos_reg[7]_i_1_n_0\,
      CO(6) => \comp_burst.p2_max_pos_reg[7]_i_1_n_1\,
      CO(5) => \comp_burst.p2_max_pos_reg[7]_i_1_n_2\,
      CO(4) => \comp_burst.p2_max_pos_reg[7]_i_1_n_3\,
      CO(3) => \comp_burst.p2_max_pos_reg[7]_i_1_n_4\,
      CO(2) => \comp_burst.p2_max_pos_reg[7]_i_1_n_5\,
      CO(1) => \comp_burst.p2_max_pos_reg[7]_i_1_n_6\,
      CO(0) => \comp_burst.p2_max_pos_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \comp_burst.p2_max_pos_reg2\(8 downto 1),
      O(7 downto 0) => \comp_burst.p2_max_pos_reg00_out\(7 downto 0),
      S(7) => \comp_burst.p2_max_pos[7]_i_3_n_0\,
      S(6) => \comp_burst.p2_max_pos[7]_i_4_n_0\,
      S(5) => \comp_burst.p2_max_pos[7]_i_5_n_0\,
      S(4) => \comp_burst.p2_max_pos[7]_i_6_n_0\,
      S(3) => \comp_burst.p2_max_pos[7]_i_7_n_0\,
      S(2) => \comp_burst.p2_max_pos[7]_i_8_n_0\,
      S(1) => \comp_burst.p2_max_pos[7]_i_9_n_0\,
      S(0) => \comp_burst.p2_max_pos[7]_i_10_n_0\
    );
\comp_burst.p2_max_pos_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.p2_max_pos_reg[7]_i_2_n_0\,
      CO(6) => \comp_burst.p2_max_pos_reg[7]_i_2_n_1\,
      CO(5) => \comp_burst.p2_max_pos_reg[7]_i_2_n_2\,
      CO(4) => \comp_burst.p2_max_pos_reg[7]_i_2_n_3\,
      CO(3) => \comp_burst.p2_max_pos_reg[7]_i_2_n_4\,
      CO(2) => \comp_burst.p2_max_pos_reg[7]_i_2_n_5\,
      CO(1) => \comp_burst.p2_max_pos_reg[7]_i_2_n_6\,
      CO(0) => \comp_burst.p2_max_pos_reg[7]_i_2_n_7\,
      DI(7 downto 0) => env_down_max_ind(7 downto 0),
      O(7 downto 1) => \comp_burst.p2_max_pos_reg2\(7 downto 1),
      O(0) => \NLW_comp_burst.p2_max_pos_reg[7]_i_2_O_UNCONNECTED\(0),
      S(7) => \comp_burst.p2_max_pos[7]_i_11_n_0\,
      S(6) => \comp_burst.p2_max_pos[7]_i_12_n_0\,
      S(5) => \comp_burst.p2_max_pos[7]_i_13_n_0\,
      S(4) => \comp_burst.p2_max_pos[7]_i_14_n_0\,
      S(3) => \comp_burst.p2_max_pos[7]_i_15_n_0\,
      S(2) => \comp_burst.p2_max_pos[7]_i_16_n_0\,
      S(1) => \comp_burst.p2_max_pos[7]_i_17_n_0\,
      S(0) => \comp_burst.p2_max_pos[7]_i_18_n_0\
    );
\comp_burst.p2_max_pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(8),
      Q => p2_max_pos(8),
      R => '0'
    );
\comp_burst.p2_max_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_max_pos_reg00_out\(9),
      Q => p2_max_pos(9),
      R => '0'
    );
\comp_burst.p2_phase_diff[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(17),
      O => \comp_burst.p2_phase_diff[15]_i_11_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(16),
      O => \comp_burst.p2_phase_diff[15]_i_12_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(15),
      O => \comp_burst.p2_phase_diff[15]_i_13_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(14),
      O => \comp_burst.p2_phase_diff[15]_i_14_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(13),
      O => \comp_burst.p2_phase_diff[15]_i_15_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(12),
      O => \comp_burst.p2_phase_diff[15]_i_16_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(11),
      O => \comp_burst.p2_phase_diff[15]_i_17_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(10),
      O => \comp_burst.p2_phase_diff[15]_i_18_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(15),
      I1 => \comp_burst.p2_phase_diff_reg[15]_i_10_n_8\,
      O => \comp_burst.p2_phase_diff[15]_i_2_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(14),
      I1 => \comp_burst.p2_phase_diff_reg[15]_i_10_n_9\,
      O => \comp_burst.p2_phase_diff[15]_i_3_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(13),
      I1 => \comp_burst.p2_phase_diff_reg[15]_i_10_n_10\,
      O => \comp_burst.p2_phase_diff[15]_i_4_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(12),
      I1 => \comp_burst.p2_phase_diff_reg[15]_i_10_n_11\,
      O => \comp_burst.p2_phase_diff[15]_i_5_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(11),
      I1 => \comp_burst.p2_phase_diff_reg[15]_i_10_n_12\,
      O => \comp_burst.p2_phase_diff[15]_i_6_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(10),
      I1 => \comp_burst.p2_phase_diff_reg[15]_i_10_n_13\,
      O => \comp_burst.p2_phase_diff[15]_i_7_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(9),
      I1 => \comp_burst.p2_phase_diff_reg[15]_i_10_n_14\,
      O => \comp_burst.p2_phase_diff[15]_i_8_n_0\
    );
\comp_burst.p2_phase_diff[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(8),
      I1 => \comp_burst.p2_phase_diff_reg[15]_i_10_n_15\,
      O => \comp_burst.p2_phase_diff[15]_i_9_n_0\
    );
\comp_burst.p2_phase_diff[19]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(18),
      O => \comp_burst.p2_phase_diff[19]_i_10_n_0\
    );
\comp_burst.p2_phase_diff[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(19),
      I1 => \comp_burst.p2_phase_diff_reg[19]_i_6_n_12\,
      O => \comp_burst.p2_phase_diff[19]_i_2_n_0\
    );
\comp_burst.p2_phase_diff[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(18),
      I1 => \comp_burst.p2_phase_diff_reg[19]_i_6_n_13\,
      O => \comp_burst.p2_phase_diff[19]_i_3_n_0\
    );
\comp_burst.p2_phase_diff[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(17),
      I1 => \comp_burst.p2_phase_diff_reg[19]_i_6_n_14\,
      O => \comp_burst.p2_phase_diff[19]_i_4_n_0\
    );
\comp_burst.p2_phase_diff[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(16),
      I1 => \comp_burst.p2_phase_diff_reg[19]_i_6_n_15\,
      O => \comp_burst.p2_phase_diff[19]_i_5_n_0\
    );
\comp_burst.p2_phase_diff[19]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(21),
      O => \comp_burst.p2_phase_diff[19]_i_7_n_0\
    );
\comp_burst.p2_phase_diff[19]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(20),
      O => \comp_burst.p2_phase_diff[19]_i_8_n_0\
    );
\comp_burst.p2_phase_diff[19]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(19),
      O => \comp_burst.p2_phase_diff[19]_i_9_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(9),
      O => \comp_burst.p2_phase_diff[7]_i_11_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(8),
      O => \comp_burst.p2_phase_diff[7]_i_12_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(7),
      O => \comp_burst.p2_phase_diff[7]_i_13_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(6),
      O => \comp_burst.p2_phase_diff[7]_i_14_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(5),
      O => \comp_burst.p2_phase_diff[7]_i_15_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(4),
      O => \comp_burst.p2_phase_diff[7]_i_16_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pred_phase(3),
      O => \comp_burst.p2_phase_diff[7]_i_17_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(7),
      I1 => \comp_burst.p2_phase_diff_reg[7]_i_10_n_8\,
      O => \comp_burst.p2_phase_diff[7]_i_2_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(6),
      I1 => \comp_burst.p2_phase_diff_reg[7]_i_10_n_9\,
      O => \comp_burst.p2_phase_diff[7]_i_3_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(5),
      I1 => \comp_burst.p2_phase_diff_reg[7]_i_10_n_10\,
      O => \comp_burst.p2_phase_diff[7]_i_4_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(4),
      I1 => \comp_burst.p2_phase_diff_reg[7]_i_10_n_11\,
      O => \comp_burst.p2_phase_diff[7]_i_5_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(3),
      I1 => \comp_burst.p2_phase_diff_reg[7]_i_10_n_12\,
      O => \comp_burst.p2_phase_diff[7]_i_6_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(2),
      I1 => \comp_burst.p2_phase_diff_reg[7]_i_10_n_13\,
      O => \comp_burst.p2_phase_diff[7]_i_7_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(1),
      I1 => \comp_burst.p2_phase_diff_reg[7]_i_10_n_14\,
      O => \comp_burst.p2_phase_diff[7]_i_8_n_0\
    );
\comp_burst.p2_phase_diff[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_val(0),
      I1 => \comp_burst.p2_phase_diff_reg[7]_i_10_n_15\,
      O => \comp_burst.p2_phase_diff[7]_i_9_n_0\
    );
\comp_burst.p2_phase_diff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(0),
      Q => p2_phase_diff(0),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(10),
      Q => p2_phase_diff(10),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(11),
      Q => p2_phase_diff(11),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(12),
      Q => p2_phase_diff(12),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(13),
      Q => p2_phase_diff(13),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(14),
      Q => p2_phase_diff(14),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(15),
      Q => p2_phase_diff(15),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p2_phase_diff_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_burst.p2_phase_diff_reg[15]_i_1_n_0\,
      CO(6) => \comp_burst.p2_phase_diff_reg[15]_i_1_n_1\,
      CO(5) => \comp_burst.p2_phase_diff_reg[15]_i_1_n_2\,
      CO(4) => \comp_burst.p2_phase_diff_reg[15]_i_1_n_3\,
      CO(3) => \comp_burst.p2_phase_diff_reg[15]_i_1_n_4\,
      CO(2) => \comp_burst.p2_phase_diff_reg[15]_i_1_n_5\,
      CO(1) => \comp_burst.p2_phase_diff_reg[15]_i_1_n_6\,
      CO(0) => \comp_burst.p2_phase_diff_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_val(15 downto 8),
      O(7 downto 0) => p2_phase_diff02_out(15 downto 8),
      S(7) => \comp_burst.p2_phase_diff[15]_i_2_n_0\,
      S(6) => \comp_burst.p2_phase_diff[15]_i_3_n_0\,
      S(5) => \comp_burst.p2_phase_diff[15]_i_4_n_0\,
      S(4) => \comp_burst.p2_phase_diff[15]_i_5_n_0\,
      S(3) => \comp_burst.p2_phase_diff[15]_i_6_n_0\,
      S(2) => \comp_burst.p2_phase_diff[15]_i_7_n_0\,
      S(1) => \comp_burst.p2_phase_diff[15]_i_8_n_0\,
      S(0) => \comp_burst.p2_phase_diff[15]_i_9_n_0\
    );
\comp_burst.p2_phase_diff_reg[15]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p2_phase_diff_reg[7]_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_0\,
      CO(6) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_1\,
      CO(5) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_2\,
      CO(4) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_3\,
      CO(3) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_4\,
      CO(2) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_5\,
      CO(1) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_6\,
      CO(0) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_8\,
      O(6) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_9\,
      O(5) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_10\,
      O(4) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_11\,
      O(3) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_12\,
      O(2) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_13\,
      O(1) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_14\,
      O(0) => \comp_burst.p2_phase_diff_reg[15]_i_10_n_15\,
      S(7) => \comp_burst.p2_phase_diff[15]_i_11_n_0\,
      S(6) => \comp_burst.p2_phase_diff[15]_i_12_n_0\,
      S(5) => \comp_burst.p2_phase_diff[15]_i_13_n_0\,
      S(4) => \comp_burst.p2_phase_diff[15]_i_14_n_0\,
      S(3) => \comp_burst.p2_phase_diff[15]_i_15_n_0\,
      S(2) => \comp_burst.p2_phase_diff[15]_i_16_n_0\,
      S(1) => \comp_burst.p2_phase_diff[15]_i_17_n_0\,
      S(0) => \comp_burst.p2_phase_diff[15]_i_18_n_0\
    );
\comp_burst.p2_phase_diff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(16),
      Q => p2_phase_diff(16),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(17),
      Q => p2_phase_diff(17),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(18),
      Q => p2_phase_diff(18),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(19),
      Q => p2_phase_diff(19),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p2_phase_diff_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_comp_burst.p2_phase_diff_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \comp_burst.p2_phase_diff_reg[19]_i_1_n_5\,
      CO(1) => \comp_burst.p2_phase_diff_reg[19]_i_1_n_6\,
      CO(0) => \comp_burst.p2_phase_diff_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_val(18 downto 16),
      O(7 downto 4) => \NLW_comp_burst.p2_phase_diff_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => p2_phase_diff02_out(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \comp_burst.p2_phase_diff[19]_i_2_n_0\,
      S(2) => \comp_burst.p2_phase_diff[19]_i_3_n_0\,
      S(1) => \comp_burst.p2_phase_diff[19]_i_4_n_0\,
      S(0) => \comp_burst.p2_phase_diff[19]_i_5_n_0\
    );
\comp_burst.p2_phase_diff_reg[19]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p2_phase_diff_reg[15]_i_10_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_comp_burst.p2_phase_diff_reg[19]_i_6_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \comp_burst.p2_phase_diff_reg[19]_i_6_n_5\,
      CO(1) => \comp_burst.p2_phase_diff_reg[19]_i_6_n_6\,
      CO(0) => \comp_burst.p2_phase_diff_reg[19]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_comp_burst.p2_phase_diff_reg[19]_i_6_O_UNCONNECTED\(7 downto 4),
      O(3) => \comp_burst.p2_phase_diff_reg[19]_i_6_n_12\,
      O(2) => \comp_burst.p2_phase_diff_reg[19]_i_6_n_13\,
      O(1) => \comp_burst.p2_phase_diff_reg[19]_i_6_n_14\,
      O(0) => \comp_burst.p2_phase_diff_reg[19]_i_6_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \comp_burst.p2_phase_diff[19]_i_7_n_0\,
      S(2) => \comp_burst.p2_phase_diff[19]_i_8_n_0\,
      S(1) => \comp_burst.p2_phase_diff[19]_i_9_n_0\,
      S(0) => \comp_burst.p2_phase_diff[19]_i_10_n_0\
    );
\comp_burst.p2_phase_diff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(1),
      Q => p2_phase_diff(1),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(2),
      Q => p2_phase_diff(2),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(3),
      Q => p2_phase_diff(3),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(4),
      Q => p2_phase_diff(4),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(5),
      Q => p2_phase_diff(5),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(6),
      Q => p2_phase_diff(6),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(7),
      Q => p2_phase_diff(7),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.p2_phase_diff_reg[7]_i_1_n_0\,
      CO(6) => \comp_burst.p2_phase_diff_reg[7]_i_1_n_1\,
      CO(5) => \comp_burst.p2_phase_diff_reg[7]_i_1_n_2\,
      CO(4) => \comp_burst.p2_phase_diff_reg[7]_i_1_n_3\,
      CO(3) => \comp_burst.p2_phase_diff_reg[7]_i_1_n_4\,
      CO(2) => \comp_burst.p2_phase_diff_reg[7]_i_1_n_5\,
      CO(1) => \comp_burst.p2_phase_diff_reg[7]_i_1_n_6\,
      CO(0) => \comp_burst.p2_phase_diff_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_val(7 downto 0),
      O(7 downto 0) => p2_phase_diff02_out(7 downto 0),
      S(7) => \comp_burst.p2_phase_diff[7]_i_2_n_0\,
      S(6) => \comp_burst.p2_phase_diff[7]_i_3_n_0\,
      S(5) => \comp_burst.p2_phase_diff[7]_i_4_n_0\,
      S(4) => \comp_burst.p2_phase_diff[7]_i_5_n_0\,
      S(3) => \comp_burst.p2_phase_diff[7]_i_6_n_0\,
      S(2) => \comp_burst.p2_phase_diff[7]_i_7_n_0\,
      S(1) => \comp_burst.p2_phase_diff[7]_i_8_n_0\,
      S(0) => \comp_burst.p2_phase_diff[7]_i_9_n_0\
    );
\comp_burst.p2_phase_diff_reg[7]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_0\,
      CO(6) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_1\,
      CO(5) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_2\,
      CO(4) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_3\,
      CO(3) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_4\,
      CO(2) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_5\,
      CO(1) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_6\,
      CO(0) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_8\,
      O(6) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_9\,
      O(5) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_10\,
      O(4) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_11\,
      O(3) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_12\,
      O(2) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_13\,
      O(1) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_14\,
      O(0) => \comp_burst.p2_phase_diff_reg[7]_i_10_n_15\,
      S(7) => \comp_burst.p2_phase_diff[7]_i_11_n_0\,
      S(6) => \comp_burst.p2_phase_diff[7]_i_12_n_0\,
      S(5) => \comp_burst.p2_phase_diff[7]_i_13_n_0\,
      S(4) => \comp_burst.p2_phase_diff[7]_i_14_n_0\,
      S(3) => \comp_burst.p2_phase_diff[7]_i_15_n_0\,
      S(2) => \comp_burst.p2_phase_diff[7]_i_16_n_0\,
      S(1) => \comp_burst.p2_phase_diff[7]_i_17_n_0\,
      S(0) => pred_phase(2)
    );
\comp_burst.p2_phase_diff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(8),
      Q => p2_phase_diff(8),
      R => '0'
    );
\comp_burst.p2_phase_diff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_phase_diff02_out(9),
      Q => p2_phase_diff(9),
      R => '0'
    );
\comp_burst.p2_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(4),
      Q => p2_phase(0),
      R => '0'
    );
\comp_burst.p2_phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(14),
      Q => p2_phase(10),
      R => '0'
    );
\comp_burst.p2_phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(15),
      Q => p2_phase(11),
      R => '0'
    );
\comp_burst.p2_phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(16),
      Q => p2_phase(12),
      R => '0'
    );
\comp_burst.p2_phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(17),
      Q => p2_phase(13),
      R => '0'
    );
\comp_burst.p2_phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(18),
      Q => p2_phase(14),
      R => '0'
    );
\comp_burst.p2_phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(19),
      Q => p2_phase(15),
      R => '0'
    );
\comp_burst.p2_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(5),
      Q => p2_phase(1),
      R => '0'
    );
\comp_burst.p2_phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(6),
      Q => p2_phase(2),
      R => '0'
    );
\comp_burst.p2_phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(7),
      Q => p2_phase(3),
      R => '0'
    );
\comp_burst.p2_phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(8),
      Q => p2_phase(4),
      R => '0'
    );
\comp_burst.p2_phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(9),
      Q => p2_phase(5),
      R => '0'
    );
\comp_burst.p2_phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(10),
      Q => p2_phase(6),
      R => '0'
    );
\comp_burst.p2_phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(11),
      Q => p2_phase(7),
      R => '0'
    );
\comp_burst.p2_phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(12),
      Q => p2_phase(8),
      R => '0'
    );
\comp_burst.p2_phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_val(13),
      Q => p2_phase(9),
      R => '0'
    );
\comp_burst.p2_size[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(0),
      O => \comp_burst.p2_size[0]_i_1_n_0\
    );
\comp_burst.p2_size[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(9),
      I1 => \comp_burst.p2_size_reg1\(7),
      I2 => \comp_burst.p2_size[10]_i_4_n_0\,
      I3 => \comp_burst.p2_size_reg1\(6),
      I4 => \comp_burst.p2_size_reg1\(8),
      I5 => \comp_burst.p2_size_reg1\(10),
      O => \comp_burst.p2_size[10]_i_1_n_0\
    );
\comp_burst.p2_size[10]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_end_ind(5),
      I1 => \comp_burst.p2_max_pos[7]_i_19_n_0\,
      O => \comp_burst.p2_size[10]_i_10_n_0\
    );
\comp_burst.p2_size[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => env_end_ind(4),
      I1 => env_start_ind(4),
      I2 => env_start_ind(2),
      I3 => env_start_ind(0),
      I4 => env_start_ind(1),
      I5 => env_start_ind(3),
      O => \comp_burst.p2_size[10]_i_11_n_0\
    );
\comp_burst.p2_size[10]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => env_end_ind(3),
      I1 => env_start_ind(3),
      I2 => env_start_ind(1),
      I3 => env_start_ind(0),
      I4 => env_start_ind(2),
      O => \comp_burst.p2_size[10]_i_12_n_0\
    );
\comp_burst.p2_size[10]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => env_end_ind(2),
      I1 => env_start_ind(2),
      I2 => env_start_ind(0),
      I3 => env_start_ind(1),
      O => \comp_burst.p2_size[10]_i_13_n_0\
    );
\comp_burst.p2_size[10]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => env_end_ind(1),
      I1 => env_start_ind(1),
      I2 => env_start_ind(0),
      O => \comp_burst.p2_size[10]_i_14_n_0\
    );
\comp_burst.p2_size[10]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => env_end_ind(0),
      I1 => env_start_ind(0),
      O => \comp_burst.p2_size[10]_i_15_n_0\
    );
\comp_burst.p2_size[10]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => env_start_ind(8),
      I1 => env_start_ind(6),
      I2 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      I3 => env_start_ind(7),
      I4 => env_start_ind(9),
      O => \comp_burst.p2_size[10]_i_16_n_0\
    );
\comp_burst.p2_size[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(4),
      I1 => \comp_burst.p2_size_reg1\(2),
      I2 => \comp_burst.p2_size_reg1\(0),
      I3 => \comp_burst.p2_size_reg1\(1),
      I4 => \comp_burst.p2_size_reg1\(3),
      I5 => \comp_burst.p2_size_reg1\(5),
      O => \comp_burst.p2_size[10]_i_4_n_0\
    );
\comp_burst.p2_size[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \comp_burst.p2_size[10]_i_16_n_0\,
      I1 => env_end_ind(10),
      I2 => env_start_ind(10),
      O => \comp_burst.p2_size[10]_i_5_n_0\
    );
\comp_burst.p2_size[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => env_end_ind(9),
      I1 => env_start_ind(9),
      I2 => env_start_ind(7),
      I3 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      I4 => env_start_ind(6),
      I5 => env_start_ind(8),
      O => \comp_burst.p2_size[10]_i_6_n_0\
    );
\comp_burst.p2_size[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => env_end_ind(8),
      I1 => env_start_ind(8),
      I2 => env_start_ind(6),
      I3 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      I4 => env_start_ind(7),
      O => \comp_burst.p2_size[10]_i_7_n_0\
    );
\comp_burst.p2_size[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => env_end_ind(7),
      I1 => env_start_ind(7),
      I2 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      I3 => env_start_ind(6),
      O => \comp_burst.p2_size[10]_i_8_n_0\
    );
\comp_burst.p2_size[10]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => env_end_ind(6),
      I1 => env_start_ind(6),
      I2 => \comp_burst.p2_max_pos[10]_i_9_n_0\,
      O => \comp_burst.p2_size[10]_i_9_n_0\
    );
\comp_burst.p2_size[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(0),
      I1 => \comp_burst.p2_size_reg1\(1),
      O => \comp_burst.p2_size[1]_i_1_n_0\
    );
\comp_burst.p2_size[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(1),
      I1 => \comp_burst.p2_size_reg1\(0),
      I2 => \comp_burst.p2_size_reg1\(2),
      O => \comp_burst.p2_size[2]_i_1_n_0\
    );
\comp_burst.p2_size[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(2),
      I1 => \comp_burst.p2_size_reg1\(0),
      I2 => \comp_burst.p2_size_reg1\(1),
      I3 => \comp_burst.p2_size_reg1\(3),
      O => \comp_burst.p2_size[3]_i_1_n_0\
    );
\comp_burst.p2_size[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(3),
      I1 => \comp_burst.p2_size_reg1\(1),
      I2 => \comp_burst.p2_size_reg1\(0),
      I3 => \comp_burst.p2_size_reg1\(2),
      I4 => \comp_burst.p2_size_reg1\(4),
      O => \comp_burst.p2_size[4]_i_1_n_0\
    );
\comp_burst.p2_size[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(4),
      I1 => \comp_burst.p2_size_reg1\(2),
      I2 => \comp_burst.p2_size_reg1\(0),
      I3 => \comp_burst.p2_size_reg1\(1),
      I4 => \comp_burst.p2_size_reg1\(3),
      I5 => \comp_burst.p2_size_reg1\(5),
      O => \comp_burst.p2_size[5]_i_1_n_0\
    );
\comp_burst.p2_size[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \comp_burst.p2_size[10]_i_4_n_0\,
      I1 => \comp_burst.p2_size_reg1\(6),
      O => \comp_burst.p2_size[6]_i_1_n_0\
    );
\comp_burst.p2_size[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(6),
      I1 => \comp_burst.p2_size[10]_i_4_n_0\,
      I2 => \comp_burst.p2_size_reg1\(7),
      O => \comp_burst.p2_size[7]_i_1_n_0\
    );
\comp_burst.p2_size[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(7),
      I1 => \comp_burst.p2_size[10]_i_4_n_0\,
      I2 => \comp_burst.p2_size_reg1\(6),
      I3 => \comp_burst.p2_size_reg1\(8),
      O => \comp_burst.p2_size[8]_i_1_n_0\
    );
\comp_burst.p2_size[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \comp_burst.p2_size_reg1\(8),
      I1 => \comp_burst.p2_size_reg1\(6),
      I2 => \comp_burst.p2_size[10]_i_4_n_0\,
      I3 => \comp_burst.p2_size_reg1\(7),
      I4 => \comp_burst.p2_size_reg1\(9),
      O => \comp_burst.p2_size[9]_i_1_n_0\
    );
\comp_burst.p2_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[0]_i_1_n_0\,
      Q => p2_size(0),
      R => '0'
    );
\comp_burst.p2_size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[10]_i_1_n_0\,
      Q => p2_size(10),
      R => '0'
    );
\comp_burst.p2_size_reg[10]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p2_size_reg[10]_i_3_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_comp_burst.p2_size_reg[10]_i_2_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \comp_burst.p2_size_reg[10]_i_2_n_6\,
      CO(0) => \comp_burst.p2_size_reg[10]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => env_end_ind(9 downto 8),
      O(7 downto 3) => \NLW_comp_burst.p2_size_reg[10]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \comp_burst.p2_size_reg1\(10 downto 8),
      S(7 downto 3) => B"00000",
      S(2) => \comp_burst.p2_size[10]_i_5_n_0\,
      S(1) => \comp_burst.p2_size[10]_i_6_n_0\,
      S(0) => \comp_burst.p2_size[10]_i_7_n_0\
    );
\comp_burst.p2_size_reg[10]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.p2_size_reg[10]_i_3_n_0\,
      CO(6) => \comp_burst.p2_size_reg[10]_i_3_n_1\,
      CO(5) => \comp_burst.p2_size_reg[10]_i_3_n_2\,
      CO(4) => \comp_burst.p2_size_reg[10]_i_3_n_3\,
      CO(3) => \comp_burst.p2_size_reg[10]_i_3_n_4\,
      CO(2) => \comp_burst.p2_size_reg[10]_i_3_n_5\,
      CO(1) => \comp_burst.p2_size_reg[10]_i_3_n_6\,
      CO(0) => \comp_burst.p2_size_reg[10]_i_3_n_7\,
      DI(7 downto 0) => env_end_ind(7 downto 0),
      O(7 downto 0) => \comp_burst.p2_size_reg1\(7 downto 0),
      S(7) => \comp_burst.p2_size[10]_i_8_n_0\,
      S(6) => \comp_burst.p2_size[10]_i_9_n_0\,
      S(5) => \comp_burst.p2_size[10]_i_10_n_0\,
      S(4) => \comp_burst.p2_size[10]_i_11_n_0\,
      S(3) => \comp_burst.p2_size[10]_i_12_n_0\,
      S(2) => \comp_burst.p2_size[10]_i_13_n_0\,
      S(1) => \comp_burst.p2_size[10]_i_14_n_0\,
      S(0) => \comp_burst.p2_size[10]_i_15_n_0\
    );
\comp_burst.p2_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[1]_i_1_n_0\,
      Q => p2_size(1),
      R => '0'
    );
\comp_burst.p2_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[2]_i_1_n_0\,
      Q => p2_size(2),
      R => '0'
    );
\comp_burst.p2_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[3]_i_1_n_0\,
      Q => p2_size(3),
      R => '0'
    );
\comp_burst.p2_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[4]_i_1_n_0\,
      Q => p2_size(4),
      R => '0'
    );
\comp_burst.p2_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[5]_i_1_n_0\,
      Q => p2_size(5),
      R => '0'
    );
\comp_burst.p2_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[6]_i_1_n_0\,
      Q => p2_size(6),
      R => '0'
    );
\comp_burst.p2_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[7]_i_1_n_0\,
      Q => p2_size(7),
      R => '0'
    );
\comp_burst.p2_size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[8]_i_1_n_0\,
      Q => p2_size(8),
      R => '0'
    );
\comp_burst.p2_size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_burst.complete_1_reg_n_0\,
      D => \comp_burst.p2_size[9]_i_1_n_0\,
      Q => p2_size(9),
      R => '0'
    );
\comp_burst.p2_wr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => \comp_burst.env_start_ind_reg[10]_i_2_n_0\,
      I1 => run_env_start,
      I2 => comp_env,
      I3 => \comp_burst.p2_wr_reg_n_0\,
      O => \comp_burst.p2_wr_i_1_n_0\
    );
\comp_burst.p2_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.p2_wr_i_1_n_0\,
      Q => \comp_burst.p2_wr_reg_n_0\,
      R => scan_start
    );
\comp_burst.p3_freq[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(15),
      I1 => df_diff(18),
      O => \comp_burst.p3_freq[15]_i_2_n_0\
    );
\comp_burst.p3_freq[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(14),
      I1 => df_diff(17),
      O => \comp_burst.p3_freq[15]_i_3_n_0\
    );
\comp_burst.p3_freq[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(13),
      I1 => df_diff(16),
      O => \comp_burst.p3_freq[15]_i_4_n_0\
    );
\comp_burst.p3_freq[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(12),
      I1 => df_diff(15),
      O => \comp_burst.p3_freq[15]_i_5_n_0\
    );
\comp_burst.p3_freq[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(11),
      I1 => df_diff(14),
      O => \comp_burst.p3_freq[15]_i_6_n_0\
    );
\comp_burst.p3_freq[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(10),
      I1 => df_diff(13),
      O => \comp_burst.p3_freq[15]_i_7_n_0\
    );
\comp_burst.p3_freq[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(9),
      I1 => df_diff(12),
      O => \comp_burst.p3_freq[15]_i_8_n_0\
    );
\comp_burst.p3_freq[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(8),
      I1 => df_diff(11),
      O => \comp_burst.p3_freq[15]_i_9_n_0\
    );
\comp_burst.p3_freq[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => df_diff(19),
      O => \comp_burst.p3_freq[19]_i_2_n_0\
    );
\comp_burst.p3_freq[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p2_freq(18),
      I1 => p2_freq(19),
      O => \comp_burst.p3_freq[19]_i_3_n_0\
    );
\comp_burst.p3_freq[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p2_freq(17),
      I1 => p2_freq(18),
      O => \comp_burst.p3_freq[19]_i_4_n_0\
    );
\comp_burst.p3_freq[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => df_diff(19),
      I1 => p2_freq(17),
      O => \comp_burst.p3_freq[19]_i_5_n_0\
    );
\comp_burst.p3_freq[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => df_diff(19),
      I1 => p2_freq(16),
      O => \comp_burst.p3_freq[19]_i_6_n_0\
    );
\comp_burst.p3_freq[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(7),
      I1 => df_diff(10),
      O => \comp_burst.p3_freq[7]_i_2_n_0\
    );
\comp_burst.p3_freq[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(6),
      I1 => df_diff(9),
      O => \comp_burst.p3_freq[7]_i_3_n_0\
    );
\comp_burst.p3_freq[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(5),
      I1 => df_diff(8),
      O => \comp_burst.p3_freq[7]_i_4_n_0\
    );
\comp_burst.p3_freq[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(4),
      I1 => df_diff(7),
      O => \comp_burst.p3_freq[7]_i_5_n_0\
    );
\comp_burst.p3_freq[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(3),
      I1 => df_diff(6),
      O => \comp_burst.p3_freq[7]_i_6_n_0\
    );
\comp_burst.p3_freq[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(2),
      I1 => df_diff(5),
      O => \comp_burst.p3_freq[7]_i_7_n_0\
    );
\comp_burst.p3_freq[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(1),
      I1 => df_diff(4),
      O => \comp_burst.p3_freq[7]_i_8_n_0\
    );
\comp_burst.p3_freq[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p2_freq(0),
      I1 => df_diff(3),
      O => \comp_burst.p3_freq[7]_i_9_n_0\
    );
\comp_burst.p3_freq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(0),
      Q => p3_freq(0),
      R => '0'
    );
\comp_burst.p3_freq_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(10),
      Q => p3_freq(10),
      R => '0'
    );
\comp_burst.p3_freq_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(11),
      Q => p3_freq(11),
      R => '0'
    );
\comp_burst.p3_freq_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(12),
      Q => p3_freq(12),
      R => '0'
    );
\comp_burst.p3_freq_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(13),
      Q => p3_freq(13),
      R => '0'
    );
\comp_burst.p3_freq_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(14),
      Q => p3_freq(14),
      R => '0'
    );
\comp_burst.p3_freq_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(15),
      Q => p3_freq(15),
      R => '0'
    );
\comp_burst.p3_freq_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p3_freq_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_burst.p3_freq_reg[15]_i_1_n_0\,
      CO(6) => \comp_burst.p3_freq_reg[15]_i_1_n_1\,
      CO(5) => \comp_burst.p3_freq_reg[15]_i_1_n_2\,
      CO(4) => \comp_burst.p3_freq_reg[15]_i_1_n_3\,
      CO(3) => \comp_burst.p3_freq_reg[15]_i_1_n_4\,
      CO(2) => \comp_burst.p3_freq_reg[15]_i_1_n_5\,
      CO(1) => \comp_burst.p3_freq_reg[15]_i_1_n_6\,
      CO(0) => \comp_burst.p3_freq_reg[15]_i_1_n_7\,
      DI(7 downto 0) => p2_freq(15 downto 8),
      O(7 downto 0) => \comp_burst.p3_freq_reg0\(15 downto 8),
      S(7) => \comp_burst.p3_freq[15]_i_2_n_0\,
      S(6) => \comp_burst.p3_freq[15]_i_3_n_0\,
      S(5) => \comp_burst.p3_freq[15]_i_4_n_0\,
      S(4) => \comp_burst.p3_freq[15]_i_5_n_0\,
      S(3) => \comp_burst.p3_freq[15]_i_6_n_0\,
      S(2) => \comp_burst.p3_freq[15]_i_7_n_0\,
      S(1) => \comp_burst.p3_freq[15]_i_8_n_0\,
      S(0) => \comp_burst.p3_freq[15]_i_9_n_0\
    );
\comp_burst.p3_freq_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(16),
      Q => p3_freq(16),
      R => '0'
    );
\comp_burst.p3_freq_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(17),
      Q => p3_freq(17),
      R => '0'
    );
\comp_burst.p3_freq_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(18),
      Q => p3_freq(18),
      R => '0'
    );
\comp_burst.p3_freq_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(19),
      Q => p3_freq(19),
      R => '0'
    );
\comp_burst.p3_freq_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.p3_freq_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_comp_burst.p3_freq_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \comp_burst.p3_freq_reg[19]_i_1_n_5\,
      CO(1) => \comp_burst.p3_freq_reg[19]_i_1_n_6\,
      CO(0) => \comp_burst.p3_freq_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => p2_freq(17),
      DI(1) => \comp_burst.p3_freq[19]_i_2_n_0\,
      DI(0) => df_diff(19),
      O(7 downto 4) => \NLW_comp_burst.p3_freq_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \comp_burst.p3_freq_reg0\(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \comp_burst.p3_freq[19]_i_3_n_0\,
      S(2) => \comp_burst.p3_freq[19]_i_4_n_0\,
      S(1) => \comp_burst.p3_freq[19]_i_5_n_0\,
      S(0) => \comp_burst.p3_freq[19]_i_6_n_0\
    );
\comp_burst.p3_freq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(1),
      Q => p3_freq(1),
      R => '0'
    );
\comp_burst.p3_freq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(2),
      Q => p3_freq(2),
      R => '0'
    );
\comp_burst.p3_freq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(3),
      Q => p3_freq(3),
      R => '0'
    );
\comp_burst.p3_freq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(4),
      Q => p3_freq(4),
      R => '0'
    );
\comp_burst.p3_freq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(5),
      Q => p3_freq(5),
      R => '0'
    );
\comp_burst.p3_freq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(6),
      Q => p3_freq(6),
      R => '0'
    );
\comp_burst.p3_freq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(7),
      Q => p3_freq(7),
      R => '0'
    );
\comp_burst.p3_freq_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.p3_freq_reg[7]_i_1_n_0\,
      CO(6) => \comp_burst.p3_freq_reg[7]_i_1_n_1\,
      CO(5) => \comp_burst.p3_freq_reg[7]_i_1_n_2\,
      CO(4) => \comp_burst.p3_freq_reg[7]_i_1_n_3\,
      CO(3) => \comp_burst.p3_freq_reg[7]_i_1_n_4\,
      CO(2) => \comp_burst.p3_freq_reg[7]_i_1_n_5\,
      CO(1) => \comp_burst.p3_freq_reg[7]_i_1_n_6\,
      CO(0) => \comp_burst.p3_freq_reg[7]_i_1_n_7\,
      DI(7 downto 0) => p2_freq(7 downto 0),
      O(7 downto 0) => \comp_burst.p3_freq_reg0\(7 downto 0),
      S(7) => \comp_burst.p3_freq[7]_i_2_n_0\,
      S(6) => \comp_burst.p3_freq[7]_i_3_n_0\,
      S(5) => \comp_burst.p3_freq[7]_i_4_n_0\,
      S(4) => \comp_burst.p3_freq[7]_i_5_n_0\,
      S(3) => \comp_burst.p3_freq[7]_i_6_n_0\,
      S(2) => \comp_burst.p3_freq[7]_i_7_n_0\,
      S(1) => \comp_burst.p3_freq[7]_i_8_n_0\,
      S(0) => \comp_burst.p3_freq[7]_i_9_n_0\
    );
\comp_burst.p3_freq_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(8),
      Q => p3_freq(8),
      R => '0'
    );
\comp_burst.p3_freq_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => \comp_burst.p3_freq_reg0\(9),
      Q => p3_freq(9),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(0),
      Q => p3_max_pos(0),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(10),
      Q => p3_max_pos(10),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(1),
      Q => p3_max_pos(1),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(2),
      Q => p3_max_pos(2),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(3),
      Q => p3_max_pos(3),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(4),
      Q => p3_max_pos(4),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(5),
      Q => p3_max_pos(5),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(6),
      Q => p3_max_pos(6),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(7),
      Q => p3_max_pos(7),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(8),
      Q => p3_max_pos(8),
      R => '0'
    );
\comp_burst.p3_max_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_max_pos(9),
      Q => p3_max_pos(9),
      R => '0'
    );
\comp_burst.p3_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(0),
      Q => p3_size(0),
      R => '0'
    );
\comp_burst.p3_size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(10),
      Q => p3_size(10),
      R => '0'
    );
\comp_burst.p3_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(1),
      Q => p3_size(1),
      R => '0'
    );
\comp_burst.p3_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(2),
      Q => p3_size(2),
      R => '0'
    );
\comp_burst.p3_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(3),
      Q => p3_size(3),
      R => '0'
    );
\comp_burst.p3_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(4),
      Q => p3_size(4),
      R => '0'
    );
\comp_burst.p3_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(5),
      Q => p3_size(5),
      R => '0'
    );
\comp_burst.p3_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(6),
      Q => p3_size(6),
      R => '0'
    );
\comp_burst.p3_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(7),
      Q => p3_size(7),
      R => '0'
    );
\comp_burst.p3_size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(8),
      Q => p3_size(8),
      R => '0'
    );
\comp_burst.p3_size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => df_done,
      D => p2_size(9),
      Q => p3_size(9),
      R => '0'
    );
\comp_burst.phase_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(64),
      Q => phase_in(0),
      R => '0'
    );
\comp_burst.phase_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(74),
      Q => phase_in(10),
      R => '0'
    );
\comp_burst.phase_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(75),
      Q => phase_in(11),
      R => '0'
    );
\comp_burst.phase_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(76),
      Q => phase_in(12),
      R => '0'
    );
\comp_burst.phase_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(77),
      Q => phase_in(13),
      R => '0'
    );
\comp_burst.phase_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(78),
      Q => phase_in(14),
      R => '0'
    );
\comp_burst.phase_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(79),
      Q => phase_in(15),
      R => '0'
    );
\comp_burst.phase_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(80),
      Q => phase_in(16),
      R => '0'
    );
\comp_burst.phase_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(81),
      Q => phase_in(17),
      R => '0'
    );
\comp_burst.phase_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(82),
      Q => phase_in(18),
      R => '0'
    );
\comp_burst.phase_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(83),
      Q => phase_in(19),
      R => '0'
    );
\comp_burst.phase_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(65),
      Q => phase_in(1),
      R => '0'
    );
\comp_burst.phase_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(84),
      Q => phase_in(20),
      R => '0'
    );
\comp_burst.phase_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(85),
      Q => phase_in(21),
      R => '0'
    );
\comp_burst.phase_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(86),
      Q => phase_in(22),
      R => '0'
    );
\comp_burst.phase_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(87),
      Q => phase_in(23),
      R => '0'
    );
\comp_burst.phase_in_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(88),
      Q => phase_in(24),
      R => '0'
    );
\comp_burst.phase_in_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(89),
      Q => phase_in(25),
      R => '0'
    );
\comp_burst.phase_in_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(90),
      Q => phase_in(26),
      R => '0'
    );
\comp_burst.phase_in_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(91),
      Q => phase_in(27),
      R => '0'
    );
\comp_burst.phase_in_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(92),
      Q => phase_in(28),
      R => '0'
    );
\comp_burst.phase_in_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(93),
      Q => phase_in(29),
      R => '0'
    );
\comp_burst.phase_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(66),
      Q => phase_in(2),
      R => '0'
    );
\comp_burst.phase_in_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(94),
      Q => phase_in(30),
      R => '0'
    );
\comp_burst.phase_in_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(95),
      Q => phase_in(31),
      R => '0'
    );
\comp_burst.phase_in_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(96),
      Q => phase_in(32),
      R => '0'
    );
\comp_burst.phase_in_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(97),
      Q => phase_in(33),
      R => '0'
    );
\comp_burst.phase_in_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(98),
      Q => phase_in(34),
      R => '0'
    );
\comp_burst.phase_in_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(99),
      Q => phase_in(35),
      R => '0'
    );
\comp_burst.phase_in_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(100),
      Q => phase_in(36),
      R => '0'
    );
\comp_burst.phase_in_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(101),
      Q => phase_in(37),
      R => '0'
    );
\comp_burst.phase_in_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(102),
      Q => phase_in(38),
      R => '0'
    );
\comp_burst.phase_in_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(103),
      Q => phase_in(39),
      R => '0'
    );
\comp_burst.phase_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(67),
      Q => phase_in(3),
      R => '0'
    );
\comp_burst.phase_in_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(104),
      Q => phase_in(40),
      R => '0'
    );
\comp_burst.phase_in_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(105),
      Q => phase_in(41),
      R => '0'
    );
\comp_burst.phase_in_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(106),
      Q => phase_in(42),
      R => '0'
    );
\comp_burst.phase_in_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(107),
      Q => phase_in(43),
      R => '0'
    );
\comp_burst.phase_in_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(108),
      Q => phase_in(44),
      R => '0'
    );
\comp_burst.phase_in_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(109),
      Q => phase_in(45),
      R => '0'
    );
\comp_burst.phase_in_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(110),
      Q => phase_in(46),
      R => '0'
    );
\comp_burst.phase_in_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(111),
      Q => phase_in(47),
      R => '0'
    );
\comp_burst.phase_in_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(112),
      Q => phase_in(48),
      R => '0'
    );
\comp_burst.phase_in_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(113),
      Q => phase_in(49),
      R => '0'
    );
\comp_burst.phase_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(68),
      Q => phase_in(4),
      R => '0'
    );
\comp_burst.phase_in_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(114),
      Q => phase_in(50),
      R => '0'
    );
\comp_burst.phase_in_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(115),
      Q => phase_in(51),
      R => '0'
    );
\comp_burst.phase_in_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(116),
      Q => phase_in(52),
      R => '0'
    );
\comp_burst.phase_in_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(117),
      Q => phase_in(53),
      R => '0'
    );
\comp_burst.phase_in_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(118),
      Q => phase_in(54),
      R => '0'
    );
\comp_burst.phase_in_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(119),
      Q => phase_in(55),
      R => '0'
    );
\comp_burst.phase_in_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(120),
      Q => phase_in(56),
      R => '0'
    );
\comp_burst.phase_in_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(121),
      Q => phase_in(57),
      R => '0'
    );
\comp_burst.phase_in_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(122),
      Q => phase_in(58),
      R => '0'
    );
\comp_burst.phase_in_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(123),
      Q => phase_in(59),
      R => '0'
    );
\comp_burst.phase_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(69),
      Q => phase_in(5),
      R => '0'
    );
\comp_burst.phase_in_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(124),
      Q => phase_in(60),
      R => '0'
    );
\comp_burst.phase_in_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(125),
      Q => phase_in(61),
      R => '0'
    );
\comp_burst.phase_in_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(126),
      Q => phase_in(62),
      R => '0'
    );
\comp_burst.phase_in_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(127),
      Q => phase_in(63),
      R => '0'
    );
\comp_burst.phase_in_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(128),
      Q => phase_in(64),
      R => '0'
    );
\comp_burst.phase_in_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(129),
      Q => phase_in(65),
      R => '0'
    );
\comp_burst.phase_in_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(130),
      Q => phase_in(66),
      R => '0'
    );
\comp_burst.phase_in_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(131),
      Q => phase_in(67),
      R => '0'
    );
\comp_burst.phase_in_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(132),
      Q => phase_in(68),
      R => '0'
    );
\comp_burst.phase_in_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(133),
      Q => phase_in(69),
      R => '0'
    );
\comp_burst.phase_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(70),
      Q => phase_in(6),
      R => '0'
    );
\comp_burst.phase_in_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(134),
      Q => phase_in(70),
      R => '0'
    );
\comp_burst.phase_in_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(135),
      Q => phase_in(71),
      R => '0'
    );
\comp_burst.phase_in_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(136),
      Q => phase_in(72),
      R => '0'
    );
\comp_burst.phase_in_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(137),
      Q => phase_in(73),
      R => '0'
    );
\comp_burst.phase_in_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(138),
      Q => phase_in(74),
      R => '0'
    );
\comp_burst.phase_in_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(139),
      Q => phase_in(75),
      R => '0'
    );
\comp_burst.phase_in_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(140),
      Q => phase_in(76),
      R => '0'
    );
\comp_burst.phase_in_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(141),
      Q => phase_in(77),
      R => '0'
    );
\comp_burst.phase_in_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(142),
      Q => phase_in(78),
      R => '0'
    );
\comp_burst.phase_in_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(143),
      Q => phase_in(79),
      R => '0'
    );
\comp_burst.phase_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(71),
      Q => phase_in(7),
      R => '0'
    );
\comp_burst.phase_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(72),
      Q => phase_in(8),
      R => '0'
    );
\comp_burst.phase_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => env_in0,
      D => rt_data_out(73),
      Q => phase_in(9),
      R => '0'
    );
\comp_burst.phase_val[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_79\,
      I1 => \comp_burst.mem_phase_reg_0_n_99\,
      I2 => phase_3(0),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(0),
      O => \comp_burst.phase_val[0]_i_1_n_0\
    );
\comp_burst.phase_val[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_69\,
      I1 => \comp_burst.mem_phase_reg_0_n_89\,
      I2 => phase_3(10),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(10),
      O => \comp_burst.phase_val[10]_i_1_n_0\
    );
\comp_burst.phase_val[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_68\,
      I1 => \comp_burst.mem_phase_reg_0_n_88\,
      I2 => phase_3(11),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(11),
      O => \comp_burst.phase_val[11]_i_1_n_0\
    );
\comp_burst.phase_val[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_131\,
      I1 => \comp_burst.mem_phase_reg_0_n_87\,
      I2 => phase_3(12),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(12),
      O => \comp_burst.phase_val[12]_i_1_n_0\
    );
\comp_burst.phase_val[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_130\,
      I1 => \comp_burst.mem_phase_reg_0_n_86\,
      I2 => phase_3(13),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(13),
      O => \comp_burst.phase_val[13]_i_1_n_0\
    );
\comp_burst.phase_val[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_129\,
      I1 => \comp_burst.mem_phase_reg_0_n_85\,
      I2 => phase_3(14),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(14),
      O => \comp_burst.phase_val[14]_i_1_n_0\
    );
\comp_burst.phase_val[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_128\,
      I1 => \comp_burst.mem_phase_reg_0_n_84\,
      I2 => phase_3(15),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(15),
      O => \comp_burst.phase_val[15]_i_1_n_0\
    );
\comp_burst.phase_val[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_127\,
      I1 => \comp_burst.mem_phase_reg_0_n_83\,
      I2 => phase_3(16),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(16),
      O => \comp_burst.phase_val[16]_i_1_n_0\
    );
\comp_burst.phase_val[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_126\,
      I1 => \comp_burst.mem_phase_reg_0_n_82\,
      I2 => phase_3(17),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(17),
      O => \comp_burst.phase_val[17]_i_1_n_0\
    );
\comp_burst.phase_val[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_125\,
      I1 => \comp_burst.mem_phase_reg_0_n_81\,
      I2 => phase_3(18),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(18),
      O => \comp_burst.phase_val[18]_i_1_n_0\
    );
\comp_burst.phase_val[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_124\,
      I1 => \comp_burst.mem_phase_reg_0_n_80\,
      I2 => phase_3(19),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(19),
      O => \comp_burst.phase_val[19]_i_1_n_0\
    );
\comp_burst.phase_val[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_78\,
      I1 => \comp_burst.mem_phase_reg_0_n_98\,
      I2 => phase_3(1),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(1),
      O => \comp_burst.phase_val[1]_i_1_n_0\
    );
\comp_burst.phase_val[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_77\,
      I1 => \comp_burst.mem_phase_reg_0_n_97\,
      I2 => phase_3(2),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(2),
      O => \comp_burst.phase_val[2]_i_1_n_0\
    );
\comp_burst.phase_val[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_76\,
      I1 => \comp_burst.mem_phase_reg_0_n_96\,
      I2 => phase_3(3),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(3),
      O => \comp_burst.phase_val[3]_i_1_n_0\
    );
\comp_burst.phase_val[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_75\,
      I1 => \comp_burst.mem_phase_reg_0_n_95\,
      I2 => phase_3(4),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(4),
      O => \comp_burst.phase_val[4]_i_1_n_0\
    );
\comp_burst.phase_val[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_74\,
      I1 => \comp_burst.mem_phase_reg_0_n_94\,
      I2 => phase_3(5),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(5),
      O => \comp_burst.phase_val[5]_i_1_n_0\
    );
\comp_burst.phase_val[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_73\,
      I1 => \comp_burst.mem_phase_reg_0_n_93\,
      I2 => phase_3(6),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(6),
      O => \comp_burst.phase_val[6]_i_1_n_0\
    );
\comp_burst.phase_val[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_72\,
      I1 => \comp_burst.mem_phase_reg_0_n_92\,
      I2 => phase_3(7),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(7),
      O => \comp_burst.phase_val[7]_i_1_n_0\
    );
\comp_burst.phase_val[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_71\,
      I1 => \comp_burst.mem_phase_reg_0_n_91\,
      I2 => phase_3(8),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(8),
      O => \comp_burst.phase_val[8]_i_1_n_0\
    );
\comp_burst.phase_val[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \comp_burst.mem_phase_reg_0_n_70\,
      I1 => \comp_burst.mem_phase_reg_0_n_90\,
      I2 => phase_3(9),
      I3 => \comp_burst.env_up_adr_reg_n_0_[1]\,
      I4 => \comp_burst.env_up_adr_reg_n_0_[0]\,
      I5 => phase_2(9),
      O => \comp_burst.phase_val[9]_i_1_n_0\
    );
\comp_burst.phase_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[0]_i_1_n_0\,
      Q => phase_val(0),
      R => '0'
    );
\comp_burst.phase_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[10]_i_1_n_0\,
      Q => phase_val(10),
      R => '0'
    );
\comp_burst.phase_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[11]_i_1_n_0\,
      Q => phase_val(11),
      R => '0'
    );
\comp_burst.phase_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[12]_i_1_n_0\,
      Q => phase_val(12),
      R => '0'
    );
\comp_burst.phase_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[13]_i_1_n_0\,
      Q => phase_val(13),
      R => '0'
    );
\comp_burst.phase_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[14]_i_1_n_0\,
      Q => phase_val(14),
      R => '0'
    );
\comp_burst.phase_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[15]_i_1_n_0\,
      Q => phase_val(15),
      R => '0'
    );
\comp_burst.phase_val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[16]_i_1_n_0\,
      Q => phase_val(16),
      R => '0'
    );
\comp_burst.phase_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[17]_i_1_n_0\,
      Q => phase_val(17),
      R => '0'
    );
\comp_burst.phase_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[18]_i_1_n_0\,
      Q => phase_val(18),
      R => '0'
    );
\comp_burst.phase_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[19]_i_1_n_0\,
      Q => phase_val(19),
      R => '0'
    );
\comp_burst.phase_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[1]_i_1_n_0\,
      Q => phase_val(1),
      R => '0'
    );
\comp_burst.phase_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[2]_i_1_n_0\,
      Q => phase_val(2),
      R => '0'
    );
\comp_burst.phase_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[3]_i_1_n_0\,
      Q => phase_val(3),
      R => '0'
    );
\comp_burst.phase_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[4]_i_1_n_0\,
      Q => phase_val(4),
      R => '0'
    );
\comp_burst.phase_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[5]_i_1_n_0\,
      Q => phase_val(5),
      R => '0'
    );
\comp_burst.phase_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[6]_i_1_n_0\,
      Q => phase_val(6),
      R => '0'
    );
\comp_burst.phase_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[7]_i_1_n_0\,
      Q => phase_val(7),
      R => '0'
    );
\comp_burst.phase_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[8]_i_1_n_0\,
      Q => phase_val(8),
      R => '0'
    );
\comp_burst.phase_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.phase_val[9]_i_1_n_0\,
      Q => phase_val(9),
      R => '0'
    );
\comp_burst.pred_phase[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(15),
      I1 => pred_phase(15),
      I2 => scan_start,
      I3 => phase_val(13),
      O => \comp_burst.pred_phase[15]_i_10_n_0\
    );
\comp_burst.pred_phase[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(14),
      I1 => pred_phase(14),
      I2 => scan_start,
      I3 => phase_val(12),
      O => \comp_burst.pred_phase[15]_i_11_n_0\
    );
\comp_burst.pred_phase[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(13),
      I1 => pred_phase(13),
      I2 => scan_start,
      I3 => phase_val(11),
      O => \comp_burst.pred_phase[15]_i_12_n_0\
    );
\comp_burst.pred_phase[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(12),
      I1 => pred_phase(12),
      I2 => scan_start,
      I3 => phase_val(10),
      O => \comp_burst.pred_phase[15]_i_13_n_0\
    );
\comp_burst.pred_phase[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(11),
      I1 => pred_phase(11),
      I2 => scan_start,
      I3 => phase_val(9),
      O => \comp_burst.pred_phase[15]_i_14_n_0\
    );
\comp_burst.pred_phase[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(10),
      I1 => pred_phase(10),
      I2 => scan_start,
      I3 => phase_val(8),
      O => \comp_burst.pred_phase[15]_i_15_n_0\
    );
\comp_burst.pred_phase[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(9),
      I1 => pred_phase(9),
      I2 => scan_start,
      I3 => phase_val(7),
      O => \comp_burst.pred_phase[15]_i_16_n_0\
    );
\comp_burst.pred_phase[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(8),
      I1 => pred_phase(8),
      I2 => scan_start,
      I3 => phase_val(6),
      O => \comp_burst.pred_phase[15]_i_17_n_0\
    );
\comp_burst.pred_phase[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(15),
      I1 => scan_start,
      O => \comp_burst.pred_phase[15]_i_2_n_0\
    );
\comp_burst.pred_phase[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(14),
      I1 => scan_start,
      O => \comp_burst.pred_phase[15]_i_3_n_0\
    );
\comp_burst.pred_phase[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(13),
      I1 => scan_start,
      O => \comp_burst.pred_phase[15]_i_4_n_0\
    );
\comp_burst.pred_phase[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(12),
      I1 => scan_start,
      O => \comp_burst.pred_phase[15]_i_5_n_0\
    );
\comp_burst.pred_phase[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(11),
      I1 => scan_start,
      O => \comp_burst.pred_phase[15]_i_6_n_0\
    );
\comp_burst.pred_phase[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(10),
      I1 => scan_start,
      O => \comp_burst.pred_phase[15]_i_7_n_0\
    );
\comp_burst.pred_phase[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(9),
      I1 => scan_start,
      O => \comp_burst.pred_phase[15]_i_8_n_0\
    );
\comp_burst.pred_phase[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(8),
      I1 => scan_start,
      O => \comp_burst.pred_phase[15]_i_9_n_0\
    );
\comp_burst.pred_phase[21]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(17),
      I1 => pred_phase(17),
      I2 => scan_start,
      I3 => phase_val(15),
      O => \comp_burst.pred_phase[21]_i_10_n_0\
    );
\comp_burst.pred_phase[21]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(16),
      I1 => pred_phase(16),
      I2 => scan_start,
      I3 => phase_val(14),
      O => \comp_burst.pred_phase[21]_i_11_n_0\
    );
\comp_burst.pred_phase[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(19),
      I1 => scan_start,
      O => \comp_burst.pred_phase[21]_i_2_n_0\
    );
\comp_burst.pred_phase[21]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(18),
      I1 => scan_start,
      O => \comp_burst.pred_phase[21]_i_3_n_0\
    );
\comp_burst.pred_phase[21]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(17),
      I1 => scan_start,
      O => \comp_burst.pred_phase[21]_i_4_n_0\
    );
\comp_burst.pred_phase[21]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(16),
      I1 => scan_start,
      O => \comp_burst.pred_phase[21]_i_5_n_0\
    );
\comp_burst.pred_phase[21]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => phase_val(19),
      I1 => scan_start,
      I2 => pred_phase(21),
      O => \comp_burst.pred_phase[21]_i_6_n_0\
    );
\comp_burst.pred_phase[21]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => phase_val(18),
      I1 => scan_start,
      I2 => pred_phase(20),
      O => \comp_burst.pred_phase[21]_i_7_n_0\
    );
\comp_burst.pred_phase[21]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(19),
      I1 => pred_phase(19),
      I2 => scan_start,
      I3 => phase_val(17),
      O => \comp_burst.pred_phase[21]_i_8_n_0\
    );
\comp_burst.pred_phase[21]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(18),
      I1 => pred_phase(18),
      I2 => scan_start,
      I3 => phase_val(16),
      O => \comp_burst.pred_phase[21]_i_9_n_0\
    );
\comp_burst.pred_phase[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(7),
      I1 => pred_phase(7),
      I2 => scan_start,
      I3 => phase_val(5),
      O => \comp_burst.pred_phase[7]_i_10_n_0\
    );
\comp_burst.pred_phase[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(6),
      I1 => pred_phase(6),
      I2 => scan_start,
      I3 => phase_val(4),
      O => \comp_burst.pred_phase[7]_i_11_n_0\
    );
\comp_burst.pred_phase[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(5),
      I1 => pred_phase(5),
      I2 => scan_start,
      I3 => phase_val(3),
      O => \comp_burst.pred_phase[7]_i_12_n_0\
    );
\comp_burst.pred_phase[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(4),
      I1 => pred_phase(4),
      I2 => scan_start,
      I3 => phase_val(2),
      O => \comp_burst.pred_phase[7]_i_13_n_0\
    );
\comp_burst.pred_phase[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(3),
      I1 => pred_phase(3),
      I2 => scan_start,
      I3 => phase_val(1),
      O => \comp_burst.pred_phase[7]_i_14_n_0\
    );
\comp_burst.pred_phase[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => in_freq(2),
      I1 => pred_phase(2),
      I2 => scan_start,
      I3 => phase_val(0),
      O => \comp_burst.pred_phase[7]_i_15_n_0\
    );
\comp_burst.pred_phase[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => in_freq(1),
      I1 => scan_start,
      I2 => pred_phase(1),
      O => \comp_burst.pred_phase[7]_i_16_n_0\
    );
\comp_burst.pred_phase[7]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => in_freq(0),
      I1 => scan_start,
      I2 => pred_phase(0),
      O => \comp_burst.pred_phase[7]_i_17_n_0\
    );
\comp_burst.pred_phase[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(7),
      I1 => scan_start,
      O => \comp_burst.pred_phase[7]_i_2_n_0\
    );
\comp_burst.pred_phase[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(6),
      I1 => scan_start,
      O => \comp_burst.pred_phase[7]_i_3_n_0\
    );
\comp_burst.pred_phase[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(5),
      I1 => scan_start,
      O => \comp_burst.pred_phase[7]_i_4_n_0\
    );
\comp_burst.pred_phase[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(4),
      I1 => scan_start,
      O => \comp_burst.pred_phase[7]_i_5_n_0\
    );
\comp_burst.pred_phase[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(3),
      I1 => scan_start,
      O => \comp_burst.pred_phase[7]_i_6_n_0\
    );
\comp_burst.pred_phase[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(2),
      I1 => scan_start,
      O => \comp_burst.pred_phase[7]_i_7_n_0\
    );
\comp_burst.pred_phase[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(1),
      I1 => scan_start,
      O => \comp_burst.pred_phase[7]_i_8_n_0\
    );
\comp_burst.pred_phase[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_freq(0),
      I1 => scan_start,
      O => \comp_burst.pred_phase[7]_i_9_n_0\
    );
\comp_burst.pred_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[7]_i_1_n_15\,
      Q => pred_phase(0),
      R => scan_start
    );
\comp_burst.pred_phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[15]_i_1_n_13\,
      Q => pred_phase(10),
      R => '0'
    );
\comp_burst.pred_phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[15]_i_1_n_12\,
      Q => pred_phase(11),
      R => '0'
    );
\comp_burst.pred_phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[15]_i_1_n_11\,
      Q => pred_phase(12),
      R => '0'
    );
\comp_burst.pred_phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[15]_i_1_n_10\,
      Q => pred_phase(13),
      R => '0'
    );
\comp_burst.pred_phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[15]_i_1_n_9\,
      Q => pred_phase(14),
      R => '0'
    );
\comp_burst.pred_phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[15]_i_1_n_8\,
      Q => pred_phase(15),
      R => '0'
    );
\comp_burst.pred_phase_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.pred_phase_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \comp_burst.pred_phase_reg[15]_i_1_n_0\,
      CO(6) => \comp_burst.pred_phase_reg[15]_i_1_n_1\,
      CO(5) => \comp_burst.pred_phase_reg[15]_i_1_n_2\,
      CO(4) => \comp_burst.pred_phase_reg[15]_i_1_n_3\,
      CO(3) => \comp_burst.pred_phase_reg[15]_i_1_n_4\,
      CO(2) => \comp_burst.pred_phase_reg[15]_i_1_n_5\,
      CO(1) => \comp_burst.pred_phase_reg[15]_i_1_n_6\,
      CO(0) => \comp_burst.pred_phase_reg[15]_i_1_n_7\,
      DI(7) => \comp_burst.pred_phase[15]_i_2_n_0\,
      DI(6) => \comp_burst.pred_phase[15]_i_3_n_0\,
      DI(5) => \comp_burst.pred_phase[15]_i_4_n_0\,
      DI(4) => \comp_burst.pred_phase[15]_i_5_n_0\,
      DI(3) => \comp_burst.pred_phase[15]_i_6_n_0\,
      DI(2) => \comp_burst.pred_phase[15]_i_7_n_0\,
      DI(1) => \comp_burst.pred_phase[15]_i_8_n_0\,
      DI(0) => \comp_burst.pred_phase[15]_i_9_n_0\,
      O(7) => \comp_burst.pred_phase_reg[15]_i_1_n_8\,
      O(6) => \comp_burst.pred_phase_reg[15]_i_1_n_9\,
      O(5) => \comp_burst.pred_phase_reg[15]_i_1_n_10\,
      O(4) => \comp_burst.pred_phase_reg[15]_i_1_n_11\,
      O(3) => \comp_burst.pred_phase_reg[15]_i_1_n_12\,
      O(2) => \comp_burst.pred_phase_reg[15]_i_1_n_13\,
      O(1) => \comp_burst.pred_phase_reg[15]_i_1_n_14\,
      O(0) => \comp_burst.pred_phase_reg[15]_i_1_n_15\,
      S(7) => \comp_burst.pred_phase[15]_i_10_n_0\,
      S(6) => \comp_burst.pred_phase[15]_i_11_n_0\,
      S(5) => \comp_burst.pred_phase[15]_i_12_n_0\,
      S(4) => \comp_burst.pred_phase[15]_i_13_n_0\,
      S(3) => \comp_burst.pred_phase[15]_i_14_n_0\,
      S(2) => \comp_burst.pred_phase[15]_i_15_n_0\,
      S(1) => \comp_burst.pred_phase[15]_i_16_n_0\,
      S(0) => \comp_burst.pred_phase[15]_i_17_n_0\
    );
\comp_burst.pred_phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[21]_i_1_n_15\,
      Q => pred_phase(16),
      R => '0'
    );
\comp_burst.pred_phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[21]_i_1_n_14\,
      Q => pred_phase(17),
      R => '0'
    );
\comp_burst.pred_phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[21]_i_1_n_13\,
      Q => pred_phase(18),
      R => '0'
    );
\comp_burst.pred_phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[21]_i_1_n_12\,
      Q => pred_phase(19),
      R => '0'
    );
\comp_burst.pred_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[7]_i_1_n_14\,
      Q => pred_phase(1),
      R => scan_start
    );
\comp_burst.pred_phase_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[21]_i_1_n_11\,
      Q => pred_phase(20),
      R => '0'
    );
\comp_burst.pred_phase_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[21]_i_1_n_10\,
      Q => pred_phase(21),
      R => '0'
    );
\comp_burst.pred_phase_reg[21]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \comp_burst.pred_phase_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_comp_burst.pred_phase_reg[21]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \comp_burst.pred_phase_reg[21]_i_1_n_3\,
      CO(3) => \comp_burst.pred_phase_reg[21]_i_1_n_4\,
      CO(2) => \comp_burst.pred_phase_reg[21]_i_1_n_5\,
      CO(1) => \comp_burst.pred_phase_reg[21]_i_1_n_6\,
      CO(0) => \comp_burst.pred_phase_reg[21]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \comp_burst.pred_phase[21]_i_2_n_0\,
      DI(2) => \comp_burst.pred_phase[21]_i_3_n_0\,
      DI(1) => \comp_burst.pred_phase[21]_i_4_n_0\,
      DI(0) => \comp_burst.pred_phase[21]_i_5_n_0\,
      O(7 downto 6) => \NLW_comp_burst.pred_phase_reg[21]_i_1_O_UNCONNECTED\(7 downto 6),
      O(5) => \comp_burst.pred_phase_reg[21]_i_1_n_10\,
      O(4) => \comp_burst.pred_phase_reg[21]_i_1_n_11\,
      O(3) => \comp_burst.pred_phase_reg[21]_i_1_n_12\,
      O(2) => \comp_burst.pred_phase_reg[21]_i_1_n_13\,
      O(1) => \comp_burst.pred_phase_reg[21]_i_1_n_14\,
      O(0) => \comp_burst.pred_phase_reg[21]_i_1_n_15\,
      S(7 downto 6) => B"00",
      S(5) => \comp_burst.pred_phase[21]_i_6_n_0\,
      S(4) => \comp_burst.pred_phase[21]_i_7_n_0\,
      S(3) => \comp_burst.pred_phase[21]_i_8_n_0\,
      S(2) => \comp_burst.pred_phase[21]_i_9_n_0\,
      S(1) => \comp_burst.pred_phase[21]_i_10_n_0\,
      S(0) => \comp_burst.pred_phase[21]_i_11_n_0\
    );
\comp_burst.pred_phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[7]_i_1_n_13\,
      Q => pred_phase(2),
      R => '0'
    );
\comp_burst.pred_phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[7]_i_1_n_12\,
      Q => pred_phase(3),
      R => '0'
    );
\comp_burst.pred_phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[7]_i_1_n_11\,
      Q => pred_phase(4),
      R => '0'
    );
\comp_burst.pred_phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[7]_i_1_n_10\,
      Q => pred_phase(5),
      R => '0'
    );
\comp_burst.pred_phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[7]_i_1_n_9\,
      Q => pred_phase(6),
      R => '0'
    );
\comp_burst.pred_phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[7]_i_1_n_8\,
      Q => pred_phase(7),
      R => '0'
    );
\comp_burst.pred_phase_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \comp_burst.pred_phase_reg[7]_i_1_n_0\,
      CO(6) => \comp_burst.pred_phase_reg[7]_i_1_n_1\,
      CO(5) => \comp_burst.pred_phase_reg[7]_i_1_n_2\,
      CO(4) => \comp_burst.pred_phase_reg[7]_i_1_n_3\,
      CO(3) => \comp_burst.pred_phase_reg[7]_i_1_n_4\,
      CO(2) => \comp_burst.pred_phase_reg[7]_i_1_n_5\,
      CO(1) => \comp_burst.pred_phase_reg[7]_i_1_n_6\,
      CO(0) => \comp_burst.pred_phase_reg[7]_i_1_n_7\,
      DI(7) => \comp_burst.pred_phase[7]_i_2_n_0\,
      DI(6) => \comp_burst.pred_phase[7]_i_3_n_0\,
      DI(5) => \comp_burst.pred_phase[7]_i_4_n_0\,
      DI(4) => \comp_burst.pred_phase[7]_i_5_n_0\,
      DI(3) => \comp_burst.pred_phase[7]_i_6_n_0\,
      DI(2) => \comp_burst.pred_phase[7]_i_7_n_0\,
      DI(1) => \comp_burst.pred_phase[7]_i_8_n_0\,
      DI(0) => \comp_burst.pred_phase[7]_i_9_n_0\,
      O(7) => \comp_burst.pred_phase_reg[7]_i_1_n_8\,
      O(6) => \comp_burst.pred_phase_reg[7]_i_1_n_9\,
      O(5) => \comp_burst.pred_phase_reg[7]_i_1_n_10\,
      O(4) => \comp_burst.pred_phase_reg[7]_i_1_n_11\,
      O(3) => \comp_burst.pred_phase_reg[7]_i_1_n_12\,
      O(2) => \comp_burst.pred_phase_reg[7]_i_1_n_13\,
      O(1) => \comp_burst.pred_phase_reg[7]_i_1_n_14\,
      O(0) => \comp_burst.pred_phase_reg[7]_i_1_n_15\,
      S(7) => \comp_burst.pred_phase[7]_i_10_n_0\,
      S(6) => \comp_burst.pred_phase[7]_i_11_n_0\,
      S(5) => \comp_burst.pred_phase[7]_i_12_n_0\,
      S(4) => \comp_burst.pred_phase[7]_i_13_n_0\,
      S(3) => \comp_burst.pred_phase[7]_i_14_n_0\,
      S(2) => \comp_burst.pred_phase[7]_i_15_n_0\,
      S(1) => \comp_burst.pred_phase[7]_i_16_n_0\,
      S(0) => \comp_burst.pred_phase[7]_i_17_n_0\
    );
\comp_burst.pred_phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[15]_i_1_n_15\,
      Q => pred_phase(8),
      R => '0'
    );
\comp_burst.pred_phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.pred_phase_reg[15]_i_1_n_14\,
      Q => pred_phase(9),
      R => '0'
    );
\comp_burst.rt_data_in[143]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rt_wr,
      I1 => rt_enable,
      O => rt_data_in1
    );
\comp_burst.rt_data_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(0),
      Q => rt_data_in(0),
      R => '0'
    );
\comp_burst.rt_data_in_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(16),
      Q => rt_data_in(100),
      R => '0'
    );
\comp_burst.rt_data_in_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(17),
      Q => rt_data_in(101),
      R => '0'
    );
\comp_burst.rt_data_in_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(18),
      Q => rt_data_in(102),
      R => '0'
    );
\comp_burst.rt_data_in_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(19),
      Q => rt_data_in(103),
      R => '0'
    );
\comp_burst.rt_data_in_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(0),
      Q => rt_data_in(104),
      R => '0'
    );
\comp_burst.rt_data_in_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(1),
      Q => rt_data_in(105),
      R => '0'
    );
\comp_burst.rt_data_in_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(2),
      Q => rt_data_in(106),
      R => '0'
    );
\comp_burst.rt_data_in_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(3),
      Q => rt_data_in(107),
      R => '0'
    );
\comp_burst.rt_data_in_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(4),
      Q => rt_data_in(108),
      R => '0'
    );
\comp_burst.rt_data_in_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(5),
      Q => rt_data_in(109),
      R => '0'
    );
\comp_burst.rt_data_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(10),
      Q => rt_data_in(10),
      R => '0'
    );
\comp_burst.rt_data_in_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(6),
      Q => rt_data_in(110),
      R => '0'
    );
\comp_burst.rt_data_in_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(7),
      Q => rt_data_in(111),
      R => '0'
    );
\comp_burst.rt_data_in_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(8),
      Q => rt_data_in(112),
      R => '0'
    );
\comp_burst.rt_data_in_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(9),
      Q => rt_data_in(113),
      R => '0'
    );
\comp_burst.rt_data_in_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(10),
      Q => rt_data_in(114),
      R => '0'
    );
\comp_burst.rt_data_in_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(11),
      Q => rt_data_in(115),
      R => '0'
    );
\comp_burst.rt_data_in_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(12),
      Q => rt_data_in(116),
      R => '0'
    );
\comp_burst.rt_data_in_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(13),
      Q => rt_data_in(117),
      R => '0'
    );
\comp_burst.rt_data_in_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(14),
      Q => rt_data_in(118),
      R => '0'
    );
\comp_burst.rt_data_in_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(15),
      Q => rt_data_in(119),
      R => '0'
    );
\comp_burst.rt_data_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(11),
      Q => rt_data_in(11),
      R => '0'
    );
\comp_burst.rt_data_in_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(16),
      Q => rt_data_in(120),
      R => '0'
    );
\comp_burst.rt_data_in_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(17),
      Q => rt_data_in(121),
      R => '0'
    );
\comp_burst.rt_data_in_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(18),
      Q => rt_data_in(122),
      R => '0'
    );
\comp_burst.rt_data_in_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(19),
      Q => rt_data_in(123),
      R => '0'
    );
\comp_burst.rt_data_in_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(0),
      Q => rt_data_in(124),
      R => '0'
    );
\comp_burst.rt_data_in_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(1),
      Q => rt_data_in(125),
      R => '0'
    );
\comp_burst.rt_data_in_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(2),
      Q => rt_data_in(126),
      R => '0'
    );
\comp_burst.rt_data_in_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(3),
      Q => rt_data_in(127),
      R => '0'
    );
\comp_burst.rt_data_in_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(4),
      Q => rt_data_in(128),
      R => '0'
    );
\comp_burst.rt_data_in_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(5),
      Q => rt_data_in(129),
      R => '0'
    );
\comp_burst.rt_data_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(12),
      Q => rt_data_in(12),
      R => '0'
    );
\comp_burst.rt_data_in_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(6),
      Q => rt_data_in(130),
      R => '0'
    );
\comp_burst.rt_data_in_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(7),
      Q => rt_data_in(131),
      R => '0'
    );
\comp_burst.rt_data_in_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(8),
      Q => rt_data_in(132),
      R => '0'
    );
\comp_burst.rt_data_in_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(9),
      Q => rt_data_in(133),
      R => '0'
    );
\comp_burst.rt_data_in_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(10),
      Q => rt_data_in(134),
      R => '0'
    );
\comp_burst.rt_data_in_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(11),
      Q => rt_data_in(135),
      R => '0'
    );
\comp_burst.rt_data_in_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(12),
      Q => rt_data_in(136),
      R => '0'
    );
\comp_burst.rt_data_in_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(13),
      Q => rt_data_in(137),
      R => '0'
    );
\comp_burst.rt_data_in_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(14),
      Q => rt_data_in(138),
      R => '0'
    );
\comp_burst.rt_data_in_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(15),
      Q => rt_data_in(139),
      R => '0'
    );
\comp_burst.rt_data_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(13),
      Q => rt_data_in(13),
      R => '0'
    );
\comp_burst.rt_data_in_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(16),
      Q => rt_data_in(140),
      R => '0'
    );
\comp_burst.rt_data_in_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(17),
      Q => rt_data_in(141),
      R => '0'
    );
\comp_burst.rt_data_in_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(18),
      Q => rt_data_in(142),
      R => '0'
    );
\comp_burst.rt_data_in_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(19),
      Q => rt_data_in(143),
      R => '0'
    );
\comp_burst.rt_data_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(14),
      Q => rt_data_in(14),
      R => '0'
    );
\comp_burst.rt_data_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(15),
      Q => rt_data_in(15),
      R => '0'
    );
\comp_burst.rt_data_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(0),
      Q => rt_data_in(16),
      R => '0'
    );
\comp_burst.rt_data_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(1),
      Q => rt_data_in(17),
      R => '0'
    );
\comp_burst.rt_data_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(2),
      Q => rt_data_in(18),
      R => '0'
    );
\comp_burst.rt_data_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(3),
      Q => rt_data_in(19),
      R => '0'
    );
\comp_burst.rt_data_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(1),
      Q => rt_data_in(1),
      R => '0'
    );
\comp_burst.rt_data_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(4),
      Q => rt_data_in(20),
      R => '0'
    );
\comp_burst.rt_data_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(5),
      Q => rt_data_in(21),
      R => '0'
    );
\comp_burst.rt_data_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(6),
      Q => rt_data_in(22),
      R => '0'
    );
\comp_burst.rt_data_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(7),
      Q => rt_data_in(23),
      R => '0'
    );
\comp_burst.rt_data_in_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(8),
      Q => rt_data_in(24),
      R => '0'
    );
\comp_burst.rt_data_in_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(9),
      Q => rt_data_in(25),
      R => '0'
    );
\comp_burst.rt_data_in_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(10),
      Q => rt_data_in(26),
      R => '0'
    );
\comp_burst.rt_data_in_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(11),
      Q => rt_data_in(27),
      R => '0'
    );
\comp_burst.rt_data_in_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(12),
      Q => rt_data_in(28),
      R => '0'
    );
\comp_burst.rt_data_in_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(13),
      Q => rt_data_in(29),
      R => '0'
    );
\comp_burst.rt_data_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(2),
      Q => rt_data_in(2),
      R => '0'
    );
\comp_burst.rt_data_in_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(14),
      Q => rt_data_in(30),
      R => '0'
    );
\comp_burst.rt_data_in_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_1(15),
      Q => rt_data_in(31),
      R => '0'
    );
\comp_burst.rt_data_in_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(0),
      Q => rt_data_in(32),
      R => '0'
    );
\comp_burst.rt_data_in_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(1),
      Q => rt_data_in(33),
      R => '0'
    );
\comp_burst.rt_data_in_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(2),
      Q => rt_data_in(34),
      R => '0'
    );
\comp_burst.rt_data_in_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(3),
      Q => rt_data_in(35),
      R => '0'
    );
\comp_burst.rt_data_in_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(4),
      Q => rt_data_in(36),
      R => '0'
    );
\comp_burst.rt_data_in_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(5),
      Q => rt_data_in(37),
      R => '0'
    );
\comp_burst.rt_data_in_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(6),
      Q => rt_data_in(38),
      R => '0'
    );
\comp_burst.rt_data_in_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(7),
      Q => rt_data_in(39),
      R => '0'
    );
\comp_burst.rt_data_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(3),
      Q => rt_data_in(3),
      R => '0'
    );
\comp_burst.rt_data_in_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(8),
      Q => rt_data_in(40),
      R => '0'
    );
\comp_burst.rt_data_in_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(9),
      Q => rt_data_in(41),
      R => '0'
    );
\comp_burst.rt_data_in_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(10),
      Q => rt_data_in(42),
      R => '0'
    );
\comp_burst.rt_data_in_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(11),
      Q => rt_data_in(43),
      R => '0'
    );
\comp_burst.rt_data_in_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(12),
      Q => rt_data_in(44),
      R => '0'
    );
\comp_burst.rt_data_in_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(13),
      Q => rt_data_in(45),
      R => '0'
    );
\comp_burst.rt_data_in_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(14),
      Q => rt_data_in(46),
      R => '0'
    );
\comp_burst.rt_data_in_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_2(15),
      Q => rt_data_in(47),
      R => '0'
    );
\comp_burst.rt_data_in_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(0),
      Q => rt_data_in(48),
      R => '0'
    );
\comp_burst.rt_data_in_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(1),
      Q => rt_data_in(49),
      R => '0'
    );
\comp_burst.rt_data_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(4),
      Q => rt_data_in(4),
      R => '0'
    );
\comp_burst.rt_data_in_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(2),
      Q => rt_data_in(50),
      R => '0'
    );
\comp_burst.rt_data_in_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(3),
      Q => rt_data_in(51),
      R => '0'
    );
\comp_burst.rt_data_in_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(4),
      Q => rt_data_in(52),
      R => '0'
    );
\comp_burst.rt_data_in_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(5),
      Q => rt_data_in(53),
      R => '0'
    );
\comp_burst.rt_data_in_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(6),
      Q => rt_data_in(54),
      R => '0'
    );
\comp_burst.rt_data_in_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(7),
      Q => rt_data_in(55),
      R => '0'
    );
\comp_burst.rt_data_in_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(8),
      Q => rt_data_in(56),
      R => '0'
    );
\comp_burst.rt_data_in_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(9),
      Q => rt_data_in(57),
      R => '0'
    );
\comp_burst.rt_data_in_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(10),
      Q => rt_data_in(58),
      R => '0'
    );
\comp_burst.rt_data_in_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(11),
      Q => rt_data_in(59),
      R => '0'
    );
\comp_burst.rt_data_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(5),
      Q => rt_data_in(5),
      R => '0'
    );
\comp_burst.rt_data_in_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(12),
      Q => rt_data_in(60),
      R => '0'
    );
\comp_burst.rt_data_in_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(13),
      Q => rt_data_in(61),
      R => '0'
    );
\comp_burst.rt_data_in_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(14),
      Q => rt_data_in(62),
      R => '0'
    );
\comp_burst.rt_data_in_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_3(15),
      Q => rt_data_in(63),
      R => '0'
    );
\comp_burst.rt_data_in_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(0),
      Q => rt_data_in(64),
      R => '0'
    );
\comp_burst.rt_data_in_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(1),
      Q => rt_data_in(65),
      R => '0'
    );
\comp_burst.rt_data_in_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(2),
      Q => rt_data_in(66),
      R => '0'
    );
\comp_burst.rt_data_in_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(3),
      Q => rt_data_in(67),
      R => '0'
    );
\comp_burst.rt_data_in_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(4),
      Q => rt_data_in(68),
      R => '0'
    );
\comp_burst.rt_data_in_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(5),
      Q => rt_data_in(69),
      R => '0'
    );
\comp_burst.rt_data_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(6),
      Q => rt_data_in(6),
      R => '0'
    );
\comp_burst.rt_data_in_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(6),
      Q => rt_data_in(70),
      R => '0'
    );
\comp_burst.rt_data_in_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(7),
      Q => rt_data_in(71),
      R => '0'
    );
\comp_burst.rt_data_in_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(8),
      Q => rt_data_in(72),
      R => '0'
    );
\comp_burst.rt_data_in_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(9),
      Q => rt_data_in(73),
      R => '0'
    );
\comp_burst.rt_data_in_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(10),
      Q => rt_data_in(74),
      R => '0'
    );
\comp_burst.rt_data_in_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(11),
      Q => rt_data_in(75),
      R => '0'
    );
\comp_burst.rt_data_in_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(12),
      Q => rt_data_in(76),
      R => '0'
    );
\comp_burst.rt_data_in_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(13),
      Q => rt_data_in(77),
      R => '0'
    );
\comp_burst.rt_data_in_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(14),
      Q => rt_data_in(78),
      R => '0'
    );
\comp_burst.rt_data_in_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(15),
      Q => rt_data_in(79),
      R => '0'
    );
\comp_burst.rt_data_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(7),
      Q => rt_data_in(7),
      R => '0'
    );
\comp_burst.rt_data_in_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(16),
      Q => rt_data_in(80),
      R => '0'
    );
\comp_burst.rt_data_in_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(17),
      Q => rt_data_in(81),
      R => '0'
    );
\comp_burst.rt_data_in_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(18),
      Q => rt_data_in(82),
      R => '0'
    );
\comp_burst.rt_data_in_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(19),
      Q => rt_data_in(83),
      R => '0'
    );
\comp_burst.rt_data_in_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(0),
      Q => rt_data_in(84),
      R => '0'
    );
\comp_burst.rt_data_in_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(1),
      Q => rt_data_in(85),
      R => '0'
    );
\comp_burst.rt_data_in_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(2),
      Q => rt_data_in(86),
      R => '0'
    );
\comp_burst.rt_data_in_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(3),
      Q => rt_data_in(87),
      R => '0'
    );
\comp_burst.rt_data_in_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(4),
      Q => rt_data_in(88),
      R => '0'
    );
\comp_burst.rt_data_in_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(5),
      Q => rt_data_in(89),
      R => '0'
    );
\comp_burst.rt_data_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(8),
      Q => rt_data_in(8),
      R => '0'
    );
\comp_burst.rt_data_in_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(6),
      Q => rt_data_in(90),
      R => '0'
    );
\comp_burst.rt_data_in_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(7),
      Q => rt_data_in(91),
      R => '0'
    );
\comp_burst.rt_data_in_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(8),
      Q => rt_data_in(92),
      R => '0'
    );
\comp_burst.rt_data_in_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(9),
      Q => rt_data_in(93),
      R => '0'
    );
\comp_burst.rt_data_in_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(10),
      Q => rt_data_in(94),
      R => '0'
    );
\comp_burst.rt_data_in_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(11),
      Q => rt_data_in(95),
      R => '0'
    );
\comp_burst.rt_data_in_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(12),
      Q => rt_data_in(96),
      R => '0'
    );
\comp_burst.rt_data_in_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(13),
      Q => rt_data_in(97),
      R => '0'
    );
\comp_burst.rt_data_in_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(14),
      Q => rt_data_in(98),
      R => '0'
    );
\comp_burst.rt_data_in_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_phase_0(15),
      Q => rt_data_in(99),
      R => '0'
    );
\comp_burst.rt_data_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_data_in1,
      D => rt_env_0(9),
      Q => rt_data_in(9),
      R => '0'
    );
\comp_burst.rt_data_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => env_in0,
      Q => rt_data_rd,
      R => '0'
    );
\comp_burst.rt_data_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => '1',
      D => rt_data_in1,
      Q => rt_data_wr,
      R => '0'
    );
\comp_burst.rt_meta_in[97]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rt_start,
      I1 => rt_enable,
      O => rt_meta_in1
    );
\comp_burst.rt_meta_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(0),
      Q => rt_meta_in(0),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(10),
      Q => rt_meta_in(10),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(11),
      Q => rt_meta_in(11),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(12),
      Q => rt_meta_in(12),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(13),
      Q => rt_meta_in(13),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(14),
      Q => rt_meta_in(14),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(15),
      Q => rt_meta_in(15),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(16),
      Q => rt_meta_in(16),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(17),
      Q => rt_meta_in(17),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(18),
      Q => rt_meta_in(18),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(19),
      Q => rt_meta_in(19),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(1),
      Q => rt_meta_in(1),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(20),
      Q => rt_meta_in(20),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(21),
      Q => rt_meta_in(21),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(22),
      Q => rt_meta_in(22),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(23),
      Q => rt_meta_in(23),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(24),
      Q => rt_meta_in(24),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(25),
      Q => rt_meta_in(25),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(26),
      Q => rt_meta_in(26),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(27),
      Q => rt_meta_in(27),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(28),
      Q => rt_meta_in(28),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(29),
      Q => rt_meta_in(29),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(2),
      Q => rt_meta_in(2),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(30),
      Q => rt_meta_in(30),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(31),
      Q => rt_meta_in(31),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(32),
      Q => rt_meta_in(32),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(33),
      Q => rt_meta_in(33),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(34),
      Q => rt_meta_in(34),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(35),
      Q => rt_meta_in(35),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(36),
      Q => rt_meta_in(36),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(37),
      Q => rt_meta_in(37),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(38),
      Q => rt_meta_in(38),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(39),
      Q => rt_meta_in(39),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(3),
      Q => rt_meta_in(3),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(40),
      Q => rt_meta_in(40),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(41),
      Q => rt_meta_in(41),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(42),
      Q => rt_meta_in(42),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(43),
      Q => rt_meta_in(43),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(44),
      Q => rt_meta_in(44),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(45),
      Q => rt_meta_in(45),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(46),
      Q => rt_meta_in(46),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(47),
      Q => rt_meta_in(47),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(48),
      Q => rt_meta_in(48),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(49),
      Q => rt_meta_in(49),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(4),
      Q => rt_meta_in(4),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(50),
      Q => rt_meta_in(50),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(51),
      Q => rt_meta_in(51),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(52),
      Q => rt_meta_in(52),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(53),
      Q => rt_meta_in(53),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(54),
      Q => rt_meta_in(54),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(55),
      Q => rt_meta_in(55),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(56),
      Q => rt_meta_in(56),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(57),
      Q => rt_meta_in(57),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(58),
      Q => rt_meta_in(58),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(59),
      Q => rt_meta_in(59),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(5),
      Q => rt_meta_in(5),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(60),
      Q => rt_meta_in(60),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(61),
      Q => rt_meta_in(61),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(0),
      Q => rt_meta_in(62),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(1),
      Q => rt_meta_in(63),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(2),
      Q => rt_meta_in(64),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(3),
      Q => rt_meta_in(65),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(4),
      Q => rt_meta_in(66),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(5),
      Q => rt_meta_in(67),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(6),
      Q => rt_meta_in(68),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(7),
      Q => rt_meta_in(69),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(6),
      Q => rt_meta_in(6),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(8),
      Q => rt_meta_in(70),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(9),
      Q => rt_meta_in(71),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(10),
      Q => rt_meta_in(72),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(11),
      Q => rt_meta_in(73),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(12),
      Q => rt_meta_in(74),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(13),
      Q => rt_meta_in(75),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(14),
      Q => rt_meta_in(76),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(15),
      Q => rt_meta_in(77),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(16),
      Q => rt_meta_in(78),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(17),
      Q => rt_meta_in(79),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(7),
      Q => rt_meta_in(7),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(18),
      Q => rt_meta_in(80),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_freq(19),
      Q => rt_meta_in(81),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(0),
      Q => rt_meta_in(82),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(1),
      Q => rt_meta_in(83),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(2),
      Q => rt_meta_in(84),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(3),
      Q => rt_meta_in(85),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(4),
      Q => rt_meta_in(86),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(5),
      Q => rt_meta_in(87),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(6),
      Q => rt_meta_in(88),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(7),
      Q => rt_meta_in(89),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(8),
      Q => rt_meta_in(8),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(8),
      Q => rt_meta_in(90),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(9),
      Q => rt_meta_in(91),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(10),
      Q => rt_meta_in(92),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(11),
      Q => rt_meta_in(93),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(12),
      Q => rt_meta_in(94),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(13),
      Q => rt_meta_in(95),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(14),
      Q => rt_meta_in(96),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_angle(15),
      Q => rt_meta_in(97),
      R => '0'
    );
\comp_burst.rt_meta_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => rt_meta_in1,
      D => rt_sample(9),
      Q => rt_meta_in(9),
      R => '0'
    );
\comp_burst.rt_meta_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.burst_i_1_n_0\,
      Q => rt_meta_rd,
      R => '0'
    );
\comp_burst.rt_meta_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => rt_clk,
      CE => '1',
      D => rt_meta_in1,
      Q => rt_meta_wr,
      R => '0'
    );
\comp_burst.run_env_end_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \comp_burst.env_end_ind_reg[10]_i_2_n_0\,
      I1 => run_env_end,
      I2 => comp_env,
      O => \comp_burst.run_env_end_i_1_n_0\
    );
\comp_burst.run_env_end_reg\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.run_env_end_i_1_n_0\,
      Q => run_env_end,
      S => scan_start
    );
\comp_burst.run_env_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CCC"
    )
        port map (
      I0 => reset,
      I1 => \comp_burst.run_env_reg_n_0\,
      I2 => \comp_burst.run_env_i_2_n_0\,
      I3 => \comp_burst.run_env_i_3_n_0\,
      O => \comp_burst.run_env_i_1_n_0\
    );
\comp_burst.run_env_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => env_down_ind(2),
      I1 => env_down_ind(3),
      I2 => env_down_ind(1),
      I3 => env_down_ind(0),
      I4 => env_down_ind(4),
      I5 => \comp_burst.run_env_reg_n_0\,
      O => \comp_burst.run_env_i_2_n_0\
    );
\comp_burst.run_env_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => env_down_ind(7),
      I1 => env_down_ind(8),
      I2 => env_down_ind(5),
      I3 => env_down_ind(6),
      I4 => env_down_ind(10),
      I5 => env_down_ind(9),
      O => \comp_burst.run_env_i_3_n_0\
    );
\comp_burst.run_env_reg\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.run_env_i_1_n_0\,
      Q => \comp_burst.run_env_reg_n_0\,
      S => scan_start
    );
\comp_burst.run_env_start_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => comp_env,
      I1 => run_env_start,
      I2 => \comp_burst.env_start_ind_reg[10]_i_2_n_0\,
      O => \comp_burst.run_env_start_i_1_n_0\
    );
\comp_burst.run_env_start_reg\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.run_env_start_i_1_n_0\,
      Q => run_env_start,
      S => scan_start
    );
\comp_burst.scan_start_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \comp_burst.scan_start_i_2_n_0\,
      I1 => reset,
      I2 => mem_wr,
      O => \comp_burst.scan_start_i_1_n_0\
    );
\comp_burst.scan_start_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \comp_burst.curr_size[8]_i_3_n_0\,
      I1 => wr_ptr(5),
      I2 => wr_ptr(6),
      I3 => wr_ptr(3),
      I4 => wr_ptr(4),
      O => \comp_burst.scan_start_i_2_n_0\
    );
\comp_burst.scan_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.scan_start_i_1_n_0\,
      Q => scan_start,
      R => '0'
    );
\comp_burst.wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_ptr(0),
      O => \comp_burst.wr_ptr[0]_i_1_n_0\
    );
\comp_burst.wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr(0),
      I1 => wr_ptr(1),
      O => \comp_burst.wr_ptr[1]_i_1_n_0\
    );
\comp_burst.wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_ptr(1),
      I1 => wr_ptr(0),
      I2 => wr_ptr(2),
      O => \comp_burst.wr_ptr[2]_i_1_n_0\
    );
\comp_burst.wr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_ptr(2),
      I1 => wr_ptr(0),
      I2 => wr_ptr(1),
      I3 => wr_ptr(3),
      O => \comp_burst.wr_ptr[3]_i_1_n_0\
    );
\comp_burst.wr_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_ptr(3),
      I1 => wr_ptr(1),
      I2 => wr_ptr(0),
      I3 => wr_ptr(2),
      I4 => wr_ptr(4),
      O => \comp_burst.wr_ptr[4]_i_1_n_0\
    );
\comp_burst.wr_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_ptr(4),
      I1 => wr_ptr(2),
      I2 => wr_ptr(0),
      I3 => wr_ptr(1),
      I4 => wr_ptr(3),
      I5 => wr_ptr(5),
      O => \comp_burst.wr_ptr[5]_i_1_n_0\
    );
\comp_burst.wr_ptr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \comp_burst.wr_ptr[8]_i_3_n_0\,
      I1 => wr_ptr(6),
      O => \comp_burst.wr_ptr[6]_i_1_n_0\
    );
\comp_burst.wr_ptr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => wr_ptr(6),
      I1 => \comp_burst.wr_ptr[8]_i_3_n_0\,
      I2 => wr_ptr(7),
      O => \comp_burst.wr_ptr[7]_i_1_n_0\
    );
\comp_burst.wr_ptr[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mem_wr,
      O => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => wr_ptr(7),
      I1 => \comp_burst.wr_ptr[8]_i_3_n_0\,
      I2 => wr_ptr(6),
      I3 => wr_ptr(8),
      O => \comp_burst.wr_ptr[8]_i_2_n_0\
    );
\comp_burst.wr_ptr[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => wr_ptr(4),
      I1 => wr_ptr(2),
      I2 => wr_ptr(0),
      I3 => wr_ptr(1),
      I4 => wr_ptr(3),
      I5 => wr_ptr(5),
      O => \comp_burst.wr_ptr[8]_i_3_n_0\
    );
\comp_burst.wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[0]_i_1_n_0\,
      Q => wr_ptr(0),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[1]_i_1_n_0\,
      Q => wr_ptr(1),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[2]_i_1_n_0\,
      Q => wr_ptr(2),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[3]_i_1_n_0\,
      Q => wr_ptr(3),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[4]_i_1_n_0\,
      Q => wr_ptr(4),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[5]_i_1_n_0\,
      Q => wr_ptr(5),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[6]_i_1_n_0\,
      Q => wr_ptr(6),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[7]_i_1_n_0\,
      Q => wr_ptr(7),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
\comp_burst.wr_ptr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \comp_burst.wr_ptr[8]_i_2_n_0\,
      Q => wr_ptr(8),
      R => \comp_burst.wr_ptr[8]_i_1_n_0\
    );
fifo_config_i: component ps_comp_burst_0_0_fifo_config
     port map (
      din(39 downto 8) => config_data(31 downto 0),
      din(7 downto 0) => config_adr(7 downto 0),
      dout(39 downto 24) => NLW_fifo_config_i_dout_UNCONNECTED(39 downto 24),
      dout(23 downto 0) => config_data_adr_out(23 downto 0),
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
fifo_rt_data_i: component ps_comp_burst_0_0_fifo_stat_data
     port map (
      din(143 downto 0) => rt_data_in(143 downto 0),
      dout(143 downto 0) => rt_data_out(143 downto 0),
      empty => rt_data_empty,
      full => NLW_fifo_rt_data_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => rt_data_rd,
      rd_rst_busy => NLW_fifo_rt_data_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => rt_clk,
      wr_en => rt_data_wr,
      wr_rst_busy => NLW_fifo_rt_data_i_wr_rst_busy_UNCONNECTED
    );
fifo_rt_meta_i: component ps_comp_burst_0_0_fifo_stat_meta
     port map (
      din(97 downto 0) => rt_meta_in(97 downto 0),
      dout(97 downto 62) => rt_meta_out(97 downto 62),
      dout(61 downto 0) => NLW_fifo_rt_meta_i_dout_UNCONNECTED(61 downto 0),
      empty => rt_meta_empty,
      full => NLW_fifo_rt_meta_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => rt_meta_rd,
      rst => reset,
      wr_clk => rt_clk,
      wr_en => rt_meta_wr
    );
ila_i: component ps_comp_burst_0_0_ila_0
     port map (
      clk => clk,
      probe0(0) => burst,
      probe1(19 downto 0) => in_freq(19 downto 0),
      probe10(19 downto 0) => p2_freq(19 downto 0),
      probe11(19 downto 0) => p3_freq(19 downto 0),
      probe12(19 downto 0) => p2_phase_diff_0(19 downto 0),
      probe13(19 downto 0) => p2_phase_diff_1(19 downto 0),
      probe14(19 downto 0) => p2_phase_diff_2(19 downto 0),
      probe15(19 downto 0) => p2_phase_diff_3(19 downto 0),
      probe2(15 downto 0) => in_angle(15 downto 0),
      probe3(0) => mem_wr,
      probe4(0) => scan_start,
      probe5(19 downto 0) => df_diff(19 downto 0),
      probe6(0) => complete_2,
      probe7(0) => p2_active,
      probe8(10 downto 0) => p2_max_pos(10 downto 0),
      probe9(10 downto 0) => p2_size(10 downto 0)
    );
p2_i: entity work.ps_comp_burst_0_0_one_to_four
     port map (
      active => p2_active,
      clk => clk,
      env(15 downto 0) => p2_env(15 downto 0),
      env_0(15 downto 0) => p2_env_0(15 downto 0),
      env_1(15 downto 0) => p2_env_1(15 downto 0),
      env_2(15 downto 0) => p2_env_2(15 downto 0),
      env_3(15 downto 0) => p2_env_3(15 downto 0),
      phase(15 downto 0) => p2_phase(15 downto 0),
      phase_0(15 downto 0) => p2_phase_0(15 downto 0),
      phase_1(15 downto 0) => p2_phase_1(15 downto 0),
      phase_2(15 downto 0) => p2_phase_2(15 downto 0),
      phase_3(15 downto 0) => p2_phase_3(15 downto 0),
      phase_diff(19 downto 0) => p2_phase_diff(19 downto 0),
      phase_diff_0(19 downto 0) => p2_phase_diff_0(19 downto 0),
      phase_diff_1(19 downto 0) => p2_phase_diff_1(19 downto 0),
      phase_diff_2(19 downto 0) => p2_phase_diff_2(19 downto 0),
      phase_diff_3(19 downto 0) => p2_phase_diff_3(19 downto 0),
      read_back => p2_done,
      reset => reset,
      size(10 downto 0) => p2_size(10 downto 0),
      wr => \comp_burst.p2_wr_reg_n_0\
    );
p3_i: entity work.ps_comp_burst_0_0_comp_stat
     port map (
      active => NLW_p3_i_active_UNCONNECTED,
      clk => clk,
      done => NLW_p3_i_done_UNCONNECTED,
      env(15 downto 0) => NLW_p3_i_env_UNCONNECTED(15 downto 0),
      env_0(15 downto 0) => p2_env_0(15 downto 0),
      env_1(15 downto 0) => p2_env_1(15 downto 0),
      env_2(15 downto 0) => p2_env_2(15 downto 0),
      env_3(15 downto 0) => p2_env_3(15 downto 0),
      env_sum(31 downto 0) => NLW_p3_i_env_sum_UNCONNECTED(31 downto 0),
      env_sum2(47 downto 0) => NLW_p3_i_env_sum2_UNCONNECTED(47 downto 0),
      freq(19 downto 0) => p3_freq(19 downto 0),
      max_phase(15 downto 0) => NLW_p3_i_max_phase_UNCONNECTED(15 downto 0),
      max_pos(10 downto 0) => p3_max_pos(10 downto 0),
      phase(15 downto 0) => NLW_p3_i_phase_UNCONNECTED(15 downto 0),
      phase_0(15 downto 0) => p2_phase_0(15 downto 0),
      phase_1(15 downto 0) => p2_phase_1(15 downto 0),
      phase_2(15 downto 0) => p2_phase_2(15 downto 0),
      phase_3(15 downto 0) => p2_phase_3(15 downto 0),
      phase_sum(31 downto 0) => NLW_p3_i_phase_sum_UNCONNECTED(31 downto 0),
      phase_sum2(47 downto 0) => NLW_p3_i_phase_sum2_UNCONNECTED(47 downto 0),
      pos(10 downto 0) => NLW_p3_i_pos_UNCONNECTED(10 downto 0),
      reset => reset,
      size(10 downto 0) => p3_size(10 downto 0),
      wr => p2_active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_burst_0_0 is
  port (
    config_clk : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rt_clk : in STD_LOGIC;
    rt_enable : in STD_LOGIC;
    rt_start : in STD_LOGIC;
    rt_sample : in STD_LOGIC_VECTOR ( 61 downto 0 );
    rt_freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rt_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_wr : in STD_LOGIC;
    rt_env_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_env_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_env_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_env_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rt_phase_0 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rt_phase_1 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rt_phase_2 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rt_phase_3 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_comp_burst_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_comp_burst_0_0 : entity is "ps_comp_burst_0_0,comp_burst,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_comp_burst_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_comp_burst_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_comp_burst_0_0 : entity is "comp_burst,Vivado 2025.1";
end ps_comp_burst_0_0;

architecture STRUCTURE of ps_comp_burst_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_stat_high_0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of config_clk : signal is "xilinx.com:signal:clock:1.0 config_clk CLK";
  attribute X_INTERFACE_MODE of config_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of config_clk : signal is "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rt_clk : signal is "xilinx.com:signal:clock:1.0 rt_clk CLK";
  attribute X_INTERFACE_MODE of rt_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rt_clk : signal is "XIL_INTERFACENAME rt_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana1_clk, INSERT_VIP 0";
begin
inst: entity work.ps_comp_burst_0_0_comp_burst
     port map (
      clk => clk,
      config_adr(7 downto 0) => config_adr(7 downto 0),
      config_clk => config_clk,
      config_data(31 downto 0) => config_data(31 downto 0),
      config_wr => config_wr,
      reset => reset,
      rt_angle(15 downto 0) => rt_angle(15 downto 0),
      rt_clk => rt_clk,
      rt_enable => rt_enable,
      rt_env_0(15 downto 0) => rt_env_0(15 downto 0),
      rt_env_1(15 downto 0) => rt_env_1(15 downto 0),
      rt_env_2(15 downto 0) => rt_env_2(15 downto 0),
      rt_env_3(15 downto 0) => rt_env_3(15 downto 0),
      rt_freq(19 downto 0) => rt_freq(19 downto 0),
      rt_phase_0(19 downto 0) => rt_phase_0(19 downto 0),
      rt_phase_1(19 downto 0) => B"00000000000000000000",
      rt_phase_2(19 downto 0) => B"00000000000000000000",
      rt_phase_3(19 downto 0) => B"00000000000000000000",
      rt_sample(61 downto 0) => rt_sample(61 downto 0),
      rt_start => rt_start,
      rt_wr => rt_wr
    );
end STRUCTURE;
