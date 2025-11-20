-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Nov 19 21:37:07 2025
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
    reset_in : in STD_LOGIC;
    reset_out : out STD_LOGIC;
    stop_in : in STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_active : out STD_LOGIC;
    sim_active : out STD_LOGIC;
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
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component ps_adc_control_0_0_ila_4;
  signal \^adc_active\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of adc_active : signal is std.standard.true;
  signal \adc_control.adc_active_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.adc_active_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.adc_active_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.address[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_3_n_0\ : STD_LOGIC;
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
  signal \adc_control.address[9]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.cdata_reg0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_10_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_11_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_13_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_14_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_15_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_16_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_17_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_18_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_19_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_20_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_21_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_22_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_23_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_5_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_6_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_8_n_0\ : STD_LOGIC;
  signal \adc_control.data0[2]_i_9_n_0\ : STD_LOGIC;
  signal \adc_control.data0[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_12_n_1\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_12_n_2\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_12_n_3\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_12_n_4\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_12_n_5\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_12_n_6\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_12_n_7\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_7_n_5\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_7_n_6\ : STD_LOGIC;
  signal \adc_control.data0_reg[2]_i_7_n_7\ : STD_LOGIC;
  signal \adc_control.data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.reset_out_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.reset_out_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_active_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[10]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[10]_i_5_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[1]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.sim_count[8]_i_2_n_0\ : STD_LOGIC;
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
  signal \adc_control.sim_done_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_high_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_pend_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_pend_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_pend_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_10_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_5_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_6_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_7_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_8_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[3]_i_9_n_0\ : STD_LOGIC;
  signal \^address\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of \^address\ : signal is std.standard.true;
  signal cdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of cdata : signal is std.standard.true;
  signal cmd_start : STD_LOGIC;
  attribute MARK_DEBUG of cmd_start : signal is std.standard.true;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of data0 : signal is std.standard.true;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of \^data_out\ : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^reset_out\ : STD_LOGIC;
  attribute MARK_DEBUG of reset_out : signal is std.standard.true;
  signal \^sim_active\ : STD_LOGIC;
  attribute MARK_DEBUG of sim_active : signal is std.standard.true;
  signal \^sim_channel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of \^sim_channel\ : signal is std.standard.true;
  signal sim_count : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of sim_count : signal is std.standard.true;
  signal \^sim_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of \^sim_data\ : signal is std.standard.true;
  signal sim_done : STD_LOGIC;
  attribute MARK_DEBUG of sim_done : signal is std.standard.true;
  signal \^sim_high_wr\ : STD_LOGIC;
  attribute MARK_DEBUG of sim_high_wr : signal is std.standard.true;
  signal \^sim_low_wr\ : STD_LOGIC;
  attribute MARK_DEBUG of sim_low_wr : signal is std.standard.true;
  signal sim_low_wr3_out : STD_LOGIC;
  signal sim_pend : STD_LOGIC;
  attribute MARK_DEBUG of sim_pend : signal is std.standard.true;
  signal \^wr_en\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of \^wr_en\ : signal is std.standard.true;
  signal \NLW_adc_control.data0_reg[2]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_adc_control.data0_reg[2]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_adc_control.data0_reg[2]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \adc_control.adc_active_reg\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \adc_control.adc_active_reg\ : label is "yes";
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
  attribute KEEP of \adc_control.data0_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[10]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[11]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[12]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[13]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[14]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[15]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[16]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[17]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[18]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[19]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[20]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[21]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[22]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[23]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[24]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[25]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[26]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[27]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[28]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[29]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[30]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[31]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[7]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.data0_reg[9]\ : label is "yes";
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
  attribute KEEP of \adc_control.reset_out_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_active_reg\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_active_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_channel_reg[0]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_channel_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.sim_channel_reg[1]\ : label is "yes";
  attribute mark_debug_string of \adc_control.sim_channel_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[0]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[10]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[1]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[2]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[3]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[4]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[5]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[6]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[7]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[8]\ : label is "yes";
  attribute KEEP of \adc_control.sim_count_reg[9]\ : label is "yes";
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
  attribute KEEP of \adc_control.sim_done_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_high_wr_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_low_wr_reg\ : label is "yes";
  attribute KEEP of \adc_control.sim_pend_reg\ : label is "yes";
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
  adc_active <= \^adc_active\;
  address(10 downto 0) <= \^address\(10 downto 0);
  data_out(31 downto 0) <= \^data_out\(31 downto 0);
  reset_out <= \^reset_out\;
  sim_active <= \^sim_active\;
  sim_channel(1 downto 0) <= \^sim_channel\(1 downto 0);
  sim_data(31 downto 0) <= \^sim_data\(31 downto 0);
  sim_high_wr <= \^sim_high_wr\;
  sim_low_wr <= \^sim_low_wr\;
  wr_en(3 downto 0) <= \^wr_en\(3 downto 0);
\adc_control.adc_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => cmd_start,
      I1 => stop_in,
      I2 => reset_in,
      O => \adc_control.adc_active_i_1_n_0\
    );
\adc_control.adc_active_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA83A"
    )
        port map (
      I0 => \^adc_active\,
      I1 => data0(0),
      I2 => data0(1),
      I3 => data0(2),
      I4 => \adc_control.adc_active_i_3_n_0\,
      O => \adc_control.adc_active_i_2_n_0\
    );
\adc_control.adc_active_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data0(4),
      I1 => data0(3),
      I2 => data0(6),
      I3 => data0(7),
      I4 => data0(5),
      O => \adc_control.adc_active_i_3_n_0\
    );
\adc_control.adc_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_start,
      D => \adc_control.adc_active_i_2_n_0\,
      Q => \^adc_active\,
      R => \adc_control.adc_active_i_1_n_0\
    );
\adc_control.address[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555504"
    )
        port map (
      I0 => cmd_start,
      I1 => sim_pend,
      I2 => \^address\(0),
      I3 => \^reset_out\,
      I4 => sim_done,
      I5 => reset_in,
      O => \adc_control.address[0]_i_1_n_0\
    );
\adc_control.address[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000100"
    )
        port map (
      I0 => reset_in,
      I1 => sim_done,
      I2 => \^reset_out\,
      I3 => \adc_control.address[10]_i_2_n_0\,
      I4 => \adc_control.address[10]_i_3_n_0\,
      I5 => \^address\(10),
      O => \adc_control.address[10]_i_1_n_0\
    );
\adc_control.address[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sim_pend,
      I1 => cmd_start,
      O => \adc_control.address[10]_i_2_n_0\
    );
\adc_control.address[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \^address\(9),
      I1 => \^address\(6),
      I2 => \adc_control.address[9]_i_3_n_0\,
      I3 => \^address\(7),
      I4 => \^address\(8),
      O => \adc_control.address[10]_i_3_n_0\
    );
\adc_control.address[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEEAAAAA"
    )
        port map (
      I0 => cmd_start,
      I1 => sim_pend,
      I2 => \^address\(1),
      I3 => \^address\(0),
      I4 => \adc_control.address[1]_i_2_n_0\,
      I5 => reset_in,
      O => \adc_control.address[1]_i_1_n_0\
    );
\adc_control.address[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sim_done,
      I1 => \^reset_out\,
      O => \adc_control.address[1]_i_2_n_0\
    );
\adc_control.address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \adc_control.address[9]_i_2_n_0\,
      I1 => \^address\(0),
      I2 => \^address\(1),
      I3 => \^address\(2),
      O => \adc_control.address[2]_i_1_n_0\
    );
\adc_control.address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \^address\(3),
      I1 => \^address\(2),
      I2 => \^address\(0),
      I3 => \^address\(1),
      I4 => \adc_control.address[9]_i_2_n_0\,
      O => \adc_control.address[3]_i_1_n_0\
    );
\adc_control.address[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \adc_control.address[9]_i_2_n_0\,
      I1 => \^address\(3),
      I2 => \^address\(1),
      I3 => \^address\(0),
      I4 => \^address\(2),
      I5 => \^address\(4),
      O => \adc_control.address[4]_i_1_n_0\
    );
\adc_control.address[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000100"
    )
        port map (
      I0 => reset_in,
      I1 => sim_done,
      I2 => \^reset_out\,
      I3 => \adc_control.address[10]_i_2_n_0\,
      I4 => \adc_control.address[5]_i_2_n_0\,
      I5 => \^address\(5),
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
\adc_control.address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000100"
    )
        port map (
      I0 => reset_in,
      I1 => sim_done,
      I2 => \^reset_out\,
      I3 => \adc_control.address[10]_i_2_n_0\,
      I4 => \adc_control.address[9]_i_3_n_0\,
      I5 => \^address\(6),
      O => \adc_control.address[6]_i_1_n_0\
    );
\adc_control.address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \adc_control.address[9]_i_2_n_0\,
      I1 => \^address\(6),
      I2 => \adc_control.address[9]_i_3_n_0\,
      I3 => \^address\(7),
      O => \adc_control.address[7]_i_1_n_0\
    );
\adc_control.address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88288888"
    )
        port map (
      I0 => \adc_control.address[9]_i_2_n_0\,
      I1 => \^address\(8),
      I2 => \^address\(7),
      I3 => \adc_control.address[9]_i_3_n_0\,
      I4 => \^address\(6),
      O => \adc_control.address[8]_i_1_n_0\
    );
\adc_control.address[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8828888888888888"
    )
        port map (
      I0 => \adc_control.address[9]_i_2_n_0\,
      I1 => \^address\(9),
      I2 => \^address\(6),
      I3 => \adc_control.address[9]_i_3_n_0\,
      I4 => \^address\(7),
      I5 => \^address\(8),
      O => \adc_control.address[9]_i_1_n_0\
    );
\adc_control.address[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => reset_in,
      I1 => sim_done,
      I2 => \^reset_out\,
      I3 => cmd_start,
      I4 => sim_pend,
      O => \adc_control.address[9]_i_2_n_0\
    );
\adc_control.address[9]_i_3\: unisim.vcomponents.LUT6
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
      O => \adc_control.address[9]_i_3_n_0\
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
\adc_control.cdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sim_pend,
      I1 => sim_done,
      O => \adc_control.cdata_reg0\
    );
\adc_control.cdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(0),
      Q => cdata(0),
      R => '0'
    );
\adc_control.cdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(10),
      Q => cdata(10),
      R => '0'
    );
\adc_control.cdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(11),
      Q => cdata(11),
      R => '0'
    );
\adc_control.cdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(12),
      Q => cdata(12),
      R => '0'
    );
\adc_control.cdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(13),
      Q => cdata(13),
      R => '0'
    );
\adc_control.cdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(14),
      Q => cdata(14),
      R => '0'
    );
\adc_control.cdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(15),
      Q => cdata(15),
      R => '0'
    );
\adc_control.cdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(16),
      Q => cdata(16),
      R => '0'
    );
\adc_control.cdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(17),
      Q => cdata(17),
      R => '0'
    );
\adc_control.cdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(18),
      Q => cdata(18),
      R => '0'
    );
\adc_control.cdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(19),
      Q => cdata(19),
      R => '0'
    );
\adc_control.cdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(1),
      Q => cdata(1),
      R => '0'
    );
\adc_control.cdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(20),
      Q => cdata(20),
      R => '0'
    );
\adc_control.cdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(21),
      Q => cdata(21),
      R => '0'
    );
\adc_control.cdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(22),
      Q => cdata(22),
      R => '0'
    );
\adc_control.cdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(23),
      Q => cdata(23),
      R => '0'
    );
\adc_control.cdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(24),
      Q => cdata(24),
      R => '0'
    );
\adc_control.cdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(25),
      Q => cdata(25),
      R => '0'
    );
\adc_control.cdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(26),
      Q => cdata(26),
      R => '0'
    );
\adc_control.cdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(27),
      Q => cdata(27),
      R => '0'
    );
\adc_control.cdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(28),
      Q => cdata(28),
      R => '0'
    );
\adc_control.cdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(29),
      Q => cdata(29),
      R => '0'
    );
\adc_control.cdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(2),
      Q => cdata(2),
      R => '0'
    );
\adc_control.cdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(30),
      Q => cdata(30),
      R => '0'
    );
\adc_control.cdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(31),
      Q => cdata(31),
      R => '0'
    );
\adc_control.cdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(3),
      Q => cdata(3),
      R => '0'
    );
\adc_control.cdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(4),
      Q => cdata(4),
      R => '0'
    );
\adc_control.cdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(5),
      Q => cdata(5),
      R => '0'
    );
\adc_control.cdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(6),
      Q => cdata(6),
      R => '0'
    );
\adc_control.cdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(7),
      Q => cdata(7),
      R => '0'
    );
\adc_control.cdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(8),
      Q => cdata(8),
      R => '0'
    );
\adc_control.cdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata_reg0\,
      D => data_in(9),
      Q => cdata(9),
      R => '0'
    );
\adc_control.cmd_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data0[31]_i_1_n_0\,
      Q => cmd_start,
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => reset_in,
      I1 => \adc_control.data0[2]_i_3_n_0\,
      I2 => \adc_control.data0[2]_i_4_n_0\,
      I3 => \adc_control.data0[2]_i_5_n_0\,
      I4 => \adc_control.data0[2]_i_6_n_0\,
      O => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(21),
      I1 => cdata(20),
      I2 => cdata(28),
      I3 => cdata(11),
      O => \adc_control.data0[2]_i_10_n_0\
    );
\adc_control.data0[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(30),
      I1 => cdata(2),
      I2 => cdata(18),
      I3 => cdata(16),
      O => \adc_control.data0[2]_i_11_n_0\
    );
\adc_control.data0[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(31),
      I1 => cdata(31),
      I2 => data0(30),
      I3 => cdata(30),
      O => \adc_control.data0[2]_i_13_n_0\
    );
\adc_control.data0[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(28),
      I1 => data0(28),
      I2 => cdata(27),
      I3 => data0(27),
      I4 => data0(29),
      I5 => cdata(29),
      O => \adc_control.data0[2]_i_14_n_0\
    );
\adc_control.data0[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(24),
      I1 => data0(24),
      I2 => cdata(25),
      I3 => data0(25),
      I4 => data0(26),
      I5 => cdata(26),
      O => \adc_control.data0[2]_i_15_n_0\
    );
\adc_control.data0[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(23),
      I1 => data0(23),
      I2 => cdata(21),
      I3 => data0(21),
      I4 => data0(22),
      I5 => cdata(22),
      O => \adc_control.data0[2]_i_16_n_0\
    );
\adc_control.data0[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(20),
      I1 => data0(20),
      I2 => cdata(18),
      I3 => data0(18),
      I4 => data0(19),
      I5 => cdata(19),
      O => \adc_control.data0[2]_i_17_n_0\
    );
\adc_control.data0[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(15),
      I1 => data0(15),
      I2 => cdata(16),
      I3 => data0(16),
      I4 => data0(17),
      I5 => cdata(17),
      O => \adc_control.data0[2]_i_18_n_0\
    );
\adc_control.data0[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(12),
      I1 => data0(12),
      I2 => cdata(13),
      I3 => data0(13),
      I4 => data0(14),
      I5 => cdata(14),
      O => \adc_control.data0[2]_i_19_n_0\
    );
\adc_control.data0[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => data0(2),
      I1 => cmd_start,
      I2 => sim_pend,
      I3 => \adc_control.data0_reg[2]_i_7_n_5\,
      I4 => cdata(2),
      O => \adc_control.data0[2]_i_2_n_0\
    );
\adc_control.data0[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(9),
      I1 => data0(9),
      I2 => data0(10),
      I3 => cdata(10),
      I4 => data0(11),
      I5 => cdata(11),
      O => \adc_control.data0[2]_i_20_n_0\
    );
\adc_control.data0[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(6),
      I1 => data0(6),
      I2 => cdata(7),
      I3 => data0(7),
      I4 => data0(8),
      I5 => cdata(8),
      O => \adc_control.data0[2]_i_21_n_0\
    );
\adc_control.data0[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cdata(5),
      I1 => data0(5),
      I2 => cdata(3),
      I3 => data0(3),
      I4 => data0(4),
      I5 => cdata(4),
      O => \adc_control.data0[2]_i_22_n_0\
    );
\adc_control.data0[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data0(2),
      I1 => cdata(2),
      I2 => cdata(0),
      I3 => data0(0),
      I4 => cdata(1),
      I5 => data0(1),
      O => \adc_control.data0[2]_i_23_n_0\
    );
\adc_control.data0[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cdata(1),
      I1 => cdata(31),
      I2 => cdata(0),
      I3 => cdata(24),
      I4 => \adc_control.data0[2]_i_8_n_0\,
      O => \adc_control.data0[2]_i_3_n_0\
    );
\adc_control.data0[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cdata(4),
      I1 => cdata(25),
      I2 => cdata(13),
      I3 => cdata(14),
      I4 => \adc_control.data0[2]_i_9_n_0\,
      O => \adc_control.data0[2]_i_4_n_0\
    );
\adc_control.data0[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cdata(23),
      I1 => cdata(26),
      I2 => cdata(22),
      I3 => cdata(27),
      I4 => \adc_control.data0[2]_i_10_n_0\,
      O => \adc_control.data0[2]_i_5_n_0\
    );
\adc_control.data0[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cdata(3),
      I1 => cdata(12),
      I2 => cdata(6),
      I3 => cdata(7),
      I4 => \adc_control.data0[2]_i_11_n_0\,
      O => \adc_control.data0[2]_i_6_n_0\
    );
\adc_control.data0[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(29),
      I1 => cdata(17),
      I2 => cdata(9),
      I3 => cdata(5),
      O => \adc_control.data0[2]_i_8_n_0\
    );
\adc_control.data0[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cdata(19),
      I1 => cdata(8),
      I2 => cdata(15),
      I3 => cdata(10),
      O => \adc_control.data0[2]_i_9_n_0\
    );
\adc_control.data0[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \adc_control.data0_reg[2]_i_7_n_5\,
      I1 => sim_pend,
      I2 => cmd_start,
      O => \adc_control.data0[31]_i_1_n_0\
    );
\adc_control.data0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(0),
      Q => data0(0),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(10),
      Q => data0(10),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(11),
      Q => data0(11),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(12),
      Q => data0(12),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(13),
      Q => data0(13),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(14),
      Q => data0(14),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(15),
      Q => data0(15),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(16),
      Q => data0(16),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(17),
      Q => data0(17),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(18),
      Q => data0(18),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(19),
      Q => data0(19),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(1),
      Q => data0(1),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(20),
      Q => data0(20),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(21),
      Q => data0(21),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(22),
      Q => data0(22),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(23),
      Q => data0(23),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(24),
      Q => data0(24),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(25),
      Q => data0(25),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(26),
      Q => data0(26),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(27),
      Q => data0(27),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(28),
      Q => data0(28),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(29),
      Q => data0(29),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.data0[2]_i_2_n_0\,
      Q => data0(2),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[2]_i_12\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \adc_control.data0_reg[2]_i_12_n_0\,
      CO(6) => \adc_control.data0_reg[2]_i_12_n_1\,
      CO(5) => \adc_control.data0_reg[2]_i_12_n_2\,
      CO(4) => \adc_control.data0_reg[2]_i_12_n_3\,
      CO(3) => \adc_control.data0_reg[2]_i_12_n_4\,
      CO(2) => \adc_control.data0_reg[2]_i_12_n_5\,
      CO(1) => \adc_control.data0_reg[2]_i_12_n_6\,
      CO(0) => \adc_control.data0_reg[2]_i_12_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_adc_control.data0_reg[2]_i_12_O_UNCONNECTED\(7 downto 0),
      S(7) => \adc_control.data0[2]_i_16_n_0\,
      S(6) => \adc_control.data0[2]_i_17_n_0\,
      S(5) => \adc_control.data0[2]_i_18_n_0\,
      S(4) => \adc_control.data0[2]_i_19_n_0\,
      S(3) => \adc_control.data0[2]_i_20_n_0\,
      S(2) => \adc_control.data0[2]_i_21_n_0\,
      S(1) => \adc_control.data0[2]_i_22_n_0\,
      S(0) => \adc_control.data0[2]_i_23_n_0\
    );
\adc_control.data0_reg[2]_i_7\: unisim.vcomponents.CARRY8
     port map (
      CI => \adc_control.data0_reg[2]_i_12_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_adc_control.data0_reg[2]_i_7_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \adc_control.data0_reg[2]_i_7_n_5\,
      CO(1) => \adc_control.data0_reg[2]_i_7_n_6\,
      CO(0) => \adc_control.data0_reg[2]_i_7_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_adc_control.data0_reg[2]_i_7_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \adc_control.data0[2]_i_13_n_0\,
      S(1) => \adc_control.data0[2]_i_14_n_0\,
      S(0) => \adc_control.data0[2]_i_15_n_0\
    );
\adc_control.data0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(30),
      Q => data0(30),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(31),
      Q => data0(31),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(3),
      Q => data0(3),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(4),
      Q => data0(4),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(5),
      Q => data0(5),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(6),
      Q => data0(6),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(7),
      Q => data0(7),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(8),
      Q => data0(8),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data0[31]_i_1_n_0\,
      D => cdata(9),
      Q => data0(9),
      R => \adc_control.data0[2]_i_1_n_0\
    );
\adc_control.data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551114"
    )
        port map (
      I0 => stop_in,
      I1 => \^data_out\(0),
      I2 => \^reset_out\,
      I3 => sim_done,
      I4 => reset_in,
      O => \adc_control.data_out[0]_i_1_n_0\
    );
\adc_control.data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011110101000"
    )
        port map (
      I0 => reset_in,
      I1 => stop_in,
      I2 => \^data_out\(0),
      I3 => sim_done,
      I4 => \^reset_out\,
      I5 => \^data_out\(1),
      O => \adc_control.data_out[1]_i_1_n_0\
    );
\adc_control.data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222AAAAA88800000"
    )
        port map (
      I0 => \adc_control.data_out[3]_i_2_n_0\,
      I1 => \^data_out\(1),
      I2 => \^reset_out\,
      I3 => sim_done,
      I4 => \^data_out\(0),
      I5 => \^data_out\(2),
      O => \adc_control.data_out[2]_i_1_n_0\
    );
\adc_control.data_out[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => stop_in,
      I1 => reset_in,
      O => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \adc_control.data_out[3]_i_2_n_0\,
      I1 => \^data_out\(2),
      I2 => \^data_out\(0),
      I3 => \adc_control.address[1]_i_2_n_0\,
      I4 => \^data_out\(1),
      I5 => \^data_out\(3),
      O => \adc_control.data_out[3]_i_1_n_0\
    );
\adc_control.data_out[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_in,
      I1 => stop_in,
      O => \adc_control.data_out[3]_i_2_n_0\
    );
\adc_control.data_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => reset_in,
      I1 => stop_in,
      I2 => \adc_control.data_out[6]_i_2_n_0\,
      I3 => \^data_out\(4),
      O => \adc_control.data_out[4]_i_1_n_0\
    );
\adc_control.data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010010"
    )
        port map (
      I0 => reset_in,
      I1 => stop_in,
      I2 => \^data_out\(4),
      I3 => \adc_control.data_out[6]_i_2_n_0\,
      I4 => \^data_out\(5),
      O => \adc_control.data_out[5]_i_1_n_0\
    );
\adc_control.data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101111100100000"
    )
        port map (
      I0 => reset_in,
      I1 => stop_in,
      I2 => \^data_out\(5),
      I3 => \adc_control.data_out[6]_i_2_n_0\,
      I4 => \^data_out\(4),
      I5 => \^data_out\(6),
      O => \adc_control.data_out[6]_i_1_n_0\
    );
\adc_control.data_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777FFFFFFFFFFFFF"
    )
        port map (
      I0 => \^data_out\(2),
      I1 => \^data_out\(0),
      I2 => sim_done,
      I3 => \^reset_out\,
      I4 => \^data_out\(1),
      I5 => \^data_out\(3),
      O => \adc_control.data_out[6]_i_2_n_0\
    );
\adc_control.data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044144444"
    )
        port map (
      I0 => stop_in,
      I1 => \^data_out\(7),
      I2 => \^data_out\(6),
      I3 => \adc_control.data_out[7]_i_2_n_0\,
      I4 => \^data_out\(5),
      I5 => reset_in,
      O => \adc_control.data_out[7]_i_1_n_0\
    );
\adc_control.data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^data_out\(3),
      I1 => \^data_out\(1),
      I2 => \adc_control.address[1]_i_2_n_0\,
      I3 => \^data_out\(0),
      I4 => \^data_out\(2),
      I5 => \^data_out\(4),
      O => \adc_control.data_out[7]_i_2_n_0\
    );
\adc_control.data_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020302020200"
    )
        port map (
      I0 => \^adc_active\,
      I1 => reset_in,
      I2 => stop_in,
      I3 => \^reset_out\,
      I4 => sim_done,
      I5 => \^data_out\(8),
      O => \adc_control.data_out[8]_i_1_n_0\
    );
\adc_control.data_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020302020200"
    )
        port map (
      I0 => \^sim_active\,
      I1 => reset_in,
      I2 => stop_in,
      I3 => \^reset_out\,
      I4 => sim_done,
      I5 => \^data_out\(9),
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
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(11),
      Q => \^data_out\(11),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(12),
      Q => \^data_out\(12),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(13),
      Q => \^data_out\(13),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(14),
      Q => \^data_out\(14),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(15),
      Q => \^data_out\(15),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(16),
      Q => \^data_out\(16),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(17),
      Q => \^data_out\(17),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(18),
      Q => \^data_out\(18),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(19),
      Q => \^data_out\(19),
      R => \adc_control.data_out[31]_i_1_n_0\
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
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(21),
      Q => \^data_out\(21),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(22),
      Q => \^data_out\(22),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(23),
      Q => \^data_out\(23),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(24),
      Q => \^data_out\(24),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(25),
      Q => \^data_out\(25),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(26),
      Q => \^data_out\(26),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(27),
      Q => \^data_out\(27),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(28),
      Q => \^data_out\(28),
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(29),
      Q => \^data_out\(29),
      R => \adc_control.data_out[31]_i_1_n_0\
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
      R => \adc_control.data_out[31]_i_1_n_0\
    );
\adc_control.data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^data_out\(31),
      Q => \^data_out\(31),
      R => \adc_control.data_out[31]_i_1_n_0\
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
\adc_control.reset_out_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => \^reset_out\,
      I1 => \adc_control.reset_out_i_2_n_0\,
      I2 => stop_in,
      I3 => cmd_start,
      O => \adc_control.reset_out_i_1_n_0\
    );
\adc_control.reset_out_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0046"
    )
        port map (
      I0 => data0(2),
      I1 => data0(1),
      I2 => data0(0),
      I3 => \adc_control.adc_active_i_3_n_0\,
      O => \adc_control.reset_out_i_2_n_0\
    );
\adc_control.reset_out_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.reset_out_i_1_n_0\,
      Q => \^reset_out\,
      R => '0'
    );
\adc_control.sim_active_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEB0040"
    )
        port map (
      I0 => \adc_control.adc_active_i_3_n_0\,
      I1 => data0(0),
      I2 => data0(1),
      I3 => data0(2),
      I4 => \^sim_active\,
      O => \adc_control.sim_active_i_1_n_0\
    );
\adc_control.sim_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_start,
      D => \adc_control.sim_active_i_1_n_0\,
      Q => \^sim_active\,
      R => \adc_control.adc_active_i_1_n_0\
    );
\adc_control.sim_channel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_start,
      D => data0(8),
      Q => \^sim_channel\(0),
      R => '0'
    );
\adc_control.sim_channel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_start,
      D => data0(9),
      Q => \^sim_channel\(1),
      R => '0'
    );
\adc_control.sim_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888B8888"
    )
        port map (
      I0 => data0(16),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => sim_count(0),
      I4 => sim_pend,
      O => \p_0_in__0\(0)
    );
\adc_control.sim_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACA0A0A0ACA0ACA0"
    )
        port map (
      I0 => data0(26),
      I1 => sim_count(10),
      I2 => cmd_start,
      I3 => sim_pend,
      I4 => sim_count(9),
      I5 => \adc_control.sim_count[10]_i_2_n_0\,
      O => \p_0_in__0\(10)
    );
\adc_control.sim_count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020200000200"
    )
        port map (
      I0 => \adc_control.sim_count[10]_i_3_n_0\,
      I1 => \adc_control.sim_count[10]_i_4_n_0\,
      I2 => \adc_control.sim_count[10]_i_5_n_0\,
      I3 => sim_count(10),
      I4 => sim_count(8),
      I5 => sim_count(9),
      O => \adc_control.sim_count[10]_i_2_n_0\
    );
\adc_control.sim_count[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sim_count(5),
      I1 => sim_count(6),
      I2 => sim_count(4),
      I3 => sim_count(7),
      O => \adc_control.sim_count[10]_i_3_n_0\
    );
\adc_control.sim_count[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sim_count(1),
      I1 => sim_count(0),
      O => \adc_control.sim_count[10]_i_4_n_0\
    );
\adc_control.sim_count[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sim_count(3),
      I1 => sim_count(2),
      O => \adc_control.sim_count[10]_i_5_n_0\
    );
\adc_control.sim_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000088828882"
    )
        port map (
      I0 => sim_pend,
      I1 => sim_count(1),
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => sim_count(0),
      I4 => data0(17),
      I5 => cmd_start,
      O => \p_0_in__0\(1)
    );
\adc_control.sim_count[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \adc_control.sim_count[10]_i_3_n_0\,
      I1 => \adc_control.sim_count[1]_i_3_n_0\,
      I2 => sim_count(10),
      I3 => sim_count(8),
      I4 => sim_count(9),
      O => \adc_control.sim_count[1]_i_2_n_0\
    );
\adc_control.sim_count[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_count(2),
      I3 => sim_count(3),
      O => \adc_control.sim_count[1]_i_3_n_0\
    );
\adc_control.sim_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF009090"
    )
        port map (
      I0 => sim_count(2),
      I1 => \adc_control.sim_count[3]_i_2_n_0\,
      I2 => sim_pend,
      I3 => data0(18),
      I4 => cmd_start,
      O => \p_0_in__0\(2)
    );
\adc_control.sim_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000A900A900"
    )
        port map (
      I0 => sim_count(3),
      I1 => \adc_control.sim_count[3]_i_2_n_0\,
      I2 => sim_count(2),
      I3 => sim_pend,
      I4 => data0(19),
      I5 => cmd_start,
      O => \p_0_in__0\(3)
    );
\adc_control.sim_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFF0000"
    )
        port map (
      I0 => sim_count(9),
      I1 => sim_count(8),
      I2 => sim_count(10),
      I3 => \adc_control.sim_count[10]_i_5_n_0\,
      I4 => \adc_control.sim_count[10]_i_4_n_0\,
      I5 => \adc_control.sim_count[10]_i_3_n_0\,
      O => \adc_control.sim_count[3]_i_2_n_0\
    );
\adc_control.sim_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF009090"
    )
        port map (
      I0 => sim_count(4),
      I1 => \adc_control.sim_count[5]_i_2_n_0\,
      I2 => sim_pend,
      I3 => data0(20),
      I4 => cmd_start,
      O => \p_0_in__0\(4)
    );
\adc_control.sim_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000A900A900"
    )
        port map (
      I0 => sim_count(5),
      I1 => \adc_control.sim_count[5]_i_2_n_0\,
      I2 => sim_count(4),
      I3 => sim_pend,
      I4 => data0(21),
      I5 => cmd_start,
      O => \p_0_in__0\(5)
    );
\adc_control.sim_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCFCFCFCFCFE"
    )
        port map (
      I0 => \adc_control.sim_count[10]_i_3_n_0\,
      I1 => \adc_control.sim_count[10]_i_4_n_0\,
      I2 => \adc_control.sim_count[10]_i_5_n_0\,
      I3 => sim_count(10),
      I4 => sim_count(8),
      I5 => sim_count(9),
      O => \adc_control.sim_count[5]_i_2_n_0\
    );
\adc_control.sim_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000A900A900"
    )
        port map (
      I0 => sim_count(6),
      I1 => \adc_control.sim_count[7]_i_3_n_0\,
      I2 => sim_count(5),
      I3 => sim_pend,
      I4 => data0(22),
      I5 => cmd_start,
      O => \p_0_in__0\(6)
    );
\adc_control.sim_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000A600A600"
    )
        port map (
      I0 => sim_count(7),
      I1 => \adc_control.sim_count[7]_i_2_n_0\,
      I2 => \adc_control.sim_count[7]_i_3_n_0\,
      I3 => sim_pend,
      I4 => data0(23),
      I5 => cmd_start,
      O => \p_0_in__0\(7)
    );
\adc_control.sim_count[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sim_count(6),
      I1 => sim_count(5),
      O => \adc_control.sim_count[7]_i_2_n_0\
    );
\adc_control.sim_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFA"
    )
        port map (
      I0 => sim_count(4),
      I1 => \adc_control.sim_count[7]_i_4_n_0\,
      I2 => \adc_control.sim_count[10]_i_5_n_0\,
      I3 => sim_count(1),
      I4 => sim_count(0),
      I5 => \adc_control.sim_count[10]_i_3_n_0\,
      O => \adc_control.sim_count[7]_i_3_n_0\
    );
\adc_control.sim_count[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sim_count(10),
      I1 => sim_count(8),
      I2 => sim_count(9),
      O => \adc_control.sim_count[7]_i_4_n_0\
    );
\adc_control.sim_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF009090"
    )
        port map (
      I0 => sim_count(8),
      I1 => \adc_control.sim_count[8]_i_2_n_0\,
      I2 => sim_pend,
      I3 => data0(24),
      I4 => cmd_start,
      O => \p_0_in__0\(8)
    );
\adc_control.sim_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF01FFFFFFFF"
    )
        port map (
      I0 => sim_count(9),
      I1 => sim_count(8),
      I2 => sim_count(10),
      I3 => \adc_control.sim_count[10]_i_5_n_0\,
      I4 => \adc_control.sim_count[10]_i_4_n_0\,
      I5 => \adc_control.sim_count[10]_i_3_n_0\,
      O => \adc_control.sim_count[8]_i_2_n_0\
    );
\adc_control.sim_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF006060"
    )
        port map (
      I0 => sim_count(9),
      I1 => \adc_control.sim_count[10]_i_2_n_0\,
      I2 => sim_pend,
      I3 => data0(25),
      I4 => cmd_start,
      O => \p_0_in__0\(9)
    );
\adc_control.sim_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => sim_count(0),
      R => '0'
    );
\adc_control.sim_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => sim_count(10),
      R => '0'
    );
\adc_control.sim_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => sim_count(1),
      R => '0'
    );
\adc_control.sim_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => sim_count(2),
      R => '0'
    );
\adc_control.sim_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => sim_count(3),
      R => '0'
    );
\adc_control.sim_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => sim_count(4),
      R => '0'
    );
\adc_control.sim_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => sim_count(5),
      R => '0'
    );
\adc_control.sim_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => sim_count(6),
      R => '0'
    );
\adc_control.sim_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => sim_count(7),
      R => '0'
    );
\adc_control.sim_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => sim_count(8),
      R => '0'
    );
\adc_control.sim_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => sim_count(9),
      R => '0'
    );
\adc_control.sim_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(0),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(0),
      O => \adc_control.sim_data[0]_i_1_n_0\
    );
\adc_control.sim_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(10),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(10),
      O => \adc_control.sim_data[10]_i_1_n_0\
    );
\adc_control.sim_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(11),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(11),
      O => \adc_control.sim_data[11]_i_1_n_0\
    );
\adc_control.sim_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(12),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(12),
      O => \adc_control.sim_data[12]_i_1_n_0\
    );
\adc_control.sim_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(13),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(13),
      O => \adc_control.sim_data[13]_i_1_n_0\
    );
\adc_control.sim_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(14),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(14),
      O => \adc_control.sim_data[14]_i_1_n_0\
    );
\adc_control.sim_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(15),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(15),
      O => \adc_control.sim_data[15]_i_1_n_0\
    );
\adc_control.sim_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(16),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(16),
      O => \adc_control.sim_data[16]_i_1_n_0\
    );
\adc_control.sim_data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(17),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(17),
      O => \adc_control.sim_data[17]_i_1_n_0\
    );
\adc_control.sim_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(18),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(18),
      O => \adc_control.sim_data[18]_i_1_n_0\
    );
\adc_control.sim_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(19),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(19),
      O => \adc_control.sim_data[19]_i_1_n_0\
    );
\adc_control.sim_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(1),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(1),
      O => \adc_control.sim_data[1]_i_1_n_0\
    );
\adc_control.sim_data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(20),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(20),
      O => \adc_control.sim_data[20]_i_1_n_0\
    );
\adc_control.sim_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(21),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(21),
      O => \adc_control.sim_data[21]_i_1_n_0\
    );
\adc_control.sim_data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(22),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(22),
      O => \adc_control.sim_data[22]_i_1_n_0\
    );
\adc_control.sim_data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(23),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(23),
      O => \adc_control.sim_data[23]_i_1_n_0\
    );
\adc_control.sim_data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(24),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(24),
      O => \adc_control.sim_data[24]_i_1_n_0\
    );
\adc_control.sim_data[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(25),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(25),
      O => \adc_control.sim_data[25]_i_1_n_0\
    );
\adc_control.sim_data[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(26),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(26),
      O => \adc_control.sim_data[26]_i_1_n_0\
    );
\adc_control.sim_data[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(27),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(27),
      O => \adc_control.sim_data[27]_i_1_n_0\
    );
\adc_control.sim_data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(28),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(28),
      O => \adc_control.sim_data[28]_i_1_n_0\
    );
\adc_control.sim_data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(29),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(29),
      O => \adc_control.sim_data[29]_i_1_n_0\
    );
\adc_control.sim_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(2),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(2),
      O => \adc_control.sim_data[2]_i_1_n_0\
    );
\adc_control.sim_data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(30),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(30),
      O => \adc_control.sim_data[30]_i_1_n_0\
    );
\adc_control.sim_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cmd_start,
      I1 => sim_pend,
      O => \adc_control.sim_data[31]_i_1_n_0\
    );
\adc_control.sim_data[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(31),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(31),
      O => \adc_control.sim_data[31]_i_2_n_0\
    );
\adc_control.sim_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(3),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(3),
      O => \adc_control.sim_data[3]_i_1_n_0\
    );
\adc_control.sim_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(4),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(4),
      O => \adc_control.sim_data[4]_i_1_n_0\
    );
\adc_control.sim_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(5),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(5),
      O => \adc_control.sim_data[5]_i_1_n_0\
    );
\adc_control.sim_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(6),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(6),
      O => \adc_control.sim_data[6]_i_1_n_0\
    );
\adc_control.sim_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(7),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(7),
      O => \adc_control.sim_data[7]_i_1_n_0\
    );
\adc_control.sim_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(8),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(8),
      O => \adc_control.sim_data[8]_i_1_n_0\
    );
\adc_control.sim_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^sim_data\(9),
      I1 => cmd_start,
      I2 => \adc_control.sim_count[1]_i_2_n_0\,
      I3 => data_in(9),
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
\adc_control.sim_done_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \adc_control.sim_count[1]_i_2_n_0\,
      I1 => cmd_start,
      I2 => sim_pend,
      O => \adc_control.sim_done_i_1_n_0\
    );
\adc_control.sim_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_done_i_1_n_0\,
      Q => sim_done,
      R => '0'
    );
\adc_control.sim_high_wr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0A0"
    )
        port map (
      I0 => \^sim_high_wr\,
      I1 => \adc_control.sim_count[1]_i_2_n_0\,
      I2 => sim_pend,
      I3 => data0(10),
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
      INIT => X"888A"
    )
        port map (
      I0 => sim_pend,
      I1 => \^sim_low_wr\,
      I2 => data0(10),
      I3 => \adc_control.sim_count[1]_i_2_n_0\,
      O => sim_low_wr3_out
    );
\adc_control.sim_low_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sim_low_wr3_out,
      Q => \^sim_low_wr\,
      R => cmd_start
    );
\adc_control.sim_pend_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F04040FFF04040"
    )
        port map (
      I0 => \adc_control.sim_pend_i_2_n_0\,
      I1 => \adc_control.sim_pend_i_3_n_0\,
      I2 => cmd_start,
      I3 => \adc_control.data_out[3]_i_2_n_0\,
      I4 => sim_pend,
      I5 => sim_done,
      O => \adc_control.sim_pend_i_1_n_0\
    );
\adc_control.sim_pend_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data0(1),
      I1 => data0(2),
      O => \adc_control.sim_pend_i_2_n_0\
    );
\adc_control.sim_pend_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => data0(0),
      I1 => data0(5),
      I2 => data0(7),
      I3 => data0(6),
      I4 => data0(3),
      I5 => data0(4),
      O => \adc_control.sim_pend_i_3_n_0\
    );
\adc_control.sim_pend_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_pend_i_1_n_0\,
      Q => sim_pend,
      R => '0'
    );
\adc_control.wr_en[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => stop_in,
      I1 => \adc_control.wr_en[3]_i_3_n_0\,
      I2 => \adc_control.wr_en[3]_i_4_n_0\,
      I3 => \adc_control.wr_en[3]_i_5_n_0\,
      I4 => \adc_control.wr_en[3]_i_6_n_0\,
      I5 => reset_in,
      O => \adc_control.wr_en[3]_i_1_n_0\
    );
\adc_control.wr_en[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^data_out\(20),
      I1 => \^data_out\(21),
      I2 => \^data_out\(22),
      I3 => \^data_out\(23),
      O => \adc_control.wr_en[3]_i_10_n_0\
    );
\adc_control.wr_en[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => reset_in,
      I1 => sim_done,
      I2 => \^reset_out\,
      O => \adc_control.wr_en[3]_i_2_n_0\
    );
\adc_control.wr_en[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^data_out\(11),
      I1 => \^data_out\(10),
      I2 => \^data_out\(8),
      I3 => \^data_out\(9),
      I4 => \adc_control.wr_en[3]_i_7_n_0\,
      O => \adc_control.wr_en[3]_i_3_n_0\
    );
\adc_control.wr_en[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^data_out\(2),
      I1 => \^data_out\(3),
      I2 => \^data_out\(1),
      I3 => \^data_out\(0),
      I4 => \adc_control.wr_en[3]_i_8_n_0\,
      O => \adc_control.wr_en[3]_i_4_n_0\
    );
\adc_control.wr_en[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^data_out\(27),
      I1 => \^data_out\(26),
      I2 => \^data_out\(25),
      I3 => \^data_out\(24),
      I4 => \adc_control.wr_en[3]_i_9_n_0\,
      O => \adc_control.wr_en[3]_i_5_n_0\
    );
\adc_control.wr_en[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^data_out\(19),
      I1 => \^data_out\(18),
      I2 => \^data_out\(17),
      I3 => \^data_out\(16),
      I4 => \adc_control.wr_en[3]_i_10_n_0\,
      O => \adc_control.wr_en[3]_i_6_n_0\
    );
\adc_control.wr_en[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^data_out\(12),
      I1 => \^data_out\(13),
      I2 => \^data_out\(14),
      I3 => \^data_out\(15),
      O => \adc_control.wr_en[3]_i_7_n_0\
    );
\adc_control.wr_en[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^data_out\(5),
      I1 => \^data_out\(4),
      I2 => \^data_out\(7),
      I3 => \^data_out\(6),
      O => \adc_control.wr_en[3]_i_8_n_0\
    );
\adc_control.wr_en[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^data_out\(30),
      I1 => \^data_out\(31),
      I2 => \^data_out\(28),
      I3 => \^data_out\(29),
      O => \adc_control.wr_en[3]_i_9_n_0\
    );
\adc_control.wr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.wr_en[3]_i_2_n_0\,
      Q => \^wr_en\(0),
      R => \adc_control.wr_en[3]_i_1_n_0\
    );
\adc_control.wr_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.wr_en[3]_i_2_n_0\,
      Q => \^wr_en\(1),
      R => \adc_control.wr_en[3]_i_1_n_0\
    );
\adc_control.wr_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.wr_en[3]_i_2_n_0\,
      Q => \^wr_en\(2),
      R => \adc_control.wr_en[3]_i_1_n_0\
    );
\adc_control.wr_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.wr_en[3]_i_2_n_0\,
      Q => \^wr_en\(3),
      R => \adc_control.wr_en[3]_i_1_n_0\
    );
ila_4_i: component ps_adc_control_0_0_ila_4
     port map (
      clk => clk,
      probe0(0) => reset_in,
      probe1(0) => stop_in,
      probe10(0) => \^sim_high_wr\,
      probe11(1 downto 0) => \^sim_channel\(1 downto 0),
      probe12(31 downto 0) => \^sim_data\(31 downto 0),
      probe13(0) => \^adc_active\,
      probe14(0) => \^sim_active\,
      probe15(0) => cmd_start,
      probe16(0) => sim_pend,
      probe17(0) => sim_done,
      probe18(10 downto 0) => sim_count(10 downto 0),
      probe2(0) => \^reset_out\,
      probe3(31 downto 0) => data_in(31 downto 0),
      probe4(10 downto 0) => \^address\(10 downto 0),
      probe5(3 downto 0) => \^wr_en\(3 downto 0),
      probe6(31 downto 0) => \^data_out\(31 downto 0),
      probe7(31 downto 0) => cdata(31 downto 0),
      probe8(31 downto 0) => data0(31 downto 0),
      probe9(0) => \^sim_low_wr\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_adc_control_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    reset_out : out STD_LOGIC;
    stop_in : in STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_active : out STD_LOGIC;
    sim_active : out STD_LOGIC;
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
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_in : signal is "xilinx.com:signal:reset:1.0 reset_in RST";
  attribute X_INTERFACE_MODE of reset_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset_in : signal is "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_out : signal is "xilinx.com:signal:reset:1.0 reset_out RST";
  attribute X_INTERFACE_MODE of reset_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of reset_out : signal is "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_adc_control_0_0_adc_control
     port map (
      adc_active => adc_active,
      address(10 downto 0) => address(10 downto 0),
      clk => clk,
      data_in(31 downto 0) => data_in(31 downto 0),
      data_out(31 downto 0) => data_out(31 downto 0),
      reset_in => reset_in,
      reset_out => reset_out,
      sim_active => sim_active,
      sim_channel(1 downto 0) => sim_channel(1 downto 0),
      sim_data(31 downto 0) => sim_data(31 downto 0),
      sim_high_wr => sim_high_wr,
      sim_low_wr => sim_low_wr,
      stop_in => stop_in,
      wr_en(3 downto 0) => wr_en(3 downto 0)
    );
end STRUCTURE;
