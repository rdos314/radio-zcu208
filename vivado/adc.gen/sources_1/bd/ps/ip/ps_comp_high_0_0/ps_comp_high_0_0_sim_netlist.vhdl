-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Dec 17 21:21:39 2025
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
  component ps_comp_high_0_0_ila_3 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_comp_high_0_0_ila_3;
  signal \comp_high.doa_rd_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.env_N_reg0\ : STD_LOGIC;
  signal \comp_high.fifo_doa_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_doa_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_doa_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_doa_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_doa_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_doa_delay_reg0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \comp_high.fifo_sample_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[6]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[8]_i_1_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay[8]_i_2_n_0\ : STD_LOGIC;
  signal \comp_high.fifo_sample_delay_reg0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \comp_high.raw_N0_reg0\ : STD_LOGIC;
  signal \comp_high.sample_rd_i_1_n_0\ : STD_LOGIC;
  signal doa_data : STD_LOGIC_VECTOR ( 143 downto 0 );
  signal doa_rd : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of doa_rd : signal is std.standard.true;
  signal env_E : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of env_E : signal is std.standard.true;
  signal env_N : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of env_N : signal is std.standard.true;
  signal env_W : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of env_W : signal is std.standard.true;
  signal err_EW : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute MARK_DEBUG of err_EW : signal is std.standard.true;
  signal err_NE : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute MARK_DEBUG of err_NE : signal is std.standard.true;
  signal err_NW : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute MARK_DEBUG of err_NW : signal is std.standard.true;
  signal fifo_doa_delay : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of fifo_doa_delay : signal is std.standard.true;
  signal fifo_doa_empty : STD_LOGIC;
  attribute MARK_DEBUG of fifo_doa_empty : signal is std.standard.true;
  signal fifo_sample_delay : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute MARK_DEBUG of fifo_sample_delay : signal is std.standard.true;
  signal fifo_sample_empty : STD_LOGIC;
  attribute MARK_DEBUG of fifo_sample_empty : signal is std.standard.true;
  signal phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_E : signal is std.standard.true;
  signal phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_N : signal is std.standard.true;
  signal phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of phase_W : signal is std.standard.true;
  signal raw_E0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_E0 : signal is std.standard.true;
  signal raw_N0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_N0 : signal is std.standard.true;
  signal raw_W0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_W0 : signal is std.standard.true;
  signal sample_data : STD_LOGIC_VECTOR ( 271 downto 0 );
  signal sample_rd : STD_LOGIC;
  attribute MARK_DEBUG of sample_rd : signal is std.standard.true;
  signal NLW_fifo_doa_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 383 downto 16 );
  attribute KEEP : string;
  attribute KEEP of \comp_high.doa_rd_reg\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \comp_high.env_E_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.env_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_E_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.env_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_N_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.env_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.env_W_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.err_EW_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_EW_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.err_NE_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NE_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.err_NW_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.err_NW_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_doa_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_doa_delay_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_doa_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_doa_delay_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_doa_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_doa_delay_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_doa_delay_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_doa_delay_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_doa_delay_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_doa_delay_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.fifo_sample_delay_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.fifo_sample_delay_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[16]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[16]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[17]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[17]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[18]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[18]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[19]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[19]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.phase_E_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_E_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[16]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[16]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[17]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[17]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[18]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[18]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[19]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[19]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.phase_N_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_N_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[16]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[16]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[17]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[17]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[18]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[18]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[19]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[19]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.phase_W_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.phase_W_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.raw_E0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_E0_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.raw_N0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_N0_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[0]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[10]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[11]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[12]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[13]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[14]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[15]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[1]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[2]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[3]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[4]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[5]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[6]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[7]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[8]\ : label is "yes";
  attribute KEEP of \comp_high.raw_W0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \comp_high.raw_W0_reg[9]\ : label is "yes";
  attribute KEEP of \comp_high.sample_rd_reg\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_doa_i : label is "fifo_doa,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_doa_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_doa_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_raw_high,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
  attribute x_core_info of fifo_raw_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_3,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
begin
\comp_high.doa_rd_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => fifo_doa_delay(0),
      I1 => fifo_doa_delay(3),
      I2 => fifo_doa_delay(4),
      I3 => fifo_doa_delay(1),
      I4 => fifo_doa_delay(2),
      I5 => fifo_doa_empty,
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
\comp_high.env_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(36),
      Q => env_E(0),
      R => '0'
    );
\comp_high.env_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(46),
      Q => env_E(10),
      R => '0'
    );
\comp_high.env_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(47),
      Q => env_E(11),
      R => '0'
    );
\comp_high.env_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(48),
      Q => env_E(12),
      R => '0'
    );
\comp_high.env_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(49),
      Q => env_E(13),
      R => '0'
    );
\comp_high.env_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(50),
      Q => env_E(14),
      R => '0'
    );
\comp_high.env_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(51),
      Q => env_E(15),
      R => '0'
    );
\comp_high.env_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(37),
      Q => env_E(1),
      R => '0'
    );
\comp_high.env_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(38),
      Q => env_E(2),
      R => '0'
    );
\comp_high.env_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(39),
      Q => env_E(3),
      R => '0'
    );
\comp_high.env_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(40),
      Q => env_E(4),
      R => '0'
    );
\comp_high.env_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(41),
      Q => env_E(5),
      R => '0'
    );
\comp_high.env_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(42),
      Q => env_E(6),
      R => '0'
    );
\comp_high.env_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(43),
      Q => env_E(7),
      R => '0'
    );
\comp_high.env_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(44),
      Q => env_E(8),
      R => '0'
    );
\comp_high.env_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(45),
      Q => env_E(9),
      R => '0'
    );
\comp_high.env_N[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => doa_rd,
      I1 => fifo_doa_empty,
      O => \comp_high.env_N_reg0\
    );
\comp_high.env_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(0),
      Q => env_N(0),
      R => '0'
    );
\comp_high.env_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(10),
      Q => env_N(10),
      R => '0'
    );
\comp_high.env_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(11),
      Q => env_N(11),
      R => '0'
    );
\comp_high.env_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(12),
      Q => env_N(12),
      R => '0'
    );
\comp_high.env_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(13),
      Q => env_N(13),
      R => '0'
    );
\comp_high.env_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(14),
      Q => env_N(14),
      R => '0'
    );
\comp_high.env_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(15),
      Q => env_N(15),
      R => '0'
    );
\comp_high.env_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(1),
      Q => env_N(1),
      R => '0'
    );
\comp_high.env_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(2),
      Q => env_N(2),
      R => '0'
    );
\comp_high.env_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(3),
      Q => env_N(3),
      R => '0'
    );
\comp_high.env_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(4),
      Q => env_N(4),
      R => '0'
    );
\comp_high.env_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(5),
      Q => env_N(5),
      R => '0'
    );
\comp_high.env_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(6),
      Q => env_N(6),
      R => '0'
    );
\comp_high.env_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(7),
      Q => env_N(7),
      R => '0'
    );
\comp_high.env_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(8),
      Q => env_N(8),
      R => '0'
    );
\comp_high.env_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(9),
      Q => env_N(9),
      R => '0'
    );
\comp_high.env_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(72),
      Q => env_W(0),
      R => '0'
    );
\comp_high.env_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(82),
      Q => env_W(10),
      R => '0'
    );
\comp_high.env_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(83),
      Q => env_W(11),
      R => '0'
    );
\comp_high.env_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(84),
      Q => env_W(12),
      R => '0'
    );
\comp_high.env_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(85),
      Q => env_W(13),
      R => '0'
    );
\comp_high.env_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(86),
      Q => env_W(14),
      R => '0'
    );
\comp_high.env_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(87),
      Q => env_W(15),
      R => '0'
    );
\comp_high.env_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(73),
      Q => env_W(1),
      R => '0'
    );
\comp_high.env_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(74),
      Q => env_W(2),
      R => '0'
    );
\comp_high.env_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(75),
      Q => env_W(3),
      R => '0'
    );
\comp_high.env_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(76),
      Q => env_W(4),
      R => '0'
    );
\comp_high.env_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(77),
      Q => env_W(5),
      R => '0'
    );
\comp_high.env_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(78),
      Q => env_W(6),
      R => '0'
    );
\comp_high.env_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(79),
      Q => env_W(7),
      R => '0'
    );
\comp_high.env_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(80),
      Q => env_W(8),
      R => '0'
    );
\comp_high.env_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(81),
      Q => env_W(9),
      R => '0'
    );
\comp_high.err_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(132),
      Q => err_EW(0),
      R => '0'
    );
\comp_high.err_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(142),
      Q => err_EW(10),
      R => '0'
    );
\comp_high.err_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(143),
      Q => err_EW(11),
      R => '0'
    );
\comp_high.err_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(133),
      Q => err_EW(1),
      R => '0'
    );
\comp_high.err_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(134),
      Q => err_EW(2),
      R => '0'
    );
\comp_high.err_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(135),
      Q => err_EW(3),
      R => '0'
    );
\comp_high.err_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(136),
      Q => err_EW(4),
      R => '0'
    );
\comp_high.err_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(137),
      Q => err_EW(5),
      R => '0'
    );
\comp_high.err_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(138),
      Q => err_EW(6),
      R => '0'
    );
\comp_high.err_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(139),
      Q => err_EW(7),
      R => '0'
    );
\comp_high.err_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(140),
      Q => err_EW(8),
      R => '0'
    );
\comp_high.err_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(141),
      Q => err_EW(9),
      R => '0'
    );
\comp_high.err_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(108),
      Q => err_NE(0),
      R => '0'
    );
\comp_high.err_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(118),
      Q => err_NE(10),
      R => '0'
    );
\comp_high.err_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(119),
      Q => err_NE(11),
      R => '0'
    );
\comp_high.err_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(109),
      Q => err_NE(1),
      R => '0'
    );
\comp_high.err_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(110),
      Q => err_NE(2),
      R => '0'
    );
\comp_high.err_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(111),
      Q => err_NE(3),
      R => '0'
    );
\comp_high.err_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(112),
      Q => err_NE(4),
      R => '0'
    );
\comp_high.err_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(113),
      Q => err_NE(5),
      R => '0'
    );
\comp_high.err_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(114),
      Q => err_NE(6),
      R => '0'
    );
\comp_high.err_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(115),
      Q => err_NE(7),
      R => '0'
    );
\comp_high.err_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(116),
      Q => err_NE(8),
      R => '0'
    );
\comp_high.err_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(117),
      Q => err_NE(9),
      R => '0'
    );
\comp_high.err_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(120),
      Q => err_NW(0),
      R => '0'
    );
\comp_high.err_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(130),
      Q => err_NW(10),
      R => '0'
    );
\comp_high.err_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(131),
      Q => err_NW(11),
      R => '0'
    );
\comp_high.err_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(121),
      Q => err_NW(1),
      R => '0'
    );
\comp_high.err_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(122),
      Q => err_NW(2),
      R => '0'
    );
\comp_high.err_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(123),
      Q => err_NW(3),
      R => '0'
    );
\comp_high.err_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(124),
      Q => err_NW(4),
      R => '0'
    );
\comp_high.err_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(125),
      Q => err_NW(5),
      R => '0'
    );
\comp_high.err_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(126),
      Q => err_NW(6),
      R => '0'
    );
\comp_high.err_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(127),
      Q => err_NW(7),
      R => '0'
    );
\comp_high.err_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(128),
      Q => err_NW(8),
      R => '0'
    );
\comp_high.err_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(129),
      Q => err_NW(9),
      R => '0'
    );
\comp_high.fifo_doa_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_doa_delay(0),
      O => \comp_high.fifo_doa_delay_reg0\(0)
    );
\comp_high.fifo_doa_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fifo_doa_delay(0),
      I1 => fifo_doa_delay(1),
      O => \comp_high.fifo_doa_delay[1]_i_1_n_0\
    );
\comp_high.fifo_doa_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => fifo_doa_delay(1),
      I1 => fifo_doa_delay(0),
      I2 => fifo_doa_delay(2),
      O => \comp_high.fifo_doa_delay[2]_i_1_n_0\
    );
\comp_high.fifo_doa_delay[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => fifo_doa_delay(2),
      I1 => fifo_doa_delay(0),
      I2 => fifo_doa_delay(1),
      I3 => fifo_doa_delay(3),
      O => \comp_high.fifo_doa_delay[3]_i_1_n_0\
    );
\comp_high.fifo_doa_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => fifo_doa_delay(0),
      I1 => fifo_doa_delay(3),
      I2 => fifo_doa_delay(4),
      I3 => fifo_doa_delay(1),
      I4 => fifo_doa_delay(2),
      O => \comp_high.fifo_doa_delay[4]_i_1_n_0\
    );
\comp_high.fifo_doa_delay[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => fifo_doa_delay(3),
      I1 => fifo_doa_delay(1),
      I2 => fifo_doa_delay(0),
      I3 => fifo_doa_delay(2),
      I4 => fifo_doa_delay(4),
      O => \comp_high.fifo_doa_delay[4]_i_2_n_0\
    );
\comp_high.fifo_doa_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_doa_delay_reg0\(0),
      Q => fifo_doa_delay(0),
      S => fifo_doa_empty
    );
\comp_high.fifo_doa_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_doa_delay[1]_i_1_n_0\,
      Q => fifo_doa_delay(1),
      S => fifo_doa_empty
    );
\comp_high.fifo_doa_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_doa_delay[2]_i_1_n_0\,
      Q => fifo_doa_delay(2),
      S => fifo_doa_empty
    );
\comp_high.fifo_doa_delay_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_doa_delay[3]_i_1_n_0\,
      Q => fifo_doa_delay(3),
      S => fifo_doa_empty
    );
\comp_high.fifo_doa_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_doa_delay[4]_i_2_n_0\,
      Q => fifo_doa_delay(4),
      S => fifo_doa_empty
    );
\comp_high.fifo_sample_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_sample_delay(0),
      O => \comp_high.fifo_sample_delay_reg0\(0)
    );
\comp_high.fifo_sample_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fifo_sample_delay(0),
      I1 => fifo_sample_delay(1),
      O => \comp_high.fifo_sample_delay[1]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => fifo_sample_delay(1),
      I1 => fifo_sample_delay(0),
      I2 => fifo_sample_delay(2),
      O => \comp_high.fifo_sample_delay[2]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => fifo_sample_delay(2),
      I1 => fifo_sample_delay(0),
      I2 => fifo_sample_delay(1),
      I3 => fifo_sample_delay(3),
      O => \comp_high.fifo_sample_delay[3]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => fifo_sample_delay(3),
      I1 => fifo_sample_delay(1),
      I2 => fifo_sample_delay(0),
      I3 => fifo_sample_delay(2),
      I4 => fifo_sample_delay(4),
      O => \comp_high.fifo_sample_delay[4]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => fifo_sample_delay(4),
      I1 => fifo_sample_delay(2),
      I2 => fifo_sample_delay(0),
      I3 => fifo_sample_delay(1),
      I4 => fifo_sample_delay(3),
      I5 => fifo_sample_delay(5),
      O => \comp_high.fifo_sample_delay[5]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \comp_high.fifo_sample_delay[8]_i_2_n_0\,
      I1 => fifo_sample_delay(6),
      O => \comp_high.fifo_sample_delay[6]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => fifo_sample_delay(6),
      I1 => \comp_high.fifo_sample_delay[8]_i_2_n_0\,
      I2 => fifo_sample_delay(7),
      O => \comp_high.fifo_sample_delay[7]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => fifo_sample_delay(7),
      I1 => \comp_high.fifo_sample_delay[8]_i_2_n_0\,
      I2 => fifo_sample_delay(6),
      I3 => fifo_sample_delay(8),
      O => \comp_high.fifo_sample_delay[8]_i_1_n_0\
    );
\comp_high.fifo_sample_delay[8]_i_2\: unisim.vcomponents.LUT6
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
      O => \comp_high.fifo_sample_delay[8]_i_2_n_0\
    );
\comp_high.fifo_sample_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay_reg0\(0),
      Q => fifo_sample_delay(0),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay[1]_i_1_n_0\,
      Q => fifo_sample_delay(1),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay[2]_i_1_n_0\,
      Q => fifo_sample_delay(2),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay[3]_i_1_n_0\,
      Q => fifo_sample_delay(3),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay[4]_i_1_n_0\,
      Q => fifo_sample_delay(4),
      S => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay[5]_i_1_n_0\,
      Q => fifo_sample_delay(5),
      R => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay[6]_i_1_n_0\,
      Q => fifo_sample_delay(6),
      R => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay[7]_i_1_n_0\,
      Q => fifo_sample_delay(7),
      R => fifo_sample_empty
    );
\comp_high.fifo_sample_delay_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.fifo_doa_delay[4]_i_1_n_0\,
      D => \comp_high.fifo_sample_delay[8]_i_1_n_0\,
      Q => fifo_sample_delay(8),
      R => fifo_sample_empty
    );
\comp_high.phase_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(52),
      Q => phase_E(0),
      R => '0'
    );
\comp_high.phase_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(62),
      Q => phase_E(10),
      R => '0'
    );
\comp_high.phase_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(63),
      Q => phase_E(11),
      R => '0'
    );
\comp_high.phase_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(64),
      Q => phase_E(12),
      R => '0'
    );
\comp_high.phase_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(65),
      Q => phase_E(13),
      R => '0'
    );
\comp_high.phase_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(66),
      Q => phase_E(14),
      R => '0'
    );
\comp_high.phase_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(67),
      Q => phase_E(15),
      R => '0'
    );
\comp_high.phase_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(68),
      Q => phase_E(16),
      R => '0'
    );
\comp_high.phase_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(69),
      Q => phase_E(17),
      R => '0'
    );
\comp_high.phase_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(70),
      Q => phase_E(18),
      R => '0'
    );
\comp_high.phase_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(71),
      Q => phase_E(19),
      R => '0'
    );
\comp_high.phase_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(53),
      Q => phase_E(1),
      R => '0'
    );
\comp_high.phase_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(54),
      Q => phase_E(2),
      R => '0'
    );
\comp_high.phase_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(55),
      Q => phase_E(3),
      R => '0'
    );
\comp_high.phase_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(56),
      Q => phase_E(4),
      R => '0'
    );
\comp_high.phase_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(57),
      Q => phase_E(5),
      R => '0'
    );
\comp_high.phase_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(58),
      Q => phase_E(6),
      R => '0'
    );
\comp_high.phase_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(59),
      Q => phase_E(7),
      R => '0'
    );
\comp_high.phase_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(60),
      Q => phase_E(8),
      R => '0'
    );
\comp_high.phase_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(61),
      Q => phase_E(9),
      R => '0'
    );
\comp_high.phase_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(16),
      Q => phase_N(0),
      R => '0'
    );
\comp_high.phase_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(26),
      Q => phase_N(10),
      R => '0'
    );
\comp_high.phase_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(27),
      Q => phase_N(11),
      R => '0'
    );
\comp_high.phase_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(28),
      Q => phase_N(12),
      R => '0'
    );
\comp_high.phase_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(29),
      Q => phase_N(13),
      R => '0'
    );
\comp_high.phase_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(30),
      Q => phase_N(14),
      R => '0'
    );
\comp_high.phase_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(31),
      Q => phase_N(15),
      R => '0'
    );
\comp_high.phase_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(32),
      Q => phase_N(16),
      R => '0'
    );
\comp_high.phase_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(33),
      Q => phase_N(17),
      R => '0'
    );
\comp_high.phase_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(34),
      Q => phase_N(18),
      R => '0'
    );
\comp_high.phase_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(35),
      Q => phase_N(19),
      R => '0'
    );
\comp_high.phase_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(17),
      Q => phase_N(1),
      R => '0'
    );
\comp_high.phase_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(18),
      Q => phase_N(2),
      R => '0'
    );
\comp_high.phase_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(19),
      Q => phase_N(3),
      R => '0'
    );
\comp_high.phase_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(20),
      Q => phase_N(4),
      R => '0'
    );
\comp_high.phase_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(21),
      Q => phase_N(5),
      R => '0'
    );
\comp_high.phase_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(22),
      Q => phase_N(6),
      R => '0'
    );
\comp_high.phase_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(23),
      Q => phase_N(7),
      R => '0'
    );
\comp_high.phase_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(24),
      Q => phase_N(8),
      R => '0'
    );
\comp_high.phase_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(25),
      Q => phase_N(9),
      R => '0'
    );
\comp_high.phase_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(88),
      Q => phase_W(0),
      R => '0'
    );
\comp_high.phase_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(98),
      Q => phase_W(10),
      R => '0'
    );
\comp_high.phase_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(99),
      Q => phase_W(11),
      R => '0'
    );
\comp_high.phase_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(100),
      Q => phase_W(12),
      R => '0'
    );
\comp_high.phase_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(101),
      Q => phase_W(13),
      R => '0'
    );
\comp_high.phase_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(102),
      Q => phase_W(14),
      R => '0'
    );
\comp_high.phase_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(103),
      Q => phase_W(15),
      R => '0'
    );
\comp_high.phase_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(104),
      Q => phase_W(16),
      R => '0'
    );
\comp_high.phase_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(105),
      Q => phase_W(17),
      R => '0'
    );
\comp_high.phase_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(106),
      Q => phase_W(18),
      R => '0'
    );
\comp_high.phase_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(107),
      Q => phase_W(19),
      R => '0'
    );
\comp_high.phase_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(89),
      Q => phase_W(1),
      R => '0'
    );
\comp_high.phase_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(90),
      Q => phase_W(2),
      R => '0'
    );
\comp_high.phase_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(91),
      Q => phase_W(3),
      R => '0'
    );
\comp_high.phase_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(92),
      Q => phase_W(4),
      R => '0'
    );
\comp_high.phase_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(93),
      Q => phase_W(5),
      R => '0'
    );
\comp_high.phase_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(94),
      Q => phase_W(6),
      R => '0'
    );
\comp_high.phase_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(95),
      Q => phase_W(7),
      R => '0'
    );
\comp_high.phase_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(96),
      Q => phase_W(8),
      R => '0'
    );
\comp_high.phase_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.env_N_reg0\,
      D => doa_data(97),
      Q => phase_W(9),
      R => '0'
    );
\comp_high.raw_E0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(128),
      Q => raw_E0(0),
      R => '0'
    );
\comp_high.raw_E0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(138),
      Q => raw_E0(10),
      R => '0'
    );
\comp_high.raw_E0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(139),
      Q => raw_E0(11),
      R => '0'
    );
\comp_high.raw_E0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(140),
      Q => raw_E0(12),
      R => '0'
    );
\comp_high.raw_E0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(141),
      Q => raw_E0(13),
      R => '0'
    );
\comp_high.raw_E0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(142),
      Q => raw_E0(14),
      R => '0'
    );
\comp_high.raw_E0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(143),
      Q => raw_E0(15),
      R => '0'
    );
\comp_high.raw_E0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(129),
      Q => raw_E0(1),
      R => '0'
    );
\comp_high.raw_E0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(130),
      Q => raw_E0(2),
      R => '0'
    );
\comp_high.raw_E0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(131),
      Q => raw_E0(3),
      R => '0'
    );
\comp_high.raw_E0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(132),
      Q => raw_E0(4),
      R => '0'
    );
\comp_high.raw_E0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(133),
      Q => raw_E0(5),
      R => '0'
    );
\comp_high.raw_E0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(134),
      Q => raw_E0(6),
      R => '0'
    );
\comp_high.raw_E0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(135),
      Q => raw_E0(7),
      R => '0'
    );
\comp_high.raw_E0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(136),
      Q => raw_E0(8),
      R => '0'
    );
\comp_high.raw_E0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(137),
      Q => raw_E0(9),
      R => '0'
    );
\comp_high.raw_N0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sample_rd,
      I1 => fifo_sample_empty,
      O => \comp_high.raw_N0_reg0\
    );
\comp_high.raw_N0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(0),
      Q => raw_N0(0),
      R => '0'
    );
\comp_high.raw_N0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(10),
      Q => raw_N0(10),
      R => '0'
    );
\comp_high.raw_N0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(11),
      Q => raw_N0(11),
      R => '0'
    );
\comp_high.raw_N0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(12),
      Q => raw_N0(12),
      R => '0'
    );
\comp_high.raw_N0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(13),
      Q => raw_N0(13),
      R => '0'
    );
\comp_high.raw_N0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(14),
      Q => raw_N0(14),
      R => '0'
    );
\comp_high.raw_N0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(15),
      Q => raw_N0(15),
      R => '0'
    );
\comp_high.raw_N0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(1),
      Q => raw_N0(1),
      R => '0'
    );
\comp_high.raw_N0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(2),
      Q => raw_N0(2),
      R => '0'
    );
\comp_high.raw_N0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(3),
      Q => raw_N0(3),
      R => '0'
    );
\comp_high.raw_N0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(4),
      Q => raw_N0(4),
      R => '0'
    );
\comp_high.raw_N0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(5),
      Q => raw_N0(5),
      R => '0'
    );
\comp_high.raw_N0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(6),
      Q => raw_N0(6),
      R => '0'
    );
\comp_high.raw_N0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(7),
      Q => raw_N0(7),
      R => '0'
    );
\comp_high.raw_N0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(8),
      Q => raw_N0(8),
      R => '0'
    );
\comp_high.raw_N0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(9),
      Q => raw_N0(9),
      R => '0'
    );
\comp_high.raw_W0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(256),
      Q => raw_W0(0),
      R => '0'
    );
\comp_high.raw_W0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(266),
      Q => raw_W0(10),
      R => '0'
    );
\comp_high.raw_W0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(267),
      Q => raw_W0(11),
      R => '0'
    );
\comp_high.raw_W0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(268),
      Q => raw_W0(12),
      R => '0'
    );
\comp_high.raw_W0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(269),
      Q => raw_W0(13),
      R => '0'
    );
\comp_high.raw_W0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(270),
      Q => raw_W0(14),
      R => '0'
    );
\comp_high.raw_W0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(271),
      Q => raw_W0(15),
      R => '0'
    );
\comp_high.raw_W0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(257),
      Q => raw_W0(1),
      R => '0'
    );
\comp_high.raw_W0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(258),
      Q => raw_W0(2),
      R => '0'
    );
\comp_high.raw_W0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(259),
      Q => raw_W0(3),
      R => '0'
    );
\comp_high.raw_W0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(260),
      Q => raw_W0(4),
      R => '0'
    );
\comp_high.raw_W0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(261),
      Q => raw_W0(5),
      R => '0'
    );
\comp_high.raw_W0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(262),
      Q => raw_W0(6),
      R => '0'
    );
\comp_high.raw_W0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(263),
      Q => raw_W0(7),
      R => '0'
    );
\comp_high.raw_W0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(264),
      Q => raw_W0(8),
      R => '0'
    );
\comp_high.raw_W0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \comp_high.raw_N0_reg0\,
      D => sample_data(265),
      Q => raw_W0(9),
      R => '0'
    );
\comp_high.sample_rd_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => fifo_doa_delay(0),
      I1 => fifo_doa_delay(3),
      I2 => fifo_doa_delay(4),
      I3 => fifo_doa_delay(1),
      I4 => fifo_doa_delay(2),
      I5 => fifo_sample_empty,
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
fifo_doa_i: component ps_comp_high_0_0_fifo_doa
     port map (
      din(143 downto 0) => fifo_doa_data(143 downto 0),
      dout(143 downto 0) => doa_data(143 downto 0),
      empty => fifo_doa_empty,
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
      dout(383 downto 272) => NLW_fifo_raw_i_dout_UNCONNECTED(383 downto 272),
      dout(271 downto 256) => sample_data(271 downto 256),
      dout(255 downto 144) => NLW_fifo_raw_i_dout_UNCONNECTED(255 downto 144),
      dout(143 downto 128) => sample_data(143 downto 128),
      dout(127 downto 16) => NLW_fifo_raw_i_dout_UNCONNECTED(127 downto 16),
      dout(15 downto 0) => sample_data(15 downto 0),
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
ila_i: component ps_comp_high_0_0_ila_3
     port map (
      clk => clk,
      probe0(0) => fifo_sample_empty,
      probe1(0) => fifo_doa_empty,
      probe10(15 downto 0) => env_W(15 downto 0),
      probe11(19 downto 0) => phase_W(19 downto 0),
      probe12(11 downto 0) => err_NE(11 downto 0),
      probe13(11 downto 0) => err_NW(11 downto 0),
      probe14(11 downto 0) => err_EW(11 downto 0),
      probe15(15 downto 0) => raw_N0(15 downto 0),
      probe16(15 downto 0) => raw_E0(15 downto 0),
      probe17(15 downto 0) => raw_W0(15 downto 0),
      probe2(0) => sample_rd,
      probe3(0) => doa_rd,
      probe4(4 downto 0) => fifo_doa_delay(4 downto 0),
      probe5(8 downto 0) => fifo_sample_delay(8 downto 0),
      probe6(15 downto 0) => env_N(15 downto 0),
      probe7(19 downto 0) => phase_N(19 downto 0),
      probe8(15 downto 0) => env_E(15 downto 0),
      probe9(19 downto 0) => phase_E(19 downto 0)
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
      config_adr(7 downto 0) => B"00000000",
      config_clk => '0',
      config_data(31 downto 0) => B"00000000000000000000000000000000",
      config_wr => '0',
      fifo_clk => fifo_clk,
      fifo_doa_data(143 downto 0) => fifo_doa_data(143 downto 0),
      fifo_sample_data(383 downto 0) => fifo_sample_data(383 downto 0),
      fifo_wr => fifo_wr,
      reset => reset
    );
end STRUCTURE;
