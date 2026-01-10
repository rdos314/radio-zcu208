-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Jan 10 17:37:38 2026
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_adc_control_0_0/ps_adc_control_0_0_sim_netlist.vhdl
-- Design      : ps_adc_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_adc_control_0_0_adc_control is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    bram_adr_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_adr_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    address : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_start : out STD_LOGIC;
    adc_stop : out STD_LOGIC;
    sim_start : out STD_LOGIC;
    adc_active : in STD_LOGIC;
    sim_active : in STD_LOGIC;
    config_low_wr : out STD_LOGIC;
    config_high_wr : out STD_LOGIC;
    config_adr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sim_low_wr : out STD_LOGIC;
    sim_high_wr : out STD_LOGIC;
    sim_channel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_adc_control_0_0_adc_control : entity is "adc_control";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_adc_control_0_0_adc_control : entity is "soft";
end ps_adc_control_0_0_adc_control;

architecture STRUCTURE of ps_adc_control_0_0_adc_control is
  component ps_adc_control_0_0_ila_4 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component ps_adc_control_0_0_ila_4;
  signal \adc_control.adc_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.adc_stop_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[0]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.address[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[1]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[9]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[9]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.cdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.cdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.cmd_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_adr[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_adr[7]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.config_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_high_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_low_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_low_wr_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_done_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_pend_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_11_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_12_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_13_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_14_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_16_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_17_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_18_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_19_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_20_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_21_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_22_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_23_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_24_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_25_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_26_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_27_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_15_n_1\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_15_n_2\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_15_n_3\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_15_n_4\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_15_n_5\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_15_n_6\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_15_n_7\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_7_n_5\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_7_n_6\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_7_n_7\ : STD_LOGIC;
  signal \adc_control.sim_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_high_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_low_wr_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_low_wr_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_low_wr_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.sim_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_5_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_6_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_10_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_11_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_12_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_5_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_6_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_7_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_8_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_9_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \adc_control.sim_wr_done_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_pend_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_pend_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_start_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_start_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en_reg0\ : STD_LOGIC;
  signal \^adc_start\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of adc_start : signal is std.standard.true;
  signal \^adc_stop\ : STD_LOGIC;
  attribute MARK_DEBUG of adc_stop : signal is std.standard.true;
  signal \^address\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of \^address\ : signal is std.standard.true;
  signal \^bram_adr_in\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal cdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of cdata : signal is std.standard.true;
  signal cmd_start : STD_LOGIC;
  attribute MARK_DEBUG of cmd_start : signal is std.standard.true;
  signal \^config_adr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^config_high_wr\ : STD_LOGIC;
  signal \^config_low_wr\ : STD_LOGIC;
  signal config_wr_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal config_wr_done : STD_LOGIC;
  signal config_wr_pend : STD_LOGIC;
  signal config_wr_start : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of \^data_out\ : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal padr : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of padr : signal is std.standard.true;
  signal pdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of pdata : signal is std.standard.true;
  signal \^sim_channel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of \^sim_channel\ : signal is std.standard.true;
  signal \^sim_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of \^sim_data\ : signal is std.standard.true;
  signal \^sim_high_wr\ : STD_LOGIC;
  attribute MARK_DEBUG of sim_high_wr : signal is std.standard.true;
  signal \^sim_low_wr\ : STD_LOGIC;
  attribute MARK_DEBUG of sim_low_wr : signal is std.standard.true;
  signal sim_low_wr2_out : STD_LOGIC;
  signal \^sim_start\ : STD_LOGIC;
  attribute MARK_DEBUG of sim_start : signal is std.standard.true;
  signal sim_wr_count : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of sim_wr_count : signal is std.standard.true;
  signal \sim_wr_count__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sim_wr_done : STD_LOGIC;
  attribute MARK_DEBUG of sim_wr_done : signal is std.standard.true;
  signal sim_wr_pend : STD_LOGIC;
  attribute MARK_DEBUG of sim_wr_pend : signal is std.standard.true;
  signal sim_wr_start : STD_LOGIC;
  attribute MARK_DEBUG of sim_wr_start : signal is std.standard.true;
  signal \^wr_en\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of \^wr_en\ : signal is std.standard.true;
  signal \NLW_adc_control.pdata_reg[31]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_adc_control.pdata_reg[31]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_adc_control.pdata_reg[31]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_adc_control.sim_wr_count_reg[10]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_adc_control.sim_wr_count_reg[10]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute KEEP : string;
  attribute KEEP of \adc_control.adc_start_reg\ : label is "yes";
  attribute KEEP of \adc_control.adc_stop_reg\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[10]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[7]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.address_reg[9]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \adc_control.cdata_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[10]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[10]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[11]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[11]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[12]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[12]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[13]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[13]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[14]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[14]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[15]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[15]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[16]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[16]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[17]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[17]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[18]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[18]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[19]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[19]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[1]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[20]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[20]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[21]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[21]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[22]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[22]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[23]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[23]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[24]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[24]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[25]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[25]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[26]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[26]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[27]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[27]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[28]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[28]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[29]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[29]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[2]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[30]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[30]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[31]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[31]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[3]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[4]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[5]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[6]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[7]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[7]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[8]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.cdata_reg[9]\ : label is "yes";
  attribute mark_debug_string of \adc_control.cdata_reg[9]\ : label is "yes";
  attribute KEEP of \adc_control.cmd_start_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc_control.config_adr[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adc_control.config_adr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adc_control.config_adr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adc_control.config_adr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adc_control.config_adr[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_control.config_adr[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_control.config_wr_count[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adc_control.config_wr_count[5]_i_2\ : label is "soft_lutpair0";
  attribute KEEP of \adc_control.data_out_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[10]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[11]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[12]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[13]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[14]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[15]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[16]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[17]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[18]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[19]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[20]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[21]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[22]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[23]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[24]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[25]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[26]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[27]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[28]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[29]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[30]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[31]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[7]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.data_out_reg[9]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[10]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[7]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.padr_reg[9]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[10]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[11]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[12]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[13]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[14]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[15]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[16]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[17]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[18]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[19]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[20]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[21]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[22]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[23]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[24]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[25]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[26]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[27]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[28]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[29]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[30]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[31]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[7]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.pdata_reg[9]\ : label is "yes";
  attribute KEEP of \adc_control.sim_channel_reg[0]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_channel_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.sim_channel_reg[1]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_channel_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[0]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[10]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[10]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[11]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[11]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[12]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[12]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[13]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[13]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[14]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[14]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[15]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[15]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[16]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[16]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[17]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[17]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[18]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[18]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[19]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[19]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[20]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[20]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[21]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[21]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[22]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[22]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[23]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[23]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[24]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[24]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[25]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[25]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[26]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[26]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[27]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[27]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[28]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[28]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[29]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[29]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[30]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[30]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[31]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[31]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[7]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[8]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.sim_data_reg[9]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_data_reg[9]\ : label is "yes";
  attribute KEEP of \adc_control.sim_high_wr_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_low_wr_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_start_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[10]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \adc_control.sim_wr_count_reg[10]_i_2\ : label is 35;
  attribute KEEP of \adc_control.sim_wr_count_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \adc_control.sim_wr_count_reg[7]_i_2\ : label is 35;
  attribute KEEP of \adc_control.sim_wr_count_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_count_reg[9]\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_done_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_pend_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_wr_start_reg\ : label is "yes";
  attribute KEEP of \adc_control.wr_en_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.wr_en_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.wr_en_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.wr_en_reg[3]\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_4_i : label is "ila_4,ila,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ila_4_i : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ila_4_i : label is "ila,Vivado 2025.1";
begin
  \^bram_adr_in\(12 downto 2) <= bram_adr_in(12 downto 2);
  adc_start <= \^adc_start\;
  adc_stop <= \^adc_stop\;
  address(10 downto 0) <= \^address\(10 downto 0);
  bram_adr_out(10 downto 0) <= \^bram_adr_in\(12 downto 2);
  config_adr(7 downto 0) <= \^config_adr\(7 downto 0);
  config_high_wr <= \^config_high_wr\;
  config_low_wr <= \^config_low_wr\;
  data_out(31 downto 0) <= \^data_out\(31 downto 0);
  sim_channel(1 downto 0) <= \^sim_channel\(1 downto 0);
  sim_data(31 downto 0) <= \^sim_data\(31 downto 0);
  sim_high_wr <= \^sim_high_wr\;
  sim_low_wr <= \^sim_low_wr\;
  sim_start <= \^sim_start\;
  wr_en(3 downto 0) <= \^wr_en\(3 downto 0);
\adc_control.adc_start_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => \^adc_start\,
      I1 => cdata(0),
      I2 => cdata(1),
      I3 => cdata(2),
      I4 => \adc_control.sim_wr_start_i_3_n_0\,
      O => \adc_control.adc_start_i_1_n_0\
    );
\adc_control.adc_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.adc_start_i_1_n_0\,
      Q => \^adc_start\,
      R => \adc_control.sim_wr_start_i_1_n_0\
    );
\adc_control.adc_stop_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => \^adc_stop\,
      I1 => cdata(0),
      I2 => cdata(2),
      I3 => cdata(1),
      I4 => \adc_control.sim_wr_start_i_3_n_0\,
      O => \adc_control.adc_stop_i_1_n_0\
    );
\adc_control.adc_stop_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.adc_stop_i_1_n_0\,
      Q => \^adc_stop\,
      R => \adc_control.sim_wr_start_i_1_n_0\
    );
\adc_control.address[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555550155555555"
    )
        port map (
      I0 => cmd_start,
      I1 => \^address\(0),
      I2 => \adc_control.address[0]_i_2_n_0\,
      I3 => config_wr_done,
      I4 => sim_wr_done,
      I5 => resetn,
      O => \adc_control.address[0]_i_1_n_0\
    );
\adc_control.address[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => config_wr_pend,
      I3 => config_wr_start,
      O => \adc_control.address[0]_i_2_n_0\
    );
\adc_control.address[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \^address\(9),
      I2 => \^address\(10),
      I3 => \adc_control.address[10]_i_3_n_0\,
      O => \adc_control.address[10]_i_1_n_0\
    );
\adc_control.address[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^address\(8),
      I1 => \^address\(7),
      I2 => \adc_control.address[9]_i_2_n_0\,
      I3 => \^address\(6),
      O => \adc_control.address[10]_i_2_n_0\
    );
\adc_control.address[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => config_wr_pend,
      I3 => config_wr_start,
      I4 => \adc_control.address[10]_i_4_n_0\,
      I5 => cmd_start,
      O => \adc_control.address[10]_i_3_n_0\
    );
\adc_control.address[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => config_wr_done,
      I1 => sim_wr_done,
      I2 => resetn,
      O => \adc_control.address[10]_i_4_n_0\
    );
\adc_control.address[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEAA"
    )
        port map (
      I0 => cmd_start,
      I1 => \^address\(0),
      I2 => \^address\(1),
      I3 => \adc_control.address[1]_i_2_n_0\,
      O => \adc_control.address[1]_i_1_n_0\
    );
\adc_control.address[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => resetn,
      I1 => \adc_control.data_out[3]_i_2_n_0\,
      I2 => config_wr_start,
      I3 => config_wr_pend,
      I4 => sim_wr_pend,
      I5 => sim_wr_start,
      O => \adc_control.address[1]_i_2_n_0\
    );
\adc_control.address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(0),
      I2 => \^address\(1),
      I3 => \^address\(2),
      O => \adc_control.address[2]_i_1_n_0\
    );
\adc_control.address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(1),
      I2 => \^address\(0),
      I3 => \^address\(2),
      I4 => \^address\(3),
      O => \adc_control.address[3]_i_1_n_0\
    );
\adc_control.address[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(3),
      I2 => \^address\(1),
      I3 => \^address\(0),
      I4 => \^address\(2),
      I5 => \^address\(4),
      O => \adc_control.address[4]_i_1_n_0\
    );
\adc_control.address[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \adc_control.address[5]_i_2_n_0\,
      I2 => \^address\(5),
      O => \adc_control.address[5]_i_1_n_0\
    );
\adc_control.address[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^address\(3),
      I1 => \^address\(1),
      I2 => \^address\(0),
      I3 => \^address\(2),
      I4 => \^address\(4),
      O => \adc_control.address[5]_i_2_n_0\
    );
\adc_control.address[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \adc_control.address[9]_i_2_n_0\,
      I2 => \^address\(6),
      O => \adc_control.address[6]_i_1_n_0\
    );
\adc_control.address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(6),
      I2 => \adc_control.address[9]_i_2_n_0\,
      I3 => \^address\(7),
      O => \adc_control.address[7]_i_1_n_0\
    );
\adc_control.address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(6),
      I2 => \adc_control.address[9]_i_2_n_0\,
      I3 => \^address\(7),
      I4 => \^address\(8),
      O => \adc_control.address[8]_i_1_n_0\
    );
\adc_control.address[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888288888888888"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(9),
      I2 => \^address\(8),
      I3 => \^address\(7),
      I4 => \adc_control.address[9]_i_2_n_0\,
      I5 => \^address\(6),
      O => \adc_control.address[9]_i_1_n_0\
    );
\adc_control.address[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^address\(4),
      I1 => \^address\(2),
      I2 => \^address\(0),
      I3 => \^address\(1),
      I4 => \^address\(3),
      I5 => \^address\(5),
      O => \adc_control.address[9]_i_2_n_0\
    );
\adc_control.address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[0]_i_1_n_0\,
      Q => \^address\(0),
      R => '0'
    );
\adc_control.address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[10]_i_1_n_0\,
      Q => \^address\(10),
      R => '0'
    );
\adc_control.address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[1]_i_1_n_0\,
      Q => \^address\(1),
      R => '0'
    );
\adc_control.address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[2]_i_1_n_0\,
      Q => \^address\(2),
      R => '0'
    );
\adc_control.address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[3]_i_1_n_0\,
      Q => \^address\(3),
      R => '0'
    );
\adc_control.address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[4]_i_1_n_0\,
      Q => \^address\(4),
      R => '0'
    );
\adc_control.address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[5]_i_1_n_0\,
      Q => \^address\(5),
      R => '0'
    );
\adc_control.address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[6]_i_1_n_0\,
      Q => \^address\(6),
      R => '0'
    );
\adc_control.address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[7]_i_1_n_0\,
      Q => \^address\(7),
      R => '0'
    );
\adc_control.address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[8]_i_1_n_0\,
      Q => \^address\(8),
      R => '0'
    );
\adc_control.address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[9]_i_1_n_0\,
      Q => \^address\(9),
      R => '0'
    );
\adc_control.cdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => padr(9),
      I1 => padr(6),
      I2 => \adc_control.cdata[31]_i_2_n_0\,
      I3 => padr(8),
      I4 => padr(7),
      I5 => padr(10),
      O => \adc_control.cdata[31]_i_1_n_0\
    );
\adc_control.cdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => padr(3),
      I1 => padr(0),
      I2 => padr(1),
      I3 => padr(2),
      I4 => padr(5),
      I5 => padr(4),
      O => \adc_control.cdata[31]_i_2_n_0\
    );
\adc_control.cdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(0),
      Q => cdata(0),
      R => '0'
    );
\adc_control.cdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(10),
      Q => cdata(10),
      R => '0'
    );
\adc_control.cdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(11),
      Q => cdata(11),
      R => '0'
    );
\adc_control.cdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(12),
      Q => cdata(12),
      R => '0'
    );
\adc_control.cdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(13),
      Q => cdata(13),
      R => '0'
    );
\adc_control.cdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(14),
      Q => cdata(14),
      R => '0'
    );
\adc_control.cdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(15),
      Q => cdata(15),
      R => '0'
    );
\adc_control.cdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(16),
      Q => cdata(16),
      R => '0'
    );
\adc_control.cdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(17),
      Q => cdata(17),
      R => '0'
    );
\adc_control.cdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(18),
      Q => cdata(18),
      R => '0'
    );
\adc_control.cdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(19),
      Q => cdata(19),
      R => '0'
    );
\adc_control.cdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(1),
      Q => cdata(1),
      R => '0'
    );
\adc_control.cdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(20),
      Q => cdata(20),
      R => '0'
    );
\adc_control.cdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(21),
      Q => cdata(21),
      R => '0'
    );
\adc_control.cdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(22),
      Q => cdata(22),
      R => '0'
    );
\adc_control.cdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(23),
      Q => cdata(23),
      R => '0'
    );
\adc_control.cdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(24),
      Q => cdata(24),
      R => '0'
    );
\adc_control.cdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(25),
      Q => cdata(25),
      R => '0'
    );
\adc_control.cdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(26),
      Q => cdata(26),
      R => '0'
    );
\adc_control.cdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(27),
      Q => cdata(27),
      R => '0'
    );
\adc_control.cdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(28),
      Q => cdata(28),
      R => '0'
    );
\adc_control.cdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(29),
      Q => cdata(29),
      R => '0'
    );
\adc_control.cdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(2),
      Q => cdata(2),
      R => '0'
    );
\adc_control.cdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(30),
      Q => cdata(30),
      R => '0'
    );
\adc_control.cdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(31),
      Q => cdata(31),
      R => '0'
    );
\adc_control.cdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(3),
      Q => cdata(3),
      R => '0'
    );
\adc_control.cdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(4),
      Q => cdata(4),
      R => '0'
    );
\adc_control.cdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(5),
      Q => cdata(5),
      R => '0'
    );
\adc_control.cdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(6),
      Q => cdata(6),
      R => '0'
    );
\adc_control.cdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(7),
      Q => cdata(7),
      R => '0'
    );
\adc_control.cdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(8),
      Q => cdata(8),
      R => '0'
    );
\adc_control.cdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(9),
      Q => cdata(9),
      R => '0'
    );
\adc_control.cmd_start_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      O => \adc_control.cmd_start_i_1_n_0\
    );
\adc_control.cmd_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.cmd_start_i_1_n_0\,
      Q => cmd_start,
      R => '0'
    );
\adc_control.config_adr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^config_adr\(0),
      O => \p_0_in__1\(0)
    );
\adc_control.config_adr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^config_adr\(0),
      I1 => \^config_adr\(1),
      O => \p_0_in__1\(1)
    );
\adc_control.config_adr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^config_adr\(2),
      I1 => \^config_adr\(1),
      I2 => \^config_adr\(0),
      O => \p_0_in__1\(2)
    );
\adc_control.config_adr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^config_adr\(3),
      I1 => \^config_adr\(0),
      I2 => \^config_adr\(1),
      I3 => \^config_adr\(2),
      O => \p_0_in__1\(3)
    );
\adc_control.config_adr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^config_adr\(4),
      I1 => \^config_adr\(2),
      I2 => \^config_adr\(1),
      I3 => \^config_adr\(0),
      I4 => \^config_adr\(3),
      O => \p_0_in__1\(4)
    );
\adc_control.config_adr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^config_adr\(5),
      I1 => \^config_adr\(3),
      I2 => \^config_adr\(0),
      I3 => \^config_adr\(1),
      I4 => \^config_adr\(2),
      I5 => \^config_adr\(4),
      O => \p_0_in__1\(5)
    );
\adc_control.config_adr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^config_adr\(6),
      I1 => \adc_control.config_adr[7]_i_3_n_0\,
      O => \p_0_in__1\(6)
    );
\adc_control.config_adr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF01FF"
    )
        port map (
      I0 => config_wr_count(7),
      I1 => config_wr_count(6),
      I2 => \adc_control.config_low_wr_i_2_n_0\,
      I3 => config_wr_pend,
      I4 => cmd_start,
      O => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^config_adr\(7),
      I1 => \adc_control.config_adr[7]_i_3_n_0\,
      I2 => \^config_adr\(6),
      O => \p_0_in__1\(7)
    );
\adc_control.config_adr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^config_adr\(5),
      I1 => \^config_adr\(3),
      I2 => \^config_adr\(0),
      I3 => \^config_adr\(1),
      I4 => \^config_adr\(2),
      I5 => \^config_adr\(4),
      O => \adc_control.config_adr[7]_i_3_n_0\
    );
\adc_control.config_adr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => \^config_adr\(0),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => \^config_adr\(1),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => \^config_adr\(2),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => \^config_adr\(3),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__1\(4),
      Q => \^config_adr\(4),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__1\(5),
      Q => \^config_adr\(5),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__1\(6),
      Q => \^config_adr\(6),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__1\(7),
      Q => \^config_adr\(7),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => config_wr_count(7),
      I1 => config_wr_count(6),
      I2 => \adc_control.config_low_wr_i_2_n_0\,
      I3 => config_wr_pend,
      I4 => cmd_start,
      O => \adc_control.config_data[31]_i_1_n_0\
    );
\adc_control.config_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(0),
      Q => config_data(0),
      R => '0'
    );
\adc_control.config_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(10),
      Q => config_data(10),
      R => '0'
    );
\adc_control.config_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(11),
      Q => config_data(11),
      R => '0'
    );
\adc_control.config_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(12),
      Q => config_data(12),
      R => '0'
    );
\adc_control.config_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(13),
      Q => config_data(13),
      R => '0'
    );
\adc_control.config_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(14),
      Q => config_data(14),
      R => '0'
    );
\adc_control.config_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(15),
      Q => config_data(15),
      R => '0'
    );
\adc_control.config_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(16),
      Q => config_data(16),
      R => '0'
    );
\adc_control.config_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(17),
      Q => config_data(17),
      R => '0'
    );
\adc_control.config_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(18),
      Q => config_data(18),
      R => '0'
    );
\adc_control.config_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(19),
      Q => config_data(19),
      R => '0'
    );
\adc_control.config_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(1),
      Q => config_data(1),
      R => '0'
    );
\adc_control.config_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(20),
      Q => config_data(20),
      R => '0'
    );
\adc_control.config_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(21),
      Q => config_data(21),
      R => '0'
    );
\adc_control.config_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(22),
      Q => config_data(22),
      R => '0'
    );
\adc_control.config_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(23),
      Q => config_data(23),
      R => '0'
    );
\adc_control.config_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(24),
      Q => config_data(24),
      R => '0'
    );
\adc_control.config_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(25),
      Q => config_data(25),
      R => '0'
    );
\adc_control.config_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(26),
      Q => config_data(26),
      R => '0'
    );
\adc_control.config_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(27),
      Q => config_data(27),
      R => '0'
    );
\adc_control.config_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(28),
      Q => config_data(28),
      R => '0'
    );
\adc_control.config_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(29),
      Q => config_data(29),
      R => '0'
    );
\adc_control.config_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(2),
      Q => config_data(2),
      R => '0'
    );
\adc_control.config_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(30),
      Q => config_data(30),
      R => '0'
    );
\adc_control.config_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(31),
      Q => config_data(31),
      R => '0'
    );
\adc_control.config_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(3),
      Q => config_data(3),
      R => '0'
    );
\adc_control.config_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(4),
      Q => config_data(4),
      R => '0'
    );
\adc_control.config_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(5),
      Q => config_data(5),
      R => '0'
    );
\adc_control.config_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(6),
      Q => config_data(6),
      R => '0'
    );
\adc_control.config_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(7),
      Q => config_data(7),
      R => '0'
    );
\adc_control.config_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(8),
      Q => config_data(8),
      R => '0'
    );
\adc_control.config_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(9),
      Q => config_data(9),
      R => '0'
    );
\adc_control.config_high_wr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE00FE000000"
    )
        port map (
      I0 => config_wr_count(7),
      I1 => config_wr_count(6),
      I2 => \adc_control.config_low_wr_i_2_n_0\,
      I3 => config_wr_pend,
      I4 => cdata(8),
      I5 => \^config_high_wr\,
      O => \adc_control.config_high_wr_i_1_n_0\
    );
\adc_control.config_high_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_high_wr_i_1_n_0\,
      Q => \^config_high_wr\,
      R => cmd_start
    );
\adc_control.config_low_wr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000FE00FE00"
    )
        port map (
      I0 => config_wr_count(7),
      I1 => config_wr_count(6),
      I2 => \adc_control.config_low_wr_i_2_n_0\,
      I3 => config_wr_pend,
      I4 => \^config_low_wr\,
      I5 => cdata(8),
      O => \adc_control.config_low_wr_i_1_n_0\
    );
\adc_control.config_low_wr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => config_wr_count(5),
      I1 => config_wr_count(3),
      I2 => config_wr_count(1),
      I3 => config_wr_count(0),
      I4 => config_wr_count(2),
      I5 => config_wr_count(4),
      O => \adc_control.config_low_wr_i_2_n_0\
    );
\adc_control.config_low_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_low_wr_i_1_n_0\,
      Q => \^config_low_wr\,
      R => cmd_start
    );
\adc_control.config_wr_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF005454"
    )
        port map (
      I0 => config_wr_count(0),
      I1 => config_wr_pend,
      I2 => config_wr_start,
      I3 => cdata(16),
      I4 => cmd_start,
      O => \adc_control.config_wr_count[0]_i_1_n_0\
    );
\adc_control.config_wr_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAC3AAC3AA00"
    )
        port map (
      I0 => cdata(17),
      I1 => config_wr_count(1),
      I2 => config_wr_count(0),
      I3 => cmd_start,
      I4 => config_wr_pend,
      I5 => config_wr_start,
      O => \adc_control.config_wr_count[1]_i_1_n_0\
    );
\adc_control.config_wr_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F88F88888888"
    )
        port map (
      I0 => cdata(18),
      I1 => cmd_start,
      I2 => config_wr_count(2),
      I3 => config_wr_count(0),
      I4 => config_wr_count(1),
      I5 => \adc_control.config_wr_count[7]_i_3_n_0\,
      O => \adc_control.config_wr_count[2]_i_1_n_0\
    );
\adc_control.config_wr_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAC3AAC3AA00"
    )
        port map (
      I0 => cdata(19),
      I1 => config_wr_count(3),
      I2 => \adc_control.config_wr_count[3]_i_2_n_0\,
      I3 => cmd_start,
      I4 => config_wr_pend,
      I5 => config_wr_start,
      O => \adc_control.config_wr_count[3]_i_1_n_0\
    );
\adc_control.config_wr_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => config_wr_count(2),
      I1 => config_wr_count(0),
      I2 => config_wr_count(1),
      O => \adc_control.config_wr_count[3]_i_2_n_0\
    );
\adc_control.config_wr_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAC3AAC3AA00"
    )
        port map (
      I0 => cdata(20),
      I1 => config_wr_count(4),
      I2 => \adc_control.config_wr_count[4]_i_2_n_0\,
      I3 => cmd_start,
      I4 => config_wr_pend,
      I5 => config_wr_start,
      O => \adc_control.config_wr_count[4]_i_1_n_0\
    );
\adc_control.config_wr_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => config_wr_count(3),
      I1 => config_wr_count(1),
      I2 => config_wr_count(0),
      I3 => config_wr_count(2),
      O => \adc_control.config_wr_count[4]_i_2_n_0\
    );
\adc_control.config_wr_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAC3AAC3AA00"
    )
        port map (
      I0 => cdata(21),
      I1 => config_wr_count(5),
      I2 => \adc_control.config_wr_count[5]_i_2_n_0\,
      I3 => cmd_start,
      I4 => config_wr_pend,
      I5 => config_wr_start,
      O => \adc_control.config_wr_count[5]_i_1_n_0\
    );
\adc_control.config_wr_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => config_wr_count(4),
      I1 => config_wr_count(2),
      I2 => config_wr_count(0),
      I3 => config_wr_count(1),
      I4 => config_wr_count(3),
      O => \adc_control.config_wr_count[5]_i_2_n_0\
    );
\adc_control.config_wr_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAC3AAC3AA00"
    )
        port map (
      I0 => cdata(22),
      I1 => config_wr_count(6),
      I2 => \adc_control.config_low_wr_i_2_n_0\,
      I3 => cmd_start,
      I4 => config_wr_pend,
      I5 => config_wr_start,
      O => \adc_control.config_wr_count[6]_i_1_n_0\
    );
\adc_control.config_wr_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE00FEFF"
    )
        port map (
      I0 => config_wr_count(7),
      I1 => config_wr_count(6),
      I2 => \adc_control.config_low_wr_i_2_n_0\,
      I3 => config_wr_pend,
      I4 => config_wr_start,
      I5 => cmd_start,
      O => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F88F88888888"
    )
        port map (
      I0 => cdata(23),
      I1 => cmd_start,
      I2 => config_wr_count(7),
      I3 => \adc_control.config_low_wr_i_2_n_0\,
      I4 => config_wr_count(6),
      I5 => \adc_control.config_wr_count[7]_i_3_n_0\,
      O => \adc_control.config_wr_count[7]_i_2_n_0\
    );
\adc_control.config_wr_count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => cmd_start,
      I1 => config_wr_pend,
      I2 => config_wr_start,
      O => \adc_control.config_wr_count[7]_i_3_n_0\
    );
\adc_control.config_wr_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_1_n_0\,
      D => \adc_control.config_wr_count[0]_i_1_n_0\,
      Q => config_wr_count(0),
      R => '0'
    );
\adc_control.config_wr_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_1_n_0\,
      D => \adc_control.config_wr_count[1]_i_1_n_0\,
      Q => config_wr_count(1),
      R => '0'
    );
\adc_control.config_wr_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_1_n_0\,
      D => \adc_control.config_wr_count[2]_i_1_n_0\,
      Q => config_wr_count(2),
      R => '0'
    );
\adc_control.config_wr_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_1_n_0\,
      D => \adc_control.config_wr_count[3]_i_1_n_0\,
      Q => config_wr_count(3),
      R => '0'
    );
\adc_control.config_wr_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_1_n_0\,
      D => \adc_control.config_wr_count[4]_i_1_n_0\,
      Q => config_wr_count(4),
      R => '0'
    );
\adc_control.config_wr_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_1_n_0\,
      D => \adc_control.config_wr_count[5]_i_1_n_0\,
      Q => config_wr_count(5),
      R => '0'
    );
\adc_control.config_wr_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_1_n_0\,
      D => \adc_control.config_wr_count[6]_i_1_n_0\,
      Q => config_wr_count(6),
      R => '0'
    );
\adc_control.config_wr_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_1_n_0\,
      D => \adc_control.config_wr_count[7]_i_2_n_0\,
      Q => config_wr_count(7),
      R => '0'
    );
\adc_control.config_wr_done_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010100"
    )
        port map (
      I0 => config_wr_count(7),
      I1 => config_wr_count(6),
      I2 => \adc_control.config_low_wr_i_2_n_0\,
      I3 => config_wr_start,
      I4 => config_wr_pend,
      I5 => config_wr_done,
      O => \adc_control.config_wr_done_i_1_n_0\
    );
\adc_control.config_wr_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_wr_done_i_1_n_0\,
      Q => config_wr_done,
      R => '0'
    );
\adc_control.config_wr_pend_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => config_wr_done,
      I1 => config_wr_start,
      I2 => config_wr_pend,
      O => \adc_control.config_wr_pend_i_1_n_0\
    );
\adc_control.config_wr_pend_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_wr_pend_i_1_n_0\,
      Q => config_wr_pend,
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.config_wr_start_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \adc_control.sim_wr_start_i_3_n_0\,
      I1 => cdata(0),
      I2 => cdata(2),
      I3 => cdata(1),
      I4 => config_wr_start,
      O => \adc_control.config_wr_start_i_1_n_0\
    );
\adc_control.config_wr_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_wr_start_i_1_n_0\,
      Q => config_wr_start,
      R => \adc_control.sim_wr_start_i_1_n_0\
    );
\adc_control.data_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A8"
    )
        port map (
      I0 => resetn,
      I1 => config_wr_done,
      I2 => sim_wr_done,
      I3 => \^data_out\(0),
      O => \adc_control.data_out[0]_i_1_n_0\
    );
\adc_control.data_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222A8880"
    )
        port map (
      I0 => resetn,
      I1 => \^data_out\(0),
      I2 => sim_wr_done,
      I3 => config_wr_done,
      I4 => \^data_out\(1),
      O => \adc_control.data_out[1]_i_1_n_0\
    );
\adc_control.data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222AAAAA88800000"
    )
        port map (
      I0 => resetn,
      I1 => \^data_out\(1),
      I2 => config_wr_done,
      I3 => sim_wr_done,
      I4 => \^data_out\(0),
      I5 => \^data_out\(2),
      O => \adc_control.data_out[2]_i_1_n_0\
    );
\adc_control.data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => resetn,
      I1 => \^data_out\(2),
      I2 => \^data_out\(0),
      I3 => \adc_control.data_out[3]_i_2_n_0\,
      I4 => \^data_out\(1),
      I5 => \^data_out\(3),
      O => \adc_control.data_out[3]_i_1_n_0\
    );
\adc_control.data_out[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sim_wr_done,
      I1 => config_wr_done,
      O => \adc_control.data_out[3]_i_2_n_0\
    );
\adc_control.data_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => resetn,
      I1 => \adc_control.data_out[7]_i_2_n_0\,
      I2 => \^data_out\(4),
      O => \adc_control.data_out[4]_i_1_n_0\
    );
\adc_control.data_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => resetn,
      I1 => \^data_out\(4),
      I2 => \adc_control.data_out[7]_i_2_n_0\,
      I3 => \^data_out\(5),
      O => \adc_control.data_out[5]_i_1_n_0\
    );
\adc_control.data_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => resetn,
      I1 => \^data_out\(4),
      I2 => \adc_control.data_out[7]_i_2_n_0\,
      I3 => \^data_out\(5),
      I4 => \^data_out\(6),
      O => \adc_control.data_out[6]_i_1_n_0\
    );
\adc_control.data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \^data_out\(6),
      I1 => \^data_out\(5),
      I2 => \adc_control.data_out[7]_i_2_n_0\,
      I3 => \^data_out\(4),
      I4 => resetn,
      I5 => \^data_out\(7),
      O => \adc_control.data_out[7]_i_1_n_0\
    );
\adc_control.data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777FFFFFFFFFFFFF"
    )
        port map (
      I0 => \^data_out\(2),
      I1 => \^data_out\(0),
      I2 => sim_wr_done,
      I3 => config_wr_done,
      I4 => \^data_out\(1),
      I5 => \^data_out\(3),
      O => \adc_control.data_out[7]_i_2_n_0\
    );
\adc_control.data_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000200"
    )
        port map (
      I0 => \^data_out\(8),
      I1 => sim_wr_done,
      I2 => config_wr_done,
      I3 => resetn,
      I4 => adc_active,
      O => \adc_control.data_out[8]_i_1_n_0\
    );
\adc_control.data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000200"
    )
        port map (
      I0 => \^data_out\(9),
      I1 => sim_wr_done,
      I2 => config_wr_done,
      I3 => resetn,
      I4 => sim_active,
      O => \adc_control.data_out[9]_i_1_n_0\
    );
\adc_control.data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[0]_i_1_n_0\,
      Q => \^data_out\(0),
      R => '0'
    );
\adc_control.data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(10),
      Q => \^data_out\(10),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(11),
      Q => \^data_out\(11),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(12),
      Q => \^data_out\(12),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(13),
      Q => \^data_out\(13),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(14),
      Q => \^data_out\(14),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(15),
      Q => \^data_out\(15),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(16),
      Q => \^data_out\(16),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(17),
      Q => \^data_out\(17),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(18),
      Q => \^data_out\(18),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(19),
      Q => \^data_out\(19),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[1]_i_1_n_0\,
      Q => \^data_out\(1),
      R => '0'
    );
\adc_control.data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(20),
      Q => \^data_out\(20),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(21),
      Q => \^data_out\(21),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(22),
      Q => \^data_out\(22),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(23),
      Q => \^data_out\(23),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(24),
      Q => \^data_out\(24),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(25),
      Q => \^data_out\(25),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(26),
      Q => \^data_out\(26),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(27),
      Q => \^data_out\(27),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(28),
      Q => \^data_out\(28),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(29),
      Q => \^data_out\(29),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[2]_i_1_n_0\,
      Q => \^data_out\(2),
      R => '0'
    );
\adc_control.data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(30),
      Q => \^data_out\(30),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(31),
      Q => \^data_out\(31),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[3]_i_1_n_0\,
      Q => \^data_out\(3),
      R => '0'
    );
\adc_control.data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[4]_i_1_n_0\,
      Q => \^data_out\(4),
      R => '0'
    );
\adc_control.data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[5]_i_1_n_0\,
      Q => \^data_out\(5),
      R => '0'
    );
\adc_control.data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[6]_i_1_n_0\,
      Q => \^data_out\(6),
      R => '0'
    );
\adc_control.data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[7]_i_1_n_0\,
      Q => \^data_out\(7),
      R => '0'
    );
\adc_control.data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[8]_i_1_n_0\,
      Q => \^data_out\(8),
      R => '0'
    );
\adc_control.data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data_out[9]_i_1_n_0\,
      Q => \^data_out\(9),
      R => '0'
    );
\adc_control.padr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(0),
      Q => padr(0),
      R => '0'
    );
\adc_control.padr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(10),
      Q => padr(10),
      R => '0'
    );
\adc_control.padr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(1),
      Q => padr(1),
      R => '0'
    );
\adc_control.padr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(2),
      Q => padr(2),
      R => '0'
    );
\adc_control.padr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(3),
      Q => padr(3),
      R => '0'
    );
\adc_control.padr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(4),
      Q => padr(4),
      R => '0'
    );
\adc_control.padr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(5),
      Q => padr(5),
      R => '0'
    );
\adc_control.padr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(6),
      Q => padr(6),
      R => '0'
    );
\adc_control.padr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(7),
      Q => padr(7),
      R => '0'
    );
\adc_control.padr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(8),
      Q => padr(8),
      R => '0'
    );
\adc_control.padr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(9),
      Q => padr(9),
      R => '0'
    );
\adc_control.pdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(0),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(0),
      O => \adc_control.pdata[0]_i_1_n_0\
    );
\adc_control.pdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(10),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(10),
      O => \adc_control.pdata[10]_i_1_n_0\
    );
\adc_control.pdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(11),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(11),
      O => \adc_control.pdata[11]_i_1_n_0\
    );
\adc_control.pdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(12),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(12),
      O => \adc_control.pdata[12]_i_1_n_0\
    );
\adc_control.pdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(13),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(13),
      O => \adc_control.pdata[13]_i_1_n_0\
    );
\adc_control.pdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(14),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(14),
      O => \adc_control.pdata[14]_i_1_n_0\
    );
\adc_control.pdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(15),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(15),
      O => \adc_control.pdata[15]_i_1_n_0\
    );
\adc_control.pdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(16),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(16),
      O => \adc_control.pdata[16]_i_1_n_0\
    );
\adc_control.pdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(17),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(17),
      O => \adc_control.pdata[17]_i_1_n_0\
    );
\adc_control.pdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(18),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(18),
      O => \adc_control.pdata[18]_i_1_n_0\
    );
\adc_control.pdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(19),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(19),
      O => \adc_control.pdata[19]_i_1_n_0\
    );
\adc_control.pdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(1),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(1),
      O => \adc_control.pdata[1]_i_1_n_0\
    );
\adc_control.pdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(20),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(20),
      O => \adc_control.pdata[20]_i_1_n_0\
    );
\adc_control.pdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(21),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(21),
      O => \adc_control.pdata[21]_i_1_n_0\
    );
\adc_control.pdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(22),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(22),
      O => \adc_control.pdata[22]_i_1_n_0\
    );
\adc_control.pdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(23),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(23),
      O => \adc_control.pdata[23]_i_1_n_0\
    );
\adc_control.pdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(24),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(24),
      O => \adc_control.pdata[24]_i_1_n_0\
    );
\adc_control.pdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(25),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(25),
      O => \adc_control.pdata[25]_i_1_n_0\
    );
\adc_control.pdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(26),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(26),
      O => \adc_control.pdata[26]_i_1_n_0\
    );
\adc_control.pdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(27),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(27),
      O => \adc_control.pdata[27]_i_1_n_0\
    );
\adc_control.pdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(28),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(28),
      O => \adc_control.pdata[28]_i_1_n_0\
    );
\adc_control.pdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(29),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(29),
      O => \adc_control.pdata[29]_i_1_n_0\
    );
\adc_control.pdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(2),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(2),
      O => \adc_control.pdata[2]_i_1_n_0\
    );
\adc_control.pdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(30),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(30),
      O => \adc_control.pdata[30]_i_1_n_0\
    );
\adc_control.pdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(31),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(31),
      O => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(31),
      I1 => cdata(10),
      I2 => cdata(20),
      I3 => cdata(0),
      O => \adc_control.pdata[31]_i_10_n_0\
    );
\adc_control.pdata[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cdata(2),
      I1 => cdata(1),
      O => \adc_control.pdata[31]_i_11_n_0\
    );
\adc_control.pdata[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(30),
      I1 => cdata(15),
      I2 => cdata(29),
      I3 => cdata(12),
      O => \adc_control.pdata[31]_i_12_n_0\
    );
\adc_control.pdata[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(23),
      I1 => cdata(13),
      I2 => cdata(14),
      I3 => cdata(9),
      O => \adc_control.pdata[31]_i_13_n_0\
    );
\adc_control.pdata[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(24),
      I1 => cdata(26),
      I2 => cdata(28),
      I3 => cdata(8),
      O => \adc_control.pdata[31]_i_14_n_0\
    );
\adc_control.pdata[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cdata(30),
      I1 => pdata(30),
      I2 => pdata(31),
      I3 => cdata(31),
      O => \adc_control.pdata[31]_i_16_n_0\
    );
\adc_control.pdata[31]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(28),
      I1 => cdata(28),
      I2 => pdata(29),
      I3 => cdata(29),
      I4 => cdata(27),
      I5 => pdata(27),
      O => \adc_control.pdata[31]_i_17_n_0\
    );
\adc_control.pdata[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(25),
      I1 => pdata(25),
      I2 => pdata(24),
      I3 => cdata(24),
      I4 => pdata(26),
      I5 => cdata(26),
      O => \adc_control.pdata[31]_i_18_n_0\
    );
\adc_control.pdata[31]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(16),
      I1 => cdata(17),
      I2 => cdata(1),
      I3 => cdata(2),
      O => \adc_control.pdata[31]_i_19_n_0\
    );
\adc_control.pdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF55D5"
    )
        port map (
      I0 => resetn,
      I1 => \adc_control.pdata[31]_i_4_n_0\,
      I2 => \adc_control.sim_wr_start_i_3_n_0\,
      I3 => \adc_control.pdata[31]_i_5_n_0\,
      I4 => \adc_control.pdata[31]_i_6_n_0\,
      I5 => \adc_control.pdata_reg[31]_i_7_n_5\,
      O => \adc_control.pdata[31]_i_2_n_0\
    );
\adc_control.pdata[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(21),
      I1 => pdata(21),
      I2 => pdata(22),
      I3 => cdata(22),
      I4 => pdata(23),
      I5 => cdata(23),
      O => \adc_control.pdata[31]_i_20_n_0\
    );
\adc_control.pdata[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(18),
      I1 => pdata(18),
      I2 => pdata(19),
      I3 => cdata(19),
      I4 => pdata(20),
      I5 => cdata(20),
      O => \adc_control.pdata[31]_i_21_n_0\
    );
\adc_control.pdata[31]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(16),
      I1 => cdata(16),
      I2 => pdata(17),
      I3 => cdata(17),
      I4 => cdata(15),
      I5 => pdata(15),
      O => \adc_control.pdata[31]_i_22_n_0\
    );
\adc_control.pdata[31]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(14),
      I1 => cdata(14),
      I2 => pdata(12),
      I3 => cdata(12),
      I4 => cdata(13),
      I5 => pdata(13),
      O => \adc_control.pdata[31]_i_23_n_0\
    );
\adc_control.pdata[31]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(10),
      I1 => cdata(10),
      I2 => pdata(11),
      I3 => cdata(11),
      I4 => cdata(9),
      I5 => pdata(9),
      O => \adc_control.pdata[31]_i_24_n_0\
    );
\adc_control.pdata[31]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(8),
      I1 => cdata(8),
      I2 => pdata(6),
      I3 => cdata(6),
      I4 => pdata(7),
      I5 => cdata(7),
      O => \adc_control.pdata[31]_i_25_n_0\
    );
\adc_control.pdata[31]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(3),
      I1 => cdata(3),
      I2 => pdata(5),
      I3 => cdata(5),
      I4 => cdata(4),
      I5 => pdata(4),
      O => \adc_control.pdata[31]_i_26_n_0\
    );
\adc_control.pdata[31]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(0),
      I1 => cdata(0),
      I2 => pdata(2),
      I3 => cdata(2),
      I4 => cdata(1),
      I5 => pdata(1),
      O => \adc_control.pdata[31]_i_27_n_0\
    );
\adc_control.pdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF01FFFFFF01FF"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => cmd_start,
      I2 => \adc_control.pdata_reg[31]_i_7_n_5\,
      I3 => resetn,
      I4 => \adc_control.pdata[31]_i_4_n_0\,
      I5 => \adc_control.pdata[31]_i_8_n_0\,
      O => \adc_control.pdata[31]_i_3_n_0\
    );
\adc_control.pdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cdata(11),
      I1 => cdata(21),
      I2 => cdata(22),
      I3 => \adc_control.pdata[31]_i_9_n_0\,
      I4 => \adc_control.pdata[31]_i_10_n_0\,
      O => \adc_control.pdata[31]_i_4_n_0\
    );
\adc_control.pdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cdata(16),
      I1 => cdata(17),
      I2 => \adc_control.pdata[31]_i_11_n_0\,
      I3 => \adc_control.pdata[31]_i_12_n_0\,
      I4 => \adc_control.pdata[31]_i_13_n_0\,
      I5 => \adc_control.pdata[31]_i_14_n_0\,
      O => \adc_control.pdata[31]_i_5_n_0\
    );
\adc_control.pdata[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => cmd_start,
      O => \adc_control.pdata[31]_i_6_n_0\
    );
\adc_control.pdata[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_14_n_0\,
      I1 => \adc_control.pdata[31]_i_13_n_0\,
      I2 => \adc_control.pdata[31]_i_12_n_0\,
      I3 => \adc_control.pdata[31]_i_19_n_0\,
      I4 => \adc_control.sim_wr_start_i_3_n_0\,
      O => \adc_control.pdata[31]_i_8_n_0\
    );
\adc_control.pdata[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(27),
      I1 => cdata(18),
      I2 => cdata(25),
      I3 => cdata(19),
      O => \adc_control.pdata[31]_i_9_n_0\
    );
\adc_control.pdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(3),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(3),
      O => \adc_control.pdata[3]_i_1_n_0\
    );
\adc_control.pdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(4),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(4),
      O => \adc_control.pdata[4]_i_1_n_0\
    );
\adc_control.pdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(5),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(5),
      O => \adc_control.pdata[5]_i_1_n_0\
    );
\adc_control.pdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(6),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(6),
      O => \adc_control.pdata[6]_i_1_n_0\
    );
\adc_control.pdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(7),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(7),
      O => \adc_control.pdata[7]_i_1_n_0\
    );
\adc_control.pdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(8),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(8),
      O => \adc_control.pdata[8]_i_1_n_0\
    );
\adc_control.pdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_2_n_0\,
      I1 => data_in(9),
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => pdata(9),
      O => \adc_control.pdata[9]_i_1_n_0\
    );
\adc_control.pdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[0]_i_1_n_0\,
      Q => pdata(0),
      R => '0'
    );
\adc_control.pdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[10]_i_1_n_0\,
      Q => pdata(10),
      R => '0'
    );
\adc_control.pdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[11]_i_1_n_0\,
      Q => pdata(11),
      R => '0'
    );
\adc_control.pdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[12]_i_1_n_0\,
      Q => pdata(12),
      R => '0'
    );
\adc_control.pdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[13]_i_1_n_0\,
      Q => pdata(13),
      R => '0'
    );
\adc_control.pdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[14]_i_1_n_0\,
      Q => pdata(14),
      R => '0'
    );
\adc_control.pdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[15]_i_1_n_0\,
      Q => pdata(15),
      R => '0'
    );
\adc_control.pdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[16]_i_1_n_0\,
      Q => pdata(16),
      R => '0'
    );
\adc_control.pdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[17]_i_1_n_0\,
      Q => pdata(17),
      R => '0'
    );
\adc_control.pdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[18]_i_1_n_0\,
      Q => pdata(18),
      R => '0'
    );
\adc_control.pdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[19]_i_1_n_0\,
      Q => pdata(19),
      R => '0'
    );
\adc_control.pdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[1]_i_1_n_0\,
      Q => pdata(1),
      R => '0'
    );
\adc_control.pdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[20]_i_1_n_0\,
      Q => pdata(20),
      R => '0'
    );
\adc_control.pdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[21]_i_1_n_0\,
      Q => pdata(21),
      R => '0'
    );
\adc_control.pdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[22]_i_1_n_0\,
      Q => pdata(22),
      R => '0'
    );
\adc_control.pdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[23]_i_1_n_0\,
      Q => pdata(23),
      R => '0'
    );
\adc_control.pdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[24]_i_1_n_0\,
      Q => pdata(24),
      R => '0'
    );
\adc_control.pdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[25]_i_1_n_0\,
      Q => pdata(25),
      R => '0'
    );
\adc_control.pdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[26]_i_1_n_0\,
      Q => pdata(26),
      R => '0'
    );
\adc_control.pdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[27]_i_1_n_0\,
      Q => pdata(27),
      R => '0'
    );
\adc_control.pdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[28]_i_1_n_0\,
      Q => pdata(28),
      R => '0'
    );
\adc_control.pdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[29]_i_1_n_0\,
      Q => pdata(29),
      R => '0'
    );
\adc_control.pdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[2]_i_1_n_0\,
      Q => pdata(2),
      R => '0'
    );
\adc_control.pdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[30]_i_1_n_0\,
      Q => pdata(30),
      R => '0'
    );
\adc_control.pdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[31]_i_1_n_0\,
      Q => pdata(31),
      R => '0'
    );
\adc_control.pdata_reg[31]_i_15\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \adc_control.pdata_reg[31]_i_15_n_0\,
      CO(6) => \adc_control.pdata_reg[31]_i_15_n_1\,
      CO(5) => \adc_control.pdata_reg[31]_i_15_n_2\,
      CO(4) => \adc_control.pdata_reg[31]_i_15_n_3\,
      CO(3) => \adc_control.pdata_reg[31]_i_15_n_4\,
      CO(2) => \adc_control.pdata_reg[31]_i_15_n_5\,
      CO(1) => \adc_control.pdata_reg[31]_i_15_n_6\,
      CO(0) => \adc_control.pdata_reg[31]_i_15_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_adc_control.pdata_reg[31]_i_15_O_UNCONNECTED\(7 downto 0),
      S(7) => \adc_control.pdata[31]_i_20_n_0\,
      S(6) => \adc_control.pdata[31]_i_21_n_0\,
      S(5) => \adc_control.pdata[31]_i_22_n_0\,
      S(4) => \adc_control.pdata[31]_i_23_n_0\,
      S(3) => \adc_control.pdata[31]_i_24_n_0\,
      S(2) => \adc_control.pdata[31]_i_25_n_0\,
      S(1) => \adc_control.pdata[31]_i_26_n_0\,
      S(0) => \adc_control.pdata[31]_i_27_n_0\
    );
\adc_control.pdata_reg[31]_i_7\: unisim.vcomponents.CARRY8
     port map (
      CI => \adc_control.pdata_reg[31]_i_15_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_adc_control.pdata_reg[31]_i_7_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \adc_control.pdata_reg[31]_i_7_n_5\,
      CO(1) => \adc_control.pdata_reg[31]_i_7_n_6\,
      CO(0) => \adc_control.pdata_reg[31]_i_7_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_adc_control.pdata_reg[31]_i_7_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \adc_control.pdata[31]_i_16_n_0\,
      S(1) => \adc_control.pdata[31]_i_17_n_0\,
      S(0) => \adc_control.pdata[31]_i_18_n_0\
    );
\adc_control.pdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[3]_i_1_n_0\,
      Q => pdata(3),
      R => '0'
    );
\adc_control.pdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[4]_i_1_n_0\,
      Q => pdata(4),
      R => '0'
    );
\adc_control.pdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[5]_i_1_n_0\,
      Q => pdata(5),
      R => '0'
    );
\adc_control.pdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[6]_i_1_n_0\,
      Q => pdata(6),
      R => '0'
    );
\adc_control.pdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[7]_i_1_n_0\,
      Q => pdata(7),
      R => '0'
    );
\adc_control.pdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[8]_i_1_n_0\,
      Q => pdata(8),
      R => '0'
    );
\adc_control.pdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.pdata[9]_i_1_n_0\,
      Q => pdata(9),
      R => '0'
    );
\adc_control.sim_channel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_start,
      D => cdata(8),
      Q => \^sim_channel\(0),
      R => '0'
    );
\adc_control.sim_channel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_start,
      D => cdata(9),
      Q => \^sim_channel\(1),
      R => '0'
    );
\adc_control.sim_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(0),
      I4 => \^sim_data\(0),
      O => \adc_control.sim_data[0]_i_1_n_0\
    );
\adc_control.sim_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(10),
      I4 => \^sim_data\(10),
      O => \adc_control.sim_data[10]_i_1_n_0\
    );
\adc_control.sim_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(11),
      I4 => \^sim_data\(11),
      O => \adc_control.sim_data[11]_i_1_n_0\
    );
\adc_control.sim_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(12),
      I4 => \^sim_data\(12),
      O => \adc_control.sim_data[12]_i_1_n_0\
    );
\adc_control.sim_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(13),
      I4 => \^sim_data\(13),
      O => \adc_control.sim_data[13]_i_1_n_0\
    );
\adc_control.sim_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(14),
      I4 => \^sim_data\(14),
      O => \adc_control.sim_data[14]_i_1_n_0\
    );
\adc_control.sim_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(15),
      I4 => \^sim_data\(15),
      O => \adc_control.sim_data[15]_i_1_n_0\
    );
\adc_control.sim_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(16),
      I4 => \^sim_data\(16),
      O => \adc_control.sim_data[16]_i_1_n_0\
    );
\adc_control.sim_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(17),
      I4 => \^sim_data\(17),
      O => \adc_control.sim_data[17]_i_1_n_0\
    );
\adc_control.sim_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(18),
      I4 => \^sim_data\(18),
      O => \adc_control.sim_data[18]_i_1_n_0\
    );
\adc_control.sim_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(19),
      I4 => \^sim_data\(19),
      O => \adc_control.sim_data[19]_i_1_n_0\
    );
\adc_control.sim_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(1),
      I4 => \^sim_data\(1),
      O => \adc_control.sim_data[1]_i_1_n_0\
    );
\adc_control.sim_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(20),
      I4 => \^sim_data\(20),
      O => \adc_control.sim_data[20]_i_1_n_0\
    );
\adc_control.sim_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(21),
      I4 => \^sim_data\(21),
      O => \adc_control.sim_data[21]_i_1_n_0\
    );
\adc_control.sim_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(22),
      I4 => \^sim_data\(22),
      O => \adc_control.sim_data[22]_i_1_n_0\
    );
\adc_control.sim_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(23),
      I4 => \^sim_data\(23),
      O => \adc_control.sim_data[23]_i_1_n_0\
    );
\adc_control.sim_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(24),
      I4 => \^sim_data\(24),
      O => \adc_control.sim_data[24]_i_1_n_0\
    );
\adc_control.sim_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(25),
      I4 => \^sim_data\(25),
      O => \adc_control.sim_data[25]_i_1_n_0\
    );
\adc_control.sim_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(26),
      I4 => \^sim_data\(26),
      O => \adc_control.sim_data[26]_i_1_n_0\
    );
\adc_control.sim_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(27),
      I4 => \^sim_data\(27),
      O => \adc_control.sim_data[27]_i_1_n_0\
    );
\adc_control.sim_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(28),
      I4 => \^sim_data\(28),
      O => \adc_control.sim_data[28]_i_1_n_0\
    );
\adc_control.sim_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(29),
      I4 => \^sim_data\(29),
      O => \adc_control.sim_data[29]_i_1_n_0\
    );
\adc_control.sim_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(2),
      I4 => \^sim_data\(2),
      O => \adc_control.sim_data[2]_i_1_n_0\
    );
\adc_control.sim_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(30),
      I4 => \^sim_data\(30),
      O => \adc_control.sim_data[30]_i_1_n_0\
    );
\adc_control.sim_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sim_wr_start,
      I1 => cmd_start,
      I2 => sim_wr_pend,
      O => \adc_control.sim_data[31]_i_1_n_0\
    );
\adc_control.sim_data[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(31),
      I4 => \^sim_data\(31),
      O => \adc_control.sim_data[31]_i_2_n_0\
    );
\adc_control.sim_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(3),
      I4 => \^sim_data\(3),
      O => \adc_control.sim_data[3]_i_1_n_0\
    );
\adc_control.sim_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(4),
      I4 => \^sim_data\(4),
      O => \adc_control.sim_data[4]_i_1_n_0\
    );
\adc_control.sim_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(5),
      I4 => \^sim_data\(5),
      O => \adc_control.sim_data[5]_i_1_n_0\
    );
\adc_control.sim_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(6),
      I4 => \^sim_data\(6),
      O => \adc_control.sim_data[6]_i_1_n_0\
    );
\adc_control.sim_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(7),
      I4 => \^sim_data\(7),
      O => \adc_control.sim_data[7]_i_1_n_0\
    );
\adc_control.sim_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(8),
      I4 => \^sim_data\(8),
      O => \adc_control.sim_data[8]_i_1_n_0\
    );
\adc_control.sim_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => cmd_start,
      I3 => data_in(9),
      I4 => \^sim_data\(9),
      O => \adc_control.sim_data[9]_i_1_n_0\
    );
\adc_control.sim_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[0]_i_1_n_0\,
      Q => \^sim_data\(0),
      R => '0'
    );
\adc_control.sim_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[10]_i_1_n_0\,
      Q => \^sim_data\(10),
      R => '0'
    );
\adc_control.sim_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[11]_i_1_n_0\,
      Q => \^sim_data\(11),
      R => '0'
    );
\adc_control.sim_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[12]_i_1_n_0\,
      Q => \^sim_data\(12),
      R => '0'
    );
\adc_control.sim_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[13]_i_1_n_0\,
      Q => \^sim_data\(13),
      R => '0'
    );
\adc_control.sim_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[14]_i_1_n_0\,
      Q => \^sim_data\(14),
      R => '0'
    );
\adc_control.sim_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[15]_i_1_n_0\,
      Q => \^sim_data\(15),
      R => '0'
    );
\adc_control.sim_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[16]_i_1_n_0\,
      Q => \^sim_data\(16),
      R => '0'
    );
\adc_control.sim_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[17]_i_1_n_0\,
      Q => \^sim_data\(17),
      R => '0'
    );
\adc_control.sim_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[18]_i_1_n_0\,
      Q => \^sim_data\(18),
      R => '0'
    );
\adc_control.sim_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[19]_i_1_n_0\,
      Q => \^sim_data\(19),
      R => '0'
    );
\adc_control.sim_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[1]_i_1_n_0\,
      Q => \^sim_data\(1),
      R => '0'
    );
\adc_control.sim_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[20]_i_1_n_0\,
      Q => \^sim_data\(20),
      R => '0'
    );
\adc_control.sim_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[21]_i_1_n_0\,
      Q => \^sim_data\(21),
      R => '0'
    );
\adc_control.sim_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[22]_i_1_n_0\,
      Q => \^sim_data\(22),
      R => '0'
    );
\adc_control.sim_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[23]_i_1_n_0\,
      Q => \^sim_data\(23),
      R => '0'
    );
\adc_control.sim_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[24]_i_1_n_0\,
      Q => \^sim_data\(24),
      R => '0'
    );
\adc_control.sim_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[25]_i_1_n_0\,
      Q => \^sim_data\(25),
      R => '0'
    );
\adc_control.sim_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[26]_i_1_n_0\,
      Q => \^sim_data\(26),
      R => '0'
    );
\adc_control.sim_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[27]_i_1_n_0\,
      Q => \^sim_data\(27),
      R => '0'
    );
\adc_control.sim_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[28]_i_1_n_0\,
      Q => \^sim_data\(28),
      R => '0'
    );
\adc_control.sim_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[29]_i_1_n_0\,
      Q => \^sim_data\(29),
      R => '0'
    );
\adc_control.sim_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[2]_i_1_n_0\,
      Q => \^sim_data\(2),
      R => '0'
    );
\adc_control.sim_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[30]_i_1_n_0\,
      Q => \^sim_data\(30),
      R => '0'
    );
\adc_control.sim_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[31]_i_2_n_0\,
      Q => \^sim_data\(31),
      R => '0'
    );
\adc_control.sim_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[3]_i_1_n_0\,
      Q => \^sim_data\(3),
      R => '0'
    );
\adc_control.sim_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[4]_i_1_n_0\,
      Q => \^sim_data\(4),
      R => '0'
    );
\adc_control.sim_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[5]_i_1_n_0\,
      Q => \^sim_data\(5),
      R => '0'
    );
\adc_control.sim_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[6]_i_1_n_0\,
      Q => \^sim_data\(6),
      R => '0'
    );
\adc_control.sim_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[7]_i_1_n_0\,
      Q => \^sim_data\(7),
      R => '0'
    );
\adc_control.sim_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[8]_i_1_n_0\,
      Q => \^sim_data\(8),
      R => '0'
    );
\adc_control.sim_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => \adc_control.sim_data[9]_i_1_n_0\,
      Q => \^sim_data\(9),
      R => '0'
    );
\adc_control.sim_high_wr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => \^sim_high_wr\,
      I3 => cdata(10),
      O => \adc_control.sim_high_wr_i_1_n_0\
    );
\adc_control.sim_high_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_high_wr_i_1_n_0\,
      Q => \^sim_high_wr\,
      R => cmd_start
    );
\adc_control.sim_low_wr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2022"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => \^sim_low_wr\,
      I3 => cdata(10),
      O => sim_low_wr2_out
    );
\adc_control.sim_low_wr_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sim_wr_count(5),
      I1 => sim_wr_count(2),
      I2 => sim_wr_count(7),
      I3 => \adc_control.sim_low_wr_i_3_n_0\,
      I4 => \adc_control.sim_low_wr_i_4_n_0\,
      O => \adc_control.sim_low_wr_i_2_n_0\
    );
\adc_control.sim_low_wr_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sim_wr_count(0),
      I1 => sim_wr_count(9),
      I2 => sim_wr_count(6),
      I3 => sim_wr_count(8),
      O => \adc_control.sim_low_wr_i_3_n_0\
    );
\adc_control.sim_low_wr_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sim_wr_count(3),
      I1 => sim_wr_count(4),
      I2 => sim_wr_count(1),
      I3 => sim_wr_count(10),
      O => \adc_control.sim_low_wr_i_4_n_0\
    );
\adc_control.sim_low_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sim_low_wr2_out,
      Q => \^sim_low_wr\,
      R => cmd_start
    );
\adc_control.sim_start_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => \^sim_start\,
      I1 => cdata(2),
      I2 => cdata(1),
      I3 => cdata(0),
      I4 => \adc_control.sim_wr_start_i_3_n_0\,
      O => \adc_control.sim_start_i_1_n_0\
    );
\adc_control.sim_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_start_i_1_n_0\,
      Q => \^sim_start\,
      R => \adc_control.sim_wr_start_i_1_n_0\
    );
\adc_control.sim_wr_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FFE0FFE000E0"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => \sim_wr_count__0\(0),
      I3 => cmd_start,
      I4 => cdata(16),
      I5 => cdata(17),
      O => \p_0_in__0\(0)
    );
\adc_control.sim_wr_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA800A800A8FFA8"
    )
        port map (
      I0 => \sim_wr_count__0\(10),
      I1 => sim_wr_pend,
      I2 => sim_wr_start,
      I3 => cmd_start,
      I4 => \adc_control.sim_wr_count[10]_i_3_n_0\,
      I5 => cdata(27),
      O => \p_0_in__0\(10)
    );
\adc_control.sim_wr_count[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => cdata(25),
      I1 => cdata(22),
      I2 => \adc_control.sim_wr_count[6]_i_3_n_0\,
      I3 => cdata(23),
      I4 => cdata(24),
      I5 => cdata(26),
      O => \adc_control.sim_wr_count[10]_i_3_n_0\
    );
\adc_control.sim_wr_count[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sim_wr_count(9),
      I1 => sim_wr_count(10),
      O => \adc_control.sim_wr_count[10]_i_4_n_0\
    );
\adc_control.sim_wr_count[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sim_wr_count(8),
      I1 => sim_wr_count(9),
      O => \adc_control.sim_wr_count[10]_i_5_n_0\
    );
\adc_control.sim_wr_count[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sim_wr_count(7),
      I1 => sim_wr_count(8),
      O => \adc_control.sim_wr_count[10]_i_6_n_0\
    );
\adc_control.sim_wr_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4F444F444F444"
    )
        port map (
      I0 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I1 => \sim_wr_count__0\(1),
      I2 => cmd_start,
      I3 => cdata(18),
      I4 => cdata(17),
      I5 => cdata(16),
      O => \p_0_in__0\(1)
    );
\adc_control.sim_wr_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE000E000E0FFE0"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => \sim_wr_count__0\(2),
      I3 => cmd_start,
      I4 => cdata(19),
      I5 => \adc_control.sim_wr_count[2]_i_2_n_0\,
      O => \p_0_in__0\(2)
    );
\adc_control.sim_wr_count[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cdata(16),
      I1 => cdata(17),
      I2 => cdata(18),
      O => \adc_control.sim_wr_count[2]_i_2_n_0\
    );
\adc_control.sim_wr_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE000E000E0FFE0"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => \sim_wr_count__0\(3),
      I3 => cmd_start,
      I4 => cdata(20),
      I5 => \adc_control.sim_wr_count[3]_i_2_n_0\,
      O => \p_0_in__0\(3)
    );
\adc_control.sim_wr_count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cdata(18),
      I1 => cdata(17),
      I2 => cdata(16),
      I3 => cdata(19),
      O => \adc_control.sim_wr_count[3]_i_2_n_0\
    );
\adc_control.sim_wr_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE000E000E0FFE0"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => \sim_wr_count__0\(4),
      I3 => cmd_start,
      I4 => cdata(21),
      I5 => \adc_control.sim_wr_count[4]_i_2_n_0\,
      O => \p_0_in__0\(4)
    );
\adc_control.sim_wr_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cdata(19),
      I1 => cdata(16),
      I2 => cdata(17),
      I3 => cdata(18),
      I4 => cdata(20),
      O => \adc_control.sim_wr_count[4]_i_2_n_0\
    );
\adc_control.sim_wr_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFE0E0E0E0"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => \sim_wr_count__0\(5),
      I3 => \adc_control.sim_wr_count[6]_i_3_n_0\,
      I4 => cdata(22),
      I5 => cmd_start,
      O => \p_0_in__0\(5)
    );
\adc_control.sim_wr_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F444F44444F444"
    )
        port map (
      I0 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I1 => \sim_wr_count__0\(6),
      I2 => cmd_start,
      I3 => cdata(22),
      I4 => \adc_control.sim_wr_count[6]_i_3_n_0\,
      I5 => cdata(23),
      O => \p_0_in__0\(6)
    );
\adc_control.sim_wr_count[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => cmd_start,
      I1 => sim_wr_start,
      I2 => sim_wr_pend,
      O => \adc_control.sim_wr_count[6]_i_2_n_0\
    );
\adc_control.sim_wr_count[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cdata(20),
      I1 => cdata(18),
      I2 => cdata(17),
      I3 => cdata(16),
      I4 => cdata(19),
      I5 => cdata(21),
      O => \adc_control.sim_wr_count[6]_i_3_n_0\
    );
\adc_control.sim_wr_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFE0E0E0E0"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => \sim_wr_count__0\(7),
      I3 => cdata(24),
      I4 => \adc_control.sim_wr_count[7]_i_3_n_0\,
      I5 => cmd_start,
      O => \p_0_in__0\(7)
    );
\adc_control.sim_wr_count[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => sim_wr_count(2),
      O => \adc_control.sim_wr_count[7]_i_10_n_0\
    );
\adc_control.sim_wr_count[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => sim_wr_count(1),
      O => \adc_control.sim_wr_count[7]_i_11_n_0\
    );
\adc_control.sim_wr_count[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => sim_wr_count(0),
      O => \adc_control.sim_wr_count[7]_i_12_n_0\
    );
\adc_control.sim_wr_count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => cdata(23),
      I1 => \adc_control.sim_wr_count[6]_i_3_n_0\,
      I2 => cdata(22),
      O => \adc_control.sim_wr_count[7]_i_3_n_0\
    );
\adc_control.sim_wr_count[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      O => \adc_control.sim_wr_count[7]_i_4_n_0\
    );
\adc_control.sim_wr_count[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sim_wr_count(6),
      I1 => sim_wr_count(7),
      O => \adc_control.sim_wr_count[7]_i_5_n_0\
    );
\adc_control.sim_wr_count[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sim_wr_count(5),
      I1 => sim_wr_count(6),
      O => \adc_control.sim_wr_count[7]_i_6_n_0\
    );
\adc_control.sim_wr_count[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sim_wr_count(4),
      I1 => sim_wr_count(5),
      O => \adc_control.sim_wr_count[7]_i_7_n_0\
    );
\adc_control.sim_wr_count[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sim_wr_count(3),
      I1 => sim_wr_count(4),
      O => \adc_control.sim_wr_count[7]_i_8_n_0\
    );
\adc_control.sim_wr_count[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sim_wr_count(2),
      I1 => sim_wr_count(3),
      O => \adc_control.sim_wr_count[7]_i_9_n_0\
    );
\adc_control.sim_wr_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFE0E0E0E0"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => \sim_wr_count__0\(8),
      I3 => cdata(25),
      I4 => \adc_control.sim_wr_count[8]_i_2_n_0\,
      I5 => cmd_start,
      O => \p_0_in__0\(8)
    );
\adc_control.sim_wr_count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => cdata(22),
      I1 => \adc_control.sim_wr_count[6]_i_3_n_0\,
      I2 => cdata(23),
      I3 => cdata(24),
      O => \adc_control.sim_wr_count[8]_i_2_n_0\
    );
\adc_control.sim_wr_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFE0E0E0E0"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_pend,
      I2 => \sim_wr_count__0\(9),
      I3 => cdata(26),
      I4 => \adc_control.sim_wr_count[9]_i_2_n_0\,
      I5 => cmd_start,
      O => \p_0_in__0\(9)
    );
\adc_control.sim_wr_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => cdata(24),
      I1 => cdata(23),
      I2 => \adc_control.sim_wr_count[6]_i_3_n_0\,
      I3 => cdata(22),
      I4 => cdata(25),
      O => \adc_control.sim_wr_count[9]_i_2_n_0\
    );
\adc_control.sim_wr_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => sim_wr_count(0),
      R => '0'
    );
\adc_control.sim_wr_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => sim_wr_count(10),
      R => '0'
    );
\adc_control.sim_wr_count_reg[10]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \adc_control.sim_wr_count_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_adc_control.sim_wr_count_reg[10]_i_2_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \adc_control.sim_wr_count_reg[10]_i_2_n_6\,
      CO(0) => \adc_control.sim_wr_count_reg[10]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => sim_wr_count(8 downto 7),
      O(7 downto 3) => \NLW_adc_control.sim_wr_count_reg[10]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \sim_wr_count__0\(10 downto 8),
      S(7 downto 3) => B"00000",
      S(2) => \adc_control.sim_wr_count[10]_i_4_n_0\,
      S(1) => \adc_control.sim_wr_count[10]_i_5_n_0\,
      S(0) => \adc_control.sim_wr_count[10]_i_6_n_0\
    );
\adc_control.sim_wr_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => sim_wr_count(1),
      R => '0'
    );
\adc_control.sim_wr_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => sim_wr_count(2),
      R => '0'
    );
\adc_control.sim_wr_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => sim_wr_count(3),
      R => '0'
    );
\adc_control.sim_wr_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => sim_wr_count(4),
      R => '0'
    );
\adc_control.sim_wr_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => sim_wr_count(5),
      R => '0'
    );
\adc_control.sim_wr_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => sim_wr_count(6),
      R => '0'
    );
\adc_control.sim_wr_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => sim_wr_count(7),
      R => '0'
    );
\adc_control.sim_wr_count_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \adc_control.sim_wr_count_reg[7]_i_2_n_0\,
      CO(6) => \adc_control.sim_wr_count_reg[7]_i_2_n_1\,
      CO(5) => \adc_control.sim_wr_count_reg[7]_i_2_n_2\,
      CO(4) => \adc_control.sim_wr_count_reg[7]_i_2_n_3\,
      CO(3) => \adc_control.sim_wr_count_reg[7]_i_2_n_4\,
      CO(2) => \adc_control.sim_wr_count_reg[7]_i_2_n_5\,
      CO(1) => \adc_control.sim_wr_count_reg[7]_i_2_n_6\,
      CO(0) => \adc_control.sim_wr_count_reg[7]_i_2_n_7\,
      DI(7 downto 3) => sim_wr_count(6 downto 2),
      DI(2) => \adc_control.sim_wr_count[7]_i_4_n_0\,
      DI(1 downto 0) => sim_wr_count(1 downto 0),
      O(7 downto 0) => \sim_wr_count__0\(7 downto 0),
      S(7) => \adc_control.sim_wr_count[7]_i_5_n_0\,
      S(6) => \adc_control.sim_wr_count[7]_i_6_n_0\,
      S(5) => \adc_control.sim_wr_count[7]_i_7_n_0\,
      S(4) => \adc_control.sim_wr_count[7]_i_8_n_0\,
      S(3) => \adc_control.sim_wr_count[7]_i_9_n_0\,
      S(2) => \adc_control.sim_wr_count[7]_i_10_n_0\,
      S(1) => \adc_control.sim_wr_count[7]_i_11_n_0\,
      S(0) => \adc_control.sim_wr_count[7]_i_12_n_0\
    );
\adc_control.sim_wr_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => sim_wr_count(8),
      R => '0'
    );
\adc_control.sim_wr_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => sim_wr_count(9),
      R => '0'
    );
\adc_control.sim_wr_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => sim_wr_pend,
      I2 => sim_wr_start,
      I3 => sim_wr_done,
      O => \adc_control.sim_wr_done_i_1_n_0\
    );
\adc_control.sim_wr_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_wr_done_i_1_n_0\,
      Q => sim_wr_done,
      R => '0'
    );
\adc_control.sim_wr_pend_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.sim_wr_pend_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_done,
      I2 => sim_wr_pend,
      O => \adc_control.sim_wr_pend_i_2_n_0\
    );
\adc_control.sim_wr_pend_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_wr_pend_i_2_n_0\,
      Q => sim_wr_pend,
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.sim_wr_start_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cmd_start,
      O => \adc_control.sim_wr_start_i_1_n_0\
    );
\adc_control.sim_wr_start_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => sim_wr_start,
      I1 => cdata(2),
      I2 => cdata(1),
      I3 => cdata(0),
      I4 => \adc_control.sim_wr_start_i_3_n_0\,
      O => \adc_control.sim_wr_start_i_2_n_0\
    );
\adc_control.sim_wr_start_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cdata(4),
      I1 => cdata(3),
      I2 => cdata(7),
      I3 => cdata(6),
      I4 => cdata(5),
      O => \adc_control.sim_wr_start_i_3_n_0\
    );
\adc_control.sim_wr_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_wr_start_i_2_n_0\,
      Q => sim_wr_start,
      R => \adc_control.sim_wr_start_i_1_n_0\
    );
\adc_control.wr_en[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => config_wr_done,
      I1 => sim_wr_done,
      O => \adc_control.wr_en_reg0\
    );
\adc_control.wr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.wr_en_reg0\,
      Q => \^wr_en\(0),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.wr_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.wr_en_reg0\,
      Q => \^wr_en\(1),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.wr_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.wr_en_reg0\,
      Q => \^wr_en\(2),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.wr_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.wr_en_reg0\,
      Q => \^wr_en\(3),
      R => \adc_control.sim_wr_pend_i_1_n_0\
    );
ila_4_i: component ps_adc_control_0_0_ila_4
     port map (
      clk => clk,
      probe0(0) => resetn,
      probe1(31 downto 0) => data_in(31 downto 0),
      probe10(1 downto 0) => \^sim_channel\(1 downto 0),
      probe11(31 downto 0) => \^sim_data\(31 downto 0),
      probe12(0) => \^adc_start\,
      probe13(0) => \^adc_stop\,
      probe14(0) => \^sim_start\,
      probe15(0) => adc_active,
      probe16(0) => sim_active,
      probe17(0) => cmd_start,
      probe18(0) => sim_wr_start,
      probe19(0) => sim_wr_pend,
      probe2(10 downto 0) => \^address\(10 downto 0),
      probe20(0) => sim_wr_done,
      probe21(10 downto 0) => sim_wr_count(10 downto 0),
      probe3(10 downto 0) => padr(10 downto 0),
      probe4(3 downto 0) => \^wr_en\(3 downto 0),
      probe5(31 downto 0) => \^data_out\(31 downto 0),
      probe6(31 downto 0) => cdata(31 downto 0),
      probe7(31 downto 0) => pdata(31 downto 0),
      probe8(0) => \^sim_low_wr\,
      probe9(0) => \^sim_high_wr\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_adc_control_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    bram_adr_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_adr_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    address : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_start : out STD_LOGIC;
    adc_stop : out STD_LOGIC;
    sim_start : out STD_LOGIC;
    adc_active : in STD_LOGIC;
    sim_active : in STD_LOGIC;
    config_low_wr : out STD_LOGIC;
    config_high_wr : out STD_LOGIC;
    config_adr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sim_low_wr : out STD_LOGIC;
    sim_high_wr : out STD_LOGIC;
    sim_channel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_adc_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_adc_control_0_0 : entity is "ps_adc_control_0_0,adc_control,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_adc_control_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_adc_control_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_adc_control_0_0 : entity is "adc_control,Vivado 2025.1";
end ps_adc_control_0_0;

architecture STRUCTURE of ps_adc_control_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_adc_control_0_0_adc_control
     port map (
      adc_active => adc_active,
      adc_start => adc_start,
      adc_stop => adc_stop,
      address(10 downto 0) => address(10 downto 0),
      bram_adr_in(12 downto 2) => bram_adr_in(12 downto 2),
      bram_adr_in(1 downto 0) => B"00",
      bram_adr_out(10 downto 0) => bram_adr_out(10 downto 0),
      clk => clk,
      config_adr(7 downto 0) => config_adr(7 downto 0),
      config_data(31 downto 0) => config_data(31 downto 0),
      config_high_wr => config_high_wr,
      config_low_wr => config_low_wr,
      data_in(31 downto 0) => data_in(31 downto 0),
      data_out(31 downto 0) => data_out(31 downto 0),
      resetn => resetn,
      sim_active => sim_active,
      sim_channel(1 downto 0) => sim_channel(1 downto 0),
      sim_data(31 downto 0) => sim_data(31 downto 0),
      sim_high_wr => sim_high_wr,
      sim_low_wr => sim_low_wr,
      sim_start => sim_start,
      wr_en(3 downto 0) => wr_en(3 downto 0)
    );
end STRUCTURE;
