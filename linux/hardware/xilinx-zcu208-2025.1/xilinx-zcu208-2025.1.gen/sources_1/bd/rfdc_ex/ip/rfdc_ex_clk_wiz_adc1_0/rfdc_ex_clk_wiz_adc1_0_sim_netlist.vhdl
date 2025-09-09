-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu May 22 09:15:32 2025
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_clk_wiz_adc1_0/rfdc_ex_clk_wiz_adc1_0_sim_netlist.vhdl
-- Design      : rfdc_ex_clk_wiz_adc1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0_address_decoder is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[8]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_1\ : out STD_LOGIC;
    rdack_reg_10 : out STD_LOGIC;
    rst_ip2bus_rdack0 : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_error_int1 : out STD_LOGIC;
    ip2bus_wrack_int1 : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    dummy_local_reg_rdack0 : out STD_LOGIC;
    dummy_local_reg_rdack_d10 : out STD_LOGIC;
    dummy_local_reg_wrack0 : out STD_LOGIC;
    dummy_local_reg_wrack_d10 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \^ip2bus_wrack\ : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \clkout0_reg_reg[14]\ : in STD_LOGIC;
    \clkout0_reg_reg[14]_0\ : in STD_LOGIC;
    \interrupt_enable_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \clkfbout_reg_reg[6]\ : in STD_LOGIC;
    \clkfbout_reg_reg[6]_0\ : in STD_LOGIC;
    \ram_clk_config_reg[31][31]\ : in STD_LOGIC;
    \ram_clk_config_reg[27][31]\ : in STD_LOGIC;
    \ram_clk_config_reg[26][31]\ : in STD_LOGIC;
    \ram_clk_config_reg[17][31]\ : in STD_LOGIC;
    \ram_clk_config_reg[0][31]\ : in STD_LOGIC;
    \load_enable_reg_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rdata_i_reg[18]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \s_axi_rdata_i_reg[15]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    SRDY : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]_1\ : in STD_LOGIC;
    config_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_enable_reg_d_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]_3\ : in STD_LOGIC;
    rst_ip2bus_rdack_d1 : in STD_LOGIC;
    ip2bus_error_reg : in STD_LOGIC;
    ip2bus_wrack_reg : in STD_LOGIC;
    dummy_local_reg_wrack : in STD_LOGIC;
    wrack : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    dummy_local_reg_rdack_d1 : in STD_LOGIC;
    dummy_local_reg_wrack_d1 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end rfdc_ex_clk_wiz_adc1_0_address_decoder;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0_address_decoder is
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[5]_1\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[8]\ : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal \clkfbout_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \interrupt_enable_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal ip2bus_error_i_2_n_0 : STD_LOGIC;
  signal ip2bus_error_i_3_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal \ram_clk_config[16][31]_i_2_n_0\ : STD_LOGIC;
  signal \ram_clk_config[1][31]_i_3_n_0\ : STD_LOGIC;
  signal \ram_clk_config[24][31]_i_2_n_0\ : STD_LOGIC;
  signal \ram_clk_config[9][31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_2_n_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \clkfbout_reg[6]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of dummy_local_reg_rdack_d1_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of dummy_local_reg_rdack_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of dummy_local_reg_wrack_d1_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of dummy_local_reg_wrack_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \interrupt_enable_reg[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ip2bus_error_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \load_enable_reg[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of load_enable_reg_d_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ram_clk_config[16][31]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ram_clk_config[16][31]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ram_clk_config[17][31]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ram_clk_config[18][31]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ram_clk_config[19][31]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ram_clk_config[1][31]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ram_clk_config[20][31]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ram_clk_config[21][31]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ram_clk_config[22][31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ram_clk_config[23][31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ram_clk_config[24][31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ram_clk_config[24][31]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ram_clk_config[25][31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ram_clk_config[27][31]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ram_clk_config[30][31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ram_clk_config[31][31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ram_clk_config[3][31]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ram_clk_config[9][31]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of rdack_reg_1_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of reset_trig_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of rst_ip2bus_rdack_d1_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of rst_ip2bus_rdack_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[15]_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[15]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[15]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_12\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_14\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sw_rst_cond_d1_i_1 : label is "soft_lutpair26";
begin
  \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ <= \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\;
  \bus2ip_addr_i_reg[5]_1\ <= \^bus2ip_addr_i_reg[5]_1\;
  \bus2ip_addr_i_reg[8]\ <= \^bus2ip_addr_i_reg[8]\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_error_reg,
      I1 => Q,
      I2 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(2),
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(1),
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0\,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => ce_expnd_i_5
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_4,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(0),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \interrupt_enable_reg_reg[15]\(1),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(2),
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(5),
      I1 => \interrupt_enable_reg_reg[15]\(8),
      I2 => \^bus2ip_addr_i_reg[5]_1\,
      I3 => \interrupt_enable_reg_reg[15]\(7),
      I4 => \interrupt_enable_reg_reg[15]\(6),
      I5 => Q,
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\,
      Q => p_1_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0),
      I1 => \^ip2bus_wrack\,
      I2 => ip2bus_rdack,
      I3 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => '1',
      Q => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8]\,
      R => cs_ce_clr
    );
\clkfbout_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \clkfbout_reg_reg[6]\,
      I1 => \interrupt_enable_reg_reg[15]\(7),
      I2 => \clkfbout_reg_reg[6]_0\,
      I3 => \clkout0_reg_reg[14]\,
      I4 => \clkfbout_reg[6]_i_4_n_0\,
      O => \bus2ip_addr_i_reg[9]\(0)
    );
\clkfbout_reg[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \interrupt_enable_reg[15]_i_2_n_0\,
      I1 => p_4_in,
      I2 => \interrupt_enable_reg_reg[15]\(8),
      O => \clkfbout_reg[6]_i_4_n_0\
    );
\clkout0_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \clkout0_reg_reg[14]\,
      I1 => \clkfbout_reg[6]_i_4_n_0\,
      I2 => \clkout0_reg_reg[14]_0\,
      I3 => \interrupt_enable_reg_reg[15]\(0),
      I4 => \interrupt_enable_reg_reg[15]\(1),
      I5 => \interrupt_enable_reg_reg[15]\(2),
      O => E(0)
    );
dummy_local_reg_rdack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_3_in,
      I2 => p_2_in,
      I3 => p_1_in,
      O => dummy_local_reg_rdack_d10
    );
dummy_local_reg_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => p_1_in,
      I1 => p_2_in,
      I2 => p_3_in,
      I3 => Bus_RNW_reg,
      I4 => dummy_local_reg_rdack_d1,
      O => dummy_local_reg_rdack0
    );
dummy_local_reg_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_3_in,
      I2 => p_2_in,
      I3 => p_1_in,
      O => dummy_local_reg_wrack_d10
    );
dummy_local_reg_wrack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => p_1_in,
      I1 => p_2_in,
      I2 => p_3_in,
      I3 => Bus_RNW_reg,
      I4 => dummy_local_reg_wrack_d1,
      O => dummy_local_reg_wrack0
    );
\interrupt_enable_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \interrupt_enable_reg[15]_i_2_n_0\,
      I1 => Bus_RNW_reg,
      I2 => p_4_in,
      I3 => \interrupt_enable_reg_reg[15]\(8),
      I4 => \interrupt_enable_reg_reg[15]\(6),
      O => Bus_RNW_reg_reg_0(0)
    );
\interrupt_enable_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8]\,
      I2 => \interrupt_enable_reg_reg[15]\(5),
      I3 => p_5_in,
      I4 => p_7_in,
      I5 => p_6_in,
      O => \interrupt_enable_reg[15]_i_2_n_0\
    );
ip2bus_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBAAAAA"
    )
        port map (
      I0 => ip2bus_error_i_2_n_0,
      I1 => ip2bus_error_reg,
      I2 => ip2bus_rdack,
      I3 => \^ip2bus_wrack\,
      I4 => ip2bus_error_i_3_n_0,
      O => ip2bus_error_int1
    );
ip2bus_error_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_8_in,
      I2 => ip2bus_wrack_reg,
      O => ip2bus_error_i_2_n_0
    );
ip2bus_error_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => s_axi_wstrb(0),
      I2 => s_axi_wstrb(3),
      I3 => s_axi_wstrb(1),
      O => ip2bus_error_i_3_n_0
    );
ip2bus_wrack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF08"
    )
        port map (
      I0 => ip2bus_wrack_reg,
      I1 => p_8_in,
      I2 => Bus_RNW_reg,
      I3 => dummy_local_reg_wrack,
      I4 => wrack,
      I5 => IP2Bus_WrAck,
      O => ip2bus_wrack_int1
    );
\load_enable_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \clkfbout_reg[6]_i_4_n_0\,
      I1 => \load_enable_reg_reg[0]\,
      O => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\(0)
    );
load_enable_reg_d_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \clkfbout_reg[6]_i_4_n_0\,
      I1 => \load_enable_reg_reg[0]\,
      I2 => s_axi_wdata(0),
      I3 => load_enable_reg_d_reg,
      O => s_axi_wdata_0_sn_1
    );
\ram_clk_config[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \clkfbout_reg_reg[6]_0\,
      I1 => \interrupt_enable_reg_reg[15]\(4),
      I2 => \interrupt_enable_reg_reg[15]\(3),
      I3 => \ram_clk_config_reg[26][31]\,
      I4 => \clkfbout_reg[6]_i_4_n_0\,
      I5 => \ram_clk_config_reg[0][31]\,
      O => \bus2ip_addr_i_reg[6]\(0)
    );
\ram_clk_config[10][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(0),
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(3),
      I5 => \interrupt_enable_reg_reg[15]\(4),
      O => \bus2ip_addr_i_reg[2]_0\(0)
    );
\ram_clk_config[11][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \ram_clk_config[9][31]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \ram_clk_config_reg[17][31]\,
      I3 => \ram_clk_config_reg[26][31]\,
      I4 => \interrupt_enable_reg_reg[15]\(2),
      O => \bus2ip_addr_i_reg[3]_5\(0)
    );
\ram_clk_config[12][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(4),
      I5 => \interrupt_enable_reg_reg[15]\(3),
      O => \bus2ip_addr_i_reg[3]_10\(0)
    );
\ram_clk_config[13][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(4),
      I5 => \interrupt_enable_reg_reg[15]\(3),
      O => \bus2ip_addr_i_reg[3]_6\(0)
    );
\ram_clk_config[14][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(0),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(1),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(4),
      I5 => \interrupt_enable_reg_reg[15]\(3),
      O => \bus2ip_addr_i_reg[2]_3\(0)
    );
\ram_clk_config[15][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \clkfbout_reg[6]_i_4_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(4),
      I2 => \interrupt_enable_reg_reg[15]\(3),
      I3 => \interrupt_enable_reg_reg[15]\(1),
      I4 => \ram_clk_config_reg[17][31]\,
      I5 => \interrupt_enable_reg_reg[15]\(2),
      O => \bus2ip_addr_i_reg[6]_0\(0)
    );
\ram_clk_config[16][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \ram_clk_config[16][31]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => \bus2ip_addr_i_reg[3]_4\(0)
    );
\ram_clk_config[16][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \clkfbout_reg[6]_i_4_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(4),
      I2 => \interrupt_enable_reg_reg[15]\(3),
      O => \ram_clk_config[16][31]_i_2_n_0\
    );
\ram_clk_config[17][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \ram_clk_config_reg[17][31]\,
      I1 => \ram_clk_config[16][31]_i_2_n_0\,
      I2 => \interrupt_enable_reg_reg[15]\(1),
      I3 => \interrupt_enable_reg_reg[15]\(2),
      O => \bus2ip_addr_i_reg[3]_3\(0)
    );
\ram_clk_config[18][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \ram_clk_config[16][31]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(1),
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => \bus2ip_addr_i_reg[4]_3\(0)
    );
\ram_clk_config[19][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ram_clk_config_reg[27][31]\,
      I1 => \ram_clk_config[16][31]_i_2_n_0\,
      O => \bus2ip_addr_i_reg[2]_5\(0)
    );
\ram_clk_config[1][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(2),
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \ram_clk_config_reg[31][31]\,
      I3 => \interrupt_enable_reg_reg[15]\(0),
      I4 => \ram_clk_config[1][31]_i_3_n_0\,
      O => \bus2ip_addr_i_reg[4]_4\(0)
    );
\ram_clk_config[1][31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \clkfbout_reg[6]_i_4_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(4),
      I2 => \interrupt_enable_reg_reg[15]\(3),
      O => \ram_clk_config[1][31]_i_3_n_0\
    );
\ram_clk_config[20][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \ram_clk_config[16][31]_i_2_n_0\,
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \interrupt_enable_reg_reg[15]\(0),
      O => \bus2ip_addr_i_reg[3]_2\(0)
    );
\ram_clk_config[21][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \ram_clk_config[16][31]_i_2_n_0\,
      O => \bus2ip_addr_i_reg[3]_1\(0)
    );
\ram_clk_config[22][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(0),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \ram_clk_config[16][31]_i_2_n_0\,
      I3 => \interrupt_enable_reg_reg[15]\(1),
      I4 => \ram_clk_config_reg[31][31]\,
      O => \bus2ip_addr_i_reg[2]_2\(0)
    );
\ram_clk_config[23][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \ram_clk_config_reg[31][31]\,
      I1 => \interrupt_enable_reg_reg[15]\(0),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \interrupt_enable_reg_reg[15]\(1),
      I4 => \ram_clk_config[16][31]_i_2_n_0\,
      O => \bus2ip_addr_i_reg[2]_6\(0)
    );
\ram_clk_config[24][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \ram_clk_config_reg[31][31]\,
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \ram_clk_config[24][31]_i_2_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(0),
      O => \bus2ip_addr_i_reg[3]_0\(0)
    );
\ram_clk_config[24][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(4),
      I1 => \interrupt_enable_reg_reg[15]\(3),
      I2 => \clkfbout_reg[6]_i_4_n_0\,
      O => \ram_clk_config[24][31]_i_2_n_0\
    );
\ram_clk_config[25][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(2),
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \ram_clk_config_reg[31][31]\,
      I3 => \interrupt_enable_reg_reg[15]\(0),
      I4 => \ram_clk_config[24][31]_i_2_n_0\,
      O => \bus2ip_addr_i_reg[4]\(0)
    );
\ram_clk_config[26][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \ram_clk_config_reg[26][31]\,
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \ram_clk_config[24][31]_i_2_n_0\,
      I4 => \ram_clk_config_reg[31][31]\,
      I5 => \interrupt_enable_reg_reg[15]\(1),
      O => \bus2ip_addr_i_reg[4]_1\(0)
    );
\ram_clk_config[27][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \ram_clk_config_reg[27][31]\,
      I1 => \clkfbout_reg[6]_i_4_n_0\,
      I2 => \interrupt_enable_reg_reg[15]\(3),
      I3 => \interrupt_enable_reg_reg[15]\(4),
      O => \bus2ip_addr_i_reg[5]\(0)
    );
\ram_clk_config[28][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(3),
      I5 => \interrupt_enable_reg_reg[15]\(4),
      O => \bus2ip_addr_i_reg[3]_9\(0)
    );
\ram_clk_config[29][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(3),
      I5 => \interrupt_enable_reg_reg[15]\(4),
      O => \bus2ip_addr_i_reg[3]\(0)
    );
\ram_clk_config[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(0),
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(4),
      I5 => \interrupt_enable_reg_reg[15]\(3),
      O => \bus2ip_addr_i_reg[2]\(0)
    );
\ram_clk_config[30][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(2),
      I1 => \interrupt_enable_reg_reg[15]\(0),
      I2 => \ram_clk_config[24][31]_i_2_n_0\,
      I3 => \ram_clk_config_reg[31][31]\,
      I4 => \interrupt_enable_reg_reg[15]\(1),
      O => \bus2ip_addr_i_reg[4]_0\(0)
    );
\ram_clk_config[31][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \ram_clk_config_reg[31][31]\,
      I1 => \interrupt_enable_reg_reg[15]\(0),
      I2 => \interrupt_enable_reg_reg[15]\(2),
      I3 => \interrupt_enable_reg_reg[15]\(1),
      I4 => \ram_clk_config[24][31]_i_2_n_0\,
      O => \bus2ip_addr_i_reg[2]_1\(0)
    );
\ram_clk_config[3][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \ram_clk_config_reg[27][31]\,
      I1 => \interrupt_enable_reg_reg[15]\(3),
      I2 => \interrupt_enable_reg_reg[15]\(4),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      O => \bus2ip_addr_i_reg[5]_2\(0)
    );
\ram_clk_config[4][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(3),
      I1 => \interrupt_enable_reg_reg[15]\(4),
      I2 => \clkfbout_reg[6]_i_4_n_0\,
      I3 => \interrupt_enable_reg_reg[15]\(1),
      I4 => \interrupt_enable_reg_reg[15]\(2),
      I5 => \interrupt_enable_reg_reg[15]\(0),
      O => \bus2ip_addr_i_reg[5]_0\(0)
    );
\ram_clk_config[5][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \interrupt_enable_reg_reg[15]\(3),
      I4 => \interrupt_enable_reg_reg[15]\(4),
      I5 => \clkfbout_reg[6]_i_4_n_0\,
      O => \bus2ip_addr_i_reg[3]_8\(0)
    );
\ram_clk_config[6][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(0),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(1),
      I3 => \interrupt_enable_reg_reg[15]\(3),
      I4 => \interrupt_enable_reg_reg[15]\(4),
      I5 => \clkfbout_reg[6]_i_4_n_0\,
      O => \bus2ip_addr_i_reg[2]_4\(0)
    );
\ram_clk_config[7][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \interrupt_enable_reg_reg[15]\(3),
      I4 => \interrupt_enable_reg_reg[15]\(4),
      I5 => \clkfbout_reg[6]_i_4_n_0\,
      O => \bus2ip_addr_i_reg[3]_7\(0)
    );
\ram_clk_config[8][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(1),
      I1 => \interrupt_enable_reg_reg[15]\(2),
      I2 => \interrupt_enable_reg_reg[15]\(0),
      I3 => \clkfbout_reg[6]_i_4_n_0\,
      I4 => \interrupt_enable_reg_reg[15]\(4),
      I5 => \interrupt_enable_reg_reg[15]\(3),
      O => \bus2ip_addr_i_reg[3]_11\(0)
    );
\ram_clk_config[9][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(2),
      I1 => \interrupt_enable_reg_reg[15]\(1),
      I2 => \ram_clk_config_reg[31][31]\,
      I3 => \interrupt_enable_reg_reg[15]\(0),
      I4 => \ram_clk_config[9][31]_i_2_n_0\,
      O => \bus2ip_addr_i_reg[4]_2\(0)
    );
\ram_clk_config[9][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(3),
      I1 => \interrupt_enable_reg_reg[15]\(4),
      I2 => \clkfbout_reg[6]_i_4_n_0\,
      O => \ram_clk_config[9][31]_i_2_n_0\
    );
rdack_reg_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => p_8_in,
      I1 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8]\,
      I2 => Bus_RNW_reg,
      O => rdack_reg_10
    );
reset_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ip2bus_wrack_reg,
      I1 => p_8_in,
      I2 => Bus_RNW_reg,
      I3 => sw_rst_cond_d1,
      O => reset_trig0
    );
rst_ip2bus_rdack_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_8_in,
      O => bus2ip_rdce(0)
    );
rst_ip2bus_rdack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_8_in,
      I1 => Bus_RNW_reg,
      I2 => rst_ip2bus_rdack_d1,
      O => rst_ip2bus_rdack0
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444FFFF444F"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(0),
      I2 => \s_axi_rdata_i[0]_i_2_n_0\,
      I3 => \s_axi_rdata_i[0]_i_3_n_0\,
      I4 => \s_axi_rdata_i[0]_i_4_n_0\,
      I5 => \s_axi_rdata_i[0]_i_5_n_0\,
      O => D(0)
    );
\s_axi_rdata_i[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => p_5_in,
      I1 => Bus_RNW_reg,
      I2 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8]\,
      I3 => \interrupt_enable_reg_reg[15]\(5),
      I4 => \interrupt_enable_reg_reg[15]\(8),
      O => \s_axi_rdata_i[0]_i_11_n_0\
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_5_n_0\,
      I1 => config_reg(0),
      I2 => \^bus2ip_addr_i_reg[8]\,
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004044"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[0]\,
      I1 => \s_axi_rdata_i_reg[0]_0\,
      I2 => \^bus2ip_addr_i_reg[5]_1\,
      I3 => \s_axi_rdata_i_reg[0]_1\,
      I4 => \s_axi_rdata_i_reg[0]_2\,
      I5 => \^bus2ip_addr_i_reg[8]\,
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_5_n_0\,
      I1 => load_enable_reg_d_reg,
      I2 => \s_axi_rdata_i[15]_i_4_n_0\,
      O => \s_axi_rdata_i[0]_i_4_n_0\
    );
\s_axi_rdata_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCFECCFECCFCCC"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(6),
      I1 => \s_axi_rdata_i[0]_i_11_n_0\,
      I2 => p_4_in,
      I3 => Bus_RNW_reg,
      I4 => p_6_in,
      I5 => p_7_in,
      O => \s_axi_rdata_i[0]_i_5_n_0\
    );
\s_axi_rdata_i[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(3),
      I1 => \interrupt_enable_reg_reg[15]\(4),
      O => \^bus2ip_addr_i_reg[5]_1\
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F44444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(10),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(9),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[10]\,
      O => D(10)
    );
\s_axi_rdata_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(11),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(10),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[11]\,
      O => D(11)
    );
\s_axi_rdata_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(12),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(11),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[12]\,
      O => D(12)
    );
\s_axi_rdata_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(13),
      I2 => \s_axi_rdata_i[13]_i_2_n_0\,
      O => D(13)
    );
\s_axi_rdata_i[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE400E4"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(4),
      I1 => \s_axi_rdata_i_reg[13]\,
      I2 => \s_axi_rdata_i_reg[13]_0\,
      I3 => \^bus2ip_addr_i_reg[8]\,
      I4 => \s_axi_rdata_i_reg[18]\(12),
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \s_axi_rdata_i[13]_i_2_n_0\
    );
\s_axi_rdata_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(14),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(13),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[14]\,
      O => D(14)
    );
\s_axi_rdata_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(15),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(14),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[15]_0\,
      O => D(15)
    );
\s_axi_rdata_i[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_6_in,
      I2 => p_7_in,
      O => \s_axi_rdata_i[15]_i_10_n_0\
    );
\s_axi_rdata_i[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_4_n_0\,
      I1 => \s_axi_rdata_i[15]_i_5_n_0\,
      I2 => \s_axi_rdata_i[0]_i_5_n_0\,
      O => \s_axi_rdata_i[15]_i_2_n_0\
    );
\s_axi_rdata_i[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222A0880"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_13_n_0\,
      I1 => Bus_RNW_reg,
      I2 => p_6_in,
      I3 => p_4_in,
      I4 => \interrupt_enable_reg_reg[15]\(6),
      O => \s_axi_rdata_i[15]_i_4_n_0\
    );
\s_axi_rdata_i[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCECECCC"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(6),
      I1 => \s_axi_rdata_i[15]_i_10_n_0\,
      I2 => Bus_RNW_reg,
      I3 => p_4_in,
      I4 => p_5_in,
      I5 => \s_axi_rdata_i[31]_i_11_n_0\,
      O => \s_axi_rdata_i[15]_i_5_n_0\
    );
\s_axi_rdata_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE0E"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[17]\,
      I1 => \s_axi_rdata_i_reg[17]_0\,
      I2 => \^bus2ip_addr_i_reg[8]\,
      I3 => \s_axi_rdata_i_reg[18]\(15),
      I4 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => D(16)
    );
\s_axi_rdata_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFD800D8"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(4),
      I1 => \s_axi_rdata_i_reg[18]_0\,
      I2 => \s_axi_rdata_i_reg[18]_1\,
      I3 => \^bus2ip_addr_i_reg[8]\,
      I4 => \s_axi_rdata_i_reg[18]\(16),
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => D(17)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A888AA8A"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => \^bus2ip_addr_i_reg[8]\,
      I3 => \s_axi_rdata_i_reg[18]\(0),
      I4 => \s_axi_rdata_i_reg[1]\,
      O => D(1)
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C00AFF"
    )
        port map (
      I0 => SRDY,
      I1 => \s_axi_rdata_i_reg[15]\(1),
      I2 => \s_axi_rdata_i[15]_i_4_n_0\,
      I3 => \s_axi_rdata_i[15]_i_5_n_0\,
      I4 => \s_axi_rdata_i[0]_i_5_n_0\,
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F44444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(2),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(1),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[2]\,
      O => D(2)
    );
\s_axi_rdata_i[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C888"
    )
        port map (
      I0 => p_4_in,
      I1 => Bus_RNW_reg,
      I2 => p_6_in,
      I3 => p_7_in,
      O => \s_axi_rdata_i[31]_i_10_n_0\
    );
\s_axi_rdata_i[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(8),
      I1 => \interrupt_enable_reg_reg[15]\(5),
      I2 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8]\,
      I3 => Bus_RNW_reg,
      O => \s_axi_rdata_i[31]_i_11_n_0\
    );
\s_axi_rdata_i[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => p_7_in,
      I1 => p_6_in,
      I2 => Bus_RNW_reg,
      I3 => \interrupt_enable_reg_reg[15]\(6),
      O => \s_axi_rdata_i[31]_i_12_n_0\
    );
\s_axi_rdata_i[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8]\,
      I1 => \interrupt_enable_reg_reg[15]\(5),
      I2 => \interrupt_enable_reg_reg[15]\(8),
      I3 => Bus_RNW_reg,
      I4 => p_5_in,
      I5 => p_7_in,
      O => \s_axi_rdata_i[31]_i_13_n_0\
    );
\s_axi_rdata_i[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E955"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(6),
      I1 => p_4_in,
      I2 => p_6_in,
      I3 => Bus_RNW_reg,
      O => \s_axi_rdata_i[31]_i_14_n_0\
    );
\s_axi_rdata_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_8_n_0\,
      I1 => \s_axi_rdata_i[31]_i_9_n_0\,
      I2 => \s_axi_rdata_i[31]_i_10_n_0\,
      I3 => \s_axi_rdata_i[31]_i_11_n_0\,
      I4 => p_5_in,
      I5 => \s_axi_rdata_i[31]_i_12_n_0\,
      O => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\
    );
\s_axi_rdata_i[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000020D0"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_13_n_0\,
      I1 => \s_axi_rdata_i[31]_i_14_n_0\,
      I2 => \s_axi_rdata_i_reg[15]_1\,
      I3 => \interrupt_enable_reg_reg[15]\(6),
      I4 => \s_axi_rdata_i_reg[15]_2\,
      I5 => \s_axi_rdata_i_reg[15]_3\,
      O => \^bus2ip_addr_i_reg[8]\
    );
\s_axi_rdata_i[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E0E0E0"
    )
        port map (
      I0 => p_7_in,
      I1 => p_6_in,
      I2 => Bus_RNW_reg,
      I3 => p_4_in,
      I4 => p_5_in,
      O => \s_axi_rdata_i[31]_i_8_n_0\
    );
\s_axi_rdata_i[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(6),
      I1 => Bus_RNW_reg,
      I2 => p_4_in,
      I3 => p_5_in,
      O => \s_axi_rdata_i[31]_i_9_n_0\
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(3),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(2),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[3]\,
      O => D(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(4),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(3),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[4]\,
      O => D(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(5),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(4),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[5]\,
      O => D(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(6),
      I2 => \s_axi_rdata_i[6]_i_2_n_0\,
      O => D(6)
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4E004E"
    )
        port map (
      I0 => \interrupt_enable_reg_reg[15]\(4),
      I1 => \s_axi_rdata_i_reg[6]\,
      I2 => \s_axi_rdata_i_reg[6]_0\,
      I3 => \^bus2ip_addr_i_reg[8]\,
      I4 => \s_axi_rdata_i_reg[18]\(5),
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \s_axi_rdata_i[6]_i_2_n_0\
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(7),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(6),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[7]\,
      O => D(7)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F44444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(8),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(7),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[8]\,
      O => D(8)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \s_axi_rdata_i[15]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[15]\(9),
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => \s_axi_rdata_i_reg[18]\(8),
      I4 => \^bus2ip_addr_i_reg[8]\,
      I5 => \s_axi_rdata_i_reg[9]\,
      O => D(9)
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_8_in,
      I2 => ip2bus_wrack_reg,
      O => sw_rst_cond
    );
wrack_reg_1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8]\,
      I1 => Bus_RNW_reg,
      O => bus2ip_wrce(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    drdy : out STD_LOGIC;
    plle4_adv_inst_0 : out STD_LOGIC;
    DO : out STD_LOGIC_VECTOR ( 12 downto 0 );
    clk_in1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    DEN : in STD_LOGIC;
    DWE : in STD_LOGIC;
    reset : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DADDR : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end rfdc_ex_clk_wiz_adc1_0_clk_wiz;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0_clk_wiz is
  signal dout : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal NLW_plle4_adv_inst_CLKFBIN_UNCONNECTED : STD_LOGIC;
  signal NLW_plle4_adv_inst_CLKFBOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_plle4_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_plle4_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_plle4_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_plle4_adv_inst_CLKOUTPHY_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of plle4_adv_inst : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of plle4_adv_inst : label is "MLO";
begin
plle4_adv_inst: unisim.vcomponents.PLLE4_ADV
    generic map(
      CLKFBOUT_MULT => 16,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN_PERIOD => 3.617000,
      CLKOUT0_DIVIDE => 4,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUTPHY_MODE => "VCO_2X",
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 3,
      IS_CLKFBIN_INVERTED => '0',
      IS_CLKIN_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => NLW_plle4_adv_inst_CLKFBIN_UNCONNECTED,
      CLKFBOUT => NLW_plle4_adv_inst_CLKFBOUT_UNCONNECTED,
      CLKIN => clk_in1,
      CLKOUT0 => clk_out1,
      CLKOUT0B => NLW_plle4_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_plle4_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_plle4_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUTPHY => NLW_plle4_adv_inst_CLKOUTPHY_UNCONNECTED,
      CLKOUTPHYEN => '0',
      DADDR(6) => DADDR(5),
      DADDR(5) => '0',
      DADDR(4 downto 0) => DADDR(4 downto 0),
      DCLK => s_axi_aclk,
      DEN => DEN,
      DI(15 downto 0) => DI(15 downto 0),
      DO(15 downto 9) => DO(12 downto 6),
      DO(8 downto 7) => dout(8 downto 7),
      DO(6 downto 5) => DO(5 downto 4),
      DO(4) => dout(4),
      DO(3 downto 0) => DO(3 downto 0),
      DRDY => drdy,
      DWE => DWE,
      LOCKED => plle4_adv_inst_0,
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0_pll_drp is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SRDY : out STD_LOGIC;
    DWE : out STD_LOGIC;
    DEN : out STD_LOGIC;
    reset : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DADDR : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    RST_MMCM_PLL_reg_0 : in STD_LOGIC;
    SEN : in STD_LOGIC;
    drdy : in STD_LOGIC;
    DO : in STD_LOGIC_VECTOR ( 12 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_reg[14][5]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ram_reg[12][5]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    SRDY_reg_0 : in STD_LOGIC
  );
end rfdc_ex_clk_wiz_adc1_0_pll_drp;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0_pll_drp is
  signal \DADDR[6]_i_1_n_0\ : STD_LOGIC;
  signal \DADDR[6]_i_2_n_0\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \DI[0]_i_1_n_0\ : STD_LOGIC;
  signal \DI[10]_i_1_n_0\ : STD_LOGIC;
  signal \DI[11]_i_1_n_0\ : STD_LOGIC;
  signal \DI[12]_i_1_n_0\ : STD_LOGIC;
  signal \DI[13]_i_1_n_0\ : STD_LOGIC;
  signal \DI[14]_i_1_n_0\ : STD_LOGIC;
  signal \DI[15]_i_1_n_0\ : STD_LOGIC;
  signal \DI[15]_i_2_n_0\ : STD_LOGIC;
  signal \DI[15]_i_3_n_0\ : STD_LOGIC;
  signal \DI[1]_i_1_n_0\ : STD_LOGIC;
  signal \DI[2]_i_1_n_0\ : STD_LOGIC;
  signal \DI[3]_i_1_n_0\ : STD_LOGIC;
  signal \DI[4]_i_1_n_0\ : STD_LOGIC;
  signal \DI[5]_i_1_n_0\ : STD_LOGIC;
  signal \DI[6]_i_1_n_0\ : STD_LOGIC;
  signal \DI[7]_i_1_n_0\ : STD_LOGIC;
  signal \DI[8]_i_1_n_0\ : STD_LOGIC;
  signal \DI[9]_i_1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of current_state : signal is std.standard.true;
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal high_time : STD_LOGIC_VECTOR ( 0 to 0 );
  signal low_time : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal next_den : STD_LOGIC;
  signal next_dwe : STD_LOGIC;
  signal next_ram_addr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal next_srdy : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal no_count : STD_LOGIC;
  signal p_10_in : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal p_11_in : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal p_2_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_3_in : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal p_4_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal p_7_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_8_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal p_9_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \ram[12][0]_i_1_n_0\ : STD_LOGIC;
  signal \ram[12][1]_i_1_n_0\ : STD_LOGIC;
  signal \ram[12][2]_i_1_n_0\ : STD_LOGIC;
  signal \ram[12][2]_i_2_n_0\ : STD_LOGIC;
  signal \ram[12][3]_i_1_n_0\ : STD_LOGIC;
  signal \ram[12][4]_i_1_n_0\ : STD_LOGIC;
  signal \ram[12][4]_i_2_n_0\ : STD_LOGIC;
  signal \ram[12][4]_i_3_n_0\ : STD_LOGIC;
  signal \ram[12][5]_i_1_n_0\ : STD_LOGIC;
  signal \ram[12][5]_i_2_n_0\ : STD_LOGIC;
  signal \ram[12][5]_i_3_n_0\ : STD_LOGIC;
  signal \ram[12][5]_i_4_n_0\ : STD_LOGIC;
  signal \ram[12][6]_i_1_n_0\ : STD_LOGIC;
  signal \ram[13][6]_i_1_n_0\ : STD_LOGIC;
  signal \ram[13][7]_i_1_n_0\ : STD_LOGIC;
  signal \ram[13][7]_i_2_n_0\ : STD_LOGIC;
  signal \ram[14][2]_i_2_n_0\ : STD_LOGIC;
  signal \ram[14][4]_i_2_n_0\ : STD_LOGIC;
  signal \ram[14][4]_i_3_n_0\ : STD_LOGIC;
  signal \ram[14][5]_i_2_n_0\ : STD_LOGIC;
  signal \ram[14][5]_i_3_n_0\ : STD_LOGIC;
  signal \ram[14][5]_i_4_n_0\ : STD_LOGIC;
  signal \ram[15][7]_i_2_n_0\ : STD_LOGIC;
  signal \ram[16][13]_i_2_n_0\ : STD_LOGIC;
  signal \ram[16][2]_i_2_n_0\ : STD_LOGIC;
  signal \ram[16][4]_i_2_n_0\ : STD_LOGIC;
  signal \ram[16][4]_i_3_n_0\ : STD_LOGIC;
  signal \ram[16][5]_i_2_n_0\ : STD_LOGIC;
  signal \ram[16][5]_i_3_n_0\ : STD_LOGIC;
  signal \ram[16][5]_i_4_n_0\ : STD_LOGIC;
  signal \ram[17][1]_i_2_n_0\ : STD_LOGIC;
  signal \ram[17][2]_i_2_n_0\ : STD_LOGIC;
  signal \ram[17][3]_i_2_n_0\ : STD_LOGIC;
  signal \ram[17][3]_i_3_n_0\ : STD_LOGIC;
  signal \ram[17][4]_i_2_n_0\ : STD_LOGIC;
  signal \ram[17][4]_i_3_n_0\ : STD_LOGIC;
  signal \ram[17][5]_i_2_n_0\ : STD_LOGIC;
  signal \ram[17][6]_i_2_n_0\ : STD_LOGIC;
  signal \ram[18][6]_i_2_n_0\ : STD_LOGIC;
  signal \ram[18][7]_i_2_n_0\ : STD_LOGIC;
  signal \ram[19][8]_i_2_n_0\ : STD_LOGIC;
  signal \ram[19][9]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][0]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][10]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][11]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][12]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][12]_i_3_n_0\ : STD_LOGIC;
  signal \ram[20][13]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][13]_i_3_n_0\ : STD_LOGIC;
  signal \ram[20][14]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][14]_i_3_n_0\ : STD_LOGIC;
  signal \ram[20][1]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][2]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][3]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][4]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][5]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][6]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][7]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][8]_i_2_n_0\ : STD_LOGIC;
  signal \ram[20][9]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][0]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][10]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][10]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][11]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][11]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][12]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][12]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][13]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][13]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_10_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_11_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_12_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_5_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_6_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_7_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_8_n_0\ : STD_LOGIC;
  signal \ram[21][14]_i_9_n_0\ : STD_LOGIC;
  signal \ram[21][1]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][2]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][2]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][3]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][3]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][4]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][4]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][5]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][5]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][6]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][6]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][7]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][7]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][8]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][8]_i_3_n_0\ : STD_LOGIC;
  signal \ram[21][9]_i_2_n_0\ : STD_LOGIC;
  signal \ram[21][9]_i_3_n_0\ : STD_LOGIC;
  signal \ram[22][12]_i_2_n_0\ : STD_LOGIC;
  signal \ram[22][12]_i_3_n_0\ : STD_LOGIC;
  signal \ram[22][15]_i_2_n_0\ : STD_LOGIC;
  signal \ram[22][15]_i_3_n_0\ : STD_LOGIC;
  signal \ram[23][11]_i_2_n_0\ : STD_LOGIC;
  signal \ram[23][12]_i_2_n_0\ : STD_LOGIC;
  signal \ram[23][12]_i_3_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_10_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_11_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_12_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_2_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_3_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_5_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_6_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_7_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_8_n_0\ : STD_LOGIC;
  signal \ram[23][15]_i_9_n_0\ : STD_LOGIC;
  signal \ram[23][4]_i_2_n_0\ : STD_LOGIC;
  signal \ram[23][7]_i_2_n_0\ : STD_LOGIC;
  signal \ram[23][8]_i_2_n_0\ : STD_LOGIC;
  signal ram_addr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \ram_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \ram_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal ram_do : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal \ram_do[0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[0]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[0]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[0]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[10]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[10]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[10]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[10]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[11]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[11]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[11]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[11]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[12]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[12]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[12]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[13]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[13]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[14]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[14]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[15]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[15]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[15]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[1]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[1]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[1]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[1]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[25]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[26]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[27]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[28]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[29]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[2]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[2]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[2]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[2]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[30]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[31]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[32]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[33]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[34]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[35]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[36]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[38]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[3]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[3]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[3]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[3]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[4]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[4]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[4]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[4]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[5]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[5]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[5]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[5]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[6]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[6]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[6]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[6]_i_5_n_0\ : STD_LOGIC;
  signal \ram_do[7]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[7]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[7]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[7]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[7]_i_5_n_0\ : STD_LOGIC;
  signal \ram_do[8]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[8]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[8]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[8]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do[9]_i_1_n_0\ : STD_LOGIC;
  signal \ram_do[9]_i_2_n_0\ : STD_LOGIC;
  signal \ram_do[9]_i_3_n_0\ : STD_LOGIC;
  signal \ram_do[9]_i_4_n_0\ : STD_LOGIC;
  signal \ram_do_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \ram_reg[12]_40\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ram_reg[13]_39\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \ram_reg[14]_38\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ram_reg[15]_37\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \ram_reg[16]_36\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \ram_reg[17]_35\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ram_reg[18]_34\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \ram_reg[19]_33\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \ram_reg[20]_32\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \ram_reg[21][14]_i_4_n_10\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_11\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_12\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_13\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_14\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_3\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_4\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_5\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_6\ : STD_LOGIC;
  signal \ram_reg[21][14]_i_4_n_7\ : STD_LOGIC;
  signal \ram_reg[21]_31\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \ram_reg[22]_30\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \ram_reg[23][15]_i_4_n_10\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_11\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_12\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_13\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_14\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_15\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_3\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_4\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_5\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_6\ : STD_LOGIC;
  signal \ram_reg[23][15]_i_4_n_7\ : STD_LOGIC;
  signal \ram_reg[23]_29\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal state_count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[4]_i_2_n_0\ : STD_LOGIC;
  signal w_edge : STD_LOGIC;
  signal \NLW_ram_reg[21][14]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_ram_reg[21][14]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ram_reg[23][15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_ram_reg[23][15]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute DONT_TOUCH of \current_state_reg[0]\ : label is std.standard.true;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \current_state_reg[0]\ : label is "RESTART:0001,WAIT_LOCK:0010,WAIT_SEN:0011,ADDRESS:0100,WAIT_A_DRDY:0101,BITMASK:0110,BITSET:0111,WRITE:1000,WAIT_DRDY:1001";
  attribute KEEP : string;
  attribute KEEP of \current_state_reg[0]\ : label is "yes";
  attribute DONT_TOUCH of \current_state_reg[1]\ : label is std.standard.true;
  attribute FSM_ENCODED_STATES of \current_state_reg[1]\ : label is "RESTART:0001,WAIT_LOCK:0010,WAIT_SEN:0011,ADDRESS:0100,WAIT_A_DRDY:0101,BITMASK:0110,BITSET:0111,WRITE:1000,WAIT_DRDY:1001";
  attribute KEEP of \current_state_reg[1]\ : label is "yes";
  attribute DONT_TOUCH of \current_state_reg[2]\ : label is std.standard.true;
  attribute FSM_ENCODED_STATES of \current_state_reg[2]\ : label is "RESTART:0001,WAIT_LOCK:0010,WAIT_SEN:0011,ADDRESS:0100,WAIT_A_DRDY:0101,BITMASK:0110,BITSET:0111,WRITE:1000,WAIT_DRDY:1001";
  attribute KEEP of \current_state_reg[2]\ : label is "yes";
  attribute DONT_TOUCH of \current_state_reg[3]\ : label is std.standard.true;
  attribute FSM_ENCODED_STATES of \current_state_reg[3]\ : label is "RESTART:0001,WAIT_LOCK:0010,WAIT_SEN:0011,ADDRESS:0100,WAIT_A_DRDY:0101,BITMASK:0110,BITSET:0111,WRITE:1000,WAIT_DRDY:1001";
  attribute KEEP of \current_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ram[12][0]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \ram[12][1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \ram[12][2]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \ram[12][4]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \ram[12][4]_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \ram[12][5]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \ram[12][5]_i_4\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \ram[12][6]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \ram[13][6]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \ram[13][7]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \ram[14][0]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \ram[14][1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \ram[14][2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \ram[14][4]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \ram[14][4]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \ram[14][5]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \ram[14][5]_i_4\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \ram[14][6]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \ram[15][6]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \ram[15][7]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \ram[16][0]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \ram[16][12]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \ram[16][13]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \ram[16][1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \ram[16][2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \ram[16][4]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \ram[16][4]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \ram[16][5]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \ram[16][5]_i_4\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \ram[16][6]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \ram[17][0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \ram[17][3]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \ram[17][4]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \ram[17][5]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \ram[17][6]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \ram[18][6]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \ram[18][7]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \ram[19][0]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \ram[19][1]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \ram[19][2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \ram[19][3]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \ram[19][4]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \ram[19][5]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \ram[19][6]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \ram[19][7]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \ram[19][8]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \ram[19][9]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \ram[20][0]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \ram[20][10]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \ram[20][11]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \ram[20][12]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \ram[20][13]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \ram[20][1]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \ram[20][2]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \ram[20][3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \ram[20][4]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \ram[20][5]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \ram[20][6]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \ram[20][7]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \ram[20][8]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \ram[20][9]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \ram[21][0]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \ram[21][10]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \ram[21][11]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \ram[21][12]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \ram[21][13]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \ram[21][14]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \ram[21][1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \ram[21][2]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \ram[21][3]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \ram[21][4]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \ram[21][5]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \ram[21][6]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \ram[21][7]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \ram[21][8]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \ram[21][9]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \ram[22][11]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \ram[22][12]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \ram[22][15]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \ram[22][8]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \ram[23][11]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \ram[23][12]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \ram[23][15]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \ram[23][4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \ram[23][7]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \ram[23][8]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \ram_addr[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \ram_addr[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \ram_addr[3]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \ram_do[0]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \ram_do[0]_i_4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \ram_do[12]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \ram_do[12]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \ram_do[15]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \ram_do[25]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \ram_do[27]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ram_do[28]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \ram_do[29]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \ram_do[30]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \ram_do[31]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ram_do[32]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ram_do[33]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \ram_do[34]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \ram_do[35]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ram_do[36]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \ram_do[38]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \ram_do[4]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \ram_do[7]_i_3\ : label is "soft_lutpair65";
  attribute RAM_STYLE : string;
  attribute RAM_STYLE of \ram_reg[12][0]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][10]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][11]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][1]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][2]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][3]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][4]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][5]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][8]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[12][9]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[13][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[13][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][0]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][10]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][11]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][1]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][2]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][3]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][4]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][5]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][8]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[14][9]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[15][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[15][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][0]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][10]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][11]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][12]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][13]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][1]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][2]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][3]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][4]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][5]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][8]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[16][9]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][0]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][10]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][11]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][1]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][2]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][3]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][4]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][5]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][8]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[17][9]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[18][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[18][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][0]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][1]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][2]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][3]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][4]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][5]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][8]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[19][9]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][0]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][10]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][11]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][12]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][13]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][14]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][1]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][2]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][3]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][4]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][5]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][8]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[20][9]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][0]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][10]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][11]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][12]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][13]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][14]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][1]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][2]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][3]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][4]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][5]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][6]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][8]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[21][9]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[22][11]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[22][12]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[22][15]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[22][8]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[23][11]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[23][12]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[23][15]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[23][4]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[23][7]\ : label is "distributed";
  attribute RAM_STYLE of \ram_reg[23][8]\ : label is "distributed";
begin
  DI(15 downto 0) <= \^di\(15 downto 0);
  \out\(3 downto 0) <= current_state(3 downto 0);
\DADDR[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      O => \DADDR[6]_i_1_n_0\
    );
\DADDR[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      O => \DADDR[6]_i_2_n_0\
    );
\DADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DADDR[6]_i_2_n_0\,
      D => ram_do(32),
      Q => DADDR(0),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DADDR[6]_i_2_n_0\,
      D => ram_do(33),
      Q => DADDR(1),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DADDR[6]_i_2_n_0\,
      D => ram_do(34),
      Q => DADDR(2),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DADDR[6]_i_2_n_0\,
      D => ram_do(35),
      Q => DADDR(3),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DADDR[6]_i_2_n_0\,
      D => ram_do(36),
      Q => DADDR(4),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DADDR[6]_i_2_n_0\,
      D => ram_do(38),
      Q => DADDR(5),
      R => \DADDR[6]_i_1_n_0\
    );
DEN_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(1),
      O => next_den
    );
DEN_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_den,
      Q => DEN,
      R => '0'
    );
\DI[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(25),
      I1 => DO(0),
      I2 => current_state(0),
      I3 => ram_do(0),
      I4 => \^di\(0),
      O => \DI[0]_i_1_n_0\
    );
\DI[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(26),
      I1 => DO(7),
      I2 => current_state(0),
      I3 => ram_do(10),
      I4 => \^di\(10),
      O => \DI[10]_i_1_n_0\
    );
\DI[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(27),
      I1 => DO(8),
      I2 => current_state(0),
      I3 => ram_do(11),
      I4 => \^di\(11),
      O => \DI[11]_i_1_n_0\
    );
\DI[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(28),
      I1 => DO(9),
      I2 => current_state(0),
      I3 => ram_do(12),
      I4 => \^di\(12),
      O => \DI[12]_i_1_n_0\
    );
\DI[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(29),
      I1 => DO(10),
      I2 => current_state(0),
      I3 => ram_do(13),
      I4 => \^di\(13),
      O => \DI[13]_i_1_n_0\
    );
\DI[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(30),
      I1 => DO(11),
      I2 => current_state(0),
      I3 => ram_do(14),
      I4 => \^di\(14),
      O => \DI[14]_i_1_n_0\
    );
\DI[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(1),
      O => \DI[15]_i_1_n_0\
    );
\DI[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A4"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      O => \DI[15]_i_2_n_0\
    );
\DI[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(31),
      I1 => DO(12),
      I2 => current_state(0),
      I3 => ram_do(15),
      I4 => \^di\(15),
      O => \DI[15]_i_3_n_0\
    );
\DI[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(25),
      I1 => DO(1),
      I2 => current_state(0),
      I3 => ram_do(1),
      I4 => \^di\(1),
      O => \DI[1]_i_1_n_0\
    );
\DI[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(25),
      I1 => DO(2),
      I2 => current_state(0),
      I3 => ram_do(2),
      I4 => \^di\(2),
      O => \DI[2]_i_1_n_0\
    );
\DI[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(25),
      I1 => DO(3),
      I2 => current_state(0),
      I3 => ram_do(3),
      I4 => \^di\(3),
      O => \DI[3]_i_1_n_0\
    );
\DI[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^di\(4),
      I1 => ram_do(4),
      I2 => current_state(0),
      O => \DI[4]_i_1_n_0\
    );
\DI[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(25),
      I1 => DO(4),
      I2 => current_state(0),
      I3 => ram_do(5),
      I4 => \^di\(5),
      O => \DI[5]_i_1_n_0\
    );
\DI[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(25),
      I1 => DO(5),
      I2 => current_state(0),
      I3 => ram_do(6),
      I4 => \^di\(6),
      O => \DI[6]_i_1_n_0\
    );
\DI[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^di\(7),
      I1 => ram_do(7),
      I2 => current_state(0),
      O => \DI[7]_i_1_n_0\
    );
\DI[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^di\(8),
      I1 => ram_do(8),
      I2 => current_state(0),
      O => \DI[8]_i_1_n_0\
    );
\DI[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => ram_do(25),
      I1 => DO(6),
      I2 => current_state(0),
      I3 => ram_do(9),
      I4 => \^di\(9),
      O => \DI[9]_i_1_n_0\
    );
\DI_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[0]_i_1_n_0\,
      Q => \^di\(0),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[10]_i_1_n_0\,
      Q => \^di\(10),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[11]_i_1_n_0\,
      Q => \^di\(11),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[12]_i_1_n_0\,
      Q => \^di\(12),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[13]_i_1_n_0\,
      Q => \^di\(13),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[14]_i_1_n_0\,
      Q => \^di\(14),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[15]_i_3_n_0\,
      Q => \^di\(15),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[1]_i_1_n_0\,
      Q => \^di\(1),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[2]_i_1_n_0\,
      Q => \^di\(2),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[3]_i_1_n_0\,
      Q => \^di\(3),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[4]_i_1_n_0\,
      Q => \^di\(4),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[5]_i_1_n_0\,
      Q => \^di\(5),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[6]_i_1_n_0\,
      Q => \^di\(6),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[7]_i_1_n_0\,
      Q => \^di\(7),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[8]_i_1_n_0\,
      Q => \^di\(8),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[9]_i_1_n_0\,
      Q => \^di\(9),
      R => \DI[15]_i_1_n_0\
    );
DWE_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(1),
      O => next_dwe
    );
DWE_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_dwe,
      Q => DWE,
      R => '0'
    );
RST_MMCM_PLL_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => RST_MMCM_PLL_reg_0,
      Q => reset,
      R => '0'
    );
SRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => SRDY_reg_0,
      I3 => current_state(3),
      I4 => current_state(0),
      O => next_srdy
    );
SRDY_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_srdy,
      Q => SRDY,
      R => '0'
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFDFF0000"
    )
        port map (
      I0 => drdy,
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(3),
      I5 => \current_state[0]_i_2_n_0\,
      O => next_state(0)
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03034444FFCCFFFF"
    )
        port map (
      I0 => drdy,
      I1 => current_state(2),
      I2 => SEN,
      I3 => SRDY_reg_0,
      I4 => current_state(1),
      I5 => current_state(0),
      O => \current_state[0]_i_2_n_0\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03BBFF00"
    )
        port map (
      I0 => drdy,
      I1 => current_state(2),
      I2 => SEN,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \current_state[1]_i_2_n_0\
    );
\current_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => drdy,
      I1 => \current_state[1]_i_4_n_0\,
      I2 => current_state(0),
      I3 => current_state(2),
      I4 => current_state(1),
      O => \current_state[1]_i_3_n_0\
    );
\current_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => state_count(1),
      I1 => state_count(4),
      I2 => state_count(0),
      I3 => state_count(2),
      I4 => state_count(3),
      O => \current_state[1]_i_4_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0338003830303030"
    )
        port map (
      I0 => \current_state[2]_i_2_n_0\,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => SEN,
      I5 => current_state(0),
      O => next_state(2)
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => drdy,
      I1 => state_count(3),
      I2 => state_count(2),
      I3 => state_count(0),
      I4 => state_count(4),
      I5 => state_count(1),
      O => \current_state[2]_i_2_n_0\
    );
\current_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000040C"
    )
        port map (
      I0 => drdy,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      O => next_state(3)
    );
\current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state(0),
      Q => current_state(0),
      S => SR(0)
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state(1),
      Q => current_state(1),
      R => SR(0)
    );
\current_state_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \current_state[1]_i_2_n_0\,
      I1 => \current_state[1]_i_3_n_0\,
      O => next_state(1),
      S => current_state(3)
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state(2),
      Q => current_state(2),
      R => SR(0)
    );
\current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state(3),
      Q => current_state(3),
      R => SR(0)
    );
\ram[12][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"67"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(0),
      I1 => \ram_reg[12][5]_0\(1),
      I2 => \ram[13][7]_i_2_n_0\,
      O => \ram[12][0]_i_1_n_0\
    );
\ram[12][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAA5AAB"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(2),
      I1 => \ram[12][2]_i_2_n_0\,
      I2 => \ram_reg[12][5]_0\(1),
      I3 => \ram_reg[12][5]_0\(0),
      I4 => \ram_reg[12][5]_0\(3),
      O => \ram[12][1]_i_1_n_0\
    );
\ram[12][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAAAAB"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(3),
      I1 => \ram[12][2]_i_2_n_0\,
      I2 => \ram_reg[12][5]_0\(1),
      I3 => \ram_reg[12][5]_0\(0),
      I4 => \ram_reg[12][5]_0\(2),
      O => \ram[12][2]_i_1_n_0\
    );
\ram[12][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(5),
      I1 => \ram_reg[12][5]_0\(4),
      I2 => \ram_reg[12][5]_0\(7),
      I3 => \ram_reg[12][5]_0\(6),
      O => \ram[12][2]_i_2_n_0\
    );
\ram[12][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAA9AAF9AAA9AAA"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(4),
      I1 => \ram[12][4]_i_2_n_0\,
      I2 => \ram_reg[12][5]_0\(3),
      I3 => \ram_reg[12][5]_0\(2),
      I4 => \ram_reg[12][5]_0\(5),
      I5 => \ram[12][4]_i_3_n_0\,
      O => \ram[12][3]_i_1_n_0\
    );
\ram[12][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAF9AAAAAAA"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(5),
      I1 => \ram[12][4]_i_2_n_0\,
      I2 => \ram_reg[12][5]_0\(3),
      I3 => \ram_reg[12][5]_0\(2),
      I4 => \ram_reg[12][5]_0\(4),
      I5 => \ram[12][4]_i_3_n_0\,
      O => \ram[12][4]_i_1_n_0\
    );
\ram[12][4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(0),
      I1 => \ram_reg[12][5]_0\(1),
      O => \ram[12][4]_i_2_n_0\
    );
\ram[12][4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(1),
      I1 => \ram_reg[12][5]_0\(0),
      I2 => \ram_reg[12][5]_0\(7),
      I3 => \ram_reg[12][5]_0\(6),
      O => \ram[12][4]_i_3_n_0\
    );
\ram[12][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9AFF9A9A9A9A"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(6),
      I1 => \ram[12][5]_i_2_n_0\,
      I2 => \ram_reg[12][5]_0\(5),
      I3 => \ram[12][5]_i_3_n_0\,
      I4 => \ram_reg[12][5]_0\(7),
      I5 => \ram[12][5]_i_4_n_0\,
      O => \ram[12][5]_i_1_n_0\
    );
\ram[12][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(3),
      I1 => \ram_reg[12][5]_0\(1),
      I2 => \ram_reg[12][5]_0\(0),
      I3 => \ram_reg[12][5]_0\(2),
      I4 => \ram_reg[12][5]_0\(4),
      O => \ram[12][5]_i_2_n_0\
    );
\ram[12][5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(2),
      I1 => \ram_reg[12][5]_0\(3),
      O => \ram[12][5]_i_3_n_0\
    );
\ram[12][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(1),
      I1 => \ram_reg[12][5]_0\(0),
      I2 => \ram_reg[12][5]_0\(5),
      I3 => \ram_reg[12][5]_0\(4),
      O => \ram[12][5]_i_4_n_0\
    );
\ram[12][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(1),
      I1 => \ram[13][7]_i_2_n_0\,
      O => \ram[12][6]_i_1_n_0\
    );
\ram[13][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(1),
      I1 => \ram_reg[12][5]_0\(0),
      I2 => \ram[13][7]_i_2_n_0\,
      O => \ram[13][6]_i_1_n_0\
    );
\ram[13][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ram[13][7]_i_2_n_0\,
      I1 => \ram_reg[12][5]_0\(1),
      I2 => \ram_reg[12][5]_0\(0),
      O => \ram[13][7]_i_1_n_0\
    );
\ram[13][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ram_reg[12][5]_0\(6),
      I1 => \ram_reg[12][5]_0\(7),
      I2 => \ram_reg[12][5]_0\(4),
      I3 => \ram_reg[12][5]_0\(5),
      I4 => \ram_reg[12][5]_0\(3),
      I5 => \ram_reg[12][5]_0\(2),
      O => \ram[13][7]_i_2_n_0\
    );
\ram[14][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"67"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(0),
      I1 => \ram_reg[14][5]_0\(1),
      I2 => \ram[15][7]_i_2_n_0\,
      O => p_2_in(0)
    );
\ram[14][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAA5AAB"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(2),
      I1 => \ram[14][2]_i_2_n_0\,
      I2 => \ram_reg[14][5]_0\(1),
      I3 => \ram_reg[14][5]_0\(0),
      I4 => \ram_reg[14][5]_0\(3),
      O => p_2_in(1)
    );
\ram[14][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAAAAB"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(3),
      I1 => \ram[14][2]_i_2_n_0\,
      I2 => \ram_reg[14][5]_0\(1),
      I3 => \ram_reg[14][5]_0\(0),
      I4 => \ram_reg[14][5]_0\(2),
      O => p_2_in(2)
    );
\ram[14][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(5),
      I1 => \ram_reg[14][5]_0\(4),
      I2 => \ram_reg[14][5]_0\(7),
      I3 => \ram_reg[14][5]_0\(6),
      O => \ram[14][2]_i_2_n_0\
    );
\ram[14][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAA9AAF9AAA9AAA"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(4),
      I1 => \ram[14][4]_i_2_n_0\,
      I2 => \ram_reg[14][5]_0\(3),
      I3 => \ram_reg[14][5]_0\(2),
      I4 => \ram_reg[14][5]_0\(5),
      I5 => \ram[14][4]_i_3_n_0\,
      O => p_2_in(3)
    );
\ram[14][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAF9AAAAAAA"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(5),
      I1 => \ram[14][4]_i_2_n_0\,
      I2 => \ram_reg[14][5]_0\(3),
      I3 => \ram_reg[14][5]_0\(2),
      I4 => \ram_reg[14][5]_0\(4),
      I5 => \ram[14][4]_i_3_n_0\,
      O => p_2_in(4)
    );
\ram[14][4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(0),
      I1 => \ram_reg[14][5]_0\(1),
      O => \ram[14][4]_i_2_n_0\
    );
\ram[14][4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(1),
      I1 => \ram_reg[14][5]_0\(0),
      I2 => \ram_reg[14][5]_0\(7),
      I3 => \ram_reg[14][5]_0\(6),
      O => \ram[14][4]_i_3_n_0\
    );
\ram[14][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9AFF9A9A9A9A"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(6),
      I1 => \ram[14][5]_i_2_n_0\,
      I2 => \ram_reg[14][5]_0\(5),
      I3 => \ram[14][5]_i_3_n_0\,
      I4 => \ram_reg[14][5]_0\(7),
      I5 => \ram[14][5]_i_4_n_0\,
      O => p_2_in(5)
    );
\ram[14][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(3),
      I1 => \ram_reg[14][5]_0\(1),
      I2 => \ram_reg[14][5]_0\(0),
      I3 => \ram_reg[14][5]_0\(2),
      I4 => \ram_reg[14][5]_0\(4),
      O => \ram[14][5]_i_2_n_0\
    );
\ram[14][5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(2),
      I1 => \ram_reg[14][5]_0\(3),
      O => \ram[14][5]_i_3_n_0\
    );
\ram[14][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(1),
      I1 => \ram_reg[14][5]_0\(0),
      I2 => \ram_reg[14][5]_0\(5),
      I3 => \ram_reg[14][5]_0\(4),
      O => \ram[14][5]_i_4_n_0\
    );
\ram[14][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(1),
      I1 => \ram[15][7]_i_2_n_0\,
      O => p_2_in(6)
    );
\ram[15][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(1),
      I1 => \ram_reg[14][5]_0\(0),
      I2 => \ram[15][7]_i_2_n_0\,
      O => p_3_in(6)
    );
\ram[15][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ram[15][7]_i_2_n_0\,
      I1 => \ram_reg[14][5]_0\(1),
      I2 => \ram_reg[14][5]_0\(0),
      O => p_3_in(7)
    );
\ram[15][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ram_reg[14][5]_0\(6),
      I1 => \ram_reg[14][5]_0\(7),
      I2 => \ram_reg[14][5]_0\(4),
      I3 => \ram_reg[14][5]_0\(5),
      I4 => \ram_reg[14][5]_0\(3),
      I5 => \ram_reg[14][5]_0\(2),
      O => \ram[15][7]_i_2_n_0\
    );
\ram[16][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"67"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \ram[16][13]_i_2_n_0\,
      O => p_4_in(0)
    );
\ram[16][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \ram[16][13]_i_2_n_0\,
      O => p_4_in(12)
    );
\ram[16][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ram[16][13]_i_2_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      O => p_4_in(13)
    );
\ram[16][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(4),
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(2),
      O => \ram[16][13]_i_2_n_0\
    );
\ram[16][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAA5AAB"
    )
        port map (
      I0 => Q(2),
      I1 => \ram[16][2]_i_2_n_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => p_4_in(1)
    );
\ram[16][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAAAAB"
    )
        port map (
      I0 => Q(3),
      I1 => \ram[16][2]_i_2_n_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      O => p_4_in(2)
    );
\ram[16][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(7),
      I3 => Q(6),
      O => \ram[16][2]_i_2_n_0\
    );
\ram[16][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAA9AAF9AAA9AAA"
    )
        port map (
      I0 => Q(4),
      I1 => \ram[16][4]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(5),
      I5 => \ram[16][4]_i_3_n_0\,
      O => p_4_in(3)
    );
\ram[16][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAF9AAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => \ram[16][4]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(4),
      I5 => \ram[16][4]_i_3_n_0\,
      O => p_4_in(4)
    );
\ram[16][4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \ram[16][4]_i_2_n_0\
    );
\ram[16][4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(7),
      I3 => Q(6),
      O => \ram[16][4]_i_3_n_0\
    );
\ram[16][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9AFF9A9A9A9A"
    )
        port map (
      I0 => Q(6),
      I1 => \ram[16][5]_i_2_n_0\,
      I2 => Q(5),
      I3 => \ram[16][5]_i_3_n_0\,
      I4 => Q(7),
      I5 => \ram[16][5]_i_4_n_0\,
      O => p_4_in(5)
    );
\ram[16][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(4),
      O => \ram[16][5]_i_2_n_0\
    );
\ram[16][5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \ram[16][5]_i_3_n_0\
    );
\ram[16][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(5),
      I3 => Q(4),
      O => \ram[16][5]_i_4_n_0\
    );
\ram[16][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(1),
      I1 => \ram[16][13]_i_2_n_0\,
      O => p_4_in(6)
    );
\ram[17][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6762"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      I2 => Q(14),
      I3 => \ram[17][6]_i_2_n_0\,
      O => low_time(0)
    );
\ram[17][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"787B7848"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      I2 => Q(10),
      I3 => Q(14),
      I4 => \ram[17][1]_i_2_n_0\,
      O => low_time(1)
    );
\ram[17][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFF0001"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      I3 => Q(15),
      I4 => Q(10),
      I5 => Q(9),
      O => \ram[17][1]_i_2_n_0\
    );
\ram[17][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F807F8F7F807080"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      I2 => Q(8),
      I3 => Q(11),
      I4 => Q(14),
      I5 => \ram[17][2]_i_2_n_0\,
      O => low_time(2)
    );
\ram[17][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(15),
      I3 => Q(10),
      I4 => Q(9),
      I5 => Q(11),
      O => \ram[17][2]_i_2_n_0\
    );
\ram[17][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F807F8F7F807080"
    )
        port map (
      I0 => \ram[17][3]_i_2_n_0\,
      I1 => Q(11),
      I2 => Q(8),
      I3 => Q(12),
      I4 => Q(14),
      I5 => \ram[17][3]_i_3_n_0\,
      O => low_time(3)
    );
\ram[17][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(9),
      I1 => Q(10),
      O => \ram[17][3]_i_2_n_0\
    );
\ram[17][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => Q(13),
      I1 => Q(11),
      I2 => Q(9),
      I3 => Q(10),
      I4 => Q(15),
      I5 => Q(12),
      O => \ram[17][3]_i_3_n_0\
    );
\ram[17][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \ram[17][4]_i_2_n_0\,
      I1 => Q(8),
      I2 => Q(14),
      I3 => \ram[17][4]_i_3_n_0\,
      I4 => Q(13),
      O => low_time(4)
    );
\ram[17][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => Q(13),
      I1 => Q(11),
      I2 => Q(9),
      I3 => Q(10),
      I4 => Q(12),
      O => \ram[17][4]_i_2_n_0\
    );
\ram[17][4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Q(11),
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(15),
      I4 => Q(12),
      O => \ram[17][4]_i_3_n_0\
    );
\ram[17][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \ram[17][5]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[18][6]_i_2_n_0\,
      I3 => Q(14),
      O => low_time(5)
    );
\ram[17][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(14),
      I1 => Q(12),
      I2 => Q(10),
      I3 => Q(9),
      I4 => Q(11),
      I5 => Q(13),
      O => \ram[17][5]_i_2_n_0\
    );
\ram[17][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => Q(14),
      I2 => \ram[17][6]_i_2_n_0\,
      O => high_time(0)
    );
\ram[17][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFF0001"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      I3 => Q(15),
      I4 => Q(9),
      I5 => Q(10),
      O => \ram[17][6]_i_2_n_0\
    );
\ram[18][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(14),
      I1 => \ram[18][6]_i_2_n_0\,
      I2 => Q(8),
      O => no_count
    );
\ram[18][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(12),
      I1 => Q(15),
      I2 => Q(10),
      I3 => Q(9),
      I4 => Q(11),
      I5 => Q(13),
      O => \ram[18][6]_i_2_n_0\
    );
\ram[18][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => Q(14),
      I1 => \ram[18][7]_i_2_n_0\,
      I2 => Q(8),
      O => w_edge
    );
\ram[18][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(12),
      I1 => Q(15),
      I2 => Q(9),
      I3 => Q(10),
      I4 => Q(11),
      I5 => Q(13),
      O => \ram[18][7]_i_2_n_0\
    );
\ram[19][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][2]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[19][8]_i_2_n_0\,
      O => p_7_in(0)
    );
\ram[19][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][3]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[19][9]_i_2_n_0\,
      O => p_7_in(1)
    );
\ram[19][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][4]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[20][10]_i_2_n_0\,
      O => p_7_in(2)
    );
\ram[19][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][5]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[20][11]_i_2_n_0\,
      O => p_7_in(3)
    );
\ram[19][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][6]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[20][12]_i_2_n_0\,
      O => p_7_in(4)
    );
\ram[19][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][7]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[20][13]_i_2_n_0\,
      O => p_7_in(5)
    );
\ram[19][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][8]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[20][14]_i_2_n_0\,
      O => p_7_in(6)
    );
\ram[19][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][9]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[21][10]_i_2_n_0\,
      O => p_7_in(7)
    );
\ram[19][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[19][8]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][11]_i_2_n_0\,
      O => p_7_in(8)
    );
\ram[19][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42C5290A42C43109"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[19][8]_i_2_n_0\
    );
\ram[19][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[19][9]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][12]_i_2_n_0\,
      O => p_7_in(9)
    );
\ram[19][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"737331E79F9C8EB8"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[19][9]_i_2_n_0\
    );
\ram[20][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][0]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[20][8]_i_2_n_0\,
      O => p_8_in(0)
    );
\ram[20][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF677C18CFDC7BF7"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_11\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[20][0]_i_2_n_0\
    );
\ram[20][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][10]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][13]_i_2_n_0\,
      O => p_8_in(10)
    );
\ram[20][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"650800A0651AAA75"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_12\,
      I2 => \ram_reg[21][14]_i_4_n_14\,
      I3 => \ram_reg[21][14]_i_4_n_13\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[20][10]_i_2_n_0\
    );
\ram[20][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][11]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][14]_i_2_n_0\,
      O => p_8_in(11)
    );
\ram[20][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33BBDDEE9E57E3F9"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_10\,
      I3 => \ram_reg[21][14]_i_4_n_13\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[20][11]_i_2_n_0\
    );
\ram[20][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][12]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[20][12]_i_3_n_0\,
      O => p_8_in(12)
    );
\ram[20][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333319F7DFDEC63D"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[20][12]_i_2_n_0\
    );
\ram[20][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE70CE73E3199EE7"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[20][12]_i_3_n_0\
    );
\ram[20][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][13]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[20][13]_i_3_n_0\,
      O => p_8_in(13)
    );
\ram[20][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B6B5A5AB5D6A5B5"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[20][13]_i_2_n_0\
    );
\ram[20][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAC561A6A6B94C6"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[20][13]_i_3_n_0\
    );
\ram[20][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][14]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[20][14]_i_3_n_0\,
      O => p_8_in(14)
    );
\ram[20][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF3AEF39D6BDDE77"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[20][14]_i_2_n_0\
    );
\ram[20][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCEF5AF7BCEF39CE"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[20][14]_i_3_n_0\
    );
\ram[20][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][1]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[20][9]_i_2_n_0\,
      O => p_8_in(1)
    );
\ram[20][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD6AD695AD6B5AD6"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[20][1]_i_2_n_0\
    );
\ram[20][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][2]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][0]_i_2_n_0\,
      O => p_8_in(2)
    );
\ram[20][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCEB5AF7BCE779DE"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[20][2]_i_2_n_0\
    );
\ram[20][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][3]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][1]_i_2_n_0\,
      O => p_8_in(3)
    );
\ram[20][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAC52186A6BB5D6"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[20][3]_i_2_n_0\
    );
\ram[20][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][4]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][2]_i_2_n_0\,
      O => p_8_in(4)
    );
\ram[20][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"229954221148AD46"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_10\,
      I3 => \ram_reg[21][14]_i_4_n_13\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[20][4]_i_2_n_0\
    );
\ram[20][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][5]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][3]_i_2_n_0\,
      O => p_8_in(5)
    );
\ram[20][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3939F3EF1C7BC68E"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[20][5]_i_2_n_0\
    );
\ram[20][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][6]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][4]_i_2_n_0\,
      O => p_8_in(6)
    );
\ram[20][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D600D6A94815AD4"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[20][6]_i_2_n_0\
    );
\ram[20][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][7]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][5]_i_2_n_0\,
      O => p_8_in(7)
    );
\ram[20][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99EB99EF5A777BDE"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[20][7]_i_2_n_0\
    );
\ram[20][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][8]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][6]_i_2_n_0\,
      O => p_8_in(8)
    );
\ram[20][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"398CC367397BCE9E"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_11\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[20][8]_i_2_n_0\
    );
\ram[20][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[20][9]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][7]_i_2_n_0\,
      O => p_8_in(9)
    );
\ram[20][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1A95A52B1AC6B18"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[20][9]_i_2_n_0\
    );
\ram[21][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][0]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][8]_i_2_n_0\,
      O => p_9_in(0)
    );
\ram[21][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F36BE7BDBCDE3B"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[21][0]_i_2_n_0\
    );
\ram[21][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][10]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][10]_i_3_n_0\,
      O => p_9_in(10)
    );
\ram[21][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66BB11AA9C46A3D5"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_10\,
      I3 => \ram_reg[21][14]_i_4_n_13\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][10]_i_2_n_0\
    );
\ram[21][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A56A56B4A56B58C6"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][10]_i_3_n_0\
    );
\ram[21][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][11]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][11]_i_3_n_0\,
      O => p_9_in(11)
    );
\ram[21][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A545085862935"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][11]_i_2_n_0\
    );
\ram[21][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2162216294851884"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][11]_i_3_n_0\
    );
\ram[21][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][12]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][12]_i_3_n_0\,
      O => p_9_in(12)
    );
\ram[21][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E7C8E7BC731DEE3"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][12]_i_2_n_0\
    );
\ram[21][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3998CFC73973CEDC"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_11\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][12]_i_3_n_0\
    );
\ram[21][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][13]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][13]_i_3_n_0\,
      O => p_9_in(13)
    );
\ram[21][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4358435A252096B5"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][13]_i_2_n_0\
    );
\ram[21][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"29480404294B52D6"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][13]_i_3_n_0\
    );
\ram[21][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][14]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][14]_i_3_n_0\,
      O => p_9_in(14)
    );
\ram[21][14]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3996"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(9),
      I3 => Q(10),
      O => \ram[21][14]_i_10_n_0\
    );
\ram[21][14]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      I2 => Q(9),
      O => \ram[21][14]_i_11_n_0\
    );
\ram[21][14]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(9),
      I1 => Q(10),
      I2 => Q(8),
      O => \ram[21][14]_i_12_n_0\
    );
\ram[21][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6D6E6DE7A9D7BF7"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_11\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[21][14]_i_2_n_0\
    );
\ram[21][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9DEF9DEF4AF7739C"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][14]_i_3_n_0\
    );
\ram[21][14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557FAA80"
    )
        port map (
      I0 => Q(12),
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(11),
      I4 => Q(13),
      O => \ram[21][14]_i_5_n_0\
    );
\ram[21][14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA95"
    )
        port map (
      I0 => Q(12),
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(11),
      O => \ram[21][14]_i_6_n_0\
    );
\ram[21][14]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      O => \ram[21][14]_i_7_n_0\
    );
\ram[21][14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA6A6A666696969"
    )
        port map (
      I0 => Q(14),
      I1 => Q(13),
      I2 => Q(11),
      I3 => Q(10),
      I4 => Q(9),
      I5 => Q(12),
      O => \ram[21][14]_i_8_n_0\
    );
\ram[21][14]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"699A9A9A"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      I3 => Q(10),
      I4 => Q(9),
      O => \ram[21][14]_i_9_n_0\
    );
\ram[21][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][1]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][9]_i_2_n_0\,
      O => p_9_in(1)
    );
\ram[21][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595A9AD5A63D21A"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][1]_i_2_n_0\
    );
\ram[21][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][2]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][2]_i_3_n_0\,
      O => p_9_in(2)
    );
\ram[21][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"885588A856221142"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_10\,
      I3 => \ram_reg[21][14]_i_4_n_13\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][2]_i_2_n_0\
    );
\ram[21][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14140A0CA9A1526B"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[21][2]_i_3_n_0\
    );
\ram[21][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][3]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][3]_i_3_n_0\,
      O => p_9_in(3)
    );
\ram[21][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DA4F0DF8F87F1F85"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_11\,
      I2 => \ram_reg[21][14]_i_4_n_14\,
      I3 => \ram_reg[21][14]_i_4_n_13\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][3]_i_2_n_0\
    );
\ram[21][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C1C8EBDF9F763C7"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[21][3]_i_3_n_0\
    );
\ram[21][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][4]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][4]_i_3_n_0\,
      O => p_9_in(4)
    );
\ram[21][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5201010A52D4B5A"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][4]_i_2_n_0\
    );
\ram[21][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"86B04A4086B52D6A"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][4]_i_3_n_0\
    );
\ram[21][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][5]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][5]_i_3_n_0\,
      O => p_9_in(5)
    );
\ram[21][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77BD2BDE77BDCE73"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][5]_i_2_n_0\
    );
\ram[21][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCABDDFF573EBF"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_10\,
      I3 => \ram_reg[21][14]_i_4_n_13\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[21][5]_i_3_n_0\
    );
\ram[21][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][6]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][6]_i_3_n_0\,
      O => p_9_in(6)
    );
\ram[21][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6733BE8C67EEBD7B"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_11\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][6]_i_2_n_0\
    );
\ram[21][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C9CC63DE1E733CF"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_10\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[21][6]_i_3_n_0\
    );
\ram[21][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][7]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][7]_i_3_n_0\,
      O => p_9_in(7)
    );
\ram[21][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D6B56B4AD6B5AD6B"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_11\,
      I5 => \ram_reg[21][14]_i_4_n_10\,
      O => \ram[21][7]_i_2_n_0\
    );
\ram[21][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"58D458D6AD29358C"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][7]_i_3_n_0\
    );
\ram[21][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][8]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][8]_i_3_n_0\,
      O => p_9_in(8)
    );
\ram[21][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DEADDEBC757B73EF"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_11\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_12\,
      O => \ram[21][8]_i_2_n_0\
    );
\ram[21][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7799DDEEB753E9FD"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_10\,
      I3 => \ram_reg[21][14]_i_4_n_13\,
      I4 => \ram_reg[21][14]_i_4_n_12\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][8]_i_3_n_0\
    );
\ram[21][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[21][9]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[21][9]_i_3_n_0\,
      O => p_9_in(9)
    );
\ram[21][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D635D635295A8C6B"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_13\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_10\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][9]_i_2_n_0\
    );
\ram[21][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44DDAA46AB68D19D"
    )
        port map (
      I0 => \ram_reg[23][15]_i_4_n_15\,
      I1 => \ram_reg[21][14]_i_4_n_14\,
      I2 => \ram_reg[21][14]_i_4_n_10\,
      I3 => \ram_reg[21][14]_i_4_n_12\,
      I4 => \ram_reg[21][14]_i_4_n_13\,
      I5 => \ram_reg[21][14]_i_4_n_11\,
      O => \ram[21][9]_i_3_n_0\
    );
\ram[22][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[23][15]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[22][15]_i_2_n_0\,
      O => p_10_in(11)
    );
\ram[22][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[22][12]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[22][12]_i_3_n_0\,
      O => p_10_in(12)
    );
\ram[22][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FB35FB4CE47B72D"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_12\,
      I4 => \ram_reg[23][15]_i_4_n_10\,
      I5 => \ram_reg[23][15]_i_4_n_11\,
      O => \ram[22][12]_i_2_n_0\
    );
\ram[22][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7B7B799F7B7BFCEF"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_10\,
      I4 => \ram_reg[23][15]_i_4_n_11\,
      I5 => \ram_reg[23][15]_i_4_n_12\,
      O => \ram[22][12]_i_3_n_0\
    );
\ram[22][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[22][15]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[22][15]_i_3_n_0\,
      O => p_10_in(15)
    );
\ram[22][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8CCB87D89538F6B"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_11\,
      I4 => \ram_reg[23][15]_i_4_n_10\,
      I5 => \ram_reg[23][15]_i_4_n_12\,
      O => \ram[22][15]_i_2_n_0\
    );
\ram[22][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6D73B9EE6D4E6B5"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_12\,
      I4 => \ram_reg[23][15]_i_4_n_11\,
      I5 => \ram_reg[23][15]_i_4_n_10\,
      O => \ram[22][15]_i_3_n_0\
    );
\ram[22][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[23][12]_i_3_n_0\,
      I1 => Q(8),
      I2 => \ram[22][12]_i_2_n_0\,
      O => p_10_in(8)
    );
\ram[23][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[23][11]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[23][15]_i_2_n_0\,
      O => p_11_in(11)
    );
\ram[23][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B5CEE7B9B539AD6"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_12\,
      I4 => \ram_reg[23][15]_i_4_n_11\,
      I5 => \ram_reg[23][15]_i_4_n_10\,
      O => \ram[23][11]_i_2_n_0\
    );
\ram[23][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[23][12]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[23][12]_i_3_n_0\,
      O => p_11_in(12)
    );
\ram[23][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6B6F7F99865CEEA"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_12\,
      I3 => \ram_reg[23][15]_i_4_n_10\,
      I4 => \ram_reg[23][15]_i_4_n_13\,
      I5 => \ram_reg[23][15]_i_4_n_11\,
      O => \ram[23][12]_i_2_n_0\
    );
\ram[23][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF3FD66673F8F"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_10\,
      I3 => \ram_reg[23][15]_i_4_n_12\,
      I4 => \ram_reg[23][15]_i_4_n_11\,
      I5 => \ram_reg[23][15]_i_4_n_13\,
      O => \ram[23][12]_i_3_n_0\
    );
\ram[23][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[23][15]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[23][15]_i_3_n_0\,
      O => p_11_in(15)
    );
\ram[23][15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3996"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(9),
      I3 => Q(10),
      O => \ram[23][15]_i_10_n_0\
    );
\ram[23][15]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      I2 => Q(9),
      O => \ram[23][15]_i_11_n_0\
    );
\ram[23][15]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(9),
      I1 => Q(10),
      I2 => Q(8),
      O => \ram[23][15]_i_12_n_0\
    );
\ram[23][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"719813A771FA1ED6"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_11\,
      I4 => \ram_reg[23][15]_i_4_n_12\,
      I5 => \ram_reg[23][15]_i_4_n_10\,
      O => \ram[23][15]_i_2_n_0\
    );
\ram[23][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD77CDCDAE3DA96B"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_11\,
      I4 => \ram_reg[23][15]_i_4_n_10\,
      I5 => \ram_reg[23][15]_i_4_n_12\,
      O => \ram[23][15]_i_3_n_0\
    );
\ram[23][15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557FAA80"
    )
        port map (
      I0 => Q(12),
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(11),
      I4 => Q(13),
      O => \ram[23][15]_i_5_n_0\
    );
\ram[23][15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA95"
    )
        port map (
      I0 => Q(12),
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(11),
      O => \ram[23][15]_i_6_n_0\
    );
\ram[23][15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      O => \ram[23][15]_i_7_n_0\
    );
\ram[23][15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA6A6A666696969"
    )
        port map (
      I0 => Q(14),
      I1 => Q(13),
      I2 => Q(11),
      I3 => Q(10),
      I4 => Q(9),
      I5 => Q(12),
      O => \ram[23][15]_i_8_n_0\
    );
\ram[23][15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"699A9A9A"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(11),
      I3 => Q(10),
      I4 => Q(9),
      O => \ram[23][15]_i_9_n_0\
    );
\ram[23][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[23][4]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[23][8]_i_2_n_0\,
      O => p_11_in(4)
    );
\ram[23][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7ECF7ED2391DDCB5"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_12\,
      I4 => \ram_reg[23][15]_i_4_n_10\,
      I5 => \ram_reg[23][15]_i_4_n_11\,
      O => \ram[23][4]_i_2_n_0\
    );
\ram[23][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[23][7]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[23][11]_i_2_n_0\,
      O => p_11_in(7)
    );
\ram[23][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E227314EE23DF5AD"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_12\,
      I4 => \ram_reg[23][15]_i_4_n_11\,
      I5 => \ram_reg[23][15]_i_4_n_10\,
      O => \ram[23][7]_i_2_n_0\
    );
\ram[23][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram[23][8]_i_2_n_0\,
      I1 => Q(8),
      I2 => \ram[23][12]_i_2_n_0\,
      O => p_11_in(8)
    );
\ram[23][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDE7ED7FEDF1EEBF"
    )
        port map (
      I0 => Q(9),
      I1 => \ram_reg[23][15]_i_4_n_14\,
      I2 => \ram_reg[23][15]_i_4_n_13\,
      I3 => \ram_reg[23][15]_i_4_n_11\,
      I4 => \ram_reg[23][15]_i_4_n_10\,
      I5 => \ram_reg[23][15]_i_4_n_12\,
      O => \ram[23][8]_i_2_n_0\
    );
\ram_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_addr(0),
      O => \ram_addr[0]_i_1_n_0\
    );
\ram_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ram_addr(0),
      I1 => ram_addr(1),
      O => \ram_addr[1]_i_1_n_0\
    );
\ram_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08A8A808A808A808"
    )
        port map (
      I0 => current_state(1),
      I1 => config_reg(0),
      I2 => current_state(2),
      I3 => ram_addr(2),
      I4 => ram_addr(1),
      I5 => ram_addr(0),
      O => next_ram_addr(2)
    );
\ram_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444004"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => SEN,
      O => \ram_addr[3]_i_1_n_0\
    );
\ram_addr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08A8A808A808A808"
    )
        port map (
      I0 => current_state(1),
      I1 => config_reg(0),
      I2 => current_state(2),
      I3 => ram_addr(3),
      I4 => ram_addr(2),
      I5 => \ram_addr[3]_i_3_n_0\,
      O => next_ram_addr(3)
    );
\ram_addr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ram_addr(1),
      I1 => ram_addr(0),
      O => \ram_addr[3]_i_3_n_0\
    );
\ram_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ram_addr(2),
      I1 => ram_addr(0),
      I2 => ram_addr(1),
      I3 => ram_addr(3),
      I4 => ram_addr(4),
      O => \ram_addr[4]_i_1_n_0\
    );
\ram_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B0"
    )
        port map (
      I0 => SEN,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \ram_addr[5]_i_1_n_0\
    );
\ram_addr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(1),
      I2 => ram_addr(0),
      I3 => ram_addr(2),
      I4 => ram_addr(4),
      I5 => ram_addr(5),
      O => \ram_addr[5]_i_2_n_0\
    );
\ram_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \ram_addr[3]_i_1_n_0\,
      D => \ram_addr[0]_i_1_n_0\,
      Q => ram_addr(0),
      R => \ram_addr[5]_i_1_n_0\
    );
\ram_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \ram_addr[3]_i_1_n_0\,
      D => \ram_addr[1]_i_1_n_0\,
      Q => ram_addr(1),
      R => \ram_addr[5]_i_1_n_0\
    );
\ram_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \ram_addr[3]_i_1_n_0\,
      D => next_ram_addr(2),
      Q => ram_addr(2),
      R => '0'
    );
\ram_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \ram_addr[3]_i_1_n_0\,
      D => next_ram_addr(3),
      Q => ram_addr(3),
      R => '0'
    );
\ram_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \ram_addr[3]_i_1_n_0\,
      D => \ram_addr[4]_i_1_n_0\,
      Q => ram_addr(4),
      R => \ram_addr[5]_i_1_n_0\
    );
\ram_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \ram_addr[3]_i_1_n_0\,
      D => \ram_addr[5]_i_2_n_0\,
      Q => ram_addr(5),
      R => \ram_addr[5]_i_1_n_0\
    );
\ram_do[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[0]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[0]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[0]_i_4_n_0\,
      O => \ram_do[0]_i_1_n_0\
    );
\ram_do[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0000F0A00FC0F0"
    )
        port map (
      I0 => \ram_reg[14]_38\(0),
      I1 => \ram_reg[12]_40\(0),
      I2 => ram_addr(3),
      I3 => ram_addr(2),
      I4 => ram_addr(1),
      I5 => ram_addr(0),
      O => \ram_do[0]_i_2_n_0\
    );
\ram_do[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[20]_32\(0),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(0),
      I3 => ram_addr(1),
      O => \ram_do[0]_i_3_n_0\
    );
\ram_do[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[19]_33\(0),
      I1 => ram_addr(1),
      I2 => \ram_reg[17]_35\(0),
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(0),
      O => \ram_do[0]_i_4_n_0\
    );
\ram_do[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[10]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[10]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[10]_i_4_n_0\,
      O => \ram_do[10]_i_1_n_0\
    );
\ram_do[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A2028202220202"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(1),
      I2 => ram_addr(2),
      I3 => ram_addr(0),
      I4 => \ram_reg[12]_40\(10),
      I5 => \ram_reg[14]_38\(10),
      O => \ram_do[10]_i_2_n_0\
    );
\ram_do[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[20]_32\(10),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(10),
      I3 => ram_addr(1),
      O => \ram_do[10]_i_3_n_0\
    );
\ram_do[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[16]_36\(10),
      I1 => ram_addr(0),
      I2 => \ram_reg[17]_35\(10),
      I3 => ram_addr(1),
      O => \ram_do[10]_i_4_n_0\
    );
\ram_do[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[11]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[11]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[11]_i_4_n_0\,
      O => \ram_do[11]_i_1_n_0\
    );
\ram_do[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222A2AAA222"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(2),
      I2 => \ram_reg[14]_38\(11),
      I3 => ram_addr(1),
      I4 => \ram_reg[12]_40\(11),
      I5 => ram_addr(0),
      O => \ram_do[11]_i_2_n_0\
    );
\ram_do[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[23]_29\(11),
      I1 => \ram_reg[22]_30\(11),
      I2 => ram_addr(1),
      I3 => \ram_reg[21]_31\(11),
      I4 => ram_addr(0),
      I5 => \ram_reg[20]_32\(11),
      O => \ram_do[11]_i_3_n_0\
    );
\ram_do[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[16]_36\(11),
      I1 => ram_addr(0),
      I2 => \ram_reg[17]_35\(11),
      I3 => ram_addr(1),
      O => \ram_do[11]_i_4_n_0\
    );
\ram_do[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40664022"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => \ram_do[12]_i_2_n_0\,
      I3 => ram_addr(2),
      I4 => \ram_do[12]_i_3_n_0\,
      O => \ram_do[12]_i_1_n_0\
    );
\ram_do[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[23]_29\(12),
      I1 => \ram_reg[22]_30\(12),
      I2 => ram_addr(1),
      I3 => \ram_reg[21]_31\(12),
      I4 => ram_addr(0),
      I5 => \ram_reg[20]_32\(12),
      O => \ram_do[12]_i_2_n_0\
    );
\ram_do[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ram_addr(0),
      I1 => \ram_reg[16]_36\(12),
      I2 => ram_addr(1),
      O => \ram_do[12]_i_3_n_0\
    );
\ram_do[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF831800008318"
    )
        port map (
      I0 => ram_addr(0),
      I1 => ram_addr(1),
      I2 => ram_addr(2),
      I3 => ram_addr(3),
      I4 => ram_addr(4),
      I5 => \ram_do[13]_i_2_n_0\,
      O => \ram_do[13]_i_1_n_0\
    );
\ram_do[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AFC0A0"
    )
        port map (
      I0 => \ram_reg[20]_32\(13),
      I1 => \ram_reg[21]_31\(13),
      I2 => \ram_do[15]_i_2_n_0\,
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(13),
      I5 => ram_addr(1),
      O => \ram_do[13]_i_2_n_0\
    );
\ram_do[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F80005800800058"
    )
        port map (
      I0 => ram_addr(1),
      I1 => ram_addr(0),
      I2 => ram_addr(3),
      I3 => ram_addr(4),
      I4 => ram_addr(2),
      I5 => \ram_do[14]_i_2_n_0\,
      O => \ram_do[14]_i_1_n_0\
    );
\ram_do[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[20]_32\(14),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(14),
      I3 => ram_addr(1),
      O => \ram_do[14]_i_2_n_0\
    );
\ram_do[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8080000"
    )
        port map (
      I0 => ram_addr(1),
      I1 => \ram_reg[22]_30\(15),
      I2 => ram_addr(0),
      I3 => \ram_reg[23]_29\(15),
      I4 => \ram_do[15]_i_2_n_0\,
      I5 => \ram_do[15]_i_3_n_0\,
      O => \ram_do[15]_i_1_n_0\
    );
\ram_do[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => ram_addr(4),
      I1 => ram_addr(2),
      I2 => ram_addr(3),
      O => \ram_do[15]_i_2_n_0\
    );
\ram_do[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      O => \ram_do[15]_i_3_n_0\
    );
\ram_do[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[1]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[1]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[1]_i_4_n_0\,
      O => \ram_do[1]_i_1_n_0\
    );
\ram_do[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A00088FF"
    )
        port map (
      I0 => ram_addr(2),
      I1 => \ram_reg[12]_40\(1),
      I2 => \ram_reg[14]_38\(1),
      I3 => ram_addr(3),
      I4 => ram_addr(1),
      I5 => ram_addr(0),
      O => \ram_do[1]_i_2_n_0\
    );
\ram_do[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[20]_32\(1),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(1),
      I3 => ram_addr(1),
      O => \ram_do[1]_i_3_n_0\
    );
\ram_do[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[19]_33\(1),
      I1 => ram_addr(1),
      I2 => \ram_reg[17]_35\(1),
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(1),
      O => \ram_do[1]_i_4_n_0\
    );
\ram_do[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42000000"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(2),
      I3 => ram_addr(0),
      I4 => ram_addr(1),
      O => \ram_do[25]_i_1_n_0\
    );
\ram_do[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(1),
      I3 => ram_addr(0),
      O => \ram_do[26]_i_1_n_0\
    );
\ram_do[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30005000"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(0),
      I3 => ram_addr(1),
      I4 => ram_addr(2),
      O => \ram_do[27]_i_1_n_0\
    );
\ram_do[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B0C3203"
    )
        port map (
      I0 => ram_addr(1),
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => ram_addr(0),
      I4 => ram_addr(2),
      O => \ram_do[28]_i_1_n_0\
    );
\ram_do[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"36000000"
    )
        port map (
      I0 => ram_addr(2),
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => ram_addr(1),
      I4 => ram_addr(0),
      O => \ram_do[29]_i_1_n_0\
    );
\ram_do[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[2]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[2]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[2]_i_4_n_0\,
      O => \ram_do[2]_i_1_n_0\
    );
\ram_do[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A8000000000"
    )
        port map (
      I0 => ram_addr(3),
      I1 => \ram_reg[14]_38\(2),
      I2 => ram_addr(1),
      I3 => \ram_reg[12]_40\(2),
      I4 => ram_addr(0),
      I5 => ram_addr(2),
      O => \ram_do[2]_i_2_n_0\
    );
\ram_do[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[20]_32\(2),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(2),
      I3 => ram_addr(1),
      O => \ram_do[2]_i_3_n_0\
    );
\ram_do[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[19]_33\(2),
      I1 => ram_addr(1),
      I2 => \ram_reg[17]_35\(2),
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(2),
      O => \ram_do[2]_i_4_n_0\
    );
\ram_do[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56000014"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(2),
      I3 => ram_addr(1),
      I4 => ram_addr(0),
      O => \ram_do[30]_i_1_n_0\
    );
\ram_do[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35631456"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(2),
      I3 => ram_addr(1),
      I4 => ram_addr(0),
      O => \ram_do[31]_i_1_n_0\
    );
\ram_do[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"63211442"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(2),
      I3 => ram_addr(1),
      I4 => ram_addr(0),
      O => \ram_do[32]_i_1_n_0\
    );
\ram_do[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"63634214"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(2),
      I3 => ram_addr(0),
      I4 => ram_addr(1),
      O => \ram_do[33]_i_1_n_0\
    );
\ram_do[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42561414"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(2),
      I3 => ram_addr(0),
      I4 => ram_addr(1),
      O => \ram_do[34]_i_1_n_0\
    );
\ram_do[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7763636B"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(2),
      I3 => ram_addr(0),
      I4 => ram_addr(1),
      O => \ram_do[35]_i_1_n_0\
    );
\ram_do[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1546"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(1),
      I3 => ram_addr(2),
      O => \ram_do[36]_i_1_n_0\
    );
\ram_do[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4200"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(4),
      I2 => ram_addr(2),
      I3 => ram_addr(1),
      O => \ram_do[38]_i_1_n_0\
    );
\ram_do[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[3]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[3]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[3]_i_4_n_0\,
      O => \ram_do[3]_i_1_n_0\
    );
\ram_do[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FF0A000C000"
    )
        port map (
      I0 => \ram_reg[14]_38\(3),
      I1 => \ram_reg[12]_40\(3),
      I2 => ram_addr(3),
      I3 => ram_addr(2),
      I4 => ram_addr(1),
      I5 => ram_addr(0),
      O => \ram_do[3]_i_2_n_0\
    );
\ram_do[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[20]_32\(3),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(3),
      I3 => ram_addr(1),
      O => \ram_do[3]_i_3_n_0\
    );
\ram_do[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[19]_33\(3),
      I1 => ram_addr(1),
      I2 => \ram_reg[17]_35\(3),
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(3),
      O => \ram_do[3]_i_4_n_0\
    );
\ram_do[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[4]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[4]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[4]_i_4_n_0\,
      O => \ram_do[4]_i_1_n_0\
    );
\ram_do[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0A0000000C000"
    )
        port map (
      I0 => \ram_reg[14]_38\(4),
      I1 => \ram_reg[12]_40\(4),
      I2 => ram_addr(3),
      I3 => ram_addr(2),
      I4 => ram_addr(0),
      I5 => ram_addr(1),
      O => \ram_do[4]_i_2_n_0\
    );
\ram_do[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[23]_29\(4),
      I1 => ram_addr(1),
      I2 => \ram_reg[21]_31\(4),
      I3 => ram_addr(0),
      I4 => \ram_reg[20]_32\(4),
      O => \ram_do[4]_i_3_n_0\
    );
\ram_do[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[19]_33\(4),
      I1 => ram_addr(1),
      I2 => \ram_reg[17]_35\(4),
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(4),
      O => \ram_do[4]_i_4_n_0\
    );
\ram_do[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[5]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[5]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[5]_i_4_n_0\,
      O => \ram_do[5]_i_1_n_0\
    );
\ram_do[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00A00000F0C000"
    )
        port map (
      I0 => \ram_reg[14]_38\(5),
      I1 => \ram_reg[12]_40\(5),
      I2 => ram_addr(3),
      I3 => ram_addr(2),
      I4 => ram_addr(0),
      I5 => ram_addr(1),
      O => \ram_do[5]_i_2_n_0\
    );
\ram_do[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[20]_32\(5),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(5),
      I3 => ram_addr(1),
      O => \ram_do[5]_i_3_n_0\
    );
\ram_do[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[19]_33\(5),
      I1 => ram_addr(1),
      I2 => \ram_reg[17]_35\(5),
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(5),
      O => \ram_do[5]_i_4_n_0\
    );
\ram_do[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ram_reg[20]_32\(6),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(6),
      I3 => ram_addr(1),
      I4 => \ram_do[15]_i_2_n_0\,
      I5 => \ram_do[6]_i_4_n_0\,
      O => \ram_do[6]_i_2_n_0\
    );
\ram_do[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5150C4340100C434"
    )
        port map (
      I0 => ram_addr(4),
      I1 => ram_addr(1),
      I2 => ram_addr(2),
      I3 => ram_addr(0),
      I4 => ram_addr(3),
      I5 => \ram_do[6]_i_5_n_0\,
      O => \ram_do[6]_i_3_n_0\
    );
\ram_do[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[19]_33\(6),
      I1 => \ram_reg[18]_34\(6),
      I2 => ram_addr(1),
      I3 => \ram_reg[17]_35\(6),
      I4 => ram_addr(0),
      I5 => \ram_reg[16]_36\(6),
      O => \ram_do[6]_i_4_n_0\
    );
\ram_do[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[15]_37\(6),
      I1 => \ram_reg[14]_38\(6),
      I2 => ram_addr(1),
      I3 => \ram_reg[13]_39\(6),
      I4 => ram_addr(0),
      I5 => \ram_reg[12]_40\(6),
      O => \ram_do[6]_i_5_n_0\
    );
\ram_do[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8ABABABA8A8A8A"
    )
        port map (
      I0 => \ram_do[7]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[7]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[7]_i_4_n_0\,
      O => \ram_do[7]_i_1_n_0\
    );
\ram_do[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5544000111000001"
    )
        port map (
      I0 => ram_addr(4),
      I1 => ram_addr(2),
      I2 => ram_addr(1),
      I3 => ram_addr(0),
      I4 => ram_addr(3),
      I5 => \ram_do[7]_i_5_n_0\,
      O => \ram_do[7]_i_2_n_0\
    );
\ram_do[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[23]_29\(7),
      I1 => ram_addr(1),
      I2 => \ram_reg[21]_31\(7),
      I3 => ram_addr(0),
      I4 => \ram_reg[20]_32\(7),
      O => \ram_do[7]_i_3_n_0\
    );
\ram_do[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[19]_33\(7),
      I1 => \ram_reg[18]_34\(7),
      I2 => ram_addr(1),
      I3 => \ram_reg[17]_35\(7),
      I4 => ram_addr(0),
      I5 => \ram_reg[16]_36\(7),
      O => \ram_do[7]_i_4_n_0\
    );
\ram_do[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[15]_37\(7),
      I1 => \ram_reg[14]_38\(7),
      I2 => ram_addr(1),
      I3 => \ram_reg[13]_39\(7),
      I4 => ram_addr(0),
      I5 => \ram_reg[12]_40\(7),
      O => \ram_do[7]_i_5_n_0\
    );
\ram_do[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[8]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[8]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[8]_i_4_n_0\,
      O => \ram_do[8]_i_1_n_0\
    );
\ram_do[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A28082802280028"
    )
        port map (
      I0 => ram_addr(3),
      I1 => ram_addr(1),
      I2 => ram_addr(0),
      I3 => ram_addr(2),
      I4 => \ram_reg[12]_40\(8),
      I5 => \ram_reg[14]_38\(8),
      O => \ram_do[8]_i_2_n_0\
    );
\ram_do[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[23]_29\(8),
      I1 => \ram_reg[22]_30\(8),
      I2 => ram_addr(1),
      I3 => \ram_reg[21]_31\(8),
      I4 => ram_addr(0),
      I5 => \ram_reg[20]_32\(8),
      O => \ram_do[8]_i_3_n_0\
    );
\ram_do[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[19]_33\(8),
      I1 => ram_addr(1),
      I2 => \ram_reg[17]_35\(8),
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(8),
      O => \ram_do[8]_i_4_n_0\
    );
\ram_do[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => \ram_do[9]_i_2_n_0\,
      I1 => ram_addr(3),
      I2 => ram_addr(4),
      I3 => \ram_do[9]_i_3_n_0\,
      I4 => ram_addr(2),
      I5 => \ram_do[9]_i_4_n_0\,
      O => \ram_do[9]_i_1_n_0\
    );
\ram_do[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0F00AC000000"
    )
        port map (
      I0 => \ram_reg[14]_38\(9),
      I1 => \ram_reg[12]_40\(9),
      I2 => ram_addr(1),
      I3 => ram_addr(3),
      I4 => ram_addr(2),
      I5 => ram_addr(0),
      O => \ram_do[9]_i_2_n_0\
    );
\ram_do[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ram_reg[20]_32\(9),
      I1 => ram_addr(0),
      I2 => \ram_reg[21]_31\(9),
      I3 => ram_addr(1),
      O => \ram_do[9]_i_3_n_0\
    );
\ram_do[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \ram_reg[19]_33\(9),
      I1 => ram_addr(1),
      I2 => \ram_reg[17]_35\(9),
      I3 => ram_addr(0),
      I4 => \ram_reg[16]_36\(9),
      O => \ram_do[9]_i_4_n_0\
    );
\ram_do_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[0]_i_1_n_0\,
      Q => ram_do(0),
      R => ram_addr(5)
    );
\ram_do_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[10]_i_1_n_0\,
      Q => ram_do(10),
      R => ram_addr(5)
    );
\ram_do_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[11]_i_1_n_0\,
      Q => ram_do(11),
      R => ram_addr(5)
    );
\ram_do_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[12]_i_1_n_0\,
      Q => ram_do(12),
      R => ram_addr(5)
    );
\ram_do_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[13]_i_1_n_0\,
      Q => ram_do(13),
      R => ram_addr(5)
    );
\ram_do_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[14]_i_1_n_0\,
      Q => ram_do(14),
      R => ram_addr(5)
    );
\ram_do_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[15]_i_1_n_0\,
      Q => ram_do(15),
      R => ram_addr(5)
    );
\ram_do_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[1]_i_1_n_0\,
      Q => ram_do(1),
      R => ram_addr(5)
    );
\ram_do_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[25]_i_1_n_0\,
      Q => ram_do(25),
      R => ram_addr(5)
    );
\ram_do_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[26]_i_1_n_0\,
      Q => ram_do(26),
      R => ram_addr(5)
    );
\ram_do_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[27]_i_1_n_0\,
      Q => ram_do(27),
      R => ram_addr(5)
    );
\ram_do_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[28]_i_1_n_0\,
      Q => ram_do(28),
      R => ram_addr(5)
    );
\ram_do_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[29]_i_1_n_0\,
      Q => ram_do(29),
      R => ram_addr(5)
    );
\ram_do_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[2]_i_1_n_0\,
      Q => ram_do(2),
      R => ram_addr(5)
    );
\ram_do_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[30]_i_1_n_0\,
      Q => ram_do(30),
      R => ram_addr(5)
    );
\ram_do_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[31]_i_1_n_0\,
      Q => ram_do(31),
      R => ram_addr(5)
    );
\ram_do_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[32]_i_1_n_0\,
      Q => ram_do(32),
      R => ram_addr(5)
    );
\ram_do_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[33]_i_1_n_0\,
      Q => ram_do(33),
      R => ram_addr(5)
    );
\ram_do_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[34]_i_1_n_0\,
      Q => ram_do(34),
      R => ram_addr(5)
    );
\ram_do_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[35]_i_1_n_0\,
      Q => ram_do(35),
      R => ram_addr(5)
    );
\ram_do_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[36]_i_1_n_0\,
      Q => ram_do(36),
      R => ram_addr(5)
    );
\ram_do_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[38]_i_1_n_0\,
      Q => ram_do(38),
      R => ram_addr(5)
    );
\ram_do_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[3]_i_1_n_0\,
      Q => ram_do(3),
      R => ram_addr(5)
    );
\ram_do_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[4]_i_1_n_0\,
      Q => ram_do(4),
      R => ram_addr(5)
    );
\ram_do_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[5]_i_1_n_0\,
      Q => ram_do(5),
      R => ram_addr(5)
    );
\ram_do_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do_reg[6]_i_1_n_0\,
      Q => ram_do(6),
      R => ram_addr(5)
    );
\ram_do_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ram_do[6]_i_2_n_0\,
      I1 => \ram_do[6]_i_3_n_0\,
      O => \ram_do_reg[6]_i_1_n_0\,
      S => \ram_do[15]_i_3_n_0\
    );
\ram_do_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[7]_i_1_n_0\,
      Q => ram_do(7),
      R => ram_addr(5)
    );
\ram_do_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[8]_i_1_n_0\,
      Q => ram_do(8),
      R => ram_addr(5)
    );
\ram_do_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_do[9]_i_1_n_0\,
      Q => ram_do(9),
      R => ram_addr(5)
    );
\ram_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[12][0]_i_1_n_0\,
      Q => \ram_reg[12]_40\(0),
      R => '0'
    );
\ram_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[12][5]_0\(5),
      Q => \ram_reg[12]_40\(10),
      R => '0'
    );
\ram_reg[12][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[12][5]_0\(6),
      Q => \ram_reg[12]_40\(11),
      R => '0'
    );
\ram_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[12][1]_i_1_n_0\,
      Q => \ram_reg[12]_40\(1),
      R => '0'
    );
\ram_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[12][2]_i_1_n_0\,
      Q => \ram_reg[12]_40\(2),
      R => '0'
    );
\ram_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[12][3]_i_1_n_0\,
      Q => \ram_reg[12]_40\(3),
      R => '0'
    );
\ram_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[12][4]_i_1_n_0\,
      Q => \ram_reg[12]_40\(4),
      R => '0'
    );
\ram_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[12][5]_i_1_n_0\,
      Q => \ram_reg[12]_40\(5),
      R => '0'
    );
\ram_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[12][6]_i_1_n_0\,
      Q => \ram_reg[12]_40\(6),
      R => '0'
    );
\ram_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[12][5]_0\(2),
      Q => \ram_reg[12]_40\(7),
      R => '0'
    );
\ram_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[12][5]_0\(3),
      Q => \ram_reg[12]_40\(8),
      R => '0'
    );
\ram_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[12][5]_0\(4),
      Q => \ram_reg[12]_40\(9),
      R => '0'
    );
\ram_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[13][6]_i_1_n_0\,
      Q => \ram_reg[13]_39\(6),
      R => '0'
    );
\ram_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram[13][7]_i_1_n_0\,
      Q => \ram_reg[13]_39\(7),
      R => '0'
    );
\ram_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_2_in(0),
      Q => \ram_reg[14]_38\(0),
      R => '0'
    );
\ram_reg[14][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[14][5]_0\(5),
      Q => \ram_reg[14]_38\(10),
      R => '0'
    );
\ram_reg[14][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[14][5]_0\(6),
      Q => \ram_reg[14]_38\(11),
      R => '0'
    );
\ram_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_2_in(1),
      Q => \ram_reg[14]_38\(1),
      R => '0'
    );
\ram_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_2_in(2),
      Q => \ram_reg[14]_38\(2),
      R => '0'
    );
\ram_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_2_in(3),
      Q => \ram_reg[14]_38\(3),
      R => '0'
    );
\ram_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_2_in(4),
      Q => \ram_reg[14]_38\(4),
      R => '0'
    );
\ram_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_2_in(5),
      Q => \ram_reg[14]_38\(5),
      R => '0'
    );
\ram_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_2_in(6),
      Q => \ram_reg[14]_38\(6),
      R => '0'
    );
\ram_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[14][5]_0\(2),
      Q => \ram_reg[14]_38\(7),
      R => '0'
    );
\ram_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[14][5]_0\(3),
      Q => \ram_reg[14]_38\(8),
      R => '0'
    );
\ram_reg[14][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => \ram_reg[14][5]_0\(4),
      Q => \ram_reg[14]_38\(9),
      R => '0'
    );
\ram_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_3_in(6),
      Q => \ram_reg[15]_37\(6),
      R => '0'
    );
\ram_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_3_in(7),
      Q => \ram_reg[15]_37\(7),
      R => '0'
    );
\ram_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(0),
      Q => \ram_reg[16]_36\(0),
      R => '0'
    );
\ram_reg[16][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(5),
      Q => \ram_reg[16]_36\(10),
      R => '0'
    );
\ram_reg[16][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(6),
      Q => \ram_reg[16]_36\(11),
      R => '0'
    );
\ram_reg[16][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(12),
      Q => \ram_reg[16]_36\(12),
      R => '0'
    );
\ram_reg[16][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(13),
      Q => \ram_reg[16]_36\(13),
      R => '0'
    );
\ram_reg[16][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(1),
      Q => \ram_reg[16]_36\(1),
      R => '0'
    );
\ram_reg[16][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(2),
      Q => \ram_reg[16]_36\(2),
      R => '0'
    );
\ram_reg[16][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(3),
      Q => \ram_reg[16]_36\(3),
      R => '0'
    );
\ram_reg[16][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(4),
      Q => \ram_reg[16]_36\(4),
      R => '0'
    );
\ram_reg[16][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(5),
      Q => \ram_reg[16]_36\(5),
      R => '0'
    );
\ram_reg[16][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_4_in(6),
      Q => \ram_reg[16]_36\(6),
      R => '0'
    );
\ram_reg[16][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(2),
      Q => \ram_reg[16]_36\(7),
      R => '0'
    );
\ram_reg[16][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(3),
      Q => \ram_reg[16]_36\(8),
      R => '0'
    );
\ram_reg[16][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(4),
      Q => \ram_reg[16]_36\(9),
      R => '0'
    );
\ram_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => low_time(0),
      Q => \ram_reg[17]_35\(0),
      R => '0'
    );
\ram_reg[17][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(13),
      Q => \ram_reg[17]_35\(10),
      R => '0'
    );
\ram_reg[17][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(14),
      Q => \ram_reg[17]_35\(11),
      R => '0'
    );
\ram_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => low_time(1),
      Q => \ram_reg[17]_35\(1),
      R => '0'
    );
\ram_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => low_time(2),
      Q => \ram_reg[17]_35\(2),
      R => '0'
    );
\ram_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => low_time(3),
      Q => \ram_reg[17]_35\(3),
      R => '0'
    );
\ram_reg[17][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => low_time(4),
      Q => \ram_reg[17]_35\(4),
      R => '0'
    );
\ram_reg[17][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => low_time(5),
      Q => \ram_reg[17]_35\(5),
      R => '0'
    );
\ram_reg[17][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => high_time(0),
      Q => \ram_reg[17]_35\(6),
      R => '0'
    );
\ram_reg[17][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(10),
      Q => \ram_reg[17]_35\(7),
      R => '0'
    );
\ram_reg[17][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(11),
      Q => \ram_reg[17]_35\(8),
      R => '0'
    );
\ram_reg[17][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => Q(12),
      Q => \ram_reg[17]_35\(9),
      R => '0'
    );
\ram_reg[18][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => no_count,
      Q => \ram_reg[18]_34\(6),
      R => '0'
    );
\ram_reg[18][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => w_edge,
      Q => \ram_reg[18]_34\(7),
      R => '0'
    );
\ram_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(0),
      Q => \ram_reg[19]_33\(0),
      R => '0'
    );
\ram_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(1),
      Q => \ram_reg[19]_33\(1),
      R => '0'
    );
\ram_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(2),
      Q => \ram_reg[19]_33\(2),
      R => '0'
    );
\ram_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(3),
      Q => \ram_reg[19]_33\(3),
      R => '0'
    );
\ram_reg[19][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(4),
      Q => \ram_reg[19]_33\(4),
      R => '0'
    );
\ram_reg[19][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(5),
      Q => \ram_reg[19]_33\(5),
      R => '0'
    );
\ram_reg[19][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(6),
      Q => \ram_reg[19]_33\(6),
      R => '0'
    );
\ram_reg[19][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(7),
      Q => \ram_reg[19]_33\(7),
      R => '0'
    );
\ram_reg[19][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(8),
      Q => \ram_reg[19]_33\(8),
      R => '0'
    );
\ram_reg[19][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_7_in(9),
      Q => \ram_reg[19]_33\(9),
      R => '0'
    );
\ram_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(0),
      Q => \ram_reg[20]_32\(0),
      R => '0'
    );
\ram_reg[20][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(10),
      Q => \ram_reg[20]_32\(10),
      R => '0'
    );
\ram_reg[20][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(11),
      Q => \ram_reg[20]_32\(11),
      R => '0'
    );
\ram_reg[20][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(12),
      Q => \ram_reg[20]_32\(12),
      R => '0'
    );
\ram_reg[20][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(13),
      Q => \ram_reg[20]_32\(13),
      R => '0'
    );
\ram_reg[20][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(14),
      Q => \ram_reg[20]_32\(14),
      R => '0'
    );
\ram_reg[20][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(1),
      Q => \ram_reg[20]_32\(1),
      R => '0'
    );
\ram_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(2),
      Q => \ram_reg[20]_32\(2),
      R => '0'
    );
\ram_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(3),
      Q => \ram_reg[20]_32\(3),
      R => '0'
    );
\ram_reg[20][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(4),
      Q => \ram_reg[20]_32\(4),
      R => '0'
    );
\ram_reg[20][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(5),
      Q => \ram_reg[20]_32\(5),
      R => '0'
    );
\ram_reg[20][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(6),
      Q => \ram_reg[20]_32\(6),
      R => '0'
    );
\ram_reg[20][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(7),
      Q => \ram_reg[20]_32\(7),
      R => '0'
    );
\ram_reg[20][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(8),
      Q => \ram_reg[20]_32\(8),
      R => '0'
    );
\ram_reg[20][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_8_in(9),
      Q => \ram_reg[20]_32\(9),
      R => '0'
    );
\ram_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(0),
      Q => \ram_reg[21]_31\(0),
      R => '0'
    );
\ram_reg[21][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(10),
      Q => \ram_reg[21]_31\(10),
      R => '0'
    );
\ram_reg[21][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(11),
      Q => \ram_reg[21]_31\(11),
      R => '0'
    );
\ram_reg[21][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(12),
      Q => \ram_reg[21]_31\(12),
      R => '0'
    );
\ram_reg[21][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(13),
      Q => \ram_reg[21]_31\(13),
      R => '0'
    );
\ram_reg[21][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(14),
      Q => \ram_reg[21]_31\(14),
      R => '0'
    );
\ram_reg[21][14]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_ram_reg[21][14]_i_4_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \ram_reg[21][14]_i_4_n_3\,
      CO(3) => \ram_reg[21][14]_i_4_n_4\,
      CO(2) => \ram_reg[21][14]_i_4_n_5\,
      CO(1) => \ram_reg[21][14]_i_4_n_6\,
      CO(0) => \ram_reg[21][14]_i_4_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \ram[21][14]_i_5_n_0\,
      DI(3) => \ram[21][14]_i_6_n_0\,
      DI(2) => Q(9),
      DI(1) => \ram[21][14]_i_7_n_0\,
      DI(0) => '0',
      O(7 downto 6) => \NLW_ram_reg[21][14]_i_4_O_UNCONNECTED\(7 downto 6),
      O(5) => \ram_reg[21][14]_i_4_n_10\,
      O(4) => \ram_reg[21][14]_i_4_n_11\,
      O(3) => \ram_reg[21][14]_i_4_n_12\,
      O(2) => \ram_reg[21][14]_i_4_n_13\,
      O(1) => \ram_reg[21][14]_i_4_n_14\,
      O(0) => \NLW_ram_reg[21][14]_i_4_O_UNCONNECTED\(0),
      S(7 downto 6) => B"00",
      S(5) => \ram[21][14]_i_8_n_0\,
      S(4) => \ram[21][14]_i_9_n_0\,
      S(3) => \ram[21][14]_i_10_n_0\,
      S(2) => \ram[21][14]_i_11_n_0\,
      S(1) => \ram[21][14]_i_12_n_0\,
      S(0) => Q(9)
    );
\ram_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(1),
      Q => \ram_reg[21]_31\(1),
      R => '0'
    );
\ram_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(2),
      Q => \ram_reg[21]_31\(2),
      R => '0'
    );
\ram_reg[21][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(3),
      Q => \ram_reg[21]_31\(3),
      R => '0'
    );
\ram_reg[21][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(4),
      Q => \ram_reg[21]_31\(4),
      R => '0'
    );
\ram_reg[21][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(5),
      Q => \ram_reg[21]_31\(5),
      R => '0'
    );
\ram_reg[21][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(6),
      Q => \ram_reg[21]_31\(6),
      R => '0'
    );
\ram_reg[21][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(7),
      Q => \ram_reg[21]_31\(7),
      R => '0'
    );
\ram_reg[21][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(8),
      Q => \ram_reg[21]_31\(8),
      R => '0'
    );
\ram_reg[21][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_9_in(9),
      Q => \ram_reg[21]_31\(9),
      R => '0'
    );
\ram_reg[22][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_10_in(11),
      Q => \ram_reg[22]_30\(11),
      R => '0'
    );
\ram_reg[22][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_10_in(12),
      Q => \ram_reg[22]_30\(12),
      R => '0'
    );
\ram_reg[22][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_10_in(15),
      Q => \ram_reg[22]_30\(15),
      R => '0'
    );
\ram_reg[22][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_10_in(8),
      Q => \ram_reg[22]_30\(8),
      R => '0'
    );
\ram_reg[23][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_11_in(11),
      Q => \ram_reg[23]_29\(11),
      R => '0'
    );
\ram_reg[23][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_11_in(12),
      Q => \ram_reg[23]_29\(12),
      R => '0'
    );
\ram_reg[23][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_11_in(15),
      Q => \ram_reg[23]_29\(15),
      R => '0'
    );
\ram_reg[23][15]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_ram_reg[23][15]_i_4_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \ram_reg[23][15]_i_4_n_3\,
      CO(3) => \ram_reg[23][15]_i_4_n_4\,
      CO(2) => \ram_reg[23][15]_i_4_n_5\,
      CO(1) => \ram_reg[23][15]_i_4_n_6\,
      CO(0) => \ram_reg[23][15]_i_4_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \ram[23][15]_i_5_n_0\,
      DI(3) => \ram[23][15]_i_6_n_0\,
      DI(2) => Q(9),
      DI(1) => \ram[23][15]_i_7_n_0\,
      DI(0) => '0',
      O(7 downto 6) => \NLW_ram_reg[23][15]_i_4_O_UNCONNECTED\(7 downto 6),
      O(5) => \ram_reg[23][15]_i_4_n_10\,
      O(4) => \ram_reg[23][15]_i_4_n_11\,
      O(3) => \ram_reg[23][15]_i_4_n_12\,
      O(2) => \ram_reg[23][15]_i_4_n_13\,
      O(1) => \ram_reg[23][15]_i_4_n_14\,
      O(0) => \ram_reg[23][15]_i_4_n_15\,
      S(7 downto 6) => B"00",
      S(5) => \ram[23][15]_i_8_n_0\,
      S(4) => \ram[23][15]_i_9_n_0\,
      S(3) => \ram[23][15]_i_10_n_0\,
      S(2) => \ram[23][15]_i_11_n_0\,
      S(1) => \ram[23][15]_i_12_n_0\,
      S(0) => Q(9)
    );
\ram_reg[23][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_11_in(4),
      Q => \ram_reg[23]_29\(4),
      R => '0'
    );
\ram_reg[23][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_11_in(7),
      Q => \ram_reg[23]_29\(7),
      R => '0'
    );
\ram_reg[23][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SEN,
      D => p_11_in(8),
      Q => \ram_reg[23]_29\(8),
      R => '0'
    );
\state_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(3),
      I1 => state_count(0),
      O => \state_count[0]_i_1_n_0\
    );
\state_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => current_state(3),
      I1 => state_count(1),
      I2 => state_count(0),
      O => \state_count[1]_i_1_n_0\
    );
\state_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEB"
    )
        port map (
      I0 => current_state(1),
      I1 => state_count(2),
      I2 => state_count(0),
      I3 => state_count(1),
      O => \state_count[2]_i_1_n_0\
    );
\state_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEB"
    )
        port map (
      I0 => current_state(1),
      I1 => state_count(3),
      I2 => state_count(1),
      I3 => state_count(0),
      I4 => state_count(2),
      O => \state_count[3]_i_1_n_0\
    );
\state_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      O => \state_count[4]_i_1_n_0\
    );
\state_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888882"
    )
        port map (
      I0 => current_state(3),
      I1 => state_count(4),
      I2 => state_count(2),
      I3 => state_count(0),
      I4 => state_count(1),
      I5 => state_count(3),
      O => \state_count[4]_i_2_n_0\
    );
\state_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_count[4]_i_1_n_0\,
      D => \state_count[0]_i_1_n_0\,
      Q => state_count(0),
      R => '0'
    );
\state_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_count[4]_i_1_n_0\,
      D => \state_count[1]_i_1_n_0\,
      Q => state_count(1),
      R => '0'
    );
\state_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_count[4]_i_1_n_0\,
      D => \state_count[2]_i_1_n_0\,
      Q => state_count(2),
      R => '0'
    );
\state_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_count[4]_i_1_n_0\,
      D => \state_count[3]_i_1_n_0\,
      Q => state_count(3),
      R => '0'
    );
\state_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_count[4]_i_1_n_0\,
      D => \state_count[4]_i_2_n_0\,
      Q => state_count(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    wrack : out STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS_0\ : out STD_LOGIC;
    bus2ip_reset_active_high : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC
  );
end rfdc_ex_clk_wiz_adc1_0_soft_reset;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0_soft_reset is
  signal FF_WRACK_i_1_n_0 : STD_LOGIC;
  signal \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \^reset_flops[15].rst_flops_0\ : STD_LOGIC;
  signal \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal flop_q_chain : STD_LOGIC_VECTOR ( 1 to 15 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FF_WRACK : label is "PRIMITIVE";
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of FF_WRACK : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of FF_WRACK : label is "1'b0";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FF_WRACK_i_1 : label is "soft_lutpair137";
  attribute BOX_TYPE of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute BOX_TYPE of \RESET_FLOPS[10].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[10].RST_FLOPS_i_1\ : label is "soft_lutpair134";
  attribute BOX_TYPE of \RESET_FLOPS[11].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[11].RST_FLOPS_i_1\ : label is "soft_lutpair135";
  attribute BOX_TYPE of \RESET_FLOPS[12].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[12].RST_FLOPS_i_1\ : label is "soft_lutpair135";
  attribute BOX_TYPE of \RESET_FLOPS[13].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[13].RST_FLOPS_i_1\ : label is "soft_lutpair136";
  attribute BOX_TYPE of \RESET_FLOPS[14].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[14].RST_FLOPS_i_1\ : label is "soft_lutpair136";
  attribute BOX_TYPE of \RESET_FLOPS[15].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[15].RST_FLOPS_i_1\ : label is "soft_lutpair137";
  attribute BOX_TYPE of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair130";
  attribute BOX_TYPE of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair130";
  attribute BOX_TYPE of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[3].RST_FLOPS_i_1\ : label is "soft_lutpair131";
  attribute BOX_TYPE of \RESET_FLOPS[4].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[4].RST_FLOPS_i_1\ : label is "soft_lutpair131";
  attribute BOX_TYPE of \RESET_FLOPS[5].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[5].RST_FLOPS_i_1\ : label is "soft_lutpair132";
  attribute BOX_TYPE of \RESET_FLOPS[6].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[6].RST_FLOPS_i_1\ : label is "soft_lutpair132";
  attribute BOX_TYPE of \RESET_FLOPS[7].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[7].RST_FLOPS_i_1\ : label is "soft_lutpair133";
  attribute BOX_TYPE of \RESET_FLOPS[8].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[8].RST_FLOPS_i_1\ : label is "soft_lutpair133";
  attribute BOX_TYPE of \RESET_FLOPS[9].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute SOFT_HLUTNM of \RESET_FLOPS[9].RST_FLOPS_i_1\ : label is "soft_lutpair134";
begin
  \RESET_FLOPS[15].RST_FLOPS_0\ <= \^reset_flops[15].rst_flops_0\;
FF_WRACK: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => FF_WRACK_i_1_n_0,
      Q => wrack,
      R => bus2ip_reset_active_high
    );
FF_WRACK_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^reset_flops[15].rst_flops_0\,
      I1 => flop_q_chain(15),
      O => FF_WRACK_i_1_n_0
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain(1),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[10].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(11),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[10].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(10),
      O => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[11].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(12),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[11].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(11),
      O => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[12].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(13),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[12].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(12),
      O => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[13].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(14),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[13].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(13),
      O => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[14].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(15),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[14].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(14),
      O => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[15].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\,
      Q => \^reset_flops[15].rst_flops_0\,
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[15].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(15),
      O => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(2),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(1),
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(3),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(2),
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(4),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(3),
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[4].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(5),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[4].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(4),
      O => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[5].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(6),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[5].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(5),
      O => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[6].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(7),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[6].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(6),
      O => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[7].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(8),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[7].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(7),
      O => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[8].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(9),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[8].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(8),
      O => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[9].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(10),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[9].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(9),
      O => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => bus2ip_reset_active_high
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => bus2ip_reset_active_high
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0_clk_wiz_drp is
  port (
    clk_out1 : out STD_LOGIC;
    plle4_adv_inst : out STD_LOGIC;
    config_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IP2Bus_WrAck : out STD_LOGIC;
    ip2bus_rdack_int1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \load_enable_reg_reg[13]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \bus2ip_addr_i_reg[6]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_1\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[4]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : out STD_LOGIC;
    \ram_clk_config_reg[28][17]_0\ : out STD_LOGIC;
    \clkout0_reg_reg[20]_0\ : out STD_LOGIC;
    \clkout0_reg_reg[14]_0\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \ram_clk_config_reg[15][17]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[14][17]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[12][17]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[25][17]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[24][17]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[31][17]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[30][17]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[29][17]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_2\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_3\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_1\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_4\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_5\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_2\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_3\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_4\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_5\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_6\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_7\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_6\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_7\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_8\ : out STD_LOGIC;
    \ram_clk_config_reg[15][0]_0\ : out STD_LOGIC;
    \ram_clk_config_reg[11][0]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[4]_0\ : out STD_LOGIC;
    \ram_clk_config_reg[27][0]_0\ : out STD_LOGIC;
    \ram_clk_config_reg[31][0]_0\ : out STD_LOGIC;
    \ram_clk_config_reg[19][0]_0\ : out STD_LOGIC;
    \ram_clk_config_reg[23][0]_0\ : out STD_LOGIC;
    \interrupt_enable_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRDY : out STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_enable_reg_d_reg_0 : in STD_LOGIC;
    wrack_reg_10 : in STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 0 to 0 );
    rdack_reg_10 : in STD_LOGIC;
    rst_ip2bus_rdack : in STD_LOGIC;
    dummy_local_reg_rdack : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i_reg[16]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[16]_0\ : in STD_LOGIC;
    \ram_clk_config_reg[0][0]_0\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[0][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[0][31]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \clkout0_reg_reg[14]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[2][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[2][31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ram_clk_config_reg[5][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \load_enable_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \interrupt_enable_reg_reg[15]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[3][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[4][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[6][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[7][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[8][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[9][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[10][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[11][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[12][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[13][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[14][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[15][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[16][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[17][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[18][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[19][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[20][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[21][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[22][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[23][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[24][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[25][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[26][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[27][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[28][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[29][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[30][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_clk_config_reg[31][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end rfdc_ex_clk_wiz_adc1_0_clk_wiz_drp;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0_clk_wiz_drp is
  signal IP2Bus_RdAck : STD_LOGIC;
  signal IP2Bus_RdAck0 : STD_LOGIC;
  signal IP2Bus_WrAck0 : STD_LOGIC;
  signal RST_MMCM_PLL_i_1_n_0 : STD_LOGIC;
  signal S2_CLKFBOUT_MULT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SEN : STD_LOGIC;
  signal SEN0 : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \clkfbout_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \^clkout0_reg_reg[14]_0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \^config_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \config_reg__0\ : STD_LOGIC_VECTOR ( 0 to 15 );
  signal daddr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal den : STD_LOGIC;
  signal din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal drdy : STD_LOGIC;
  signal dwe : STD_LOGIC;
  signal load_enable_reg_actual : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal p_4_in : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal \^plle4_adv_inst\ : STD_LOGIC;
  signal \ram_clk_config[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][13]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][14]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][16]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][17]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][18]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][19]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][20]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][21]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][22]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][23]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][24]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][25]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][26]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][26]_i_2_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][26]_i_3_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \ram_clk_config[2][18]_i_3_n_0\ : STD_LOGIC;
  signal \ram_clk_config_reg[10]_7\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[11]_8\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[12]_9\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[13]_10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[14]_11\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[15]_12\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[16]_13\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[17]_14\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[18]_15\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[19]_16\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[1]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[20]_17\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[21]_18\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[22]_19\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[23]_20\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[24]_21\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[25]_22\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[26]_23\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[27]_24\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[28]_25\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[29]_26\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[30]_27\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[31]_28\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[3]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[4]_2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[6]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[7]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[8]_5\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg[9]_6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_clk_config_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][16]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][17]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][18]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][19]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][20]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][21]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][22]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][23]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][24]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][25]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][26]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][27]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][28]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][29]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][30]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][31]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][16]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][17]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][18]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][19]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][20]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][21]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][22]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][23]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][24]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][25]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][26]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][27]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][28]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][29]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][30]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][31]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][10]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][11]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][12]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][13]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][14]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][15]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][16]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][17]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][18]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][19]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][20]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][21]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][22]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][23]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][24]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][25]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][26]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][27]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][28]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][29]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][30]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][31]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][8]\ : STD_LOGIC;
  signal \ram_clk_config_reg_n_0_[5][9]\ : STD_LOGIC;
  signal rdack_reg_1 : STD_LOGIC;
  signal rdack_reg_2 : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_17_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_17_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_18_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_18_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_19_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_20_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_21_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_22_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_23_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_24_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_25_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[13]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[13]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[13]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[16]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[16]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[17]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[18]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[18]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[18]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[18]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[19]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[20]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[20]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[20]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[20]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[21]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[21]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[21]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[21]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[22]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[22]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[22]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[22]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[23]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[24]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[24]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[24]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[24]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[25]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[25]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[25]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[25]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[26]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[26]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[26]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[26]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[27]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[28]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[28]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[28]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[28]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[29]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[29]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[29]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[29]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[30]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[30]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[30]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[30]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal wrack_reg_1 : STD_LOGIC;
  signal wrack_reg_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ram_clk_config[0][0]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \ram_clk_config[0][10]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \ram_clk_config[0][11]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \ram_clk_config[0][13]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \ram_clk_config[0][14]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \ram_clk_config[0][15]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \ram_clk_config[0][16]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \ram_clk_config[0][17]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \ram_clk_config[0][18]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \ram_clk_config[0][19]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \ram_clk_config[0][1]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \ram_clk_config[0][20]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \ram_clk_config[0][21]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \ram_clk_config[0][22]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \ram_clk_config[0][23]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \ram_clk_config[0][24]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \ram_clk_config[0][25]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \ram_clk_config[0][26]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \ram_clk_config[0][2]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \ram_clk_config[0][3]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \ram_clk_config[0][4]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \ram_clk_config[0][5]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \ram_clk_config[0][6]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \ram_clk_config[0][7]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \ram_clk_config[0][8]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \ram_clk_config[0][9]_i_1\ : label is "soft_lutpair121";
begin
  \clkout0_reg_reg[14]_0\(17 downto 0) <= \^clkout0_reg_reg[14]_0\(17 downto 0);
  config_reg(1 downto 0) <= \^config_reg\(1 downto 0);
  plle4_adv_inst <= \^plle4_adv_inst\;
IP2Bus_RdAck_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rdack_reg_1,
      I1 => rdack_reg_2,
      O => IP2Bus_RdAck0
    );
IP2Bus_RdAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_RdAck0,
      Q => IP2Bus_RdAck,
      R => wrack_reg_10
    );
IP2Bus_WrAck_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wrack_reg_1,
      I1 => wrack_reg_2,
      O => IP2Bus_WrAck0
    );
IP2Bus_WrAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_WrAck0,
      Q => IP2Bus_WrAck,
      R => wrack_reg_10
    );
RST_MMCM_PLL_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0006"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(3),
      I4 => reset,
      O => RST_MMCM_PLL_i_1_n_0
    );
SEN_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^config_reg\(0),
      I1 => load_enable_reg_actual,
      O => SEN0
    );
SEN_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SEN0,
      Q => SEN,
      R => SR(0)
    );
clk_inst: entity work.rfdc_ex_clk_wiz_adc1_0_clk_wiz
     port map (
      DADDR(5) => daddr(6),
      DADDR(4 downto 0) => daddr(4 downto 0),
      DEN => den,
      DI(15 downto 0) => din(15 downto 0),
      DO(12 downto 6) => dout(15 downto 9),
      DO(5 downto 4) => dout(6 downto 5),
      DO(3 downto 0) => dout(3 downto 0),
      DWE => dwe,
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      drdy => drdy,
      plle4_adv_inst_0 => \^plle4_adv_inst\,
      reset => reset,
      s_axi_aclk => s_axi_aclk
    );
\clkfbout_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(21),
      Q => \clkfbout_reg_reg_n_0_[10]\,
      R => '0'
    );
\clkfbout_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(20),
      Q => \clkfbout_reg_reg_n_0_[11]\,
      R => '0'
    );
\clkfbout_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(19),
      Q => \clkfbout_reg_reg_n_0_[12]\,
      R => '0'
    );
\clkfbout_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(18),
      Q => \clkfbout_reg_reg_n_0_[13]\,
      R => '0'
    );
\clkfbout_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(17),
      Q => \clkfbout_reg_reg_n_0_[14]\,
      R => '0'
    );
\clkfbout_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(16),
      Q => \clkfbout_reg_reg_n_0_[15]\,
      R => '0'
    );
\clkfbout_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(15),
      Q => \clkfbout_reg_reg_n_0_[16]\,
      R => '0'
    );
\clkfbout_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(14),
      Q => \clkfbout_reg_reg_n_0_[17]\,
      R => '0'
    );
\clkfbout_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(13),
      Q => \clkfbout_reg_reg_n_0_[18]\,
      R => '0'
    );
\clkfbout_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(12),
      Q => \clkfbout_reg_reg_n_0_[19]\,
      R => '0'
    );
\clkfbout_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \clkfbout_reg_reg_n_0_[20]\,
      R => '0'
    );
\clkfbout_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \clkfbout_reg_reg_n_0_[21]\,
      R => '0'
    );
\clkfbout_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \clkfbout_reg_reg_n_0_[22]\,
      R => '0'
    );
\clkfbout_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \clkfbout_reg_reg_n_0_[23]\,
      R => '0'
    );
\clkfbout_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \clkfbout_reg_reg_n_0_[24]\,
      R => '0'
    );
\clkfbout_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \clkfbout_reg_reg_n_0_[25]\,
      R => '0'
    );
\clkfbout_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \clkfbout_reg_reg_n_0_[26]\,
      R => '0'
    );
\clkfbout_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \clkfbout_reg_reg_n_0_[27]\,
      R => '0'
    );
\clkfbout_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \clkfbout_reg_reg_n_0_[28]\,
      R => '0'
    );
\clkfbout_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \clkfbout_reg_reg_n_0_[29]\,
      R => '0'
    );
\clkfbout_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \clkfbout_reg_reg_n_0_[30]\,
      R => '0'
    );
\clkfbout_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \clkfbout_reg_reg_n_0_[31]\,
      R => '0'
    );
\clkfbout_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(25),
      Q => \clkfbout_reg_reg_n_0_[6]\,
      R => '0'
    );
\clkfbout_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(24),
      Q => \clkfbout_reg_reg_n_0_[7]\,
      R => '0'
    );
\clkfbout_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(23),
      Q => \clkfbout_reg_reg_n_0_[8]\,
      R => '0'
    );
\clkfbout_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(22),
      Q => \clkfbout_reg_reg_n_0_[9]\,
      R => '0'
    );
\clkout0_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(17),
      Q => \^clkout0_reg_reg[14]_0\(17),
      R => '0'
    );
\clkout0_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(16),
      Q => \^clkout0_reg_reg[14]_0\(16),
      R => '0'
    );
\clkout0_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(15),
      Q => \^clkout0_reg_reg[14]_0\(15),
      R => '0'
    );
\clkout0_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(14),
      Q => \^clkout0_reg_reg[14]_0\(14),
      R => '0'
    );
\clkout0_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(13),
      Q => \^clkout0_reg_reg[14]_0\(13),
      R => '0'
    );
\clkout0_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(12),
      Q => \^clkout0_reg_reg[14]_0\(12),
      R => '0'
    );
\clkout0_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(11),
      Q => \^clkout0_reg_reg[14]_0\(11),
      R => '0'
    );
\clkout0_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(10),
      Q => \^clkout0_reg_reg[14]_0\(10),
      R => '0'
    );
\clkout0_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(9),
      Q => \^clkout0_reg_reg[14]_0\(9),
      R => '0'
    );
\clkout0_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(8),
      Q => \^clkout0_reg_reg[14]_0\(8),
      R => '0'
    );
\clkout0_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(7),
      Q => \^clkout0_reg_reg[14]_0\(7),
      R => '0'
    );
\clkout0_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(6),
      Q => \^clkout0_reg_reg[14]_0\(6),
      R => '0'
    );
\clkout0_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(5),
      Q => \^clkout0_reg_reg[14]_0\(5),
      R => '0'
    );
\clkout0_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(4),
      Q => \^clkout0_reg_reg[14]_0\(4),
      R => '0'
    );
\clkout0_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(3),
      Q => \^clkout0_reg_reg[14]_0\(3),
      R => '0'
    );
\clkout0_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(2),
      Q => \^clkout0_reg_reg[14]_0\(2),
      R => '0'
    );
\clkout0_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(1),
      Q => \^clkout0_reg_reg[14]_0\(1),
      R => '0'
    );
\clkout0_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \clkout0_reg_reg[14]_1\(0),
      D => s_axi_wdata(0),
      Q => \^clkout0_reg_reg[14]_0\(0),
      R => '0'
    );
\interrupt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(0),
      Q => \interrupt_enable_reg_reg[15]_0\(0),
      R => SR(0)
    );
\interrupt_enable_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(10),
      Q => \interrupt_enable_reg_reg[15]_0\(10),
      R => SR(0)
    );
\interrupt_enable_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(11),
      Q => \interrupt_enable_reg_reg[15]_0\(11),
      R => SR(0)
    );
\interrupt_enable_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(12),
      Q => \interrupt_enable_reg_reg[15]_0\(12),
      R => SR(0)
    );
\interrupt_enable_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(13),
      Q => \interrupt_enable_reg_reg[15]_0\(13),
      R => SR(0)
    );
\interrupt_enable_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(14),
      Q => \interrupt_enable_reg_reg[15]_0\(14),
      R => SR(0)
    );
\interrupt_enable_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(15),
      Q => \interrupt_enable_reg_reg[15]_0\(15),
      R => SR(0)
    );
\interrupt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(1),
      Q => \interrupt_enable_reg_reg[15]_0\(1),
      R => SR(0)
    );
\interrupt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(2),
      Q => \interrupt_enable_reg_reg[15]_0\(2),
      R => SR(0)
    );
\interrupt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(3),
      Q => \interrupt_enable_reg_reg[15]_0\(3),
      R => SR(0)
    );
\interrupt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(4),
      Q => \interrupt_enable_reg_reg[15]_0\(4),
      R => SR(0)
    );
\interrupt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(5),
      Q => \interrupt_enable_reg_reg[15]_0\(5),
      R => SR(0)
    );
\interrupt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(6),
      Q => \interrupt_enable_reg_reg[15]_0\(6),
      R => SR(0)
    );
\interrupt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(7),
      Q => \interrupt_enable_reg_reg[15]_0\(7),
      R => SR(0)
    );
\interrupt_enable_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(8),
      Q => \interrupt_enable_reg_reg[15]_0\(8),
      R => SR(0)
    );
\interrupt_enable_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \interrupt_enable_reg_reg[15]_1\(0),
      D => s_axi_wdata(9),
      Q => \interrupt_enable_reg_reg[15]_0\(9),
      R => SR(0)
    );
ip2bus_rdack_i_1_RnM: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => IP2Bus_RdAck,
      I1 => rst_ip2bus_rdack,
      I2 => dummy_local_reg_rdack,
      O => ip2bus_rdack_int1
    );
load_enable_reg_actual_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^config_reg\(0),
      Q => load_enable_reg_actual,
      R => SR(0)
    );
load_enable_reg_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => load_enable_reg_d_reg_0,
      Q => \^config_reg\(0),
      R => SR(0)
    );
\load_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(31),
      Q => \config_reg__0\(0),
      R => SR(0)
    );
\load_enable_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(21),
      Q => \config_reg__0\(10),
      R => SR(0)
    );
\load_enable_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(20),
      Q => \config_reg__0\(11),
      R => SR(0)
    );
\load_enable_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(19),
      Q => \config_reg__0\(12),
      R => SR(0)
    );
\load_enable_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(18),
      Q => \load_enable_reg_reg[13]_0\(15),
      R => SR(0)
    );
\load_enable_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(17),
      Q => \load_enable_reg_reg[13]_0\(14),
      R => SR(0)
    );
\load_enable_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(16),
      Q => \config_reg__0\(15),
      R => SR(0)
    );
\load_enable_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(15),
      Q => \load_enable_reg_reg[13]_0\(13),
      R => SR(0)
    );
\load_enable_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(14),
      Q => \load_enable_reg_reg[13]_0\(12),
      R => SR(0)
    );
\load_enable_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(13),
      Q => \load_enable_reg_reg[13]_0\(11),
      R => SR(0)
    );
\load_enable_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(12),
      Q => \load_enable_reg_reg[13]_0\(10),
      R => SR(0)
    );
\load_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(30),
      Q => \config_reg__0\(1),
      R => SR(0)
    );
\load_enable_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(11),
      Q => \load_enable_reg_reg[13]_0\(9),
      R => SR(0)
    );
\load_enable_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(10),
      Q => \load_enable_reg_reg[13]_0\(8),
      R => SR(0)
    );
\load_enable_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(9),
      Q => \load_enable_reg_reg[13]_0\(7),
      R => SR(0)
    );
\load_enable_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(8),
      Q => \load_enable_reg_reg[13]_0\(6),
      R => SR(0)
    );
\load_enable_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(7),
      Q => \load_enable_reg_reg[13]_0\(5),
      R => SR(0)
    );
\load_enable_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(6),
      Q => \load_enable_reg_reg[13]_0\(4),
      R => SR(0)
    );
\load_enable_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(5),
      Q => \load_enable_reg_reg[13]_0\(3),
      R => SR(0)
    );
\load_enable_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(4),
      Q => \load_enable_reg_reg[13]_0\(2),
      R => SR(0)
    );
\load_enable_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(3),
      Q => \load_enable_reg_reg[13]_0\(1),
      R => SR(0)
    );
\load_enable_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(2),
      Q => \load_enable_reg_reg[13]_0\(0),
      R => SR(0)
    );
\load_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(29),
      Q => \config_reg__0\(2),
      R => SR(0)
    );
\load_enable_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(1),
      Q => \^config_reg\(1),
      R => SR(0)
    );
\load_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(28),
      Q => \config_reg__0\(3),
      R => SR(0)
    );
\load_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(27),
      Q => \config_reg__0\(4),
      R => SR(0)
    );
\load_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(26),
      Q => \config_reg__0\(5),
      R => SR(0)
    );
\load_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(25),
      Q => \config_reg__0\(6),
      R => SR(0)
    );
\load_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(24),
      Q => \config_reg__0\(7),
      R => SR(0)
    );
\load_enable_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(23),
      Q => \config_reg__0\(8),
      R => SR(0)
    );
\load_enable_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \load_enable_reg_reg[0]_0\(0),
      D => s_axi_wdata(22),
      Q => \config_reg__0\(9),
      R => SR(0)
    );
pll_drp_inst: entity work.rfdc_ex_clk_wiz_adc1_0_pll_drp
     port map (
      DADDR(5) => daddr(6),
      DADDR(4 downto 0) => daddr(4 downto 0),
      DEN => den,
      DI(15 downto 0) => din(15 downto 0),
      DO(12 downto 6) => dout(15 downto 9),
      DO(5 downto 4) => dout(6 downto 5),
      DO(3 downto 0) => dout(3 downto 0),
      DWE => dwe,
      Q(15 downto 8) => S2_CLKFBOUT_MULT(7 downto 0),
      Q(7) => \ram_clk_config_reg_n_0_[0][7]\,
      Q(6 downto 2) => p_4_in(11 downto 7),
      Q(1) => \ram_clk_config_reg_n_0_[0][1]\,
      Q(0) => \ram_clk_config_reg_n_0_[0][0]\,
      RST_MMCM_PLL_reg_0 => RST_MMCM_PLL_i_1_n_0,
      SEN => SEN,
      SR(0) => SR(0),
      SRDY => SRDY,
      SRDY_reg_0 => \^plle4_adv_inst\,
      config_reg(0) => \^config_reg\(1),
      drdy => drdy,
      \out\(3 downto 0) => p_0_in(3 downto 0),
      \ram_reg[12][5]_0\(7) => \ram_clk_config_reg_n_0_[2][7]\,
      \ram_reg[12][5]_0\(6) => \ram_clk_config_reg_n_0_[2][6]\,
      \ram_reg[12][5]_0\(5) => \ram_clk_config_reg_n_0_[2][5]\,
      \ram_reg[12][5]_0\(4) => \ram_clk_config_reg_n_0_[2][4]\,
      \ram_reg[12][5]_0\(3) => \ram_clk_config_reg_n_0_[2][3]\,
      \ram_reg[12][5]_0\(2) => \ram_clk_config_reg_n_0_[2][2]\,
      \ram_reg[12][5]_0\(1) => \ram_clk_config_reg_n_0_[2][1]\,
      \ram_reg[12][5]_0\(0) => \ram_clk_config_reg_n_0_[2][0]\,
      \ram_reg[14][5]_0\(7) => \ram_clk_config_reg_n_0_[5][7]\,
      \ram_reg[14][5]_0\(6 downto 2) => p_2_in(11 downto 7),
      \ram_reg[14][5]_0\(1) => \ram_clk_config_reg_n_0_[5][1]\,
      \ram_reg[14][5]_0\(0) => \ram_clk_config_reg_n_0_[5][0]\,
      reset => reset,
      s_axi_aclk => s_axi_aclk
    );
\ram_clk_config[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[31]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(0),
      O => \ram_clk_config[0][0]_i_1_n_0\
    );
\ram_clk_config[0][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[21]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(10),
      O => \ram_clk_config[0][10]_i_1_n_0\
    );
\ram_clk_config[0][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[20]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(11),
      O => \ram_clk_config[0][11]_i_1_n_0\
    );
\ram_clk_config[0][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[19]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(12),
      O => \ram_clk_config[0][12]_i_1_n_0\
    );
\ram_clk_config[0][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[18]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(13),
      O => \ram_clk_config[0][13]_i_1_n_0\
    );
\ram_clk_config[0][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[17]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(14),
      O => \ram_clk_config[0][14]_i_1_n_0\
    );
\ram_clk_config[0][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[16]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(15),
      O => \ram_clk_config[0][15]_i_1_n_0\
    );
\ram_clk_config[0][16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[15]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(16),
      O => \ram_clk_config[0][16]_i_1_n_0\
    );
\ram_clk_config[0][17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[14]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(17),
      O => \ram_clk_config[0][17]_i_1_n_0\
    );
\ram_clk_config[0][18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[13]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(18),
      O => \ram_clk_config[0][18]_i_1_n_0\
    );
\ram_clk_config[0][19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[12]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(19),
      O => \ram_clk_config[0][19]_i_1_n_0\
    );
\ram_clk_config[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[30]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(1),
      O => \ram_clk_config[0][1]_i_1_n_0\
    );
\ram_clk_config[0][20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[11]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(20),
      O => \ram_clk_config[0][20]_i_1_n_0\
    );
\ram_clk_config[0][21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[10]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(21),
      O => \ram_clk_config[0][21]_i_1_n_0\
    );
\ram_clk_config[0][22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[9]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(22),
      O => \ram_clk_config[0][22]_i_1_n_0\
    );
\ram_clk_config[0][23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[8]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(23),
      O => \ram_clk_config[0][23]_i_1_n_0\
    );
\ram_clk_config[0][24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[7]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(24),
      O => \ram_clk_config[0][24]_i_1_n_0\
    );
\ram_clk_config[0][25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[6]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(25),
      O => \ram_clk_config[0][25]_i_1_n_0\
    );
\ram_clk_config[0][26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram_clk_config[0][26]_i_2_n_0\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(26),
      O => \ram_clk_config[0][26]_i_1_n_0\
    );
\ram_clk_config[0][26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[8]\,
      I1 => \clkfbout_reg_reg_n_0_[10]\,
      I2 => \clkfbout_reg_reg_n_0_[15]\,
      I3 => \clkfbout_reg_reg_n_0_[14]\,
      I4 => \ram_clk_config[0][26]_i_3_n_0\,
      O => \ram_clk_config[0][26]_i_2_n_0\
    );
\ram_clk_config[0][26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[12]\,
      I1 => \clkfbout_reg_reg_n_0_[6]\,
      I2 => \clkfbout_reg_reg_n_0_[11]\,
      I3 => \clkfbout_reg_reg_n_0_[9]\,
      I4 => \clkfbout_reg_reg_n_0_[13]\,
      I5 => \clkfbout_reg_reg_n_0_[7]\,
      O => \ram_clk_config[0][26]_i_3_n_0\
    );
\ram_clk_config[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[29]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(2),
      O => \ram_clk_config[0][2]_i_1_n_0\
    );
\ram_clk_config[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[28]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(3),
      O => \ram_clk_config[0][3]_i_1_n_0\
    );
\ram_clk_config[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[27]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(4),
      O => \ram_clk_config[0][4]_i_1_n_0\
    );
\ram_clk_config[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[26]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(5),
      O => \ram_clk_config[0][5]_i_1_n_0\
    );
\ram_clk_config[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[25]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(6),
      O => \ram_clk_config[0][6]_i_1_n_0\
    );
\ram_clk_config[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[24]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(7),
      O => \ram_clk_config[0][7]_i_1_n_0\
    );
\ram_clk_config[0][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[23]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(8),
      O => \ram_clk_config[0][8]_i_1_n_0\
    );
\ram_clk_config[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \clkfbout_reg_reg_n_0_[22]\,
      I1 => \ram_clk_config_reg[0][0]_0\,
      I2 => s_axi_wdata(9),
      O => \ram_clk_config[0][9]_i_1_n_0\
    );
\ram_clk_config[2][18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^clkout0_reg_reg[14]_0\(11),
      I1 => \^clkout0_reg_reg[14]_0\(13),
      I2 => \^clkout0_reg_reg[14]_0\(8),
      I3 => \^clkout0_reg_reg[14]_0\(9),
      I4 => \ram_clk_config[2][18]_i_3_n_0\,
      O => \clkout0_reg_reg[20]_0\
    );
\ram_clk_config[2][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^clkout0_reg_reg[14]_0\(14),
      I1 => \^clkout0_reg_reg[14]_0\(16),
      I2 => \^clkout0_reg_reg[14]_0\(17),
      I3 => \^clkout0_reg_reg[14]_0\(15),
      I4 => \^clkout0_reg_reg[14]_0\(10),
      I5 => \^clkout0_reg_reg[14]_0\(12),
      O => \ram_clk_config[2][18]_i_3_n_0\
    );
\ram_clk_config_reg[0][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][0]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][0]\,
      S => SR(0)
    );
\ram_clk_config_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][10]_i_1_n_0\,
      Q => S2_CLKFBOUT_MULT(2),
      R => SR(0)
    );
\ram_clk_config_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][11]_i_1_n_0\,
      Q => S2_CLKFBOUT_MULT(3),
      R => SR(0)
    );
\ram_clk_config_reg[0][12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][12]_i_1_n_0\,
      Q => S2_CLKFBOUT_MULT(4),
      S => SR(0)
    );
\ram_clk_config_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][13]_i_1_n_0\,
      Q => S2_CLKFBOUT_MULT(5),
      R => SR(0)
    );
\ram_clk_config_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][14]_i_1_n_0\,
      Q => S2_CLKFBOUT_MULT(6),
      R => SR(0)
    );
\ram_clk_config_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][15]_i_1_n_0\,
      Q => S2_CLKFBOUT_MULT(7),
      R => SR(0)
    );
\ram_clk_config_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][16]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][16]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][17]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][17]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][18]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][18]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][19]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][19]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][1]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][1]\,
      S => SR(0)
    );
\ram_clk_config_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][20]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][20]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][21]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][21]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][22]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][22]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][23]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][23]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][24]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][24]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][25]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][25]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][26]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][26]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config_reg[0][31]_1\(0),
      Q => \ram_clk_config_reg_n_0_[0][27]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config_reg[0][31]_1\(1),
      Q => \ram_clk_config_reg_n_0_[0][28]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config_reg[0][31]_1\(2),
      Q => \ram_clk_config_reg_n_0_[0][29]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][2]_i_1_n_0\,
      Q => p_4_in(7),
      R => SR(0)
    );
\ram_clk_config_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config_reg[0][31]_1\(3),
      Q => \ram_clk_config_reg_n_0_[0][30]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config_reg[0][31]_1\(4),
      Q => \ram_clk_config_reg_n_0_[0][31]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][3]_i_1_n_0\,
      Q => p_4_in(8),
      R => SR(0)
    );
\ram_clk_config_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][4]_i_1_n_0\,
      Q => p_4_in(9),
      R => SR(0)
    );
\ram_clk_config_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][5]_i_1_n_0\,
      Q => p_4_in(10),
      R => SR(0)
    );
\ram_clk_config_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][6]_i_1_n_0\,
      Q => p_4_in(11),
      R => SR(0)
    );
\ram_clk_config_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][7]_i_1_n_0\,
      Q => \ram_clk_config_reg_n_0_[0][7]\,
      R => SR(0)
    );
\ram_clk_config_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][8]_i_1_n_0\,
      Q => S2_CLKFBOUT_MULT(0),
      R => SR(0)
    );
\ram_clk_config_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[0][31]_0\(0),
      D => \ram_clk_config[0][9]_i_1_n_0\,
      Q => S2_CLKFBOUT_MULT(1),
      R => SR(0)
    );
\ram_clk_config_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[10]_7\(0),
      R => SR(0)
    );
\ram_clk_config_reg[10][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[10]_7\(10),
      R => SR(0)
    );
\ram_clk_config_reg[10][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[10]_7\(11),
      R => SR(0)
    );
\ram_clk_config_reg[10][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[10]_7\(12),
      R => SR(0)
    );
\ram_clk_config_reg[10][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[10]_7\(13),
      R => SR(0)
    );
\ram_clk_config_reg[10][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[10]_7\(14),
      S => SR(0)
    );
\ram_clk_config_reg[10][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[10]_7\(15),
      S => SR(0)
    );
\ram_clk_config_reg[10][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[10]_7\(16),
      R => SR(0)
    );
\ram_clk_config_reg[10][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[10]_7\(17),
      R => SR(0)
    );
\ram_clk_config_reg[10][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[10]_7\(18),
      R => SR(0)
    );
\ram_clk_config_reg[10][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[10]_7\(19),
      R => SR(0)
    );
\ram_clk_config_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[10]_7\(1),
      R => SR(0)
    );
\ram_clk_config_reg[10][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[10]_7\(20),
      R => SR(0)
    );
\ram_clk_config_reg[10][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[10]_7\(21),
      R => SR(0)
    );
\ram_clk_config_reg[10][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[10]_7\(22),
      R => SR(0)
    );
\ram_clk_config_reg[10][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[10]_7\(23),
      R => SR(0)
    );
\ram_clk_config_reg[10][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[10]_7\(24),
      R => SR(0)
    );
\ram_clk_config_reg[10][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[10]_7\(25),
      R => SR(0)
    );
\ram_clk_config_reg[10][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[10]_7\(26),
      R => SR(0)
    );
\ram_clk_config_reg[10][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[10]_7\(27),
      R => SR(0)
    );
\ram_clk_config_reg[10][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[10]_7\(28),
      R => SR(0)
    );
\ram_clk_config_reg[10][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[10]_7\(29),
      R => SR(0)
    );
\ram_clk_config_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[10]_7\(2),
      R => SR(0)
    );
\ram_clk_config_reg[10][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[10]_7\(30),
      R => SR(0)
    );
\ram_clk_config_reg[10][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[10]_7\(31),
      R => SR(0)
    );
\ram_clk_config_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[10]_7\(3),
      R => SR(0)
    );
\ram_clk_config_reg[10][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[10]_7\(4),
      S => SR(0)
    );
\ram_clk_config_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[10]_7\(5),
      R => SR(0)
    );
\ram_clk_config_reg[10][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[10]_7\(6),
      S => SR(0)
    );
\ram_clk_config_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[10]_7\(7),
      R => SR(0)
    );
\ram_clk_config_reg[10][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[10]_7\(8),
      S => SR(0)
    );
\ram_clk_config_reg[10][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[10][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[10]_7\(9),
      S => SR(0)
    );
\ram_clk_config_reg[11][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[11]_8\(0),
      S => SR(0)
    );
\ram_clk_config_reg[11][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[11]_8\(10),
      R => SR(0)
    );
\ram_clk_config_reg[11][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[11]_8\(11),
      R => SR(0)
    );
\ram_clk_config_reg[11][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[11]_8\(12),
      R => SR(0)
    );
\ram_clk_config_reg[11][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[11]_8\(13),
      R => SR(0)
    );
\ram_clk_config_reg[11][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[11]_8\(14),
      R => SR(0)
    );
\ram_clk_config_reg[11][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[11]_8\(15),
      R => SR(0)
    );
\ram_clk_config_reg[11][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[11]_8\(16),
      R => SR(0)
    );
\ram_clk_config_reg[11][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[11]_8\(17),
      R => SR(0)
    );
\ram_clk_config_reg[11][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[11]_8\(18),
      R => SR(0)
    );
\ram_clk_config_reg[11][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[11]_8\(19),
      R => SR(0)
    );
\ram_clk_config_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[11]_8\(1),
      R => SR(0)
    );
\ram_clk_config_reg[11][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[11]_8\(20),
      R => SR(0)
    );
\ram_clk_config_reg[11][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[11]_8\(21),
      R => SR(0)
    );
\ram_clk_config_reg[11][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[11]_8\(22),
      R => SR(0)
    );
\ram_clk_config_reg[11][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[11]_8\(23),
      R => SR(0)
    );
\ram_clk_config_reg[11][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[11]_8\(24),
      R => SR(0)
    );
\ram_clk_config_reg[11][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[11]_8\(25),
      R => SR(0)
    );
\ram_clk_config_reg[11][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[11]_8\(26),
      R => SR(0)
    );
\ram_clk_config_reg[11][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[11]_8\(27),
      R => SR(0)
    );
\ram_clk_config_reg[11][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[11]_8\(28),
      R => SR(0)
    );
\ram_clk_config_reg[11][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[11]_8\(29),
      R => SR(0)
    );
\ram_clk_config_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[11]_8\(2),
      R => SR(0)
    );
\ram_clk_config_reg[11][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[11]_8\(30),
      R => SR(0)
    );
\ram_clk_config_reg[11][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[11]_8\(31),
      R => SR(0)
    );
\ram_clk_config_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[11]_8\(3),
      R => SR(0)
    );
\ram_clk_config_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[11]_8\(4),
      R => SR(0)
    );
\ram_clk_config_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[11]_8\(5),
      R => SR(0)
    );
\ram_clk_config_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[11]_8\(6),
      R => SR(0)
    );
\ram_clk_config_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[11]_8\(7),
      R => SR(0)
    );
\ram_clk_config_reg[11][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[11]_8\(8),
      R => SR(0)
    );
\ram_clk_config_reg[11][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[11][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[11]_8\(9),
      R => SR(0)
    );
\ram_clk_config_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[12]_9\(0),
      R => SR(0)
    );
\ram_clk_config_reg[12][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[12]_9\(10),
      R => SR(0)
    );
\ram_clk_config_reg[12][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[12]_9\(11),
      R => SR(0)
    );
\ram_clk_config_reg[12][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[12]_9\(12),
      R => SR(0)
    );
\ram_clk_config_reg[12][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[12]_9\(13),
      R => SR(0)
    );
\ram_clk_config_reg[12][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[12]_9\(14),
      R => SR(0)
    );
\ram_clk_config_reg[12][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[12]_9\(15),
      R => SR(0)
    );
\ram_clk_config_reg[12][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[12]_9\(16),
      R => SR(0)
    );
\ram_clk_config_reg[12][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[12][17]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[12][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[12]_9\(18),
      R => SR(0)
    );
\ram_clk_config_reg[12][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[12]_9\(19),
      R => SR(0)
    );
\ram_clk_config_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[12]_9\(1),
      R => SR(0)
    );
\ram_clk_config_reg[12][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[12]_9\(20),
      R => SR(0)
    );
\ram_clk_config_reg[12][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[12]_9\(21),
      R => SR(0)
    );
\ram_clk_config_reg[12][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[12]_9\(22),
      R => SR(0)
    );
\ram_clk_config_reg[12][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[12]_9\(23),
      R => SR(0)
    );
\ram_clk_config_reg[12][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[12]_9\(24),
      R => SR(0)
    );
\ram_clk_config_reg[12][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[12]_9\(25),
      R => SR(0)
    );
\ram_clk_config_reg[12][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[12]_9\(26),
      R => SR(0)
    );
\ram_clk_config_reg[12][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[12]_9\(27),
      R => SR(0)
    );
\ram_clk_config_reg[12][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[12]_9\(28),
      R => SR(0)
    );
\ram_clk_config_reg[12][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[12]_9\(29),
      R => SR(0)
    );
\ram_clk_config_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[12]_9\(2),
      R => SR(0)
    );
\ram_clk_config_reg[12][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[12]_9\(30),
      R => SR(0)
    );
\ram_clk_config_reg[12][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[12]_9\(31),
      R => SR(0)
    );
\ram_clk_config_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[12]_9\(3),
      R => SR(0)
    );
\ram_clk_config_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[12]_9\(4),
      R => SR(0)
    );
\ram_clk_config_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[12]_9\(5),
      R => SR(0)
    );
\ram_clk_config_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[12]_9\(6),
      R => SR(0)
    );
\ram_clk_config_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[12]_9\(7),
      R => SR(0)
    );
\ram_clk_config_reg[12][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[12]_9\(8),
      R => SR(0)
    );
\ram_clk_config_reg[12][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[12][0]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[12]_9\(9),
      R => SR(0)
    );
\ram_clk_config_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[13]_10\(0),
      R => SR(0)
    );
\ram_clk_config_reg[13][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[13]_10\(10),
      R => SR(0)
    );
\ram_clk_config_reg[13][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[13]_10\(11),
      R => SR(0)
    );
\ram_clk_config_reg[13][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[13]_10\(12),
      R => SR(0)
    );
\ram_clk_config_reg[13][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[13]_10\(13),
      R => SR(0)
    );
\ram_clk_config_reg[13][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[13]_10\(14),
      S => SR(0)
    );
\ram_clk_config_reg[13][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[13]_10\(15),
      S => SR(0)
    );
\ram_clk_config_reg[13][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[13]_10\(16),
      R => SR(0)
    );
\ram_clk_config_reg[13][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[13]_10\(17),
      R => SR(0)
    );
\ram_clk_config_reg[13][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[13]_10\(18),
      R => SR(0)
    );
\ram_clk_config_reg[13][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[13]_10\(19),
      R => SR(0)
    );
\ram_clk_config_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[13]_10\(1),
      R => SR(0)
    );
\ram_clk_config_reg[13][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[13]_10\(20),
      R => SR(0)
    );
\ram_clk_config_reg[13][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[13]_10\(21),
      R => SR(0)
    );
\ram_clk_config_reg[13][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[13]_10\(22),
      R => SR(0)
    );
\ram_clk_config_reg[13][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[13]_10\(23),
      R => SR(0)
    );
\ram_clk_config_reg[13][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[13]_10\(24),
      R => SR(0)
    );
\ram_clk_config_reg[13][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[13]_10\(25),
      R => SR(0)
    );
\ram_clk_config_reg[13][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[13]_10\(26),
      R => SR(0)
    );
\ram_clk_config_reg[13][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[13]_10\(27),
      R => SR(0)
    );
\ram_clk_config_reg[13][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[13]_10\(28),
      R => SR(0)
    );
\ram_clk_config_reg[13][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[13]_10\(29),
      R => SR(0)
    );
\ram_clk_config_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[13]_10\(2),
      R => SR(0)
    );
\ram_clk_config_reg[13][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[13]_10\(30),
      R => SR(0)
    );
\ram_clk_config_reg[13][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[13]_10\(31),
      R => SR(0)
    );
\ram_clk_config_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[13]_10\(3),
      R => SR(0)
    );
\ram_clk_config_reg[13][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[13]_10\(4),
      S => SR(0)
    );
\ram_clk_config_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[13]_10\(5),
      R => SR(0)
    );
\ram_clk_config_reg[13][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[13]_10\(6),
      S => SR(0)
    );
\ram_clk_config_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[13]_10\(7),
      R => SR(0)
    );
\ram_clk_config_reg[13][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[13]_10\(8),
      S => SR(0)
    );
\ram_clk_config_reg[13][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[13][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[13]_10\(9),
      S => SR(0)
    );
\ram_clk_config_reg[14][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[14]_11\(0),
      S => SR(0)
    );
\ram_clk_config_reg[14][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[14]_11\(10),
      R => SR(0)
    );
\ram_clk_config_reg[14][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[14]_11\(11),
      R => SR(0)
    );
\ram_clk_config_reg[14][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[14]_11\(12),
      R => SR(0)
    );
\ram_clk_config_reg[14][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[14]_11\(13),
      R => SR(0)
    );
\ram_clk_config_reg[14][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[14]_11\(14),
      R => SR(0)
    );
\ram_clk_config_reg[14][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[14]_11\(15),
      R => SR(0)
    );
\ram_clk_config_reg[14][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[14]_11\(16),
      R => SR(0)
    );
\ram_clk_config_reg[14][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[14][17]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[14][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[14]_11\(18),
      R => SR(0)
    );
\ram_clk_config_reg[14][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[14]_11\(19),
      R => SR(0)
    );
\ram_clk_config_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[14]_11\(1),
      R => SR(0)
    );
\ram_clk_config_reg[14][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[14]_11\(20),
      R => SR(0)
    );
\ram_clk_config_reg[14][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[14]_11\(21),
      R => SR(0)
    );
\ram_clk_config_reg[14][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[14]_11\(22),
      R => SR(0)
    );
\ram_clk_config_reg[14][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[14]_11\(23),
      R => SR(0)
    );
\ram_clk_config_reg[14][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[14]_11\(24),
      R => SR(0)
    );
\ram_clk_config_reg[14][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[14]_11\(25),
      R => SR(0)
    );
\ram_clk_config_reg[14][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[14]_11\(26),
      R => SR(0)
    );
\ram_clk_config_reg[14][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[14]_11\(27),
      R => SR(0)
    );
\ram_clk_config_reg[14][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[14]_11\(28),
      R => SR(0)
    );
\ram_clk_config_reg[14][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[14]_11\(29),
      R => SR(0)
    );
\ram_clk_config_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[14]_11\(2),
      R => SR(0)
    );
\ram_clk_config_reg[14][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[14]_11\(30),
      R => SR(0)
    );
\ram_clk_config_reg[14][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[14]_11\(31),
      R => SR(0)
    );
\ram_clk_config_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[14]_11\(3),
      R => SR(0)
    );
\ram_clk_config_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[14]_11\(4),
      R => SR(0)
    );
\ram_clk_config_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[14]_11\(5),
      R => SR(0)
    );
\ram_clk_config_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[14]_11\(6),
      R => SR(0)
    );
\ram_clk_config_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[14]_11\(7),
      R => SR(0)
    );
\ram_clk_config_reg[14][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[14]_11\(8),
      R => SR(0)
    );
\ram_clk_config_reg[14][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[14][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[14]_11\(9),
      R => SR(0)
    );
\ram_clk_config_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[15]_12\(0),
      R => SR(0)
    );
\ram_clk_config_reg[15][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[15]_12\(10),
      R => SR(0)
    );
\ram_clk_config_reg[15][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[15]_12\(11),
      R => SR(0)
    );
\ram_clk_config_reg[15][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[15]_12\(12),
      R => SR(0)
    );
\ram_clk_config_reg[15][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[15]_12\(13),
      R => SR(0)
    );
\ram_clk_config_reg[15][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[15]_12\(14),
      R => SR(0)
    );
\ram_clk_config_reg[15][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[15]_12\(15),
      R => SR(0)
    );
\ram_clk_config_reg[15][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[15]_12\(16),
      R => SR(0)
    );
\ram_clk_config_reg[15][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[15][17]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[15][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[15]_12\(18),
      R => SR(0)
    );
\ram_clk_config_reg[15][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[15]_12\(19),
      R => SR(0)
    );
\ram_clk_config_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[15]_12\(1),
      R => SR(0)
    );
\ram_clk_config_reg[15][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[15]_12\(20),
      R => SR(0)
    );
\ram_clk_config_reg[15][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[15]_12\(21),
      R => SR(0)
    );
\ram_clk_config_reg[15][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[15]_12\(22),
      R => SR(0)
    );
\ram_clk_config_reg[15][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[15]_12\(23),
      R => SR(0)
    );
\ram_clk_config_reg[15][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[15]_12\(24),
      R => SR(0)
    );
\ram_clk_config_reg[15][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[15]_12\(25),
      R => SR(0)
    );
\ram_clk_config_reg[15][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[15]_12\(26),
      R => SR(0)
    );
\ram_clk_config_reg[15][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[15]_12\(27),
      R => SR(0)
    );
\ram_clk_config_reg[15][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[15]_12\(28),
      R => SR(0)
    );
\ram_clk_config_reg[15][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[15]_12\(29),
      R => SR(0)
    );
\ram_clk_config_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[15]_12\(2),
      R => SR(0)
    );
\ram_clk_config_reg[15][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[15]_12\(30),
      R => SR(0)
    );
\ram_clk_config_reg[15][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[15]_12\(31),
      R => SR(0)
    );
\ram_clk_config_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[15]_12\(3),
      R => SR(0)
    );
\ram_clk_config_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[15]_12\(4),
      R => SR(0)
    );
\ram_clk_config_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[15]_12\(5),
      R => SR(0)
    );
\ram_clk_config_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[15]_12\(6),
      R => SR(0)
    );
\ram_clk_config_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[15]_12\(7),
      R => SR(0)
    );
\ram_clk_config_reg[15][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[15]_12\(8),
      R => SR(0)
    );
\ram_clk_config_reg[15][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[15][0]_1\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[15]_12\(9),
      R => SR(0)
    );
\ram_clk_config_reg[16][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[16]_13\(0),
      R => SR(0)
    );
\ram_clk_config_reg[16][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[16]_13\(10),
      R => SR(0)
    );
\ram_clk_config_reg[16][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[16]_13\(11),
      R => SR(0)
    );
\ram_clk_config_reg[16][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[16]_13\(12),
      R => SR(0)
    );
\ram_clk_config_reg[16][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[16]_13\(13),
      R => SR(0)
    );
\ram_clk_config_reg[16][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[16]_13\(14),
      S => SR(0)
    );
\ram_clk_config_reg[16][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[16]_13\(15),
      S => SR(0)
    );
\ram_clk_config_reg[16][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[16]_13\(16),
      R => SR(0)
    );
\ram_clk_config_reg[16][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[16]_13\(17),
      R => SR(0)
    );
\ram_clk_config_reg[16][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[16]_13\(18),
      R => SR(0)
    );
\ram_clk_config_reg[16][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[16]_13\(19),
      R => SR(0)
    );
\ram_clk_config_reg[16][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[16]_13\(1),
      R => SR(0)
    );
\ram_clk_config_reg[16][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[16]_13\(20),
      R => SR(0)
    );
\ram_clk_config_reg[16][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[16]_13\(21),
      R => SR(0)
    );
\ram_clk_config_reg[16][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[16]_13\(22),
      R => SR(0)
    );
\ram_clk_config_reg[16][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[16]_13\(23),
      R => SR(0)
    );
\ram_clk_config_reg[16][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[16]_13\(24),
      R => SR(0)
    );
\ram_clk_config_reg[16][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[16]_13\(25),
      R => SR(0)
    );
\ram_clk_config_reg[16][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[16]_13\(26),
      R => SR(0)
    );
\ram_clk_config_reg[16][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[16]_13\(27),
      R => SR(0)
    );
\ram_clk_config_reg[16][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[16]_13\(28),
      R => SR(0)
    );
\ram_clk_config_reg[16][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[16]_13\(29),
      R => SR(0)
    );
\ram_clk_config_reg[16][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[16]_13\(2),
      R => SR(0)
    );
\ram_clk_config_reg[16][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[16]_13\(30),
      R => SR(0)
    );
\ram_clk_config_reg[16][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[16]_13\(31),
      R => SR(0)
    );
\ram_clk_config_reg[16][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[16]_13\(3),
      R => SR(0)
    );
\ram_clk_config_reg[16][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[16]_13\(4),
      S => SR(0)
    );
\ram_clk_config_reg[16][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[16]_13\(5),
      R => SR(0)
    );
\ram_clk_config_reg[16][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[16]_13\(6),
      S => SR(0)
    );
\ram_clk_config_reg[16][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[16]_13\(7),
      R => SR(0)
    );
\ram_clk_config_reg[16][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[16]_13\(8),
      S => SR(0)
    );
\ram_clk_config_reg[16][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[16][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[16]_13\(9),
      S => SR(0)
    );
\ram_clk_config_reg[17][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[17]_14\(0),
      S => SR(0)
    );
\ram_clk_config_reg[17][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[17]_14\(10),
      R => SR(0)
    );
\ram_clk_config_reg[17][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[17]_14\(11),
      R => SR(0)
    );
\ram_clk_config_reg[17][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[17]_14\(12),
      R => SR(0)
    );
\ram_clk_config_reg[17][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[17]_14\(13),
      R => SR(0)
    );
\ram_clk_config_reg[17][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[17]_14\(14),
      R => SR(0)
    );
\ram_clk_config_reg[17][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[17]_14\(15),
      R => SR(0)
    );
\ram_clk_config_reg[17][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[17]_14\(16),
      R => SR(0)
    );
\ram_clk_config_reg[17][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[17]_14\(17),
      R => SR(0)
    );
\ram_clk_config_reg[17][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[17]_14\(18),
      R => SR(0)
    );
\ram_clk_config_reg[17][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[17]_14\(19),
      R => SR(0)
    );
\ram_clk_config_reg[17][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[17]_14\(1),
      R => SR(0)
    );
\ram_clk_config_reg[17][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[17]_14\(20),
      R => SR(0)
    );
\ram_clk_config_reg[17][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[17]_14\(21),
      R => SR(0)
    );
\ram_clk_config_reg[17][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[17]_14\(22),
      R => SR(0)
    );
\ram_clk_config_reg[17][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[17]_14\(23),
      R => SR(0)
    );
\ram_clk_config_reg[17][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[17]_14\(24),
      R => SR(0)
    );
\ram_clk_config_reg[17][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[17]_14\(25),
      R => SR(0)
    );
\ram_clk_config_reg[17][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[17]_14\(26),
      R => SR(0)
    );
\ram_clk_config_reg[17][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[17]_14\(27),
      R => SR(0)
    );
\ram_clk_config_reg[17][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[17]_14\(28),
      R => SR(0)
    );
\ram_clk_config_reg[17][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[17]_14\(29),
      R => SR(0)
    );
\ram_clk_config_reg[17][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[17]_14\(2),
      R => SR(0)
    );
\ram_clk_config_reg[17][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[17]_14\(30),
      R => SR(0)
    );
\ram_clk_config_reg[17][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[17]_14\(31),
      R => SR(0)
    );
\ram_clk_config_reg[17][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[17]_14\(3),
      R => SR(0)
    );
\ram_clk_config_reg[17][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[17]_14\(4),
      R => SR(0)
    );
\ram_clk_config_reg[17][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[17]_14\(5),
      R => SR(0)
    );
\ram_clk_config_reg[17][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[17]_14\(6),
      R => SR(0)
    );
\ram_clk_config_reg[17][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[17]_14\(7),
      R => SR(0)
    );
\ram_clk_config_reg[17][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[17]_14\(8),
      R => SR(0)
    );
\ram_clk_config_reg[17][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[17][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[17]_14\(9),
      R => SR(0)
    );
\ram_clk_config_reg[18][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[18]_15\(0),
      R => SR(0)
    );
\ram_clk_config_reg[18][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[18]_15\(10),
      R => SR(0)
    );
\ram_clk_config_reg[18][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[18]_15\(11),
      R => SR(0)
    );
\ram_clk_config_reg[18][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[18]_15\(12),
      R => SR(0)
    );
\ram_clk_config_reg[18][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[18]_15\(13),
      R => SR(0)
    );
\ram_clk_config_reg[18][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[18]_15\(14),
      R => SR(0)
    );
\ram_clk_config_reg[18][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[18]_15\(15),
      R => SR(0)
    );
\ram_clk_config_reg[18][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[18]_15\(16),
      R => SR(0)
    );
\ram_clk_config_reg[18][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[18]_15\(17),
      R => SR(0)
    );
\ram_clk_config_reg[18][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[18]_15\(18),
      R => SR(0)
    );
\ram_clk_config_reg[18][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[18]_15\(19),
      R => SR(0)
    );
\ram_clk_config_reg[18][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[18]_15\(1),
      R => SR(0)
    );
\ram_clk_config_reg[18][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[18]_15\(20),
      R => SR(0)
    );
\ram_clk_config_reg[18][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[18]_15\(21),
      R => SR(0)
    );
\ram_clk_config_reg[18][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[18]_15\(22),
      R => SR(0)
    );
\ram_clk_config_reg[18][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[18]_15\(23),
      R => SR(0)
    );
\ram_clk_config_reg[18][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[18]_15\(24),
      R => SR(0)
    );
\ram_clk_config_reg[18][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[18]_15\(25),
      R => SR(0)
    );
\ram_clk_config_reg[18][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[18]_15\(26),
      R => SR(0)
    );
\ram_clk_config_reg[18][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[18]_15\(27),
      R => SR(0)
    );
\ram_clk_config_reg[18][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[18]_15\(28),
      R => SR(0)
    );
\ram_clk_config_reg[18][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[18]_15\(29),
      R => SR(0)
    );
\ram_clk_config_reg[18][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[18]_15\(2),
      R => SR(0)
    );
\ram_clk_config_reg[18][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[18]_15\(30),
      R => SR(0)
    );
\ram_clk_config_reg[18][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[18]_15\(31),
      R => SR(0)
    );
\ram_clk_config_reg[18][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[18]_15\(3),
      R => SR(0)
    );
\ram_clk_config_reg[18][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[18]_15\(4),
      R => SR(0)
    );
\ram_clk_config_reg[18][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[18]_15\(5),
      R => SR(0)
    );
\ram_clk_config_reg[18][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[18]_15\(6),
      R => SR(0)
    );
\ram_clk_config_reg[18][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[18]_15\(7),
      R => SR(0)
    );
\ram_clk_config_reg[18][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[18]_15\(8),
      R => SR(0)
    );
\ram_clk_config_reg[18][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[18][0]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[18]_15\(9),
      R => SR(0)
    );
\ram_clk_config_reg[19][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[19]_16\(0),
      R => SR(0)
    );
\ram_clk_config_reg[19][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[19]_16\(10),
      R => SR(0)
    );
\ram_clk_config_reg[19][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[19]_16\(11),
      R => SR(0)
    );
\ram_clk_config_reg[19][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[19]_16\(12),
      R => SR(0)
    );
\ram_clk_config_reg[19][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[19]_16\(13),
      R => SR(0)
    );
\ram_clk_config_reg[19][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[19]_16\(14),
      S => SR(0)
    );
\ram_clk_config_reg[19][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[19]_16\(15),
      S => SR(0)
    );
\ram_clk_config_reg[19][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[19]_16\(16),
      R => SR(0)
    );
\ram_clk_config_reg[19][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[19]_16\(17),
      R => SR(0)
    );
\ram_clk_config_reg[19][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[19]_16\(18),
      R => SR(0)
    );
\ram_clk_config_reg[19][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[19]_16\(19),
      R => SR(0)
    );
\ram_clk_config_reg[19][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[19]_16\(1),
      R => SR(0)
    );
\ram_clk_config_reg[19][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[19]_16\(20),
      R => SR(0)
    );
\ram_clk_config_reg[19][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[19]_16\(21),
      R => SR(0)
    );
\ram_clk_config_reg[19][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[19]_16\(22),
      R => SR(0)
    );
\ram_clk_config_reg[19][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[19]_16\(23),
      R => SR(0)
    );
\ram_clk_config_reg[19][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[19]_16\(24),
      R => SR(0)
    );
\ram_clk_config_reg[19][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[19]_16\(25),
      R => SR(0)
    );
\ram_clk_config_reg[19][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[19]_16\(26),
      R => SR(0)
    );
\ram_clk_config_reg[19][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[19]_16\(27),
      R => SR(0)
    );
\ram_clk_config_reg[19][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[19]_16\(28),
      R => SR(0)
    );
\ram_clk_config_reg[19][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[19]_16\(29),
      R => SR(0)
    );
\ram_clk_config_reg[19][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[19]_16\(2),
      R => SR(0)
    );
\ram_clk_config_reg[19][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[19]_16\(30),
      R => SR(0)
    );
\ram_clk_config_reg[19][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[19]_16\(31),
      R => SR(0)
    );
\ram_clk_config_reg[19][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[19]_16\(3),
      R => SR(0)
    );
\ram_clk_config_reg[19][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[19]_16\(4),
      S => SR(0)
    );
\ram_clk_config_reg[19][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[19]_16\(5),
      R => SR(0)
    );
\ram_clk_config_reg[19][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[19]_16\(6),
      S => SR(0)
    );
\ram_clk_config_reg[19][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[19]_16\(7),
      R => SR(0)
    );
\ram_clk_config_reg[19][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[19]_16\(8),
      S => SR(0)
    );
\ram_clk_config_reg[19][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[19][0]_1\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[19]_16\(9),
      S => SR(0)
    );
\ram_clk_config_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[1]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[1]_0\(10),
      R => SR(0)
    );
\ram_clk_config_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[1]_0\(11),
      R => SR(0)
    );
\ram_clk_config_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[1]_0\(12),
      R => SR(0)
    );
\ram_clk_config_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[1]_0\(13),
      R => SR(0)
    );
\ram_clk_config_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[1]_0\(14),
      R => SR(0)
    );
\ram_clk_config_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[1]_0\(15),
      R => SR(0)
    );
\ram_clk_config_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[1]_0\(16),
      R => SR(0)
    );
\ram_clk_config_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[1]_0\(17),
      R => SR(0)
    );
\ram_clk_config_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[1]_0\(18),
      R => SR(0)
    );
\ram_clk_config_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[1]_0\(19),
      R => SR(0)
    );
\ram_clk_config_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[1]_0\(1),
      R => SR(0)
    );
\ram_clk_config_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[1]_0\(20),
      R => SR(0)
    );
\ram_clk_config_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[1]_0\(21),
      R => SR(0)
    );
\ram_clk_config_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[1]_0\(22),
      R => SR(0)
    );
\ram_clk_config_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[1]_0\(23),
      R => SR(0)
    );
\ram_clk_config_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[1]_0\(24),
      R => SR(0)
    );
\ram_clk_config_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[1]_0\(25),
      R => SR(0)
    );
\ram_clk_config_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[1]_0\(26),
      R => SR(0)
    );
\ram_clk_config_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[1]_0\(27),
      R => SR(0)
    );
\ram_clk_config_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[1]_0\(28),
      R => SR(0)
    );
\ram_clk_config_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[1]_0\(29),
      R => SR(0)
    );
\ram_clk_config_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[1]_0\(2),
      R => SR(0)
    );
\ram_clk_config_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[1]_0\(30),
      R => SR(0)
    );
\ram_clk_config_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[1]_0\(31),
      R => SR(0)
    );
\ram_clk_config_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[1]_0\(3),
      R => SR(0)
    );
\ram_clk_config_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[1]_0\(4),
      R => SR(0)
    );
\ram_clk_config_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[1]_0\(5),
      R => SR(0)
    );
\ram_clk_config_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[1]_0\(6),
      R => SR(0)
    );
\ram_clk_config_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[1]_0\(7),
      R => SR(0)
    );
\ram_clk_config_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[1]_0\(8),
      R => SR(0)
    );
\ram_clk_config_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[1][0]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[1]_0\(9),
      R => SR(0)
    );
\ram_clk_config_reg[20][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[20]_17\(0),
      S => SR(0)
    );
\ram_clk_config_reg[20][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[20]_17\(10),
      R => SR(0)
    );
\ram_clk_config_reg[20][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[20]_17\(11),
      R => SR(0)
    );
\ram_clk_config_reg[20][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[20]_17\(12),
      R => SR(0)
    );
\ram_clk_config_reg[20][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[20]_17\(13),
      R => SR(0)
    );
\ram_clk_config_reg[20][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[20]_17\(14),
      R => SR(0)
    );
\ram_clk_config_reg[20][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[20]_17\(15),
      R => SR(0)
    );
\ram_clk_config_reg[20][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[20]_17\(16),
      R => SR(0)
    );
\ram_clk_config_reg[20][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[20]_17\(17),
      R => SR(0)
    );
\ram_clk_config_reg[20][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[20]_17\(18),
      R => SR(0)
    );
\ram_clk_config_reg[20][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[20]_17\(19),
      R => SR(0)
    );
\ram_clk_config_reg[20][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[20]_17\(1),
      R => SR(0)
    );
\ram_clk_config_reg[20][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[20]_17\(20),
      R => SR(0)
    );
\ram_clk_config_reg[20][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[20]_17\(21),
      R => SR(0)
    );
\ram_clk_config_reg[20][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[20]_17\(22),
      R => SR(0)
    );
\ram_clk_config_reg[20][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[20]_17\(23),
      R => SR(0)
    );
\ram_clk_config_reg[20][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[20]_17\(24),
      R => SR(0)
    );
\ram_clk_config_reg[20][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[20]_17\(25),
      R => SR(0)
    );
\ram_clk_config_reg[20][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[20]_17\(26),
      R => SR(0)
    );
\ram_clk_config_reg[20][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[20]_17\(27),
      R => SR(0)
    );
\ram_clk_config_reg[20][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[20]_17\(28),
      R => SR(0)
    );
\ram_clk_config_reg[20][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[20]_17\(29),
      R => SR(0)
    );
\ram_clk_config_reg[20][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[20]_17\(2),
      R => SR(0)
    );
\ram_clk_config_reg[20][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[20]_17\(30),
      R => SR(0)
    );
\ram_clk_config_reg[20][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[20]_17\(31),
      R => SR(0)
    );
\ram_clk_config_reg[20][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[20]_17\(3),
      R => SR(0)
    );
\ram_clk_config_reg[20][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[20]_17\(4),
      R => SR(0)
    );
\ram_clk_config_reg[20][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[20]_17\(5),
      R => SR(0)
    );
\ram_clk_config_reg[20][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[20]_17\(6),
      R => SR(0)
    );
\ram_clk_config_reg[20][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[20]_17\(7),
      R => SR(0)
    );
\ram_clk_config_reg[20][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[20]_17\(8),
      R => SR(0)
    );
\ram_clk_config_reg[20][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[20][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[20]_17\(9),
      R => SR(0)
    );
\ram_clk_config_reg[21][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[21]_18\(0),
      R => SR(0)
    );
\ram_clk_config_reg[21][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[21]_18\(10),
      R => SR(0)
    );
\ram_clk_config_reg[21][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[21]_18\(11),
      R => SR(0)
    );
\ram_clk_config_reg[21][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[21]_18\(12),
      R => SR(0)
    );
\ram_clk_config_reg[21][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[21]_18\(13),
      R => SR(0)
    );
\ram_clk_config_reg[21][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[21]_18\(14),
      R => SR(0)
    );
\ram_clk_config_reg[21][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[21]_18\(15),
      R => SR(0)
    );
\ram_clk_config_reg[21][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[21]_18\(16),
      R => SR(0)
    );
\ram_clk_config_reg[21][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[21]_18\(17),
      R => SR(0)
    );
\ram_clk_config_reg[21][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[21]_18\(18),
      R => SR(0)
    );
\ram_clk_config_reg[21][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[21]_18\(19),
      R => SR(0)
    );
\ram_clk_config_reg[21][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[21]_18\(1),
      R => SR(0)
    );
\ram_clk_config_reg[21][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[21]_18\(20),
      R => SR(0)
    );
\ram_clk_config_reg[21][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[21]_18\(21),
      R => SR(0)
    );
\ram_clk_config_reg[21][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[21]_18\(22),
      R => SR(0)
    );
\ram_clk_config_reg[21][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[21]_18\(23),
      R => SR(0)
    );
\ram_clk_config_reg[21][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[21]_18\(24),
      R => SR(0)
    );
\ram_clk_config_reg[21][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[21]_18\(25),
      R => SR(0)
    );
\ram_clk_config_reg[21][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[21]_18\(26),
      R => SR(0)
    );
\ram_clk_config_reg[21][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[21]_18\(27),
      R => SR(0)
    );
\ram_clk_config_reg[21][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[21]_18\(28),
      R => SR(0)
    );
\ram_clk_config_reg[21][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[21]_18\(29),
      R => SR(0)
    );
\ram_clk_config_reg[21][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[21]_18\(2),
      R => SR(0)
    );
\ram_clk_config_reg[21][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[21]_18\(30),
      R => SR(0)
    );
\ram_clk_config_reg[21][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[21]_18\(31),
      R => SR(0)
    );
\ram_clk_config_reg[21][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[21]_18\(3),
      R => SR(0)
    );
\ram_clk_config_reg[21][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[21]_18\(4),
      R => SR(0)
    );
\ram_clk_config_reg[21][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[21]_18\(5),
      R => SR(0)
    );
\ram_clk_config_reg[21][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[21]_18\(6),
      R => SR(0)
    );
\ram_clk_config_reg[21][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[21]_18\(7),
      R => SR(0)
    );
\ram_clk_config_reg[21][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[21]_18\(8),
      R => SR(0)
    );
\ram_clk_config_reg[21][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[21][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[21]_18\(9),
      R => SR(0)
    );
\ram_clk_config_reg[22][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[22]_19\(0),
      R => SR(0)
    );
\ram_clk_config_reg[22][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[22]_19\(10),
      R => SR(0)
    );
\ram_clk_config_reg[22][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[22]_19\(11),
      R => SR(0)
    );
\ram_clk_config_reg[22][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[22]_19\(12),
      R => SR(0)
    );
\ram_clk_config_reg[22][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[22]_19\(13),
      R => SR(0)
    );
\ram_clk_config_reg[22][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[22]_19\(14),
      S => SR(0)
    );
\ram_clk_config_reg[22][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[22]_19\(15),
      S => SR(0)
    );
\ram_clk_config_reg[22][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[22]_19\(16),
      R => SR(0)
    );
\ram_clk_config_reg[22][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[22]_19\(17),
      R => SR(0)
    );
\ram_clk_config_reg[22][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[22]_19\(18),
      R => SR(0)
    );
\ram_clk_config_reg[22][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[22]_19\(19),
      R => SR(0)
    );
\ram_clk_config_reg[22][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[22]_19\(1),
      R => SR(0)
    );
\ram_clk_config_reg[22][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[22]_19\(20),
      R => SR(0)
    );
\ram_clk_config_reg[22][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[22]_19\(21),
      R => SR(0)
    );
\ram_clk_config_reg[22][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[22]_19\(22),
      R => SR(0)
    );
\ram_clk_config_reg[22][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[22]_19\(23),
      R => SR(0)
    );
\ram_clk_config_reg[22][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[22]_19\(24),
      R => SR(0)
    );
\ram_clk_config_reg[22][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[22]_19\(25),
      R => SR(0)
    );
\ram_clk_config_reg[22][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[22]_19\(26),
      R => SR(0)
    );
\ram_clk_config_reg[22][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[22]_19\(27),
      R => SR(0)
    );
\ram_clk_config_reg[22][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[22]_19\(28),
      R => SR(0)
    );
\ram_clk_config_reg[22][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[22]_19\(29),
      R => SR(0)
    );
\ram_clk_config_reg[22][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[22]_19\(2),
      R => SR(0)
    );
\ram_clk_config_reg[22][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[22]_19\(30),
      R => SR(0)
    );
\ram_clk_config_reg[22][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[22]_19\(31),
      R => SR(0)
    );
\ram_clk_config_reg[22][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[22]_19\(3),
      R => SR(0)
    );
\ram_clk_config_reg[22][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[22]_19\(4),
      S => SR(0)
    );
\ram_clk_config_reg[22][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[22]_19\(5),
      R => SR(0)
    );
\ram_clk_config_reg[22][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[22]_19\(6),
      S => SR(0)
    );
\ram_clk_config_reg[22][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[22]_19\(7),
      R => SR(0)
    );
\ram_clk_config_reg[22][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[22]_19\(8),
      S => SR(0)
    );
\ram_clk_config_reg[22][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[22][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[22]_19\(9),
      S => SR(0)
    );
\ram_clk_config_reg[23][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[23]_20\(0),
      R => SR(0)
    );
\ram_clk_config_reg[23][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[23]_20\(10),
      R => SR(0)
    );
\ram_clk_config_reg[23][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[23]_20\(11),
      R => SR(0)
    );
\ram_clk_config_reg[23][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[23]_20\(12),
      R => SR(0)
    );
\ram_clk_config_reg[23][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[23]_20\(13),
      R => SR(0)
    );
\ram_clk_config_reg[23][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[23]_20\(14),
      R => SR(0)
    );
\ram_clk_config_reg[23][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[23]_20\(15),
      R => SR(0)
    );
\ram_clk_config_reg[23][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[23]_20\(16),
      R => SR(0)
    );
\ram_clk_config_reg[23][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[23]_20\(17),
      R => SR(0)
    );
\ram_clk_config_reg[23][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[23]_20\(18),
      R => SR(0)
    );
\ram_clk_config_reg[23][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[23]_20\(19),
      R => SR(0)
    );
\ram_clk_config_reg[23][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[23]_20\(1),
      R => SR(0)
    );
\ram_clk_config_reg[23][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[23]_20\(20),
      R => SR(0)
    );
\ram_clk_config_reg[23][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[23]_20\(21),
      R => SR(0)
    );
\ram_clk_config_reg[23][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[23]_20\(22),
      R => SR(0)
    );
\ram_clk_config_reg[23][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[23]_20\(23),
      R => SR(0)
    );
\ram_clk_config_reg[23][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[23]_20\(24),
      R => SR(0)
    );
\ram_clk_config_reg[23][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[23]_20\(25),
      R => SR(0)
    );
\ram_clk_config_reg[23][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[23]_20\(26),
      R => SR(0)
    );
\ram_clk_config_reg[23][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[23]_20\(27),
      R => SR(0)
    );
\ram_clk_config_reg[23][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[23]_20\(28),
      R => SR(0)
    );
\ram_clk_config_reg[23][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[23]_20\(29),
      R => SR(0)
    );
\ram_clk_config_reg[23][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[23]_20\(2),
      R => SR(0)
    );
\ram_clk_config_reg[23][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[23]_20\(30),
      R => SR(0)
    );
\ram_clk_config_reg[23][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[23]_20\(31),
      R => SR(0)
    );
\ram_clk_config_reg[23][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[23]_20\(3),
      R => SR(0)
    );
\ram_clk_config_reg[23][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[23]_20\(4),
      R => SR(0)
    );
\ram_clk_config_reg[23][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[23]_20\(5),
      R => SR(0)
    );
\ram_clk_config_reg[23][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[23]_20\(6),
      R => SR(0)
    );
\ram_clk_config_reg[23][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[23]_20\(7),
      R => SR(0)
    );
\ram_clk_config_reg[23][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[23]_20\(8),
      R => SR(0)
    );
\ram_clk_config_reg[23][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[23][0]_1\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[23]_20\(9),
      R => SR(0)
    );
\ram_clk_config_reg[24][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[24]_21\(0),
      R => SR(0)
    );
\ram_clk_config_reg[24][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[24]_21\(10),
      R => SR(0)
    );
\ram_clk_config_reg[24][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[24]_21\(11),
      R => SR(0)
    );
\ram_clk_config_reg[24][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[24]_21\(12),
      R => SR(0)
    );
\ram_clk_config_reg[24][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[24]_21\(13),
      R => SR(0)
    );
\ram_clk_config_reg[24][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[24]_21\(14),
      R => SR(0)
    );
\ram_clk_config_reg[24][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[24]_21\(15),
      R => SR(0)
    );
\ram_clk_config_reg[24][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[24]_21\(16),
      R => SR(0)
    );
\ram_clk_config_reg[24][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[24][17]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[24][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[24]_21\(18),
      R => SR(0)
    );
\ram_clk_config_reg[24][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[24]_21\(19),
      R => SR(0)
    );
\ram_clk_config_reg[24][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[24]_21\(1),
      R => SR(0)
    );
\ram_clk_config_reg[24][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[24]_21\(20),
      R => SR(0)
    );
\ram_clk_config_reg[24][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[24]_21\(21),
      R => SR(0)
    );
\ram_clk_config_reg[24][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[24]_21\(22),
      R => SR(0)
    );
\ram_clk_config_reg[24][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[24]_21\(23),
      R => SR(0)
    );
\ram_clk_config_reg[24][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[24]_21\(24),
      R => SR(0)
    );
\ram_clk_config_reg[24][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[24]_21\(25),
      R => SR(0)
    );
\ram_clk_config_reg[24][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[24]_21\(26),
      R => SR(0)
    );
\ram_clk_config_reg[24][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[24]_21\(27),
      R => SR(0)
    );
\ram_clk_config_reg[24][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[24]_21\(28),
      R => SR(0)
    );
\ram_clk_config_reg[24][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[24]_21\(29),
      R => SR(0)
    );
\ram_clk_config_reg[24][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[24]_21\(2),
      R => SR(0)
    );
\ram_clk_config_reg[24][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[24]_21\(30),
      R => SR(0)
    );
\ram_clk_config_reg[24][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[24]_21\(31),
      R => SR(0)
    );
\ram_clk_config_reg[24][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[24]_21\(3),
      R => SR(0)
    );
\ram_clk_config_reg[24][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[24]_21\(4),
      R => SR(0)
    );
\ram_clk_config_reg[24][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[24]_21\(5),
      R => SR(0)
    );
\ram_clk_config_reg[24][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[24]_21\(6),
      R => SR(0)
    );
\ram_clk_config_reg[24][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[24]_21\(7),
      R => SR(0)
    );
\ram_clk_config_reg[24][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[24]_21\(8),
      R => SR(0)
    );
\ram_clk_config_reg[24][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[24][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[24]_21\(9),
      R => SR(0)
    );
\ram_clk_config_reg[25][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[25]_22\(0),
      R => SR(0)
    );
\ram_clk_config_reg[25][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[25]_22\(10),
      R => SR(0)
    );
\ram_clk_config_reg[25][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[25]_22\(11),
      R => SR(0)
    );
\ram_clk_config_reg[25][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[25]_22\(12),
      R => SR(0)
    );
\ram_clk_config_reg[25][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[25]_22\(13),
      R => SR(0)
    );
\ram_clk_config_reg[25][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[25]_22\(14),
      R => SR(0)
    );
\ram_clk_config_reg[25][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[25]_22\(15),
      R => SR(0)
    );
\ram_clk_config_reg[25][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[25]_22\(16),
      R => SR(0)
    );
\ram_clk_config_reg[25][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[25][17]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[25][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[25]_22\(18),
      R => SR(0)
    );
\ram_clk_config_reg[25][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[25]_22\(19),
      R => SR(0)
    );
\ram_clk_config_reg[25][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[25]_22\(1),
      R => SR(0)
    );
\ram_clk_config_reg[25][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[25]_22\(20),
      R => SR(0)
    );
\ram_clk_config_reg[25][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[25]_22\(21),
      R => SR(0)
    );
\ram_clk_config_reg[25][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[25]_22\(22),
      R => SR(0)
    );
\ram_clk_config_reg[25][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[25]_22\(23),
      R => SR(0)
    );
\ram_clk_config_reg[25][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[25]_22\(24),
      R => SR(0)
    );
\ram_clk_config_reg[25][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[25]_22\(25),
      R => SR(0)
    );
\ram_clk_config_reg[25][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[25]_22\(26),
      R => SR(0)
    );
\ram_clk_config_reg[25][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[25]_22\(27),
      R => SR(0)
    );
\ram_clk_config_reg[25][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[25]_22\(28),
      R => SR(0)
    );
\ram_clk_config_reg[25][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[25]_22\(29),
      R => SR(0)
    );
\ram_clk_config_reg[25][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[25]_22\(2),
      R => SR(0)
    );
\ram_clk_config_reg[25][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[25]_22\(30),
      R => SR(0)
    );
\ram_clk_config_reg[25][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[25]_22\(31),
      R => SR(0)
    );
\ram_clk_config_reg[25][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[25]_22\(3),
      R => SR(0)
    );
\ram_clk_config_reg[25][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[25]_22\(4),
      R => SR(0)
    );
\ram_clk_config_reg[25][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[25]_22\(5),
      R => SR(0)
    );
\ram_clk_config_reg[25][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[25]_22\(6),
      R => SR(0)
    );
\ram_clk_config_reg[25][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[25]_22\(7),
      R => SR(0)
    );
\ram_clk_config_reg[25][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[25]_22\(8),
      R => SR(0)
    );
\ram_clk_config_reg[25][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[25][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[25]_22\(9),
      R => SR(0)
    );
\ram_clk_config_reg[26][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[26]_23\(0),
      R => SR(0)
    );
\ram_clk_config_reg[26][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[26]_23\(10),
      R => SR(0)
    );
\ram_clk_config_reg[26][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[26]_23\(11),
      R => SR(0)
    );
\ram_clk_config_reg[26][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[26]_23\(12),
      R => SR(0)
    );
\ram_clk_config_reg[26][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[26]_23\(13),
      R => SR(0)
    );
\ram_clk_config_reg[26][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[26]_23\(14),
      R => SR(0)
    );
\ram_clk_config_reg[26][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[26]_23\(15),
      R => SR(0)
    );
\ram_clk_config_reg[26][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[26]_23\(16),
      R => SR(0)
    );
\ram_clk_config_reg[26][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[26]_23\(17),
      R => SR(0)
    );
\ram_clk_config_reg[26][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[26]_23\(18),
      R => SR(0)
    );
\ram_clk_config_reg[26][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[26]_23\(19),
      R => SR(0)
    );
\ram_clk_config_reg[26][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[26]_23\(1),
      R => SR(0)
    );
\ram_clk_config_reg[26][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[26]_23\(20),
      R => SR(0)
    );
\ram_clk_config_reg[26][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[26]_23\(21),
      R => SR(0)
    );
\ram_clk_config_reg[26][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[26]_23\(22),
      R => SR(0)
    );
\ram_clk_config_reg[26][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[26]_23\(23),
      R => SR(0)
    );
\ram_clk_config_reg[26][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[26]_23\(24),
      R => SR(0)
    );
\ram_clk_config_reg[26][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[26]_23\(25),
      R => SR(0)
    );
\ram_clk_config_reg[26][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[26]_23\(26),
      R => SR(0)
    );
\ram_clk_config_reg[26][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[26]_23\(27),
      R => SR(0)
    );
\ram_clk_config_reg[26][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[26]_23\(28),
      R => SR(0)
    );
\ram_clk_config_reg[26][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[26]_23\(29),
      R => SR(0)
    );
\ram_clk_config_reg[26][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[26]_23\(2),
      R => SR(0)
    );
\ram_clk_config_reg[26][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[26]_23\(30),
      R => SR(0)
    );
\ram_clk_config_reg[26][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[26]_23\(31),
      R => SR(0)
    );
\ram_clk_config_reg[26][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[26]_23\(3),
      R => SR(0)
    );
\ram_clk_config_reg[26][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[26]_23\(4),
      R => SR(0)
    );
\ram_clk_config_reg[26][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[26]_23\(5),
      R => SR(0)
    );
\ram_clk_config_reg[26][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[26]_23\(6),
      R => SR(0)
    );
\ram_clk_config_reg[26][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[26]_23\(7),
      R => SR(0)
    );
\ram_clk_config_reg[26][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[26]_23\(8),
      R => SR(0)
    );
\ram_clk_config_reg[26][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[26][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[26]_23\(9),
      R => SR(0)
    );
\ram_clk_config_reg[27][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[27]_24\(0),
      R => SR(0)
    );
\ram_clk_config_reg[27][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[27]_24\(10),
      R => SR(0)
    );
\ram_clk_config_reg[27][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[27]_24\(11),
      R => SR(0)
    );
\ram_clk_config_reg[27][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[27]_24\(12),
      R => SR(0)
    );
\ram_clk_config_reg[27][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[27]_24\(13),
      R => SR(0)
    );
\ram_clk_config_reg[27][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[27]_24\(14),
      R => SR(0)
    );
\ram_clk_config_reg[27][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[27]_24\(15),
      R => SR(0)
    );
\ram_clk_config_reg[27][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[27]_24\(16),
      R => SR(0)
    );
\ram_clk_config_reg[27][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[27]_24\(17),
      R => SR(0)
    );
\ram_clk_config_reg[27][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[27]_24\(18),
      R => SR(0)
    );
\ram_clk_config_reg[27][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[27]_24\(19),
      R => SR(0)
    );
\ram_clk_config_reg[27][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[27]_24\(1),
      R => SR(0)
    );
\ram_clk_config_reg[27][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[27]_24\(20),
      R => SR(0)
    );
\ram_clk_config_reg[27][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[27]_24\(21),
      R => SR(0)
    );
\ram_clk_config_reg[27][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[27]_24\(22),
      R => SR(0)
    );
\ram_clk_config_reg[27][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[27]_24\(23),
      R => SR(0)
    );
\ram_clk_config_reg[27][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[27]_24\(24),
      R => SR(0)
    );
\ram_clk_config_reg[27][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[27]_24\(25),
      R => SR(0)
    );
\ram_clk_config_reg[27][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[27]_24\(26),
      R => SR(0)
    );
\ram_clk_config_reg[27][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[27]_24\(27),
      R => SR(0)
    );
\ram_clk_config_reg[27][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[27]_24\(28),
      R => SR(0)
    );
\ram_clk_config_reg[27][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[27]_24\(29),
      R => SR(0)
    );
\ram_clk_config_reg[27][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[27]_24\(2),
      R => SR(0)
    );
\ram_clk_config_reg[27][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[27]_24\(30),
      R => SR(0)
    );
\ram_clk_config_reg[27][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[27]_24\(31),
      R => SR(0)
    );
\ram_clk_config_reg[27][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[27]_24\(3),
      R => SR(0)
    );
\ram_clk_config_reg[27][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[27]_24\(4),
      R => SR(0)
    );
\ram_clk_config_reg[27][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[27]_24\(5),
      R => SR(0)
    );
\ram_clk_config_reg[27][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[27]_24\(6),
      R => SR(0)
    );
\ram_clk_config_reg[27][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[27]_24\(7),
      R => SR(0)
    );
\ram_clk_config_reg[27][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[27]_24\(8),
      R => SR(0)
    );
\ram_clk_config_reg[27][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[27][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[27]_24\(9),
      R => SR(0)
    );
\ram_clk_config_reg[28][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[28]_25\(0),
      R => SR(0)
    );
\ram_clk_config_reg[28][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[28]_25\(10),
      R => SR(0)
    );
\ram_clk_config_reg[28][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[28]_25\(11),
      R => SR(0)
    );
\ram_clk_config_reg[28][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[28]_25\(12),
      R => SR(0)
    );
\ram_clk_config_reg[28][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[28]_25\(13),
      R => SR(0)
    );
\ram_clk_config_reg[28][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[28]_25\(14),
      R => SR(0)
    );
\ram_clk_config_reg[28][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[28]_25\(15),
      R => SR(0)
    );
\ram_clk_config_reg[28][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[28]_25\(16),
      R => SR(0)
    );
\ram_clk_config_reg[28][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[28]_25\(17),
      R => SR(0)
    );
\ram_clk_config_reg[28][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[28]_25\(18),
      R => SR(0)
    );
\ram_clk_config_reg[28][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[28]_25\(19),
      R => SR(0)
    );
\ram_clk_config_reg[28][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[28]_25\(1),
      R => SR(0)
    );
\ram_clk_config_reg[28][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[28]_25\(20),
      R => SR(0)
    );
\ram_clk_config_reg[28][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[28]_25\(21),
      R => SR(0)
    );
\ram_clk_config_reg[28][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[28]_25\(22),
      R => SR(0)
    );
\ram_clk_config_reg[28][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[28]_25\(23),
      R => SR(0)
    );
\ram_clk_config_reg[28][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[28]_25\(24),
      R => SR(0)
    );
\ram_clk_config_reg[28][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[28]_25\(25),
      R => SR(0)
    );
\ram_clk_config_reg[28][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[28]_25\(26),
      R => SR(0)
    );
\ram_clk_config_reg[28][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[28]_25\(27),
      R => SR(0)
    );
\ram_clk_config_reg[28][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[28]_25\(28),
      R => SR(0)
    );
\ram_clk_config_reg[28][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[28]_25\(29),
      R => SR(0)
    );
\ram_clk_config_reg[28][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[28]_25\(2),
      R => SR(0)
    );
\ram_clk_config_reg[28][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[28]_25\(30),
      R => SR(0)
    );
\ram_clk_config_reg[28][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[28]_25\(31),
      R => SR(0)
    );
\ram_clk_config_reg[28][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[28]_25\(3),
      R => SR(0)
    );
\ram_clk_config_reg[28][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[28]_25\(4),
      R => SR(0)
    );
\ram_clk_config_reg[28][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[28]_25\(5),
      R => SR(0)
    );
\ram_clk_config_reg[28][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[28]_25\(6),
      R => SR(0)
    );
\ram_clk_config_reg[28][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[28]_25\(7),
      R => SR(0)
    );
\ram_clk_config_reg[28][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[28]_25\(8),
      R => SR(0)
    );
\ram_clk_config_reg[28][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[28][0]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[28]_25\(9),
      R => SR(0)
    );
\ram_clk_config_reg[29][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[29]_26\(0),
      R => SR(0)
    );
\ram_clk_config_reg[29][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[29]_26\(10),
      R => SR(0)
    );
\ram_clk_config_reg[29][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[29]_26\(11),
      R => SR(0)
    );
\ram_clk_config_reg[29][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[29]_26\(12),
      R => SR(0)
    );
\ram_clk_config_reg[29][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[29]_26\(13),
      R => SR(0)
    );
\ram_clk_config_reg[29][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[29]_26\(14),
      R => SR(0)
    );
\ram_clk_config_reg[29][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[29]_26\(15),
      R => SR(0)
    );
\ram_clk_config_reg[29][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[29]_26\(16),
      R => SR(0)
    );
\ram_clk_config_reg[29][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[29][17]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[29][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[29]_26\(18),
      R => SR(0)
    );
\ram_clk_config_reg[29][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[29]_26\(19),
      R => SR(0)
    );
\ram_clk_config_reg[29][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[29]_26\(1),
      R => SR(0)
    );
\ram_clk_config_reg[29][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[29]_26\(20),
      R => SR(0)
    );
\ram_clk_config_reg[29][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[29]_26\(21),
      R => SR(0)
    );
\ram_clk_config_reg[29][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[29]_26\(22),
      R => SR(0)
    );
\ram_clk_config_reg[29][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[29]_26\(23),
      R => SR(0)
    );
\ram_clk_config_reg[29][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[29]_26\(24),
      R => SR(0)
    );
\ram_clk_config_reg[29][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[29]_26\(25),
      R => SR(0)
    );
\ram_clk_config_reg[29][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[29]_26\(26),
      R => SR(0)
    );
\ram_clk_config_reg[29][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[29]_26\(27),
      R => SR(0)
    );
\ram_clk_config_reg[29][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[29]_26\(28),
      R => SR(0)
    );
\ram_clk_config_reg[29][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[29]_26\(29),
      R => SR(0)
    );
\ram_clk_config_reg[29][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[29]_26\(2),
      R => SR(0)
    );
\ram_clk_config_reg[29][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[29]_26\(30),
      R => SR(0)
    );
\ram_clk_config_reg[29][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[29]_26\(31),
      R => SR(0)
    );
\ram_clk_config_reg[29][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[29]_26\(3),
      R => SR(0)
    );
\ram_clk_config_reg[29][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[29]_26\(4),
      R => SR(0)
    );
\ram_clk_config_reg[29][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[29]_26\(5),
      R => SR(0)
    );
\ram_clk_config_reg[29][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[29]_26\(6),
      R => SR(0)
    );
\ram_clk_config_reg[29][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[29]_26\(7),
      R => SR(0)
    );
\ram_clk_config_reg[29][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[29]_26\(8),
      R => SR(0)
    );
\ram_clk_config_reg[29][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[29][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[29]_26\(9),
      R => SR(0)
    );
\ram_clk_config_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(0),
      Q => \ram_clk_config_reg_n_0_[2][0]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(10),
      Q => \ram_clk_config_reg_n_0_[2][10]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(11),
      Q => \ram_clk_config_reg_n_0_[2][11]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(12),
      Q => \ram_clk_config_reg_n_0_[2][12]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(13),
      Q => \ram_clk_config_reg_n_0_[2][13]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(14),
      Q => \ram_clk_config_reg_n_0_[2][14]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(15),
      Q => \ram_clk_config_reg_n_0_[2][15]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(16),
      Q => \ram_clk_config_reg_n_0_[2][16]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(17),
      Q => \ram_clk_config_reg_n_0_[2][17]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(18),
      Q => \ram_clk_config_reg_n_0_[2][18]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(19),
      Q => \ram_clk_config_reg_n_0_[2][19]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(1),
      Q => \ram_clk_config_reg_n_0_[2][1]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(20),
      Q => \ram_clk_config_reg_n_0_[2][20]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(21),
      Q => \ram_clk_config_reg_n_0_[2][21]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(22),
      Q => \ram_clk_config_reg_n_0_[2][22]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(23),
      Q => \ram_clk_config_reg_n_0_[2][23]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(24),
      Q => \ram_clk_config_reg_n_0_[2][24]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(25),
      Q => \ram_clk_config_reg_n_0_[2][25]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(26),
      Q => \ram_clk_config_reg_n_0_[2][26]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(27),
      Q => \ram_clk_config_reg_n_0_[2][27]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(28),
      Q => \ram_clk_config_reg_n_0_[2][28]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(29),
      Q => \ram_clk_config_reg_n_0_[2][29]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(2),
      Q => \ram_clk_config_reg_n_0_[2][2]\,
      S => SR(0)
    );
\ram_clk_config_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(30),
      Q => \ram_clk_config_reg_n_0_[2][30]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(31),
      Q => \ram_clk_config_reg_n_0_[2][31]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(3),
      Q => \ram_clk_config_reg_n_0_[2][3]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(4),
      Q => \ram_clk_config_reg_n_0_[2][4]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(5),
      Q => \ram_clk_config_reg_n_0_[2][5]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(6),
      Q => \ram_clk_config_reg_n_0_[2][6]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(7),
      Q => \ram_clk_config_reg_n_0_[2][7]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(8),
      Q => \ram_clk_config_reg_n_0_[2][8]\,
      R => SR(0)
    );
\ram_clk_config_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[2][31]_0\(0),
      D => \ram_clk_config_reg[2][31]_1\(9),
      Q => \ram_clk_config_reg_n_0_[2][9]\,
      R => SR(0)
    );
\ram_clk_config_reg[30][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[30]_27\(0),
      R => SR(0)
    );
\ram_clk_config_reg[30][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[30]_27\(10),
      R => SR(0)
    );
\ram_clk_config_reg[30][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[30]_27\(11),
      R => SR(0)
    );
\ram_clk_config_reg[30][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[30]_27\(12),
      R => SR(0)
    );
\ram_clk_config_reg[30][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[30]_27\(13),
      R => SR(0)
    );
\ram_clk_config_reg[30][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[30]_27\(14),
      R => SR(0)
    );
\ram_clk_config_reg[30][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[30]_27\(15),
      R => SR(0)
    );
\ram_clk_config_reg[30][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[30]_27\(16),
      R => SR(0)
    );
\ram_clk_config_reg[30][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[30][17]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[30][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[30]_27\(18),
      R => SR(0)
    );
\ram_clk_config_reg[30][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[30]_27\(19),
      R => SR(0)
    );
\ram_clk_config_reg[30][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[30]_27\(1),
      R => SR(0)
    );
\ram_clk_config_reg[30][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[30]_27\(20),
      R => SR(0)
    );
\ram_clk_config_reg[30][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[30]_27\(21),
      R => SR(0)
    );
\ram_clk_config_reg[30][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[30]_27\(22),
      R => SR(0)
    );
\ram_clk_config_reg[30][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[30]_27\(23),
      R => SR(0)
    );
\ram_clk_config_reg[30][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[30]_27\(24),
      R => SR(0)
    );
\ram_clk_config_reg[30][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[30]_27\(25),
      R => SR(0)
    );
\ram_clk_config_reg[30][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[30]_27\(26),
      R => SR(0)
    );
\ram_clk_config_reg[30][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[30]_27\(27),
      R => SR(0)
    );
\ram_clk_config_reg[30][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[30]_27\(28),
      R => SR(0)
    );
\ram_clk_config_reg[30][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[30]_27\(29),
      R => SR(0)
    );
\ram_clk_config_reg[30][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[30]_27\(2),
      R => SR(0)
    );
\ram_clk_config_reg[30][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[30]_27\(30),
      R => SR(0)
    );
\ram_clk_config_reg[30][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[30]_27\(31),
      R => SR(0)
    );
\ram_clk_config_reg[30][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[30]_27\(3),
      R => SR(0)
    );
\ram_clk_config_reg[30][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[30]_27\(4),
      R => SR(0)
    );
\ram_clk_config_reg[30][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[30]_27\(5),
      R => SR(0)
    );
\ram_clk_config_reg[30][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[30]_27\(6),
      R => SR(0)
    );
\ram_clk_config_reg[30][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[30]_27\(7),
      R => SR(0)
    );
\ram_clk_config_reg[30][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[30]_27\(8),
      R => SR(0)
    );
\ram_clk_config_reg[30][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[30][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[30]_27\(9),
      R => SR(0)
    );
\ram_clk_config_reg[31][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[31]_28\(0),
      R => SR(0)
    );
\ram_clk_config_reg[31][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[31]_28\(10),
      R => SR(0)
    );
\ram_clk_config_reg[31][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[31]_28\(11),
      R => SR(0)
    );
\ram_clk_config_reg[31][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[31]_28\(12),
      R => SR(0)
    );
\ram_clk_config_reg[31][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[31]_28\(13),
      R => SR(0)
    );
\ram_clk_config_reg[31][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[31]_28\(14),
      R => SR(0)
    );
\ram_clk_config_reg[31][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[31]_28\(15),
      R => SR(0)
    );
\ram_clk_config_reg[31][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[31]_28\(16),
      R => SR(0)
    );
\ram_clk_config_reg[31][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[31][17]_0\(0),
      R => SR(0)
    );
\ram_clk_config_reg[31][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[31]_28\(18),
      R => SR(0)
    );
\ram_clk_config_reg[31][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[31]_28\(19),
      R => SR(0)
    );
\ram_clk_config_reg[31][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[31]_28\(1),
      R => SR(0)
    );
\ram_clk_config_reg[31][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[31]_28\(20),
      R => SR(0)
    );
\ram_clk_config_reg[31][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[31]_28\(21),
      R => SR(0)
    );
\ram_clk_config_reg[31][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[31]_28\(22),
      R => SR(0)
    );
\ram_clk_config_reg[31][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[31]_28\(23),
      R => SR(0)
    );
\ram_clk_config_reg[31][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[31]_28\(24),
      R => SR(0)
    );
\ram_clk_config_reg[31][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[31]_28\(25),
      R => SR(0)
    );
\ram_clk_config_reg[31][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[31]_28\(26),
      R => SR(0)
    );
\ram_clk_config_reg[31][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[31]_28\(27),
      R => SR(0)
    );
\ram_clk_config_reg[31][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[31]_28\(28),
      R => SR(0)
    );
\ram_clk_config_reg[31][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[31]_28\(29),
      R => SR(0)
    );
\ram_clk_config_reg[31][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[31]_28\(2),
      R => SR(0)
    );
\ram_clk_config_reg[31][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[31]_28\(30),
      R => SR(0)
    );
\ram_clk_config_reg[31][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[31]_28\(31),
      R => SR(0)
    );
\ram_clk_config_reg[31][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[31]_28\(3),
      R => SR(0)
    );
\ram_clk_config_reg[31][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[31]_28\(4),
      R => SR(0)
    );
\ram_clk_config_reg[31][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[31]_28\(5),
      R => SR(0)
    );
\ram_clk_config_reg[31][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[31]_28\(6),
      R => SR(0)
    );
\ram_clk_config_reg[31][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[31]_28\(7),
      R => SR(0)
    );
\ram_clk_config_reg[31][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[31]_28\(8),
      R => SR(0)
    );
\ram_clk_config_reg[31][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[31][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[31]_28\(9),
      R => SR(0)
    );
\ram_clk_config_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[3]_1\(0),
      R => SR(0)
    );
\ram_clk_config_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[3]_1\(10),
      R => SR(0)
    );
\ram_clk_config_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[3]_1\(11),
      R => SR(0)
    );
\ram_clk_config_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[3]_1\(12),
      R => SR(0)
    );
\ram_clk_config_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[3]_1\(13),
      R => SR(0)
    );
\ram_clk_config_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[3]_1\(14),
      R => SR(0)
    );
\ram_clk_config_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[3]_1\(15),
      R => SR(0)
    );
\ram_clk_config_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[3]_1\(16),
      R => SR(0)
    );
\ram_clk_config_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[3]_1\(17),
      R => SR(0)
    );
\ram_clk_config_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[3]_1\(18),
      R => SR(0)
    );
\ram_clk_config_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[3]_1\(19),
      R => SR(0)
    );
\ram_clk_config_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[3]_1\(1),
      R => SR(0)
    );
\ram_clk_config_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[3]_1\(20),
      R => SR(0)
    );
\ram_clk_config_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[3]_1\(21),
      R => SR(0)
    );
\ram_clk_config_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[3]_1\(22),
      R => SR(0)
    );
\ram_clk_config_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[3]_1\(23),
      R => SR(0)
    );
\ram_clk_config_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[3]_1\(24),
      R => SR(0)
    );
\ram_clk_config_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[3]_1\(25),
      R => SR(0)
    );
\ram_clk_config_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[3]_1\(26),
      R => SR(0)
    );
\ram_clk_config_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[3]_1\(27),
      R => SR(0)
    );
\ram_clk_config_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[3]_1\(28),
      R => SR(0)
    );
\ram_clk_config_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[3]_1\(29),
      R => SR(0)
    );
\ram_clk_config_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[3]_1\(2),
      R => SR(0)
    );
\ram_clk_config_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[3]_1\(30),
      R => SR(0)
    );
\ram_clk_config_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[3]_1\(31),
      R => SR(0)
    );
\ram_clk_config_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[3]_1\(3),
      R => SR(0)
    );
\ram_clk_config_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[3]_1\(4),
      R => SR(0)
    );
\ram_clk_config_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[3]_1\(5),
      R => SR(0)
    );
\ram_clk_config_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[3]_1\(6),
      R => SR(0)
    );
\ram_clk_config_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[3]_1\(7),
      R => SR(0)
    );
\ram_clk_config_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[3]_1\(8),
      R => SR(0)
    );
\ram_clk_config_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[3][0]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[3]_1\(9),
      R => SR(0)
    );
\ram_clk_config_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[4]_2\(0),
      R => SR(0)
    );
\ram_clk_config_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[4]_2\(10),
      R => SR(0)
    );
\ram_clk_config_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[4]_2\(11),
      R => SR(0)
    );
\ram_clk_config_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[4]_2\(12),
      R => SR(0)
    );
\ram_clk_config_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[4]_2\(13),
      R => SR(0)
    );
\ram_clk_config_reg[4][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[4]_2\(14),
      S => SR(0)
    );
\ram_clk_config_reg[4][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[4]_2\(15),
      S => SR(0)
    );
\ram_clk_config_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[4]_2\(16),
      R => SR(0)
    );
\ram_clk_config_reg[4][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[4]_2\(17),
      R => SR(0)
    );
\ram_clk_config_reg[4][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[4]_2\(18),
      R => SR(0)
    );
\ram_clk_config_reg[4][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[4]_2\(19),
      R => SR(0)
    );
\ram_clk_config_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[4]_2\(1),
      R => SR(0)
    );
\ram_clk_config_reg[4][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[4]_2\(20),
      R => SR(0)
    );
\ram_clk_config_reg[4][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[4]_2\(21),
      R => SR(0)
    );
\ram_clk_config_reg[4][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[4]_2\(22),
      R => SR(0)
    );
\ram_clk_config_reg[4][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[4]_2\(23),
      R => SR(0)
    );
\ram_clk_config_reg[4][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[4]_2\(24),
      R => SR(0)
    );
\ram_clk_config_reg[4][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[4]_2\(25),
      R => SR(0)
    );
\ram_clk_config_reg[4][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[4]_2\(26),
      R => SR(0)
    );
\ram_clk_config_reg[4][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[4]_2\(27),
      R => SR(0)
    );
\ram_clk_config_reg[4][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[4]_2\(28),
      R => SR(0)
    );
\ram_clk_config_reg[4][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[4]_2\(29),
      R => SR(0)
    );
\ram_clk_config_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[4]_2\(2),
      R => SR(0)
    );
\ram_clk_config_reg[4][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[4]_2\(30),
      R => SR(0)
    );
\ram_clk_config_reg[4][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[4]_2\(31),
      R => SR(0)
    );
\ram_clk_config_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[4]_2\(3),
      R => SR(0)
    );
\ram_clk_config_reg[4][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[4]_2\(4),
      S => SR(0)
    );
\ram_clk_config_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[4]_2\(5),
      R => SR(0)
    );
\ram_clk_config_reg[4][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[4]_2\(6),
      S => SR(0)
    );
\ram_clk_config_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[4]_2\(7),
      R => SR(0)
    );
\ram_clk_config_reg[4][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[4]_2\(8),
      S => SR(0)
    );
\ram_clk_config_reg[4][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[4][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[4]_2\(9),
      S => SR(0)
    );
\ram_clk_config_reg[5][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg_n_0_[5][0]\,
      S => SR(0)
    );
\ram_clk_config_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg_n_0_[5][10]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg_n_0_[5][11]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg_n_0_[5][12]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg_n_0_[5][13]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg_n_0_[5][14]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg_n_0_[5][15]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg_n_0_[5][16]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg_n_0_[5][17]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg_n_0_[5][18]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg_n_0_[5][19]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg_n_0_[5][1]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg_n_0_[5][20]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg_n_0_[5][21]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg_n_0_[5][22]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg_n_0_[5][23]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg_n_0_[5][24]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg_n_0_[5][25]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg_n_0_[5][26]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg_n_0_[5][27]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg_n_0_[5][28]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg_n_0_[5][29]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(2),
      Q => p_2_in(7),
      R => SR(0)
    );
\ram_clk_config_reg[5][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg_n_0_[5][30]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg_n_0_[5][31]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(3),
      Q => p_2_in(8),
      R => SR(0)
    );
\ram_clk_config_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(4),
      Q => p_2_in(9),
      R => SR(0)
    );
\ram_clk_config_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(5),
      Q => p_2_in(10),
      R => SR(0)
    );
\ram_clk_config_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(6),
      Q => p_2_in(11),
      R => SR(0)
    );
\ram_clk_config_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg_n_0_[5][7]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg_n_0_[5][8]\,
      R => SR(0)
    );
\ram_clk_config_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[5][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg_n_0_[5][9]\,
      R => SR(0)
    );
\ram_clk_config_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[6]_3\(0),
      R => SR(0)
    );
\ram_clk_config_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[6]_3\(10),
      R => SR(0)
    );
\ram_clk_config_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[6]_3\(11),
      R => SR(0)
    );
\ram_clk_config_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[6]_3\(12),
      R => SR(0)
    );
\ram_clk_config_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[6]_3\(13),
      R => SR(0)
    );
\ram_clk_config_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[6]_3\(14),
      R => SR(0)
    );
\ram_clk_config_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[6]_3\(15),
      R => SR(0)
    );
\ram_clk_config_reg[6][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[6]_3\(16),
      R => SR(0)
    );
\ram_clk_config_reg[6][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[6]_3\(17),
      R => SR(0)
    );
\ram_clk_config_reg[6][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[6]_3\(18),
      R => SR(0)
    );
\ram_clk_config_reg[6][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[6]_3\(19),
      R => SR(0)
    );
\ram_clk_config_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[6]_3\(1),
      R => SR(0)
    );
\ram_clk_config_reg[6][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[6]_3\(20),
      R => SR(0)
    );
\ram_clk_config_reg[6][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[6]_3\(21),
      R => SR(0)
    );
\ram_clk_config_reg[6][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[6]_3\(22),
      R => SR(0)
    );
\ram_clk_config_reg[6][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[6]_3\(23),
      R => SR(0)
    );
\ram_clk_config_reg[6][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[6]_3\(24),
      R => SR(0)
    );
\ram_clk_config_reg[6][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[6]_3\(25),
      R => SR(0)
    );
\ram_clk_config_reg[6][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[6]_3\(26),
      R => SR(0)
    );
\ram_clk_config_reg[6][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[6]_3\(27),
      R => SR(0)
    );
\ram_clk_config_reg[6][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[6]_3\(28),
      R => SR(0)
    );
\ram_clk_config_reg[6][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[6]_3\(29),
      R => SR(0)
    );
\ram_clk_config_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[6]_3\(2),
      R => SR(0)
    );
\ram_clk_config_reg[6][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[6]_3\(30),
      R => SR(0)
    );
\ram_clk_config_reg[6][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[6]_3\(31),
      R => SR(0)
    );
\ram_clk_config_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[6]_3\(3),
      R => SR(0)
    );
\ram_clk_config_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[6]_3\(4),
      R => SR(0)
    );
\ram_clk_config_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[6]_3\(5),
      R => SR(0)
    );
\ram_clk_config_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[6]_3\(6),
      R => SR(0)
    );
\ram_clk_config_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[6]_3\(7),
      R => SR(0)
    );
\ram_clk_config_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[6]_3\(8),
      R => SR(0)
    );
\ram_clk_config_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[6][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[6]_3\(9),
      R => SR(0)
    );
\ram_clk_config_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[7]_4\(0),
      R => SR(0)
    );
\ram_clk_config_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[7]_4\(10),
      R => SR(0)
    );
\ram_clk_config_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[7]_4\(11),
      R => SR(0)
    );
\ram_clk_config_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[7]_4\(12),
      R => SR(0)
    );
\ram_clk_config_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[7]_4\(13),
      R => SR(0)
    );
\ram_clk_config_reg[7][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[7]_4\(14),
      S => SR(0)
    );
\ram_clk_config_reg[7][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[7]_4\(15),
      S => SR(0)
    );
\ram_clk_config_reg[7][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[7]_4\(16),
      R => SR(0)
    );
\ram_clk_config_reg[7][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[7]_4\(17),
      R => SR(0)
    );
\ram_clk_config_reg[7][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[7]_4\(18),
      R => SR(0)
    );
\ram_clk_config_reg[7][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[7]_4\(19),
      R => SR(0)
    );
\ram_clk_config_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[7]_4\(1),
      R => SR(0)
    );
\ram_clk_config_reg[7][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[7]_4\(20),
      R => SR(0)
    );
\ram_clk_config_reg[7][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[7]_4\(21),
      R => SR(0)
    );
\ram_clk_config_reg[7][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[7]_4\(22),
      R => SR(0)
    );
\ram_clk_config_reg[7][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[7]_4\(23),
      R => SR(0)
    );
\ram_clk_config_reg[7][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[7]_4\(24),
      R => SR(0)
    );
\ram_clk_config_reg[7][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[7]_4\(25),
      R => SR(0)
    );
\ram_clk_config_reg[7][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[7]_4\(26),
      R => SR(0)
    );
\ram_clk_config_reg[7][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[7]_4\(27),
      R => SR(0)
    );
\ram_clk_config_reg[7][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[7]_4\(28),
      R => SR(0)
    );
\ram_clk_config_reg[7][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[7]_4\(29),
      R => SR(0)
    );
\ram_clk_config_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[7]_4\(2),
      R => SR(0)
    );
\ram_clk_config_reg[7][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[7]_4\(30),
      R => SR(0)
    );
\ram_clk_config_reg[7][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[7]_4\(31),
      R => SR(0)
    );
\ram_clk_config_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[7]_4\(3),
      R => SR(0)
    );
\ram_clk_config_reg[7][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[7]_4\(4),
      S => SR(0)
    );
\ram_clk_config_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[7]_4\(5),
      R => SR(0)
    );
\ram_clk_config_reg[7][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[7]_4\(6),
      S => SR(0)
    );
\ram_clk_config_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[7]_4\(7),
      R => SR(0)
    );
\ram_clk_config_reg[7][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[7]_4\(8),
      S => SR(0)
    );
\ram_clk_config_reg[7][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[7][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[7]_4\(9),
      S => SR(0)
    );
\ram_clk_config_reg[8][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[8]_5\(0),
      S => SR(0)
    );
\ram_clk_config_reg[8][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[8]_5\(10),
      R => SR(0)
    );
\ram_clk_config_reg[8][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[8]_5\(11),
      R => SR(0)
    );
\ram_clk_config_reg[8][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[8]_5\(12),
      R => SR(0)
    );
\ram_clk_config_reg[8][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[8]_5\(13),
      R => SR(0)
    );
\ram_clk_config_reg[8][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[8]_5\(14),
      R => SR(0)
    );
\ram_clk_config_reg[8][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[8]_5\(15),
      R => SR(0)
    );
\ram_clk_config_reg[8][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[8]_5\(16),
      R => SR(0)
    );
\ram_clk_config_reg[8][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[8]_5\(17),
      R => SR(0)
    );
\ram_clk_config_reg[8][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[8]_5\(18),
      R => SR(0)
    );
\ram_clk_config_reg[8][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[8]_5\(19),
      R => SR(0)
    );
\ram_clk_config_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[8]_5\(1),
      R => SR(0)
    );
\ram_clk_config_reg[8][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[8]_5\(20),
      R => SR(0)
    );
\ram_clk_config_reg[8][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[8]_5\(21),
      R => SR(0)
    );
\ram_clk_config_reg[8][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[8]_5\(22),
      R => SR(0)
    );
\ram_clk_config_reg[8][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[8]_5\(23),
      R => SR(0)
    );
\ram_clk_config_reg[8][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[8]_5\(24),
      R => SR(0)
    );
\ram_clk_config_reg[8][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[8]_5\(25),
      R => SR(0)
    );
\ram_clk_config_reg[8][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[8]_5\(26),
      R => SR(0)
    );
\ram_clk_config_reg[8][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[8]_5\(27),
      R => SR(0)
    );
\ram_clk_config_reg[8][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[8]_5\(28),
      R => SR(0)
    );
\ram_clk_config_reg[8][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[8]_5\(29),
      R => SR(0)
    );
\ram_clk_config_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[8]_5\(2),
      R => SR(0)
    );
\ram_clk_config_reg[8][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[8]_5\(30),
      R => SR(0)
    );
\ram_clk_config_reg[8][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[8]_5\(31),
      R => SR(0)
    );
\ram_clk_config_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[8]_5\(3),
      R => SR(0)
    );
\ram_clk_config_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[8]_5\(4),
      R => SR(0)
    );
\ram_clk_config_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[8]_5\(5),
      R => SR(0)
    );
\ram_clk_config_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[8]_5\(6),
      R => SR(0)
    );
\ram_clk_config_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[8]_5\(7),
      R => SR(0)
    );
\ram_clk_config_reg[8][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[8]_5\(8),
      R => SR(0)
    );
\ram_clk_config_reg[8][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[8][0]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[8]_5\(9),
      R => SR(0)
    );
\ram_clk_config_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(0),
      Q => \ram_clk_config_reg[9]_6\(0),
      R => SR(0)
    );
\ram_clk_config_reg[9][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(10),
      Q => \ram_clk_config_reg[9]_6\(10),
      R => SR(0)
    );
\ram_clk_config_reg[9][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(11),
      Q => \ram_clk_config_reg[9]_6\(11),
      R => SR(0)
    );
\ram_clk_config_reg[9][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(12),
      Q => \ram_clk_config_reg[9]_6\(12),
      R => SR(0)
    );
\ram_clk_config_reg[9][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(13),
      Q => \ram_clk_config_reg[9]_6\(13),
      R => SR(0)
    );
\ram_clk_config_reg[9][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(14),
      Q => \ram_clk_config_reg[9]_6\(14),
      R => SR(0)
    );
\ram_clk_config_reg[9][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(15),
      Q => \ram_clk_config_reg[9]_6\(15),
      R => SR(0)
    );
\ram_clk_config_reg[9][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(16),
      Q => \ram_clk_config_reg[9]_6\(16),
      R => SR(0)
    );
\ram_clk_config_reg[9][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(17),
      Q => \ram_clk_config_reg[9]_6\(17),
      R => SR(0)
    );
\ram_clk_config_reg[9][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(18),
      Q => \ram_clk_config_reg[9]_6\(18),
      R => SR(0)
    );
\ram_clk_config_reg[9][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(19),
      Q => \ram_clk_config_reg[9]_6\(19),
      R => SR(0)
    );
\ram_clk_config_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(1),
      Q => \ram_clk_config_reg[9]_6\(1),
      R => SR(0)
    );
\ram_clk_config_reg[9][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(20),
      Q => \ram_clk_config_reg[9]_6\(20),
      R => SR(0)
    );
\ram_clk_config_reg[9][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(21),
      Q => \ram_clk_config_reg[9]_6\(21),
      R => SR(0)
    );
\ram_clk_config_reg[9][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(22),
      Q => \ram_clk_config_reg[9]_6\(22),
      R => SR(0)
    );
\ram_clk_config_reg[9][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(23),
      Q => \ram_clk_config_reg[9]_6\(23),
      R => SR(0)
    );
\ram_clk_config_reg[9][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(24),
      Q => \ram_clk_config_reg[9]_6\(24),
      R => SR(0)
    );
\ram_clk_config_reg[9][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(25),
      Q => \ram_clk_config_reg[9]_6\(25),
      R => SR(0)
    );
\ram_clk_config_reg[9][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(26),
      Q => \ram_clk_config_reg[9]_6\(26),
      R => SR(0)
    );
\ram_clk_config_reg[9][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(27),
      Q => \ram_clk_config_reg[9]_6\(27),
      R => SR(0)
    );
\ram_clk_config_reg[9][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(28),
      Q => \ram_clk_config_reg[9]_6\(28),
      R => SR(0)
    );
\ram_clk_config_reg[9][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(29),
      Q => \ram_clk_config_reg[9]_6\(29),
      R => SR(0)
    );
\ram_clk_config_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(2),
      Q => \ram_clk_config_reg[9]_6\(2),
      R => SR(0)
    );
\ram_clk_config_reg[9][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(30),
      Q => \ram_clk_config_reg[9]_6\(30),
      R => SR(0)
    );
\ram_clk_config_reg[9][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(31),
      Q => \ram_clk_config_reg[9]_6\(31),
      R => SR(0)
    );
\ram_clk_config_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(3),
      Q => \ram_clk_config_reg[9]_6\(3),
      R => SR(0)
    );
\ram_clk_config_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(4),
      Q => \ram_clk_config_reg[9]_6\(4),
      R => SR(0)
    );
\ram_clk_config_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(5),
      Q => \ram_clk_config_reg[9]_6\(5),
      R => SR(0)
    );
\ram_clk_config_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(6),
      Q => \ram_clk_config_reg[9]_6\(6),
      R => SR(0)
    );
\ram_clk_config_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(7),
      Q => \ram_clk_config_reg[9]_6\(7),
      R => SR(0)
    );
\ram_clk_config_reg[9][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(8),
      Q => \ram_clk_config_reg[9]_6\(8),
      R => SR(0)
    );
\ram_clk_config_reg[9][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ram_clk_config_reg[9][31]_0\(0),
      D => s_axi_wdata(9),
      Q => \ram_clk_config_reg[9]_6\(9),
      R => SR(0)
    );
rdack_reg_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdack_reg_10,
      Q => rdack_reg_1,
      R => wrack_reg_10
    );
rdack_reg_2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdack_reg_1,
      Q => rdack_reg_2,
      R => wrack_reg_10
    );
\s_axi_rdata_i[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(0),
      I1 => \ram_clk_config_reg[26]_23\(0),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(0),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(0),
      O => \ram_clk_config_reg[27][0]_0\
    );
\s_axi_rdata_i[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(0),
      I1 => \ram_clk_config_reg[30]_27\(0),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(0),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(0),
      O => \ram_clk_config_reg[31][0]_0\
    );
\s_axi_rdata_i[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(0),
      I1 => \ram_clk_config_reg[18]_15\(0),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(0),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(0),
      O => \ram_clk_config_reg[19][0]_0\
    );
\s_axi_rdata_i[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(0),
      I1 => \ram_clk_config_reg[22]_19\(0),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(0),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(0),
      O => \ram_clk_config_reg[23][0]_0\
    );
\s_axi_rdata_i[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(0),
      I1 => \ram_clk_config_reg_n_0_[2][0]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(0),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][0]\,
      O => \s_axi_rdata_i[0]_i_16_n_0\
    );
\s_axi_rdata_i[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(0),
      I1 => \ram_clk_config_reg[6]_3\(0),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][0]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(0),
      O => \s_axi_rdata_i[0]_i_17_n_0\
    );
\s_axi_rdata_i[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(0),
      I1 => \ram_clk_config_reg[10]_7\(0),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(0),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(0),
      O => \ram_clk_config_reg[11][0]_0\
    );
\s_axi_rdata_i[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(0),
      I1 => \ram_clk_config_reg[14]_11\(0),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(0),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(0),
      O => \ram_clk_config_reg[15][0]_0\
    );
\s_axi_rdata_i[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(10),
      I1 => \ram_clk_config_reg[18]_15\(10),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(10),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(10),
      O => \s_axi_rdata_i[10]_i_10_n_0\
    );
\s_axi_rdata_i[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(10),
      I1 => \ram_clk_config_reg[22]_19\(10),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(10),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(10),
      O => \s_axi_rdata_i[10]_i_11_n_0\
    );
\s_axi_rdata_i[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(10),
      I1 => \ram_clk_config_reg_n_0_[2][10]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(10),
      I4 => Q(0),
      I5 => S2_CLKFBOUT_MULT(2),
      O => \s_axi_rdata_i[10]_i_12_n_0\
    );
\s_axi_rdata_i[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(10),
      I1 => \ram_clk_config_reg[6]_3\(10),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][10]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(10),
      O => \s_axi_rdata_i[10]_i_13_n_0\
    );
\s_axi_rdata_i[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(10),
      I1 => \ram_clk_config_reg[10]_7\(10),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(10),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(10),
      O => \s_axi_rdata_i[10]_i_14_n_0\
    );
\s_axi_rdata_i[10]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(10),
      I1 => \ram_clk_config_reg[14]_11\(10),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(10),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(10),
      O => \s_axi_rdata_i[10]_i_15_n_0\
    );
\s_axi_rdata_i[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEECFEEFCEECCEE"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[10]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[16]\,
      I2 => Q(3),
      I3 => Q(4),
      I4 => \s_axi_rdata_i_reg[10]_i_4_n_0\,
      I5 => \s_axi_rdata_i_reg[10]_i_5_n_0\,
      O => \bus2ip_addr_i_reg[5]_0\
    );
\s_axi_rdata_i[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(10),
      I1 => \ram_clk_config_reg[26]_23\(10),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(10),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(10),
      O => \s_axi_rdata_i[10]_i_8_n_0\
    );
\s_axi_rdata_i[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(10),
      I1 => \ram_clk_config_reg[30]_27\(10),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(10),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(10),
      O => \s_axi_rdata_i[10]_i_9_n_0\
    );
\s_axi_rdata_i[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(11),
      I1 => \ram_clk_config_reg[22]_19\(11),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(11),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(11),
      O => \s_axi_rdata_i[11]_i_10_n_0\
    );
\s_axi_rdata_i[11]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(11),
      I1 => \ram_clk_config_reg[10]_7\(11),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(11),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(11),
      O => \s_axi_rdata_i[11]_i_11_n_0\
    );
\s_axi_rdata_i[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(11),
      I1 => \ram_clk_config_reg[14]_11\(11),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(11),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(11),
      O => \s_axi_rdata_i[11]_i_12_n_0\
    );
\s_axi_rdata_i[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(11),
      I1 => \ram_clk_config_reg_n_0_[2][11]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(11),
      I4 => Q(0),
      I5 => S2_CLKFBOUT_MULT(3),
      O => \s_axi_rdata_i[11]_i_13_n_0\
    );
\s_axi_rdata_i[11]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(11),
      I1 => \ram_clk_config_reg[6]_3\(11),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][11]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(11),
      O => \s_axi_rdata_i[11]_i_14_n_0\
    );
\s_axi_rdata_i[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[11]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[11]_i_4_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[11]_i_5_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[11]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[6]_3\
    );
\s_axi_rdata_i[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(11),
      I1 => \ram_clk_config_reg[26]_23\(11),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(11),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(11),
      O => \s_axi_rdata_i[11]_i_7_n_0\
    );
\s_axi_rdata_i[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(11),
      I1 => \ram_clk_config_reg[30]_27\(11),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(11),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(11),
      O => \s_axi_rdata_i[11]_i_8_n_0\
    );
\s_axi_rdata_i[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(11),
      I1 => \ram_clk_config_reg[18]_15\(11),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(11),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(11),
      O => \s_axi_rdata_i[11]_i_9_n_0\
    );
\s_axi_rdata_i[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(12),
      I1 => \ram_clk_config_reg[22]_19\(12),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(12),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(12),
      O => \s_axi_rdata_i[12]_i_10_n_0\
    );
\s_axi_rdata_i[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(12),
      I1 => \ram_clk_config_reg[10]_7\(12),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(12),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(12),
      O => \s_axi_rdata_i[12]_i_11_n_0\
    );
\s_axi_rdata_i[12]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(12),
      I1 => \ram_clk_config_reg[14]_11\(12),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(12),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(12),
      O => \s_axi_rdata_i[12]_i_12_n_0\
    );
\s_axi_rdata_i[12]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(12),
      I1 => \ram_clk_config_reg_n_0_[2][12]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(12),
      I4 => Q(0),
      I5 => S2_CLKFBOUT_MULT(4),
      O => \s_axi_rdata_i[12]_i_13_n_0\
    );
\s_axi_rdata_i[12]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(12),
      I1 => \ram_clk_config_reg[6]_3\(12),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][12]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(12),
      O => \s_axi_rdata_i[12]_i_14_n_0\
    );
\s_axi_rdata_i[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[12]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[12]_i_4_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[12]_i_5_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[12]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[6]_2\
    );
\s_axi_rdata_i[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(12),
      I1 => \ram_clk_config_reg[26]_23\(12),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(12),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(12),
      O => \s_axi_rdata_i[12]_i_7_n_0\
    );
\s_axi_rdata_i[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(12),
      I1 => \ram_clk_config_reg[30]_27\(12),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(12),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(12),
      O => \s_axi_rdata_i[12]_i_8_n_0\
    );
\s_axi_rdata_i[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(12),
      I1 => \ram_clk_config_reg[18]_15\(12),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(12),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(12),
      O => \s_axi_rdata_i[12]_i_9_n_0\
    );
\s_axi_rdata_i[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(13),
      I1 => \ram_clk_config_reg[6]_3\(13),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][13]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(13),
      O => \s_axi_rdata_i[13]_i_10_n_0\
    );
\s_axi_rdata_i[13]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(13),
      I1 => \ram_clk_config_reg[10]_7\(13),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(13),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(13),
      O => \s_axi_rdata_i[13]_i_11_n_0\
    );
\s_axi_rdata_i[13]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(13),
      I1 => \ram_clk_config_reg[14]_11\(13),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(13),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(13),
      O => \s_axi_rdata_i[13]_i_12_n_0\
    );
\s_axi_rdata_i[13]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(13),
      I1 => \ram_clk_config_reg[18]_15\(13),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(13),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(13),
      O => \s_axi_rdata_i[13]_i_13_n_0\
    );
\s_axi_rdata_i[13]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(13),
      I1 => \ram_clk_config_reg[22]_19\(13),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(13),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(13),
      O => \s_axi_rdata_i[13]_i_14_n_0\
    );
\s_axi_rdata_i[13]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(13),
      I1 => \ram_clk_config_reg[26]_23\(13),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(13),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(13),
      O => \s_axi_rdata_i[13]_i_15_n_0\
    );
\s_axi_rdata_i[13]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(13),
      I1 => \ram_clk_config_reg[30]_27\(13),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(13),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(13),
      O => \s_axi_rdata_i[13]_i_16_n_0\
    );
\s_axi_rdata_i[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(13),
      I1 => \ram_clk_config_reg_n_0_[2][13]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(13),
      I4 => Q(0),
      I5 => S2_CLKFBOUT_MULT(5),
      O => \s_axi_rdata_i[13]_i_9_n_0\
    );
\s_axi_rdata_i[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(14),
      I1 => \ram_clk_config_reg[22]_19\(14),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(14),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(14),
      O => \s_axi_rdata_i[14]_i_10_n_0\
    );
\s_axi_rdata_i[14]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(14),
      I1 => \ram_clk_config_reg[10]_7\(14),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(14),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(14),
      O => \s_axi_rdata_i[14]_i_11_n_0\
    );
\s_axi_rdata_i[14]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(14),
      I1 => \ram_clk_config_reg[14]_11\(14),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(14),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(14),
      O => \s_axi_rdata_i[14]_i_12_n_0\
    );
\s_axi_rdata_i[14]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(14),
      I1 => \ram_clk_config_reg_n_0_[2][14]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(14),
      I4 => Q(0),
      I5 => S2_CLKFBOUT_MULT(6),
      O => \s_axi_rdata_i[14]_i_13_n_0\
    );
\s_axi_rdata_i[14]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(14),
      I1 => \ram_clk_config_reg[6]_3\(14),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][14]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(14),
      O => \s_axi_rdata_i[14]_i_14_n_0\
    );
\s_axi_rdata_i[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[14]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[14]_i_4_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[14]_i_5_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[14]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[6]_1\
    );
\s_axi_rdata_i[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(14),
      I1 => \ram_clk_config_reg[26]_23\(14),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(14),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(14),
      O => \s_axi_rdata_i[14]_i_7_n_0\
    );
\s_axi_rdata_i[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(14),
      I1 => \ram_clk_config_reg[30]_27\(14),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(14),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(14),
      O => \s_axi_rdata_i[14]_i_8_n_0\
    );
\s_axi_rdata_i[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(14),
      I1 => \ram_clk_config_reg[18]_15\(14),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(14),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(14),
      O => \s_axi_rdata_i[14]_i_9_n_0\
    );
\s_axi_rdata_i[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(15),
      I1 => \ram_clk_config_reg[26]_23\(15),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(15),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(15),
      O => \s_axi_rdata_i[15]_i_11_n_0\
    );
\s_axi_rdata_i[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(15),
      I1 => \ram_clk_config_reg[30]_27\(15),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(15),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(15),
      O => \s_axi_rdata_i[15]_i_12_n_0\
    );
\s_axi_rdata_i[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(15),
      I1 => \ram_clk_config_reg[18]_15\(15),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(15),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(15),
      O => \s_axi_rdata_i[15]_i_13_n_0\
    );
\s_axi_rdata_i[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(15),
      I1 => \ram_clk_config_reg[22]_19\(15),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(15),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(15),
      O => \s_axi_rdata_i[15]_i_14_n_0\
    );
\s_axi_rdata_i[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(15),
      I1 => \ram_clk_config_reg[10]_7\(15),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(15),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(15),
      O => \s_axi_rdata_i[15]_i_15_n_0\
    );
\s_axi_rdata_i[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(15),
      I1 => \ram_clk_config_reg[14]_11\(15),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(15),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(15),
      O => \s_axi_rdata_i[15]_i_16_n_0\
    );
\s_axi_rdata_i[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(15),
      I1 => \ram_clk_config_reg_n_0_[2][15]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(15),
      I4 => Q(0),
      I5 => S2_CLKFBOUT_MULT(7),
      O => \s_axi_rdata_i[15]_i_17_n_0\
    );
\s_axi_rdata_i[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(15),
      I1 => \ram_clk_config_reg[6]_3\(15),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][15]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(15),
      O => \s_axi_rdata_i[15]_i_18_n_0\
    );
\s_axi_rdata_i[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[15]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[15]_i_7_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[15]_i_8_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[15]_i_9_n_0\,
      O => \bus2ip_addr_i_reg[6]_0\
    );
\s_axi_rdata_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[16]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[16]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(15),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(0)
    );
\s_axi_rdata_i[16]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(16),
      I1 => \ram_clk_config_reg[26]_23\(16),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(16),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(16),
      O => \s_axi_rdata_i[16]_i_10_n_0\
    );
\s_axi_rdata_i[16]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(16),
      I1 => \ram_clk_config_reg[30]_27\(16),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(16),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(16),
      O => \s_axi_rdata_i[16]_i_11_n_0\
    );
\s_axi_rdata_i[16]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(16),
      I1 => \ram_clk_config_reg_n_0_[2][16]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(16),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][16]\,
      O => \s_axi_rdata_i[16]_i_12_n_0\
    );
\s_axi_rdata_i[16]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(16),
      I1 => \ram_clk_config_reg[6]_3\(16),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][16]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(16),
      O => \s_axi_rdata_i[16]_i_13_n_0\
    );
\s_axi_rdata_i[16]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(16),
      I1 => \ram_clk_config_reg[10]_7\(16),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(16),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(16),
      O => \s_axi_rdata_i[16]_i_14_n_0\
    );
\s_axi_rdata_i[16]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(16),
      I1 => \ram_clk_config_reg[14]_11\(16),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(16),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(16),
      O => \s_axi_rdata_i[16]_i_15_n_0\
    );
\s_axi_rdata_i[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(16),
      I1 => \ram_clk_config_reg[18]_15\(16),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(16),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(16),
      O => \s_axi_rdata_i[16]_i_8_n_0\
    );
\s_axi_rdata_i[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(16),
      I1 => \ram_clk_config_reg[22]_19\(16),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(16),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(16),
      O => \s_axi_rdata_i[16]_i_9_n_0\
    );
\s_axi_rdata_i[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAABBABBBBABBBB"
    )
        port map (
      I0 => \s_axi_rdata_i[17]_i_14_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \ram_clk_config_reg[8]_5\(17),
      I5 => \ram_clk_config_reg[10]_7\(17),
      O => \bus2ip_addr_i_reg[2]\
    );
\s_axi_rdata_i[17]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(17),
      I1 => \ram_clk_config_reg[18]_15\(17),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(17),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(17),
      O => \s_axi_rdata_i[17]_i_12_n_0\
    );
\s_axi_rdata_i[17]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(17),
      I1 => \ram_clk_config_reg[22]_19\(17),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(17),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(17),
      O => \s_axi_rdata_i[17]_i_13_n_0\
    );
\s_axi_rdata_i[17]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000C44CCCC0C44"
    )
        port map (
      I0 => \ram_clk_config_reg[9]_6\(17),
      I1 => Q(0),
      I2 => \ram_clk_config_reg[11]_8\(17),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \ram_clk_config_reg[13]_10\(17),
      O => \s_axi_rdata_i[17]_i_14_n_0\
    );
\s_axi_rdata_i[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00B8000000B8"
    )
        port map (
      I0 => \s_axi_rdata_i[17]_i_4_n_0\,
      I1 => Q(2),
      I2 => \s_axi_rdata_i[17]_i_5_n_0\,
      I3 => Q(3),
      I4 => Q(4),
      I5 => \s_axi_rdata_i_reg[17]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[4]\
    );
\s_axi_rdata_i[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(17),
      I1 => \ram_clk_config_reg[6]_3\(17),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][17]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(17),
      O => \s_axi_rdata_i[17]_i_4_n_0\
    );
\s_axi_rdata_i[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(17),
      I1 => \ram_clk_config_reg_n_0_[2][17]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(17),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][17]\,
      O => \s_axi_rdata_i[17]_i_5_n_0\
    );
\s_axi_rdata_i[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C2C2000002C20"
    )
        port map (
      I0 => \ram_clk_config_reg[28]_25\(17),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \ram_clk_config_reg[26]_23\(17),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[27]_24\(17),
      O => \ram_clk_config_reg[28][17]_0\
    );
\s_axi_rdata_i[18]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(18),
      I1 => \ram_clk_config_reg[26]_23\(18),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(18),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(18),
      O => \s_axi_rdata_i[18]_i_10_n_0\
    );
\s_axi_rdata_i[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(18),
      I1 => \ram_clk_config_reg[30]_27\(18),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(18),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(18),
      O => \s_axi_rdata_i[18]_i_11_n_0\
    );
\s_axi_rdata_i[18]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(18),
      I1 => \ram_clk_config_reg_n_0_[2][18]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(18),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][18]\,
      O => \s_axi_rdata_i[18]_i_12_n_0\
    );
\s_axi_rdata_i[18]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(18),
      I1 => \ram_clk_config_reg[6]_3\(18),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][18]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(18),
      O => \s_axi_rdata_i[18]_i_13_n_0\
    );
\s_axi_rdata_i[18]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(18),
      I1 => \ram_clk_config_reg[10]_7\(18),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(18),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(18),
      O => \s_axi_rdata_i[18]_i_14_n_0\
    );
\s_axi_rdata_i[18]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(18),
      I1 => \ram_clk_config_reg[14]_11\(18),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(18),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(18),
      O => \s_axi_rdata_i[18]_i_15_n_0\
    );
\s_axi_rdata_i[18]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(18),
      I1 => \ram_clk_config_reg[18]_15\(18),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(18),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(18),
      O => \s_axi_rdata_i[18]_i_8_n_0\
    );
\s_axi_rdata_i[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(18),
      I1 => \ram_clk_config_reg[22]_19\(18),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(18),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(18),
      O => \s_axi_rdata_i[18]_i_9_n_0\
    );
\s_axi_rdata_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[19]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[19]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(12),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(1)
    );
\s_axi_rdata_i[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(19),
      I1 => \ram_clk_config_reg[26]_23\(19),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(19),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(19),
      O => \s_axi_rdata_i[19]_i_10_n_0\
    );
\s_axi_rdata_i[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(19),
      I1 => \ram_clk_config_reg[30]_27\(19),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(19),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(19),
      O => \s_axi_rdata_i[19]_i_11_n_0\
    );
\s_axi_rdata_i[19]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(19),
      I1 => \ram_clk_config_reg_n_0_[2][19]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(19),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][19]\,
      O => \s_axi_rdata_i[19]_i_12_n_0\
    );
\s_axi_rdata_i[19]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(19),
      I1 => \ram_clk_config_reg[6]_3\(19),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][19]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(19),
      O => \s_axi_rdata_i[19]_i_13_n_0\
    );
\s_axi_rdata_i[19]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(19),
      I1 => \ram_clk_config_reg[10]_7\(19),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(19),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(19),
      O => \s_axi_rdata_i[19]_i_14_n_0\
    );
\s_axi_rdata_i[19]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(19),
      I1 => \ram_clk_config_reg[14]_11\(19),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(19),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(19),
      O => \s_axi_rdata_i[19]_i_15_n_0\
    );
\s_axi_rdata_i[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(19),
      I1 => \ram_clk_config_reg[18]_15\(19),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(19),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(19),
      O => \s_axi_rdata_i[19]_i_8_n_0\
    );
\s_axi_rdata_i[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(19),
      I1 => \ram_clk_config_reg[22]_19\(19),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(19),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(19),
      O => \s_axi_rdata_i[19]_i_9_n_0\
    );
\s_axi_rdata_i[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(1),
      I1 => \ram_clk_config_reg[18]_15\(1),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(1),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(1),
      O => \s_axi_rdata_i[1]_i_10_n_0\
    );
\s_axi_rdata_i[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(1),
      I1 => \ram_clk_config_reg[22]_19\(1),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(1),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(1),
      O => \s_axi_rdata_i[1]_i_11_n_0\
    );
\s_axi_rdata_i[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(1),
      I1 => \ram_clk_config_reg[10]_7\(1),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(1),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(1),
      O => \s_axi_rdata_i[1]_i_12_n_0\
    );
\s_axi_rdata_i[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(1),
      I1 => \ram_clk_config_reg[14]_11\(1),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(1),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(1),
      O => \s_axi_rdata_i[1]_i_13_n_0\
    );
\s_axi_rdata_i[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(1),
      I1 => \ram_clk_config_reg_n_0_[2][1]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(1),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][1]\,
      O => \s_axi_rdata_i[1]_i_14_n_0\
    );
\s_axi_rdata_i[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(1),
      I1 => \ram_clk_config_reg[6]_3\(1),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][1]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(1),
      O => \s_axi_rdata_i[1]_i_15_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[1]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[1]_i_5_n_0\,
      I2 => \s_axi_rdata_i_reg[1]_i_6_n_0\,
      I3 => Q(3),
      I4 => Q(4),
      I5 => \s_axi_rdata_i_reg[1]_i_7_n_0\,
      O => \bus2ip_addr_i_reg[5]_1\
    );
\s_axi_rdata_i[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(1),
      I1 => \ram_clk_config_reg[26]_23\(1),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(1),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(1),
      O => \s_axi_rdata_i[1]_i_8_n_0\
    );
\s_axi_rdata_i[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(1),
      I1 => \ram_clk_config_reg[30]_27\(1),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(1),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(1),
      O => \s_axi_rdata_i[1]_i_9_n_0\
    );
\s_axi_rdata_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[20]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[20]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(11),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(2)
    );
\s_axi_rdata_i[20]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(20),
      I1 => \ram_clk_config_reg[26]_23\(20),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(20),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(20),
      O => \s_axi_rdata_i[20]_i_10_n_0\
    );
\s_axi_rdata_i[20]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(20),
      I1 => \ram_clk_config_reg[30]_27\(20),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(20),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(20),
      O => \s_axi_rdata_i[20]_i_11_n_0\
    );
\s_axi_rdata_i[20]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(20),
      I1 => \ram_clk_config_reg_n_0_[2][20]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(20),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][20]\,
      O => \s_axi_rdata_i[20]_i_12_n_0\
    );
\s_axi_rdata_i[20]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(20),
      I1 => \ram_clk_config_reg[6]_3\(20),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][20]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(20),
      O => \s_axi_rdata_i[20]_i_13_n_0\
    );
\s_axi_rdata_i[20]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(20),
      I1 => \ram_clk_config_reg[10]_7\(20),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(20),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(20),
      O => \s_axi_rdata_i[20]_i_14_n_0\
    );
\s_axi_rdata_i[20]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(20),
      I1 => \ram_clk_config_reg[14]_11\(20),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(20),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(20),
      O => \s_axi_rdata_i[20]_i_15_n_0\
    );
\s_axi_rdata_i[20]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(20),
      I1 => \ram_clk_config_reg[18]_15\(20),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(20),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(20),
      O => \s_axi_rdata_i[20]_i_8_n_0\
    );
\s_axi_rdata_i[20]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(20),
      I1 => \ram_clk_config_reg[22]_19\(20),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(20),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(20),
      O => \s_axi_rdata_i[20]_i_9_n_0\
    );
\s_axi_rdata_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[21]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[21]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(10),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(3)
    );
\s_axi_rdata_i[21]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(21),
      I1 => \ram_clk_config_reg[26]_23\(21),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(21),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(21),
      O => \s_axi_rdata_i[21]_i_10_n_0\
    );
\s_axi_rdata_i[21]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(21),
      I1 => \ram_clk_config_reg[30]_27\(21),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(21),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(21),
      O => \s_axi_rdata_i[21]_i_11_n_0\
    );
\s_axi_rdata_i[21]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(21),
      I1 => \ram_clk_config_reg_n_0_[2][21]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(21),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][21]\,
      O => \s_axi_rdata_i[21]_i_12_n_0\
    );
\s_axi_rdata_i[21]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(21),
      I1 => \ram_clk_config_reg[6]_3\(21),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][21]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(21),
      O => \s_axi_rdata_i[21]_i_13_n_0\
    );
\s_axi_rdata_i[21]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(21),
      I1 => \ram_clk_config_reg[10]_7\(21),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(21),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(21),
      O => \s_axi_rdata_i[21]_i_14_n_0\
    );
\s_axi_rdata_i[21]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(21),
      I1 => \ram_clk_config_reg[14]_11\(21),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(21),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(21),
      O => \s_axi_rdata_i[21]_i_15_n_0\
    );
\s_axi_rdata_i[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(21),
      I1 => \ram_clk_config_reg[18]_15\(21),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(21),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(21),
      O => \s_axi_rdata_i[21]_i_8_n_0\
    );
\s_axi_rdata_i[21]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(21),
      I1 => \ram_clk_config_reg[22]_19\(21),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(21),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(21),
      O => \s_axi_rdata_i[21]_i_9_n_0\
    );
\s_axi_rdata_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[22]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[22]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(9),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(4)
    );
\s_axi_rdata_i[22]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(22),
      I1 => \ram_clk_config_reg[26]_23\(22),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(22),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(22),
      O => \s_axi_rdata_i[22]_i_10_n_0\
    );
\s_axi_rdata_i[22]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(22),
      I1 => \ram_clk_config_reg[30]_27\(22),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(22),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(22),
      O => \s_axi_rdata_i[22]_i_11_n_0\
    );
\s_axi_rdata_i[22]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(22),
      I1 => \ram_clk_config_reg_n_0_[2][22]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(22),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][22]\,
      O => \s_axi_rdata_i[22]_i_12_n_0\
    );
\s_axi_rdata_i[22]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(22),
      I1 => \ram_clk_config_reg[6]_3\(22),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][22]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(22),
      O => \s_axi_rdata_i[22]_i_13_n_0\
    );
\s_axi_rdata_i[22]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(22),
      I1 => \ram_clk_config_reg[10]_7\(22),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(22),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(22),
      O => \s_axi_rdata_i[22]_i_14_n_0\
    );
\s_axi_rdata_i[22]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(22),
      I1 => \ram_clk_config_reg[14]_11\(22),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(22),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(22),
      O => \s_axi_rdata_i[22]_i_15_n_0\
    );
\s_axi_rdata_i[22]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(22),
      I1 => \ram_clk_config_reg[18]_15\(22),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(22),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(22),
      O => \s_axi_rdata_i[22]_i_8_n_0\
    );
\s_axi_rdata_i[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(22),
      I1 => \ram_clk_config_reg[22]_19\(22),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(22),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(22),
      O => \s_axi_rdata_i[22]_i_9_n_0\
    );
\s_axi_rdata_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEA00EA"
    )
        port map (
      I0 => \s_axi_rdata_i[23]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[23]_i_3_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(8),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(5)
    );
\s_axi_rdata_i[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(23),
      I1 => \ram_clk_config_reg[14]_11\(23),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(23),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(23),
      O => \s_axi_rdata_i[23]_i_10_n_0\
    );
\s_axi_rdata_i[23]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(23),
      I1 => \ram_clk_config_reg[18]_15\(23),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(23),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(23),
      O => \s_axi_rdata_i[23]_i_11_n_0\
    );
\s_axi_rdata_i[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(23),
      I1 => \ram_clk_config_reg[22]_19\(23),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(23),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(23),
      O => \s_axi_rdata_i[23]_i_12_n_0\
    );
\s_axi_rdata_i[23]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(23),
      I1 => \ram_clk_config_reg[26]_23\(23),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(23),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(23),
      O => \s_axi_rdata_i[23]_i_13_n_0\
    );
\s_axi_rdata_i[23]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(23),
      I1 => \ram_clk_config_reg[30]_27\(23),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(23),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(23),
      O => \s_axi_rdata_i[23]_i_14_n_0\
    );
\s_axi_rdata_i[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00B8000000B8"
    )
        port map (
      I0 => \s_axi_rdata_i[23]_i_4_n_0\,
      I1 => Q(2),
      I2 => \s_axi_rdata_i[23]_i_5_n_0\,
      I3 => Q(4),
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[23]_i_6_n_0\,
      O => \s_axi_rdata_i[23]_i_2_n_0\
    );
\s_axi_rdata_i[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(23),
      I1 => \ram_clk_config_reg[6]_3\(23),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][23]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(23),
      O => \s_axi_rdata_i[23]_i_4_n_0\
    );
\s_axi_rdata_i[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(23),
      I1 => \ram_clk_config_reg_n_0_[2][23]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(23),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][23]\,
      O => \s_axi_rdata_i[23]_i_5_n_0\
    );
\s_axi_rdata_i[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(23),
      I1 => \ram_clk_config_reg[10]_7\(23),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(23),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(23),
      O => \s_axi_rdata_i[23]_i_9_n_0\
    );
\s_axi_rdata_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[24]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[24]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(7),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(6)
    );
\s_axi_rdata_i[24]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(24),
      I1 => \ram_clk_config_reg[26]_23\(24),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(24),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(24),
      O => \s_axi_rdata_i[24]_i_10_n_0\
    );
\s_axi_rdata_i[24]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(24),
      I1 => \ram_clk_config_reg[30]_27\(24),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(24),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(24),
      O => \s_axi_rdata_i[24]_i_11_n_0\
    );
\s_axi_rdata_i[24]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(24),
      I1 => \ram_clk_config_reg_n_0_[2][24]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(24),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][24]\,
      O => \s_axi_rdata_i[24]_i_12_n_0\
    );
\s_axi_rdata_i[24]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(24),
      I1 => \ram_clk_config_reg[6]_3\(24),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][24]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(24),
      O => \s_axi_rdata_i[24]_i_13_n_0\
    );
\s_axi_rdata_i[24]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(24),
      I1 => \ram_clk_config_reg[10]_7\(24),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(24),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(24),
      O => \s_axi_rdata_i[24]_i_14_n_0\
    );
\s_axi_rdata_i[24]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(24),
      I1 => \ram_clk_config_reg[14]_11\(24),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(24),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(24),
      O => \s_axi_rdata_i[24]_i_15_n_0\
    );
\s_axi_rdata_i[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(24),
      I1 => \ram_clk_config_reg[18]_15\(24),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(24),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(24),
      O => \s_axi_rdata_i[24]_i_8_n_0\
    );
\s_axi_rdata_i[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(24),
      I1 => \ram_clk_config_reg[22]_19\(24),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(24),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(24),
      O => \s_axi_rdata_i[24]_i_9_n_0\
    );
\s_axi_rdata_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[25]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[25]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(6),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(7)
    );
\s_axi_rdata_i[25]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(25),
      I1 => \ram_clk_config_reg[26]_23\(25),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(25),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(25),
      O => \s_axi_rdata_i[25]_i_10_n_0\
    );
\s_axi_rdata_i[25]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(25),
      I1 => \ram_clk_config_reg[30]_27\(25),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(25),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(25),
      O => \s_axi_rdata_i[25]_i_11_n_0\
    );
\s_axi_rdata_i[25]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(25),
      I1 => \ram_clk_config_reg_n_0_[2][25]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(25),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][25]\,
      O => \s_axi_rdata_i[25]_i_12_n_0\
    );
\s_axi_rdata_i[25]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(25),
      I1 => \ram_clk_config_reg[6]_3\(25),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][25]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(25),
      O => \s_axi_rdata_i[25]_i_13_n_0\
    );
\s_axi_rdata_i[25]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(25),
      I1 => \ram_clk_config_reg[10]_7\(25),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(25),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(25),
      O => \s_axi_rdata_i[25]_i_14_n_0\
    );
\s_axi_rdata_i[25]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(25),
      I1 => \ram_clk_config_reg[14]_11\(25),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(25),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(25),
      O => \s_axi_rdata_i[25]_i_15_n_0\
    );
\s_axi_rdata_i[25]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(25),
      I1 => \ram_clk_config_reg[18]_15\(25),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(25),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(25),
      O => \s_axi_rdata_i[25]_i_8_n_0\
    );
\s_axi_rdata_i[25]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(25),
      I1 => \ram_clk_config_reg[22]_19\(25),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(25),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(25),
      O => \s_axi_rdata_i[25]_i_9_n_0\
    );
\s_axi_rdata_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[26]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[26]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(5),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(8)
    );
\s_axi_rdata_i[26]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(26),
      I1 => \ram_clk_config_reg[26]_23\(26),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(26),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(26),
      O => \s_axi_rdata_i[26]_i_10_n_0\
    );
\s_axi_rdata_i[26]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(26),
      I1 => \ram_clk_config_reg[30]_27\(26),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(26),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(26),
      O => \s_axi_rdata_i[26]_i_11_n_0\
    );
\s_axi_rdata_i[26]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(26),
      I1 => \ram_clk_config_reg_n_0_[2][26]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(26),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][26]\,
      O => \s_axi_rdata_i[26]_i_12_n_0\
    );
\s_axi_rdata_i[26]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(26),
      I1 => \ram_clk_config_reg[6]_3\(26),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][26]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(26),
      O => \s_axi_rdata_i[26]_i_13_n_0\
    );
\s_axi_rdata_i[26]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(26),
      I1 => \ram_clk_config_reg[10]_7\(26),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(26),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(26),
      O => \s_axi_rdata_i[26]_i_14_n_0\
    );
\s_axi_rdata_i[26]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(26),
      I1 => \ram_clk_config_reg[14]_11\(26),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(26),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(26),
      O => \s_axi_rdata_i[26]_i_15_n_0\
    );
\s_axi_rdata_i[26]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(26),
      I1 => \ram_clk_config_reg[18]_15\(26),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(26),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(26),
      O => \s_axi_rdata_i[26]_i_8_n_0\
    );
\s_axi_rdata_i[26]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(26),
      I1 => \ram_clk_config_reg[22]_19\(26),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(26),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(26),
      O => \s_axi_rdata_i[26]_i_9_n_0\
    );
\s_axi_rdata_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[27]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[27]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(4),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(9)
    );
\s_axi_rdata_i[27]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(27),
      I1 => \ram_clk_config_reg[26]_23\(27),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(27),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(27),
      O => \s_axi_rdata_i[27]_i_10_n_0\
    );
\s_axi_rdata_i[27]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(27),
      I1 => \ram_clk_config_reg[30]_27\(27),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(27),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(27),
      O => \s_axi_rdata_i[27]_i_11_n_0\
    );
\s_axi_rdata_i[27]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(27),
      I1 => \ram_clk_config_reg_n_0_[2][27]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(27),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][27]\,
      O => \s_axi_rdata_i[27]_i_12_n_0\
    );
\s_axi_rdata_i[27]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(27),
      I1 => \ram_clk_config_reg[6]_3\(27),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][27]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(27),
      O => \s_axi_rdata_i[27]_i_13_n_0\
    );
\s_axi_rdata_i[27]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(27),
      I1 => \ram_clk_config_reg[10]_7\(27),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(27),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(27),
      O => \s_axi_rdata_i[27]_i_14_n_0\
    );
\s_axi_rdata_i[27]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(27),
      I1 => \ram_clk_config_reg[14]_11\(27),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(27),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(27),
      O => \s_axi_rdata_i[27]_i_15_n_0\
    );
\s_axi_rdata_i[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(27),
      I1 => \ram_clk_config_reg[18]_15\(27),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(27),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(27),
      O => \s_axi_rdata_i[27]_i_8_n_0\
    );
\s_axi_rdata_i[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(27),
      I1 => \ram_clk_config_reg[22]_19\(27),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(27),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(27),
      O => \s_axi_rdata_i[27]_i_9_n_0\
    );
\s_axi_rdata_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[28]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[28]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(3),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(10)
    );
\s_axi_rdata_i[28]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(28),
      I1 => \ram_clk_config_reg[26]_23\(28),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(28),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(28),
      O => \s_axi_rdata_i[28]_i_10_n_0\
    );
\s_axi_rdata_i[28]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(28),
      I1 => \ram_clk_config_reg[30]_27\(28),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(28),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(28),
      O => \s_axi_rdata_i[28]_i_11_n_0\
    );
\s_axi_rdata_i[28]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(28),
      I1 => \ram_clk_config_reg_n_0_[2][28]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(28),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][28]\,
      O => \s_axi_rdata_i[28]_i_12_n_0\
    );
\s_axi_rdata_i[28]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(28),
      I1 => \ram_clk_config_reg[6]_3\(28),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][28]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(28),
      O => \s_axi_rdata_i[28]_i_13_n_0\
    );
\s_axi_rdata_i[28]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(28),
      I1 => \ram_clk_config_reg[10]_7\(28),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(28),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(28),
      O => \s_axi_rdata_i[28]_i_14_n_0\
    );
\s_axi_rdata_i[28]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(28),
      I1 => \ram_clk_config_reg[14]_11\(28),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(28),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(28),
      O => \s_axi_rdata_i[28]_i_15_n_0\
    );
\s_axi_rdata_i[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(28),
      I1 => \ram_clk_config_reg[18]_15\(28),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(28),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(28),
      O => \s_axi_rdata_i[28]_i_8_n_0\
    );
\s_axi_rdata_i[28]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(28),
      I1 => \ram_clk_config_reg[22]_19\(28),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(28),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(28),
      O => \s_axi_rdata_i[28]_i_9_n_0\
    );
\s_axi_rdata_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[29]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[29]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(2),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(11)
    );
\s_axi_rdata_i[29]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(29),
      I1 => \ram_clk_config_reg[26]_23\(29),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(29),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(29),
      O => \s_axi_rdata_i[29]_i_10_n_0\
    );
\s_axi_rdata_i[29]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(29),
      I1 => \ram_clk_config_reg[30]_27\(29),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(29),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(29),
      O => \s_axi_rdata_i[29]_i_11_n_0\
    );
\s_axi_rdata_i[29]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(29),
      I1 => \ram_clk_config_reg_n_0_[2][29]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(29),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][29]\,
      O => \s_axi_rdata_i[29]_i_12_n_0\
    );
\s_axi_rdata_i[29]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(29),
      I1 => \ram_clk_config_reg[6]_3\(29),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][29]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(29),
      O => \s_axi_rdata_i[29]_i_13_n_0\
    );
\s_axi_rdata_i[29]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(29),
      I1 => \ram_clk_config_reg[10]_7\(29),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(29),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(29),
      O => \s_axi_rdata_i[29]_i_14_n_0\
    );
\s_axi_rdata_i[29]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(29),
      I1 => \ram_clk_config_reg[14]_11\(29),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(29),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(29),
      O => \s_axi_rdata_i[29]_i_15_n_0\
    );
\s_axi_rdata_i[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(29),
      I1 => \ram_clk_config_reg[18]_15\(29),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(29),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(29),
      O => \s_axi_rdata_i[29]_i_8_n_0\
    );
\s_axi_rdata_i[29]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(29),
      I1 => \ram_clk_config_reg[22]_19\(29),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(29),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(29),
      O => \s_axi_rdata_i[29]_i_9_n_0\
    );
\s_axi_rdata_i[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(2),
      I1 => \ram_clk_config_reg_n_0_[2][2]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(2),
      I4 => Q(0),
      I5 => p_4_in(7),
      O => \s_axi_rdata_i[2]_i_10_n_0\
    );
\s_axi_rdata_i[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(2),
      I1 => \ram_clk_config_reg[6]_3\(2),
      I2 => Q(1),
      I3 => p_2_in(7),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(2),
      O => \s_axi_rdata_i[2]_i_11_n_0\
    );
\s_axi_rdata_i[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(2),
      I1 => \ram_clk_config_reg[10]_7\(2),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(2),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(2),
      O => \s_axi_rdata_i[2]_i_12_n_0\
    );
\s_axi_rdata_i[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(2),
      I1 => \ram_clk_config_reg[14]_11\(2),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(2),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(2),
      O => \s_axi_rdata_i[2]_i_13_n_0\
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5F5C505C"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[2]_i_4_n_0\,
      I2 => Q(4),
      I3 => Q(3),
      I4 => \s_axi_rdata_i_reg[2]_i_5_n_0\,
      I5 => \s_axi_rdata_i_reg[16]\,
      O => \bus2ip_addr_i_reg[6]\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_6_n_0\,
      I1 => \s_axi_rdata_i[2]_i_7_n_0\,
      I2 => Q(3),
      I3 => \s_axi_rdata_i[2]_i_8_n_0\,
      I4 => Q(2),
      I5 => \s_axi_rdata_i[2]_i_9_n_0\,
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(2),
      I1 => \ram_clk_config_reg[30]_27\(2),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(2),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(2),
      O => \s_axi_rdata_i[2]_i_6_n_0\
    );
\s_axi_rdata_i[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(2),
      I1 => \ram_clk_config_reg[26]_23\(2),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(2),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(2),
      O => \s_axi_rdata_i[2]_i_7_n_0\
    );
\s_axi_rdata_i[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(2),
      I1 => \ram_clk_config_reg[18]_15\(2),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(2),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(2),
      O => \s_axi_rdata_i[2]_i_8_n_0\
    );
\s_axi_rdata_i[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(2),
      I1 => \ram_clk_config_reg[22]_19\(2),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(2),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(2),
      O => \s_axi_rdata_i[2]_i_9_n_0\
    );
\s_axi_rdata_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[30]_i_2_n_0\,
      I1 => Q(4),
      I2 => \s_axi_rdata_i_reg[30]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[16]\,
      I4 => \config_reg__0\(1),
      I5 => \s_axi_rdata_i_reg[16]_0\,
      O => D(12)
    );
\s_axi_rdata_i[30]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(30),
      I1 => \ram_clk_config_reg[26]_23\(30),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(30),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(30),
      O => \s_axi_rdata_i[30]_i_10_n_0\
    );
\s_axi_rdata_i[30]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(30),
      I1 => \ram_clk_config_reg[30]_27\(30),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(30),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(30),
      O => \s_axi_rdata_i[30]_i_11_n_0\
    );
\s_axi_rdata_i[30]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(30),
      I1 => \ram_clk_config_reg_n_0_[2][30]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(30),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][30]\,
      O => \s_axi_rdata_i[30]_i_12_n_0\
    );
\s_axi_rdata_i[30]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(30),
      I1 => \ram_clk_config_reg[6]_3\(30),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][30]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(30),
      O => \s_axi_rdata_i[30]_i_13_n_0\
    );
\s_axi_rdata_i[30]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(30),
      I1 => \ram_clk_config_reg[10]_7\(30),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(30),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(30),
      O => \s_axi_rdata_i[30]_i_14_n_0\
    );
\s_axi_rdata_i[30]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(30),
      I1 => \ram_clk_config_reg[14]_11\(30),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(30),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(30),
      O => \s_axi_rdata_i[30]_i_15_n_0\
    );
\s_axi_rdata_i[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(30),
      I1 => \ram_clk_config_reg[18]_15\(30),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(30),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(30),
      O => \s_axi_rdata_i[30]_i_8_n_0\
    );
\s_axi_rdata_i[30]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(30),
      I1 => \ram_clk_config_reg[22]_19\(30),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(30),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(30),
      O => \s_axi_rdata_i[30]_i_9_n_0\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[16]_0\,
      I2 => \s_axi_rdata_i_reg[16]\,
      I3 => \config_reg__0\(0),
      O => D(13)
    );
\s_axi_rdata_i[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(31),
      I1 => \ram_clk_config_reg[30]_27\(31),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(31),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(31),
      O => \s_axi_rdata_i[31]_i_18_n_0\
    );
\s_axi_rdata_i[31]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(31),
      I1 => \ram_clk_config_reg[26]_23\(31),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(31),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(31),
      O => \s_axi_rdata_i[31]_i_19_n_0\
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDCDFDFDCDCDC"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[16]\,
      I2 => Q(4),
      I3 => Q(3),
      I4 => \s_axi_rdata_i_reg[31]_i_6_n_0\,
      I5 => \s_axi_rdata_i_reg[31]_i_7_n_0\,
      O => \s_axi_rdata_i[31]_i_2_n_0\
    );
\s_axi_rdata_i[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(31),
      I1 => \ram_clk_config_reg[22]_19\(31),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(31),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(31),
      O => \s_axi_rdata_i[31]_i_20_n_0\
    );
\s_axi_rdata_i[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(31),
      I1 => \ram_clk_config_reg[18]_15\(31),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(31),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(31),
      O => \s_axi_rdata_i[31]_i_21_n_0\
    );
\s_axi_rdata_i[31]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(31),
      I1 => \ram_clk_config_reg[10]_7\(31),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(31),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(31),
      O => \s_axi_rdata_i[31]_i_22_n_0\
    );
\s_axi_rdata_i[31]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(31),
      I1 => \ram_clk_config_reg[14]_11\(31),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(31),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(31),
      O => \s_axi_rdata_i[31]_i_23_n_0\
    );
\s_axi_rdata_i[31]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(31),
      I1 => \ram_clk_config_reg_n_0_[2][31]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(31),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][31]\,
      O => \s_axi_rdata_i[31]_i_24_n_0\
    );
\s_axi_rdata_i[31]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(31),
      I1 => \ram_clk_config_reg[6]_3\(31),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][31]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(31),
      O => \s_axi_rdata_i[31]_i_25_n_0\
    );
\s_axi_rdata_i[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_18_n_0\,
      I1 => \s_axi_rdata_i[31]_i_19_n_0\,
      I2 => Q(3),
      I3 => \s_axi_rdata_i[31]_i_20_n_0\,
      I4 => Q(2),
      I5 => \s_axi_rdata_i[31]_i_21_n_0\,
      O => \s_axi_rdata_i[31]_i_5_n_0\
    );
\s_axi_rdata_i[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(3),
      I1 => \ram_clk_config_reg[22]_19\(3),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(3),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(3),
      O => \s_axi_rdata_i[3]_i_10_n_0\
    );
\s_axi_rdata_i[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(3),
      I1 => \ram_clk_config_reg[10]_7\(3),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(3),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(3),
      O => \s_axi_rdata_i[3]_i_11_n_0\
    );
\s_axi_rdata_i[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(3),
      I1 => \ram_clk_config_reg[14]_11\(3),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(3),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(3),
      O => \s_axi_rdata_i[3]_i_12_n_0\
    );
\s_axi_rdata_i[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(3),
      I1 => \ram_clk_config_reg_n_0_[2][3]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(3),
      I4 => Q(0),
      I5 => p_4_in(8),
      O => \s_axi_rdata_i[3]_i_13_n_0\
    );
\s_axi_rdata_i[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(3),
      I1 => \ram_clk_config_reg[6]_3\(3),
      I2 => Q(1),
      I3 => p_2_in(8),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(3),
      O => \s_axi_rdata_i[3]_i_14_n_0\
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[3]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[3]_i_4_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[3]_i_5_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[3]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[6]_8\
    );
\s_axi_rdata_i[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(3),
      I1 => \ram_clk_config_reg[26]_23\(3),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(3),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(3),
      O => \s_axi_rdata_i[3]_i_7_n_0\
    );
\s_axi_rdata_i[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(3),
      I1 => \ram_clk_config_reg[30]_27\(3),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(3),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(3),
      O => \s_axi_rdata_i[3]_i_8_n_0\
    );
\s_axi_rdata_i[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(3),
      I1 => \ram_clk_config_reg[18]_15\(3),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(3),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(3),
      O => \s_axi_rdata_i[3]_i_9_n_0\
    );
\s_axi_rdata_i[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(4),
      I1 => \ram_clk_config_reg[22]_19\(4),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(4),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(4),
      O => \s_axi_rdata_i[4]_i_10_n_0\
    );
\s_axi_rdata_i[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(4),
      I1 => \ram_clk_config_reg[10]_7\(4),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(4),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(4),
      O => \s_axi_rdata_i[4]_i_11_n_0\
    );
\s_axi_rdata_i[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(4),
      I1 => \ram_clk_config_reg[14]_11\(4),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(4),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(4),
      O => \s_axi_rdata_i[4]_i_12_n_0\
    );
\s_axi_rdata_i[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(4),
      I1 => \ram_clk_config_reg_n_0_[2][4]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(4),
      I4 => Q(0),
      I5 => p_4_in(9),
      O => \s_axi_rdata_i[4]_i_13_n_0\
    );
\s_axi_rdata_i[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(4),
      I1 => \ram_clk_config_reg[6]_3\(4),
      I2 => Q(1),
      I3 => p_2_in(9),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(4),
      O => \s_axi_rdata_i[4]_i_14_n_0\
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[4]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[4]_i_4_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[4]_i_5_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[4]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[6]_7\
    );
\s_axi_rdata_i[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(4),
      I1 => \ram_clk_config_reg[26]_23\(4),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(4),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(4),
      O => \s_axi_rdata_i[4]_i_7_n_0\
    );
\s_axi_rdata_i[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(4),
      I1 => \ram_clk_config_reg[30]_27\(4),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(4),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(4),
      O => \s_axi_rdata_i[4]_i_8_n_0\
    );
\s_axi_rdata_i[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(4),
      I1 => \ram_clk_config_reg[18]_15\(4),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(4),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(4),
      O => \s_axi_rdata_i[4]_i_9_n_0\
    );
\s_axi_rdata_i[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(5),
      I1 => \ram_clk_config_reg[22]_19\(5),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(5),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(5),
      O => \s_axi_rdata_i[5]_i_10_n_0\
    );
\s_axi_rdata_i[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(5),
      I1 => \ram_clk_config_reg[10]_7\(5),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(5),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(5),
      O => \s_axi_rdata_i[5]_i_11_n_0\
    );
\s_axi_rdata_i[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(5),
      I1 => \ram_clk_config_reg[14]_11\(5),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(5),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(5),
      O => \s_axi_rdata_i[5]_i_12_n_0\
    );
\s_axi_rdata_i[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(5),
      I1 => \ram_clk_config_reg_n_0_[2][5]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(5),
      I4 => Q(0),
      I5 => p_4_in(10),
      O => \s_axi_rdata_i[5]_i_13_n_0\
    );
\s_axi_rdata_i[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(5),
      I1 => \ram_clk_config_reg[6]_3\(5),
      I2 => Q(1),
      I3 => p_2_in(10),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(5),
      O => \s_axi_rdata_i[5]_i_14_n_0\
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[5]_i_4_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[5]_i_5_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[5]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[6]_6\
    );
\s_axi_rdata_i[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(5),
      I1 => \ram_clk_config_reg[26]_23\(5),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(5),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(5),
      O => \s_axi_rdata_i[5]_i_7_n_0\
    );
\s_axi_rdata_i[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(5),
      I1 => \ram_clk_config_reg[30]_27\(5),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(5),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(5),
      O => \s_axi_rdata_i[5]_i_8_n_0\
    );
\s_axi_rdata_i[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(5),
      I1 => \ram_clk_config_reg[18]_15\(5),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(5),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(5),
      O => \s_axi_rdata_i[5]_i_9_n_0\
    );
\s_axi_rdata_i[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(6),
      I1 => \ram_clk_config_reg[22]_19\(6),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(6),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(6),
      O => \s_axi_rdata_i[6]_i_10_n_0\
    );
\s_axi_rdata_i[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(6),
      I1 => \ram_clk_config_reg_n_0_[2][6]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(6),
      I4 => Q(0),
      I5 => p_4_in(11),
      O => \s_axi_rdata_i[6]_i_11_n_0\
    );
\s_axi_rdata_i[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(6),
      I1 => \ram_clk_config_reg[6]_3\(6),
      I2 => Q(1),
      I3 => p_2_in(11),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(6),
      O => \s_axi_rdata_i[6]_i_12_n_0\
    );
\s_axi_rdata_i[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(6),
      I1 => \ram_clk_config_reg[10]_7\(6),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(6),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(6),
      O => \s_axi_rdata_i[6]_i_13_n_0\
    );
\s_axi_rdata_i[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(6),
      I1 => \ram_clk_config_reg[14]_11\(6),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(6),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(6),
      O => \s_axi_rdata_i[6]_i_14_n_0\
    );
\s_axi_rdata_i[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \s_axi_rdata_i[6]_i_7_n_0\,
      I1 => \s_axi_rdata_i[6]_i_8_n_0\,
      I2 => Q(3),
      I3 => \s_axi_rdata_i[6]_i_9_n_0\,
      I4 => Q(2),
      I5 => \s_axi_rdata_i[6]_i_10_n_0\,
      O => \bus2ip_addr_i_reg[5]_7\
    );
\s_axi_rdata_i[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(6),
      I1 => \ram_clk_config_reg[30]_27\(6),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(6),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(6),
      O => \s_axi_rdata_i[6]_i_7_n_0\
    );
\s_axi_rdata_i[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(6),
      I1 => \ram_clk_config_reg[26]_23\(6),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(6),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(6),
      O => \s_axi_rdata_i[6]_i_8_n_0\
    );
\s_axi_rdata_i[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(6),
      I1 => \ram_clk_config_reg[18]_15\(6),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(6),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(6),
      O => \s_axi_rdata_i[6]_i_9_n_0\
    );
\s_axi_rdata_i[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(7),
      I1 => \ram_clk_config_reg[22]_19\(7),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(7),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(7),
      O => \s_axi_rdata_i[7]_i_10_n_0\
    );
\s_axi_rdata_i[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(7),
      I1 => \ram_clk_config_reg[10]_7\(7),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(7),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(7),
      O => \s_axi_rdata_i[7]_i_11_n_0\
    );
\s_axi_rdata_i[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(7),
      I1 => \ram_clk_config_reg[14]_11\(7),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(7),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(7),
      O => \s_axi_rdata_i[7]_i_12_n_0\
    );
\s_axi_rdata_i[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(7),
      I1 => \ram_clk_config_reg_n_0_[2][7]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(7),
      I4 => Q(0),
      I5 => \ram_clk_config_reg_n_0_[0][7]\,
      O => \s_axi_rdata_i[7]_i_13_n_0\
    );
\s_axi_rdata_i[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(7),
      I1 => \ram_clk_config_reg[6]_3\(7),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][7]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(7),
      O => \s_axi_rdata_i[7]_i_14_n_0\
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[7]_i_4_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[7]_i_5_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[7]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[6]_5\
    );
\s_axi_rdata_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(7),
      I1 => \ram_clk_config_reg[26]_23\(7),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(7),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(7),
      O => \s_axi_rdata_i[7]_i_7_n_0\
    );
\s_axi_rdata_i[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(7),
      I1 => \ram_clk_config_reg[30]_27\(7),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(7),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(7),
      O => \s_axi_rdata_i[7]_i_8_n_0\
    );
\s_axi_rdata_i[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(7),
      I1 => \ram_clk_config_reg[18]_15\(7),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(7),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(7),
      O => \s_axi_rdata_i[7]_i_9_n_0\
    );
\s_axi_rdata_i[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(8),
      I1 => \ram_clk_config_reg_n_0_[2][8]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(8),
      I4 => Q(0),
      I5 => S2_CLKFBOUT_MULT(0),
      O => \s_axi_rdata_i[8]_i_10_n_0\
    );
\s_axi_rdata_i[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(8),
      I1 => \ram_clk_config_reg[6]_3\(8),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][8]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(8),
      O => \s_axi_rdata_i[8]_i_11_n_0\
    );
\s_axi_rdata_i[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(8),
      I1 => \ram_clk_config_reg[18]_15\(8),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(8),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(8),
      O => \s_axi_rdata_i[8]_i_12_n_0\
    );
\s_axi_rdata_i[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(8),
      I1 => \ram_clk_config_reg[22]_19\(8),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(8),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(8),
      O => \s_axi_rdata_i[8]_i_13_n_0\
    );
\s_axi_rdata_i[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(8),
      I1 => \ram_clk_config_reg[26]_23\(8),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(8),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(8),
      O => \s_axi_rdata_i[8]_i_14_n_0\
    );
\s_axi_rdata_i[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(8),
      I1 => \ram_clk_config_reg[30]_27\(8),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(8),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(8),
      O => \s_axi_rdata_i[8]_i_15_n_0\
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAACFAAC0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[8]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[8]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(4),
      I4 => \s_axi_rdata_i_reg[8]_i_5_n_0\,
      I5 => \s_axi_rdata_i_reg[16]\,
      O => \bus2ip_addr_i_reg[5]\
    );
\s_axi_rdata_i[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(8),
      I1 => \ram_clk_config_reg[10]_7\(8),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(8),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(8),
      O => \s_axi_rdata_i[8]_i_8_n_0\
    );
\s_axi_rdata_i[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(8),
      I1 => \ram_clk_config_reg[14]_11\(8),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(8),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(8),
      O => \s_axi_rdata_i[8]_i_9_n_0\
    );
\s_axi_rdata_i[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[23]_20\(9),
      I1 => \ram_clk_config_reg[22]_19\(9),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[21]_18\(9),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[20]_17\(9),
      O => \s_axi_rdata_i[9]_i_10_n_0\
    );
\s_axi_rdata_i[9]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[11]_8\(9),
      I1 => \ram_clk_config_reg[10]_7\(9),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[9]_6\(9),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[8]_5\(9),
      O => \s_axi_rdata_i[9]_i_11_n_0\
    );
\s_axi_rdata_i[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[15]_12\(9),
      I1 => \ram_clk_config_reg[14]_11\(9),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[13]_10\(9),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[12]_9\(9),
      O => \s_axi_rdata_i[9]_i_12_n_0\
    );
\s_axi_rdata_i[9]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[3]_1\(9),
      I1 => \ram_clk_config_reg_n_0_[2][9]\,
      I2 => Q(1),
      I3 => \ram_clk_config_reg[1]_0\(9),
      I4 => Q(0),
      I5 => S2_CLKFBOUT_MULT(1),
      O => \s_axi_rdata_i[9]_i_13_n_0\
    );
\s_axi_rdata_i[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[7]_4\(9),
      I1 => \ram_clk_config_reg[6]_3\(9),
      I2 => Q(1),
      I3 => \ram_clk_config_reg_n_0_[5][9]\,
      I4 => Q(0),
      I5 => \ram_clk_config_reg[4]_2\(9),
      O => \s_axi_rdata_i[9]_i_14_n_0\
    );
\s_axi_rdata_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[9]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[9]_i_4_n_0\,
      I2 => Q(4),
      I3 => \s_axi_rdata_i_reg[9]_i_5_n_0\,
      I4 => Q(3),
      I5 => \s_axi_rdata_i_reg[9]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[6]_4\
    );
\s_axi_rdata_i[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[27]_24\(9),
      I1 => \ram_clk_config_reg[26]_23\(9),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[25]_22\(9),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[24]_21\(9),
      O => \s_axi_rdata_i[9]_i_7_n_0\
    );
\s_axi_rdata_i[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[31]_28\(9),
      I1 => \ram_clk_config_reg[30]_27\(9),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[29]_26\(9),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[28]_25\(9),
      O => \s_axi_rdata_i[9]_i_8_n_0\
    );
\s_axi_rdata_i[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_clk_config_reg[19]_16\(9),
      I1 => \ram_clk_config_reg[18]_15\(9),
      I2 => Q(1),
      I3 => \ram_clk_config_reg[17]_14\(9),
      I4 => Q(0),
      I5 => \ram_clk_config_reg[16]_13\(9),
      O => \s_axi_rdata_i[9]_i_9_n_0\
    );
\s_axi_rdata_i_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[0]_i_16_n_0\,
      I1 => \s_axi_rdata_i[0]_i_17_n_0\,
      O => \bus2ip_addr_i_reg[4]_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[10]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[10]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[10]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[10]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[10]_i_8_n_0\,
      I1 => \s_axi_rdata_i[10]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[10]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[10]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[10]_i_10_n_0\,
      I1 => \s_axi_rdata_i[10]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[10]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[10]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[10]_i_12_n_0\,
      I1 => \s_axi_rdata_i[10]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[10]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[10]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[10]_i_14_n_0\,
      I1 => \s_axi_rdata_i[10]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[10]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[11]_i_7_n_0\,
      I1 => \s_axi_rdata_i[11]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[11]_i_3_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[11]_i_9_n_0\,
      I1 => \s_axi_rdata_i[11]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[11]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[11]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[11]_i_11_n_0\,
      I1 => \s_axi_rdata_i[11]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[11]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[11]_i_13_n_0\,
      I1 => \s_axi_rdata_i[11]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[11]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[12]_i_7_n_0\,
      I1 => \s_axi_rdata_i[12]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[12]_i_3_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[12]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[12]_i_9_n_0\,
      I1 => \s_axi_rdata_i[12]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[12]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[12]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[12]_i_11_n_0\,
      I1 => \s_axi_rdata_i[12]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[12]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[12]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[12]_i_13_n_0\,
      I1 => \s_axi_rdata_i[12]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[12]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[13]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[13]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[13]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[5]_4\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[13]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[13]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[13]_i_8_n_0\,
      O => \bus2ip_addr_i_reg[5]_5\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[13]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[13]_i_9_n_0\,
      I1 => \s_axi_rdata_i[13]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[13]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[13]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[13]_i_11_n_0\,
      I1 => \s_axi_rdata_i[13]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[13]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[13]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[13]_i_13_n_0\,
      I1 => \s_axi_rdata_i[13]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[13]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[13]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[13]_i_15_n_0\,
      I1 => \s_axi_rdata_i[13]_i_16_n_0\,
      O => \s_axi_rdata_i_reg[13]_i_8_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[14]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[14]_i_7_n_0\,
      I1 => \s_axi_rdata_i[14]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[14]_i_3_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[14]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[14]_i_9_n_0\,
      I1 => \s_axi_rdata_i[14]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[14]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[14]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[14]_i_11_n_0\,
      I1 => \s_axi_rdata_i[14]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[14]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[14]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[14]_i_13_n_0\,
      I1 => \s_axi_rdata_i[14]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[14]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[15]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[15]_i_11_n_0\,
      I1 => \s_axi_rdata_i[15]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[15]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[15]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[15]_i_13_n_0\,
      I1 => \s_axi_rdata_i[15]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[15]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[15]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[15]_i_15_n_0\,
      I1 => \s_axi_rdata_i[15]_i_16_n_0\,
      O => \s_axi_rdata_i_reg[15]_i_8_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[15]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[15]_i_17_n_0\,
      I1 => \s_axi_rdata_i[15]_i_18_n_0\,
      O => \s_axi_rdata_i_reg[15]_i_9_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[16]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[16]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[16]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[16]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[16]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[16]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[16]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[16]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[16]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[16]_i_8_n_0\,
      I1 => \s_axi_rdata_i[16]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[16]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[16]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[16]_i_10_n_0\,
      I1 => \s_axi_rdata_i[16]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[16]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[16]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[16]_i_12_n_0\,
      I1 => \s_axi_rdata_i[16]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[16]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[16]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[16]_i_14_n_0\,
      I1 => \s_axi_rdata_i[16]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[16]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[17]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[17]_i_12_n_0\,
      I1 => \s_axi_rdata_i[17]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[17]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[18]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[18]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[18]_i_5_n_0\,
      O => \bus2ip_addr_i_reg[5]_2\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[18]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[18]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[18]_i_7_n_0\,
      O => \bus2ip_addr_i_reg[5]_3\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[18]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[18]_i_8_n_0\,
      I1 => \s_axi_rdata_i[18]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[18]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[18]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[18]_i_10_n_0\,
      I1 => \s_axi_rdata_i[18]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[18]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[18]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[18]_i_12_n_0\,
      I1 => \s_axi_rdata_i[18]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[18]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[18]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[18]_i_14_n_0\,
      I1 => \s_axi_rdata_i[18]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[18]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[19]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[19]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[19]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[19]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[19]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[19]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[19]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[19]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[19]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[19]_i_8_n_0\,
      I1 => \s_axi_rdata_i[19]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[19]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[19]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[19]_i_10_n_0\,
      I1 => \s_axi_rdata_i[19]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[19]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[19]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[19]_i_12_n_0\,
      I1 => \s_axi_rdata_i[19]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[19]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[19]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[19]_i_14_n_0\,
      I1 => \s_axi_rdata_i[19]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[19]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[1]_i_8_n_0\,
      I1 => \s_axi_rdata_i[1]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[1]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[1]_i_10_n_0\,
      I1 => \s_axi_rdata_i[1]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[1]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[1]_i_12_n_0\,
      I1 => \s_axi_rdata_i[1]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[1]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[1]_i_14_n_0\,
      I1 => \s_axi_rdata_i[1]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[1]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[20]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[20]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[20]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[20]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[20]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[20]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[20]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[20]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[20]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[20]_i_8_n_0\,
      I1 => \s_axi_rdata_i[20]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[20]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[20]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[20]_i_10_n_0\,
      I1 => \s_axi_rdata_i[20]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[20]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[20]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[20]_i_12_n_0\,
      I1 => \s_axi_rdata_i[20]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[20]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[20]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[20]_i_14_n_0\,
      I1 => \s_axi_rdata_i[20]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[20]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[21]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[21]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[21]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[21]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[21]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[21]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[21]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[21]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[21]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[21]_i_8_n_0\,
      I1 => \s_axi_rdata_i[21]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[21]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[21]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[21]_i_10_n_0\,
      I1 => \s_axi_rdata_i[21]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[21]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[21]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[21]_i_12_n_0\,
      I1 => \s_axi_rdata_i[21]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[21]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[21]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[21]_i_14_n_0\,
      I1 => \s_axi_rdata_i[21]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[21]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[22]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[22]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[22]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[22]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[22]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[22]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[22]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[22]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[22]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[22]_i_8_n_0\,
      I1 => \s_axi_rdata_i[22]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[22]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[22]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[22]_i_10_n_0\,
      I1 => \s_axi_rdata_i[22]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[22]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[22]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[22]_i_12_n_0\,
      I1 => \s_axi_rdata_i[22]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[22]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[22]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[22]_i_14_n_0\,
      I1 => \s_axi_rdata_i[22]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[22]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[23]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[23]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[23]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[23]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[23]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[23]_i_9_n_0\,
      I1 => \s_axi_rdata_i[23]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[23]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[23]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[23]_i_11_n_0\,
      I1 => \s_axi_rdata_i[23]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[23]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[23]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[23]_i_13_n_0\,
      I1 => \s_axi_rdata_i[23]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[23]_i_8_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[24]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[24]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[24]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[24]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[24]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[24]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[24]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[24]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[24]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[24]_i_8_n_0\,
      I1 => \s_axi_rdata_i[24]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[24]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[24]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[24]_i_10_n_0\,
      I1 => \s_axi_rdata_i[24]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[24]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[24]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[24]_i_12_n_0\,
      I1 => \s_axi_rdata_i[24]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[24]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[24]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[24]_i_14_n_0\,
      I1 => \s_axi_rdata_i[24]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[24]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[25]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[25]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[25]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[25]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[25]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[25]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[25]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[25]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[25]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[25]_i_8_n_0\,
      I1 => \s_axi_rdata_i[25]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[25]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[25]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[25]_i_10_n_0\,
      I1 => \s_axi_rdata_i[25]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[25]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[25]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[25]_i_12_n_0\,
      I1 => \s_axi_rdata_i[25]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[25]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[25]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[25]_i_14_n_0\,
      I1 => \s_axi_rdata_i[25]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[25]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[26]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[26]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[26]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[26]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[26]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[26]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[26]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[26]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[26]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[26]_i_8_n_0\,
      I1 => \s_axi_rdata_i[26]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[26]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[26]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[26]_i_10_n_0\,
      I1 => \s_axi_rdata_i[26]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[26]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[26]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[26]_i_12_n_0\,
      I1 => \s_axi_rdata_i[26]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[26]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[26]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[26]_i_14_n_0\,
      I1 => \s_axi_rdata_i[26]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[26]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[27]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[27]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[27]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[27]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[27]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[27]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[27]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[27]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[27]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[27]_i_8_n_0\,
      I1 => \s_axi_rdata_i[27]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[27]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[27]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[27]_i_10_n_0\,
      I1 => \s_axi_rdata_i[27]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[27]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[27]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[27]_i_12_n_0\,
      I1 => \s_axi_rdata_i[27]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[27]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[27]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[27]_i_14_n_0\,
      I1 => \s_axi_rdata_i[27]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[27]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[28]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[28]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[28]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[28]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[28]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[28]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[28]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[28]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[28]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[28]_i_8_n_0\,
      I1 => \s_axi_rdata_i[28]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[28]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[28]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[28]_i_10_n_0\,
      I1 => \s_axi_rdata_i[28]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[28]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[28]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[28]_i_12_n_0\,
      I1 => \s_axi_rdata_i[28]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[28]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[28]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[28]_i_14_n_0\,
      I1 => \s_axi_rdata_i[28]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[28]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[29]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[29]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[29]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[29]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[29]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[29]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[29]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[29]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[29]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[29]_i_8_n_0\,
      I1 => \s_axi_rdata_i[29]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[29]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[29]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[29]_i_10_n_0\,
      I1 => \s_axi_rdata_i[29]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[29]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[29]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[29]_i_12_n_0\,
      I1 => \s_axi_rdata_i[29]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[29]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[29]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[29]_i_14_n_0\,
      I1 => \s_axi_rdata_i[29]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[29]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[2]_i_10_n_0\,
      I1 => \s_axi_rdata_i[2]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[2]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[2]_i_12_n_0\,
      I1 => \s_axi_rdata_i[2]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[2]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[30]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[30]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[30]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[30]_i_2_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[30]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[30]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[30]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[30]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[30]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[30]_i_8_n_0\,
      I1 => \s_axi_rdata_i[30]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[30]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[30]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[30]_i_10_n_0\,
      I1 => \s_axi_rdata_i[30]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[30]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[30]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[30]_i_12_n_0\,
      I1 => \s_axi_rdata_i[30]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[30]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[30]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[30]_i_14_n_0\,
      I1 => \s_axi_rdata_i[30]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[30]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[31]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[31]_i_22_n_0\,
      I1 => \s_axi_rdata_i[31]_i_23_n_0\,
      O => \s_axi_rdata_i_reg[31]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[31]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[31]_i_24_n_0\,
      I1 => \s_axi_rdata_i[31]_i_25_n_0\,
      O => \s_axi_rdata_i_reg[31]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[3]_i_7_n_0\,
      I1 => \s_axi_rdata_i[3]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[3]_i_3_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[3]_i_9_n_0\,
      I1 => \s_axi_rdata_i[3]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[3]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[3]_i_11_n_0\,
      I1 => \s_axi_rdata_i[3]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[3]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[3]_i_13_n_0\,
      I1 => \s_axi_rdata_i[3]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[3]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[4]_i_7_n_0\,
      I1 => \s_axi_rdata_i[4]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_3_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[4]_i_9_n_0\,
      I1 => \s_axi_rdata_i[4]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[4]_i_11_n_0\,
      I1 => \s_axi_rdata_i[4]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[4]_i_13_n_0\,
      I1 => \s_axi_rdata_i[4]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[5]_i_7_n_0\,
      I1 => \s_axi_rdata_i[5]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_3_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[5]_i_9_n_0\,
      I1 => \s_axi_rdata_i[5]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[5]_i_11_n_0\,
      I1 => \s_axi_rdata_i[5]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[5]_i_13_n_0\,
      I1 => \s_axi_rdata_i[5]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[6]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[6]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[5]_6\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[6]_i_11_n_0\,
      I1 => \s_axi_rdata_i[6]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[6]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[6]_i_13_n_0\,
      I1 => \s_axi_rdata_i[6]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[6]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[7]_i_7_n_0\,
      I1 => \s_axi_rdata_i[7]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_3_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[7]_i_9_n_0\,
      I1 => \s_axi_rdata_i[7]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[7]_i_11_n_0\,
      I1 => \s_axi_rdata_i[7]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[7]_i_13_n_0\,
      I1 => \s_axi_rdata_i[7]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[8]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[8]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[8]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[8]_i_3_n_0\,
      S => Q(3)
    );
\s_axi_rdata_i_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[8]_i_8_n_0\,
      I1 => \s_axi_rdata_i[8]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[8]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[8]_i_10_n_0\,
      I1 => \s_axi_rdata_i[8]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[8]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[8]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[8]_i_12_n_0\,
      I1 => \s_axi_rdata_i[8]_i_13_n_0\,
      O => \s_axi_rdata_i_reg[8]_i_6_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[8]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[8]_i_14_n_0\,
      I1 => \s_axi_rdata_i[8]_i_15_n_0\,
      O => \s_axi_rdata_i_reg[8]_i_7_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[9]_i_7_n_0\,
      I1 => \s_axi_rdata_i[9]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[9]_i_3_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[9]_i_9_n_0\,
      I1 => \s_axi_rdata_i[9]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[9]_i_4_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[9]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[9]_i_11_n_0\,
      I1 => \s_axi_rdata_i[9]_i_12_n_0\,
      O => \s_axi_rdata_i_reg[9]_i_5_n_0\,
      S => Q(2)
    );
\s_axi_rdata_i_reg[9]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[9]_i_13_n_0\,
      I1 => \s_axi_rdata_i[9]_i_14_n_0\,
      O => \s_axi_rdata_i_reg[9]_i_6_n_0\,
      S => Q(2)
    );
wrack_reg_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_wrce(0),
      Q => wrack_reg_1,
      R => wrack_reg_10
    );
wrack_reg_2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrack_reg_1,
      Q => wrack_reg_2,
      R => wrack_reg_10
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \bus2ip_addr_i_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrack_reg_10 : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[8]_0\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[31]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \bus2ip_addr_i_reg[1]_0\ : out STD_LOGIC;
    \s_axi_wdata[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rdack_reg_10 : out STD_LOGIC;
    rst_ip2bus_rdack0 : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_error_int1 : out STD_LOGIC;
    ip2bus_wrack_int1 : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    dummy_local_reg_rdack0 : out STD_LOGIC;
    dummy_local_reg_rdack_d10 : out STD_LOGIC;
    dummy_local_reg_wrack0 : out STD_LOGIC;
    dummy_local_reg_wrack_d10 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[6]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    \^ip2bus_wrack\ : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \current_state_reg[1]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rdata_i_reg[18]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \s_axi_rdata_i_reg[15]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]_0\ : in STD_LOGIC;
    SRDY : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]_2\ : in STD_LOGIC;
    config_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_enable_reg_d_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ram_clk_config_reg[2][17]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \ram_clk_config_reg[2][18]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]_2\ : in STD_LOGIC;
    \s_axi_rdata_i[17]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_3_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_3_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_3_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_3_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[0]_i_3\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_0\ : in STD_LOGIC;
    \s_axi_rdata_i[17]_i_3_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_11_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_11_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_ip2bus_rdack_d1 : in STD_LOGIC;
    dummy_local_reg_wrack : in STD_LOGIC;
    wrack : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dummy_local_reg_rdack_d1 : in STD_LOGIC;
    dummy_local_reg_wrack_d1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_1\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_2\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_3\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_4\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end rfdc_ex_clk_wiz_adc1_0_slave_attachment;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 13 to 31 );
  signal I_DECODER_n_48 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \bus2ip_addr_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[10]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[1]_0\ : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal \clkfbout_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \clkfbout_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \clkout0_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal load_enable_reg_d_i_2_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ram_clk_config[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][31]_i_4_n_0\ : STD_LOGIC;
  signal \ram_clk_config[0][31]_i_6_n_0\ : STD_LOGIC;
  signal \ram_clk_config[11][31]_i_2_n_0\ : STD_LOGIC;
  signal \ram_clk_config[1][31]_i_2_n_0\ : STD_LOGIC;
  signal \ram_clk_config[2][31]_i_3_n_0\ : STD_LOGIC;
  signal \ram_clk_config[2][31]_i_4_n_0\ : STD_LOGIC;
  signal \ram_clk_config[3][31]_i_2_n_0\ : STD_LOGIC;
  signal rst_i_1_n_0 : STD_LOGIC;
  signal \^rst_reg_0\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_17_n_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal sw_rst_cond_d1_i_2_n_0 : STD_LOGIC;
  signal timeout : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair47";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[10]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[9]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \clkfbout_reg[6]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of load_enable_reg_d_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ram_clk_config[0][28]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \ram_clk_config[0][29]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \ram_clk_config[0][30]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ram_clk_config[0][31]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \ram_clk_config[0][31]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ram_clk_config[0][31]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ram_clk_config[11][31]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ram_clk_config[1][31]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ram_clk_config[2][0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ram_clk_config[2][10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ram_clk_config[2][11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ram_clk_config[2][12]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \ram_clk_config[2][13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \ram_clk_config[2][14]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ram_clk_config[2][15]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ram_clk_config[2][16]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ram_clk_config[2][17]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ram_clk_config[2][18]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ram_clk_config[2][19]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ram_clk_config[2][1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ram_clk_config[2][20]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ram_clk_config[2][21]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ram_clk_config[2][22]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ram_clk_config[2][23]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ram_clk_config[2][24]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ram_clk_config[2][25]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ram_clk_config[2][26]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ram_clk_config[2][27]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ram_clk_config[2][28]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \ram_clk_config[2][29]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \ram_clk_config[2][2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ram_clk_config[2][30]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ram_clk_config[2][31]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \ram_clk_config[2][31]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ram_clk_config[2][3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ram_clk_config[2][4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ram_clk_config[2][5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ram_clk_config[2][6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ram_clk_config[2][7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ram_clk_config[2][8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ram_clk_config[2][9]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[17]_i_11\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_16\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_17\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair35";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  SR(0) <= \^sr\(0);
  \bus2ip_addr_i_reg[1]_0\ <= \^bus2ip_addr_i_reg[1]_0\;
  rst_reg_0 <= \^rst_reg_0\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F444F444F44"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => s_axi_awvalid,
      I5 => s_axi_wvalid,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => ip2bus_rdack,
      I3 => timeout,
      I4 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88888888888888"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_4_n_0\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_arvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F888F8FFFF88F8"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => s_axi_rresp_i,
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => s_axi_bresp_i,
      I5 => \FSM_onehot_state[3]_i_4_n_0\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => s_axi_bready,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => timeout,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ip2bus_wrack\,
      I1 => timeout,
      O => \FSM_onehot_state[3]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\,
      O => plusOp(5)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => timeout,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5]\,
      O => plusOp(6)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(6),
      Q => timeout,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0\
    );
I_DECODER: entity work.rfdc_ex_clk_wiz_adc1_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0(0) => Bus_RNW_reg_reg(0),
      D(17) => IP2Bus_Data(13),
      D(16) => IP2Bus_Data(14),
      D(15) => IP2Bus_Data(16),
      D(14) => IP2Bus_Data(17),
      D(13) => IP2Bus_Data(18),
      D(12) => IP2Bus_Data(19),
      D(11) => IP2Bus_Data(20),
      D(10) => IP2Bus_Data(21),
      D(9) => IP2Bus_Data(22),
      D(8) => IP2Bus_Data(23),
      D(7) => IP2Bus_Data(24),
      D(6) => IP2Bus_Data(25),
      D(5) => IP2Bus_Data(26),
      D(4) => IP2Bus_Data(27),
      D(3) => IP2Bus_Data(28),
      D(2) => IP2Bus_Data(29),
      D(1) => IP2Bus_Data(30),
      D(0) => IP2Bus_Data(31),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0) => timeout,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\(0) => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0),
      IP2Bus_WrAck => IP2Bus_WrAck,
      Q => start2,
      SRDY => SRDY,
      \bus2ip_addr_i_reg[2]\(0) => \bus2ip_addr_i_reg[2]_0\(0),
      \bus2ip_addr_i_reg[2]_0\(0) => \bus2ip_addr_i_reg[2]_1\(0),
      \bus2ip_addr_i_reg[2]_1\(0) => \bus2ip_addr_i_reg[2]_2\(0),
      \bus2ip_addr_i_reg[2]_2\(0) => \bus2ip_addr_i_reg[2]_3\(0),
      \bus2ip_addr_i_reg[2]_3\(0) => \bus2ip_addr_i_reg[2]_4\(0),
      \bus2ip_addr_i_reg[2]_4\(0) => \bus2ip_addr_i_reg[2]_5\(0),
      \bus2ip_addr_i_reg[2]_5\(0) => \bus2ip_addr_i_reg[2]_6\(0),
      \bus2ip_addr_i_reg[2]_6\(0) => \bus2ip_addr_i_reg[2]_7\(0),
      \bus2ip_addr_i_reg[3]\(0) => \bus2ip_addr_i_reg[3]_0\(0),
      \bus2ip_addr_i_reg[3]_0\(0) => \bus2ip_addr_i_reg[3]_1\(0),
      \bus2ip_addr_i_reg[3]_1\(0) => \bus2ip_addr_i_reg[3]_2\(0),
      \bus2ip_addr_i_reg[3]_10\(0) => \bus2ip_addr_i_reg[3]_11\(0),
      \bus2ip_addr_i_reg[3]_11\(0) => \bus2ip_addr_i_reg[3]_12\(0),
      \bus2ip_addr_i_reg[3]_2\(0) => \bus2ip_addr_i_reg[3]_3\(0),
      \bus2ip_addr_i_reg[3]_3\(0) => \bus2ip_addr_i_reg[3]_4\(0),
      \bus2ip_addr_i_reg[3]_4\(0) => \bus2ip_addr_i_reg[3]_5\(0),
      \bus2ip_addr_i_reg[3]_5\(0) => \bus2ip_addr_i_reg[3]_6\(0),
      \bus2ip_addr_i_reg[3]_6\(0) => \bus2ip_addr_i_reg[3]_7\(0),
      \bus2ip_addr_i_reg[3]_7\(0) => \bus2ip_addr_i_reg[3]_8\(0),
      \bus2ip_addr_i_reg[3]_8\(0) => \bus2ip_addr_i_reg[3]_9\(0),
      \bus2ip_addr_i_reg[3]_9\(0) => \bus2ip_addr_i_reg[3]_10\(0),
      \bus2ip_addr_i_reg[4]\(0) => \bus2ip_addr_i_reg[4]_0\(0),
      \bus2ip_addr_i_reg[4]_0\(0) => \bus2ip_addr_i_reg[4]_1\(0),
      \bus2ip_addr_i_reg[4]_1\(0) => \bus2ip_addr_i_reg[4]_2\(0),
      \bus2ip_addr_i_reg[4]_2\(0) => \bus2ip_addr_i_reg[4]_3\(0),
      \bus2ip_addr_i_reg[4]_3\(0) => \bus2ip_addr_i_reg[4]_4\(0),
      \bus2ip_addr_i_reg[4]_4\(0) => \bus2ip_addr_i_reg[4]_5\(0),
      \bus2ip_addr_i_reg[5]\(0) => \bus2ip_addr_i_reg[5]_0\(0),
      \bus2ip_addr_i_reg[5]_0\(0) => \bus2ip_addr_i_reg[5]_1\(0),
      \bus2ip_addr_i_reg[5]_1\ => I_DECODER_n_48,
      \bus2ip_addr_i_reg[5]_2\(0) => \bus2ip_addr_i_reg[5]_2\(0),
      \bus2ip_addr_i_reg[6]\(0) => \bus2ip_addr_i_reg[6]_0\(0),
      \bus2ip_addr_i_reg[6]_0\(0) => \bus2ip_addr_i_reg[6]_1\(0),
      \bus2ip_addr_i_reg[8]\ => \bus2ip_addr_i_reg[8]_0\,
      \bus2ip_addr_i_reg[9]\(0) => \bus2ip_addr_i_reg[9]_0\(0),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      \clkfbout_reg_reg[6]\ => \clkfbout_reg[6]_i_2_n_0\,
      \clkfbout_reg_reg[6]_0\ => \clkfbout_reg[6]_i_3_n_0\,
      \clkout0_reg_reg[14]\ => \^rst_reg_0\,
      \clkout0_reg_reg[14]_0\ => \clkout0_reg[14]_i_2_n_0\,
      config_reg(0) => config_reg(0),
      dummy_local_reg_rdack0 => dummy_local_reg_rdack0,
      dummy_local_reg_rdack_d1 => dummy_local_reg_rdack_d1,
      dummy_local_reg_rdack_d10 => dummy_local_reg_rdack_d10,
      dummy_local_reg_wrack => dummy_local_reg_wrack,
      dummy_local_reg_wrack0 => dummy_local_reg_wrack0,
      dummy_local_reg_wrack_d1 => dummy_local_reg_wrack_d1,
      dummy_local_reg_wrack_d10 => dummy_local_reg_wrack_d10,
      \interrupt_enable_reg_reg[15]\(8 downto 5) => bus2ip_addr(10 downto 7),
      \interrupt_enable_reg_reg[15]\(4 downto 0) => \^q\(4 downto 0),
      ip2bus_error_int1 => ip2bus_error_int1,
      ip2bus_error_reg => bus2ip_rnw_i_reg_n_0,
      ip2bus_rdack => ip2bus_rdack,
      \^ip2bus_wrack\ => \^ip2bus_wrack\,
      ip2bus_wrack_int1 => ip2bus_wrack_int1,
      ip2bus_wrack_reg => sw_rst_cond_d1_i_2_n_0,
      load_enable_reg_d_reg => load_enable_reg_d_reg,
      \load_enable_reg_reg[0]\ => load_enable_reg_d_i_2_n_0,
      \ram_clk_config_reg[0][31]\ => \ram_clk_config[0][31]_i_4_n_0\,
      \ram_clk_config_reg[17][31]\ => \ram_clk_config[11][31]_i_2_n_0\,
      \ram_clk_config_reg[26][31]\ => \ram_clk_config[0][31]_i_3_n_0\,
      \ram_clk_config_reg[27][31]\ => \ram_clk_config[3][31]_i_2_n_0\,
      \ram_clk_config_reg[31][31]\ => \ram_clk_config[1][31]_i_2_n_0\,
      rdack_reg_10 => rdack_reg_10,
      reset_trig0 => reset_trig0,
      rst_ip2bus_rdack0 => rst_ip2bus_rdack0,
      rst_ip2bus_rdack_d1 => rst_ip2bus_rdack_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \s_axi_rdata_i_reg[0]\ => \s_axi_rdata_i[0]_i_6_n_0\,
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i[0]_i_7_n_0\,
      \s_axi_rdata_i_reg[0]_1\ => \s_axi_rdata_i_reg[0]_0\,
      \s_axi_rdata_i_reg[0]_2\ => \s_axi_rdata_i[0]_i_10_n_0\,
      \s_axi_rdata_i_reg[10]\ => \s_axi_rdata_i_reg[10]_0\,
      \s_axi_rdata_i_reg[11]\ => \s_axi_rdata_i_reg[11]_0\,
      \s_axi_rdata_i_reg[12]\ => \s_axi_rdata_i_reg[12]_0\,
      \s_axi_rdata_i_reg[13]\ => \s_axi_rdata_i_reg[13]_0\,
      \s_axi_rdata_i_reg[13]_0\ => \s_axi_rdata_i_reg[13]_1\,
      \s_axi_rdata_i_reg[14]\ => \s_axi_rdata_i_reg[14]_0\,
      \s_axi_rdata_i_reg[15]\(15 downto 0) => \s_axi_rdata_i_reg[15]_0\(15 downto 0),
      \s_axi_rdata_i_reg[15]_0\ => \s_axi_rdata_i_reg[15]_1\,
      \s_axi_rdata_i_reg[15]_1\ => \s_axi_rdata_i[31]_i_15_n_0\,
      \s_axi_rdata_i_reg[15]_2\ => \s_axi_rdata_i[31]_i_16_n_0\,
      \s_axi_rdata_i_reg[15]_3\ => \s_axi_rdata_i[31]_i_17_n_0\,
      \s_axi_rdata_i_reg[17]\ => \s_axi_rdata_i_reg[17]_0\,
      \s_axi_rdata_i_reg[17]_0\ => \s_axi_rdata_i[17]_i_3_n_0\,
      \s_axi_rdata_i_reg[18]\(16 downto 0) => \s_axi_rdata_i_reg[18]_0\(16 downto 0),
      \s_axi_rdata_i_reg[18]_0\ => \s_axi_rdata_i_reg[18]_1\,
      \s_axi_rdata_i_reg[18]_1\ => \s_axi_rdata_i_reg[18]_2\,
      \s_axi_rdata_i_reg[1]\ => \s_axi_rdata_i_reg[1]_0\,
      \s_axi_rdata_i_reg[2]\ => \s_axi_rdata_i_reg[2]_0\,
      \s_axi_rdata_i_reg[3]\ => \s_axi_rdata_i_reg[3]_0\,
      \s_axi_rdata_i_reg[4]\ => \s_axi_rdata_i_reg[4]_0\,
      \s_axi_rdata_i_reg[5]\ => \s_axi_rdata_i_reg[5]_0\,
      \s_axi_rdata_i_reg[6]\ => \s_axi_rdata_i_reg[6]_0\,
      \s_axi_rdata_i_reg[6]_0\ => \s_axi_rdata_i_reg[6]_1\,
      \s_axi_rdata_i_reg[7]\ => \s_axi_rdata_i_reg[7]_0\,
      \s_axi_rdata_i_reg[8]\ => \s_axi_rdata_i_reg[8]_0\,
      \s_axi_rdata_i_reg[9]\ => \s_axi_rdata_i_reg[9]_0\,
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wrack => wrack
    );
\bus2ip_addr_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[0]_i_1_n_0\
    );
\bus2ip_addr_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \bus2ip_addr_i[10]_i_1_n_0\
    );
\bus2ip_addr_i[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(10),
      O => \bus2ip_addr_i[10]_i_2_n_0\
    );
\bus2ip_addr_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[1]_i_1_n_0\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(4),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(5),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(6),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(7),
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(8),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(9),
      O => \bus2ip_addr_i[9]_i_1_n_0\
    );
\bus2ip_addr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[0]_i_1_n_0\,
      Q => bus2ip_addr(0),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[10]_i_2_n_0\,
      Q => bus2ip_addr(10),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[1]_i_1_n_0\,
      Q => bus2ip_addr(1),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^q\(1),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^q\(2),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^q\(3),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => \^q\(4),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => bus2ip_addr(7),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_1_n_0\,
      Q => bus2ip_addr(8),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => \bus2ip_addr_i[9]_i_1_n_0\,
      Q => bus2ip_addr(9),
      R => \^sr\(0)
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i_reg_n_0,
      R => \^sr\(0)
    );
\clkfbout_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bus2ip_addr(7),
      I1 => bus2ip_addr(10),
      I2 => I_DECODER_n_48,
      I3 => bus2ip_addr(0),
      I4 => bus2ip_addr(1),
      I5 => bus2ip_addr(8),
      O => \clkfbout_reg[6]_i_2_n_0\
    );
\clkfbout_reg[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => \clkfbout_reg[6]_i_3_n_0\
    );
\clkout0_reg[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => bus2ip_addr(8),
      I1 => \s_axi_rdata_i[31]_i_17_n_0\,
      I2 => I_DECODER_n_48,
      I3 => bus2ip_addr(10),
      I4 => bus2ip_addr(7),
      I5 => bus2ip_addr(9),
      O => \clkout0_reg[14]_i_2_n_0\
    );
\current_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sr\(0),
      I1 => \current_state_reg[1]\,
      O => \^rst_reg_0\
    );
load_enable_reg_d_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => bus2ip_addr(1),
      I1 => bus2ip_addr(0),
      I2 => bus2ip_addr(7),
      I3 => bus2ip_addr(10),
      I4 => \s_axi_rdata_i[31]_i_15_n_0\,
      O => load_enable_reg_d_i_2_n_0
    );
\ram_clk_config[0][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => \^bus2ip_addr_i_reg[1]_0\,
      O => \s_axi_wdata[31]\(0)
    );
\ram_clk_config[0][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => \^bus2ip_addr_i_reg[1]_0\,
      O => \s_axi_wdata[31]\(1)
    );
\ram_clk_config[0][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => \^bus2ip_addr_i_reg[1]_0\,
      O => \s_axi_wdata[31]\(2)
    );
\ram_clk_config[0][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => \^bus2ip_addr_i_reg[1]_0\,
      O => \s_axi_wdata[31]\(3)
    );
\ram_clk_config[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => \^bus2ip_addr_i_reg[1]_0\,
      O => \s_axi_wdata[31]\(4)
    );
\ram_clk_config[0][31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \clkfbout_reg[6]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => bus2ip_addr(9),
      O => \ram_clk_config[0][31]_i_3_n_0\
    );
\ram_clk_config[0][31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_15_n_0\,
      I1 => bus2ip_addr(10),
      I2 => bus2ip_addr(7),
      I3 => bus2ip_addr(8),
      I4 => bus2ip_addr(0),
      I5 => bus2ip_addr(1),
      O => \ram_clk_config[0][31]_i_4_n_0\
    );
\ram_clk_config[0][31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \ram_clk_config[0][31]_i_6_n_0\,
      I1 => bus2ip_addr(1),
      I2 => bus2ip_addr(0),
      I3 => bus2ip_addr(9),
      I4 => \clkfbout_reg[6]_i_3_n_0\,
      O => \^bus2ip_addr_i_reg[1]_0\
    );
\ram_clk_config[0][31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => bus2ip_addr(7),
      I3 => bus2ip_addr(10),
      I4 => bus2ip_addr(8),
      O => \ram_clk_config[0][31]_i_6_n_0\
    );
\ram_clk_config[11][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => load_enable_reg_d_i_2_n_0,
      O => \ram_clk_config[11][31]_i_2_n_0\
    );
\ram_clk_config[1][31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => load_enable_reg_d_i_2_n_0,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => bus2ip_addr(9),
      I4 => \clkfbout_reg[6]_i_2_n_0\,
      O => \ram_clk_config[1][31]_i_2_n_0\
    );
\ram_clk_config[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(0),
      O => \s_axi_wdata[31]_0\(0)
    );
\ram_clk_config[2][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(10),
      O => \s_axi_wdata[31]_0\(10)
    );
\ram_clk_config[2][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(11),
      O => \s_axi_wdata[31]_0\(11)
    );
\ram_clk_config[2][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(12),
      O => \s_axi_wdata[31]_0\(12)
    );
\ram_clk_config[2][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(13),
      O => \s_axi_wdata[31]_0\(13)
    );
\ram_clk_config[2][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(14),
      O => \s_axi_wdata[31]_0\(14)
    );
\ram_clk_config[2][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(15),
      O => \s_axi_wdata[31]_0\(15)
    );
\ram_clk_config[2][16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(16),
      O => \s_axi_wdata[31]_0\(16)
    );
\ram_clk_config[2][17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(17),
      O => \s_axi_wdata[31]_0\(17)
    );
\ram_clk_config[2][18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][18]\,
      O => \s_axi_wdata[31]_0\(18)
    );
\ram_clk_config[2][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(19)
    );
\ram_clk_config[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(1),
      O => \s_axi_wdata[31]_0\(1)
    );
\ram_clk_config[2][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(20)
    );
\ram_clk_config[2][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(21)
    );
\ram_clk_config[2][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(22)
    );
\ram_clk_config[2][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(23)
    );
\ram_clk_config[2][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(24)
    );
\ram_clk_config[2][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(25)
    );
\ram_clk_config[2][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(26)
    );
\ram_clk_config[2][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(27)
    );
\ram_clk_config[2][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(28)
    );
\ram_clk_config[2][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(29)
    );
\ram_clk_config[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(2),
      O => \s_axi_wdata[31]_0\(2)
    );
\ram_clk_config[2][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(30)
    );
\ram_clk_config[2][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      O => \s_axi_wdata[31]_0\(31)
    );
\ram_clk_config[2][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \ram_clk_config[0][31]_i_6_n_0\,
      I1 => bus2ip_addr(1),
      I2 => bus2ip_addr(0),
      I3 => bus2ip_addr(9),
      I4 => \^q\(0),
      I5 => \ram_clk_config[2][31]_i_4_n_0\,
      O => \ram_clk_config[2][31]_i_3_n_0\
    );
\ram_clk_config[2][31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \ram_clk_config[2][31]_i_4_n_0\
    );
\ram_clk_config[2][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(3),
      O => \s_axi_wdata[31]_0\(3)
    );
\ram_clk_config[2][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(4),
      O => \s_axi_wdata[31]_0\(4)
    );
\ram_clk_config[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(5),
      O => \s_axi_wdata[31]_0\(5)
    );
\ram_clk_config[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(6),
      O => \s_axi_wdata[31]_0\(6)
    );
\ram_clk_config[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(7),
      O => \s_axi_wdata[31]_0\(7)
    );
\ram_clk_config[2][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(8),
      O => \s_axi_wdata[31]_0\(8)
    );
\ram_clk_config[2][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \ram_clk_config[2][31]_i_3_n_0\,
      I2 => \ram_clk_config_reg[2][17]\(9),
      O => \s_axi_wdata[31]_0\(9)
    );
\ram_clk_config[3][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => load_enable_reg_d_i_2_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \ram_clk_config[3][31]_i_2_n_0\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => rst_i_1_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timeout,
      I1 => ip2bus_rdack,
      O => s_axi_arready
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(0),
      I1 => s_axi_bresp_i,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => \^sr\(0)
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FD550000FC00"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^ip2bus_wrack\,
      I2 => timeout,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \^sr\(0)
    );
\s_axi_rdata_i[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \s_axi_rdata_i[0]_i_3_1\,
      I1 => \^q\(2),
      I2 => \s_axi_rdata_i[0]_i_3_2\,
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \s_axi_rdata_i[0]_i_10_n_0\
    );
\s_axi_rdata_i[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => \s_axi_rdata_i[0]_i_3_3\,
      I1 => \^q\(2),
      I2 => \s_axi_rdata_i[0]_i_3_4\,
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \s_axi_rdata_i[0]_i_6_n_0\
    );
\s_axi_rdata_i[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDFFFDF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \s_axi_rdata_i[0]_i_3\,
      I3 => \^q\(2),
      I4 => \s_axi_rdata_i[0]_i_3_0\,
      O => \s_axi_rdata_i[0]_i_7_n_0\
    );
\s_axi_rdata_i[17]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[17]_i_3_5\(0),
      I4 => \s_axi_rdata_i[17]_i_15_n_0\,
      O => \s_axi_rdata_i[17]_i_11_n_0\
    );
\s_axi_rdata_i[17]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAEAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[17]_i_11_0\(0),
      I4 => \^q\(0),
      I5 => \s_axi_rdata_i[17]_i_11_1\(0),
      O => \s_axi_rdata_i[17]_i_15_n_0\
    );
\s_axi_rdata_i[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE000000FE00"
    )
        port map (
      I0 => \s_axi_rdata_i[17]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[17]_1\,
      I2 => \s_axi_rdata_i[17]_i_9_n_0\,
      I3 => \^q\(3),
      I4 => \s_axi_rdata_i_reg[17]_2\,
      I5 => \s_axi_rdata_i[17]_i_11_n_0\,
      O => \s_axi_rdata_i[17]_i_3_n_0\
    );
\s_axi_rdata_i[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33333333333B3B"
    )
        port map (
      I0 => \s_axi_rdata_i[17]_i_3_3\(0),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \s_axi_rdata_i[17]_i_3_4\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \s_axi_rdata_i[17]_i_7_n_0\
    );
\s_axi_rdata_i[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A80A080AA8000800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s_axi_rdata_i[17]_i_3_0\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \s_axi_rdata_i[17]_i_3_1\(0),
      I5 => \s_axi_rdata_i[17]_i_3_2\(0),
      O => \s_axi_rdata_i[17]_i_9_n_0\
    );
\s_axi_rdata_i[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => bus2ip_addr(9),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \s_axi_rdata_i[31]_i_15_n_0\
    );
\s_axi_rdata_i[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bus2ip_addr(7),
      I1 => bus2ip_addr(10),
      O => \s_axi_rdata_i[31]_i_16_n_0\
    );
\s_axi_rdata_i[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bus2ip_addr(0),
      I1 => bus2ip_addr(1),
      O => \s_axi_rdata_i[31]_i_17_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(31),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(21),
      Q => s_axi_rdata(10),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(20),
      Q => s_axi_rdata(11),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(19),
      Q => s_axi_rdata(12),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(18),
      Q => s_axi_rdata(13),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(17),
      Q => s_axi_rdata(14),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(16),
      Q => s_axi_rdata(15),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(0),
      Q => s_axi_rdata(16),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(14),
      Q => s_axi_rdata(17),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(13),
      Q => s_axi_rdata(18),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(1),
      Q => s_axi_rdata(19),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(30),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(2),
      Q => s_axi_rdata(20),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(3),
      Q => s_axi_rdata(21),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(4),
      Q => s_axi_rdata(22),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(5),
      Q => s_axi_rdata(23),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(6),
      Q => s_axi_rdata(24),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(7),
      Q => s_axi_rdata(25),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(8),
      Q => s_axi_rdata(26),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(9),
      Q => s_axi_rdata(27),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(10),
      Q => s_axi_rdata(28),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(11),
      Q => s_axi_rdata(29),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(29),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(12),
      Q => s_axi_rdata(30),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(13),
      Q => s_axi_rdata(31),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(28),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(27),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(26),
      Q => s_axi_rdata(5),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(25),
      Q => s_axi_rdata(6),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(24),
      Q => s_axi_rdata(7),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(23),
      Q => s_axi_rdata(8),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(22),
      Q => s_axi_rdata(9),
      R => \^sr\(0)
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => p_1_in(0),
      Q => s_axi_rresp(0),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7775555533300000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \state_reg_n_0_[1]\,
      I2 => timeout,
      I3 => ip2bus_rdack,
      I4 => \state_reg_n_0_[0]\,
      I5 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => \^sr\(0)
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timeout,
      I1 => \^ip2bus_wrack\,
      O => s_axi_awready
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFCBBFCBBFCBB30"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[0]\,
      I4 => timeout,
      I5 => \^ip2bus_wrack\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCAFFCAFFCA0FC"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \state[1]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => ip2bus_rdack,
      I5 => timeout,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => \^sr\(0)
    );
sw_rst_cond_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFFFFFFFFFFF"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => bus2ip_rnw_i_reg_n_0,
      I2 => s_axi_wdata(0),
      I3 => s_axi_wdata(2),
      I4 => s_axi_wdata(3),
      I5 => s_axi_wdata(1),
      O => sw_rst_cond_d1_i_2_n_0
    );
wrack_reg_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rst_reg_0\,
      I1 => \ram_clk_config[0][31]_i_3_n_0\,
      O => wrack_reg_10
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0_axi_lite_ipif is
  port (
    bus2ip_reset_active_high : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset2ip_reset : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \bus2ip_addr_i_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrack_reg_10 : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[8]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[31]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \bus2ip_addr_i_reg[1]\ : out STD_LOGIC;
    \s_axi_wdata[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rdack_reg_10 : out STD_LOGIC;
    rst_ip2bus_rdack0 : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_error_int1 : out STD_LOGIC;
    ip2bus_wrack_int1 : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    dummy_local_reg_rdack0 : out STD_LOGIC;
    dummy_local_reg_rdack_d10 : out STD_LOGIC;
    dummy_local_reg_wrack0 : out STD_LOGIC;
    dummy_local_reg_wrack_d10 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[2]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[4]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    \^ip2bus_wrack\ : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \current_state_reg[1]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \s_axi_rdata_i_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rdata_i_reg[18]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \s_axi_rdata_i_reg[15]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    SRDY : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]_1\ : in STD_LOGIC;
    config_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_enable_reg_d_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ram_clk_config_reg[2][17]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \ram_clk_config_reg[2][18]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]_1\ : in STD_LOGIC;
    \s_axi_rdata_i[17]_i_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_3_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_3_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_3_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[0]_i_3\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_0\ : in STD_LOGIC;
    \s_axi_rdata_i[17]_i_3_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[17]_i_11_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_ip2bus_rdack_d1 : in STD_LOGIC;
    dummy_local_reg_wrack : in STD_LOGIC;
    wrack : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dummy_local_reg_rdack_d1 : in STD_LOGIC;
    dummy_local_reg_wrack_d1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_1\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_2\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_3\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_3_4\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end rfdc_ex_clk_wiz_adc1_0_axi_lite_ipif;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
I_SLAVE_ATTACHMENT: entity work.rfdc_ex_clk_wiz_adc1_0_slave_attachment
     port map (
      Bus_RNW_reg_reg(0) => Bus_RNW_reg_reg(0),
      D(13 downto 0) => D(13 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0) => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0),
      IP2Bus_WrAck => IP2Bus_WrAck,
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => bus2ip_reset_active_high,
      SRDY => SRDY,
      \bus2ip_addr_i_reg[1]_0\ => \bus2ip_addr_i_reg[1]\,
      \bus2ip_addr_i_reg[2]_0\(0) => \bus2ip_addr_i_reg[2]\(0),
      \bus2ip_addr_i_reg[2]_1\(0) => \bus2ip_addr_i_reg[2]_0\(0),
      \bus2ip_addr_i_reg[2]_2\(0) => \bus2ip_addr_i_reg[2]_1\(0),
      \bus2ip_addr_i_reg[2]_3\(0) => \bus2ip_addr_i_reg[2]_2\(0),
      \bus2ip_addr_i_reg[2]_4\(0) => \bus2ip_addr_i_reg[2]_3\(0),
      \bus2ip_addr_i_reg[2]_5\(0) => \bus2ip_addr_i_reg[2]_4\(0),
      \bus2ip_addr_i_reg[2]_6\(0) => \bus2ip_addr_i_reg[2]_5\(0),
      \bus2ip_addr_i_reg[2]_7\(0) => \bus2ip_addr_i_reg[2]_6\(0),
      \bus2ip_addr_i_reg[3]_0\(0) => \bus2ip_addr_i_reg[3]\(0),
      \bus2ip_addr_i_reg[3]_1\(0) => \bus2ip_addr_i_reg[3]_0\(0),
      \bus2ip_addr_i_reg[3]_10\(0) => \bus2ip_addr_i_reg[3]_9\(0),
      \bus2ip_addr_i_reg[3]_11\(0) => \bus2ip_addr_i_reg[3]_10\(0),
      \bus2ip_addr_i_reg[3]_12\(0) => \bus2ip_addr_i_reg[3]_11\(0),
      \bus2ip_addr_i_reg[3]_2\(0) => \bus2ip_addr_i_reg[3]_1\(0),
      \bus2ip_addr_i_reg[3]_3\(0) => \bus2ip_addr_i_reg[3]_2\(0),
      \bus2ip_addr_i_reg[3]_4\(0) => \bus2ip_addr_i_reg[3]_3\(0),
      \bus2ip_addr_i_reg[3]_5\(0) => \bus2ip_addr_i_reg[3]_4\(0),
      \bus2ip_addr_i_reg[3]_6\(0) => \bus2ip_addr_i_reg[3]_5\(0),
      \bus2ip_addr_i_reg[3]_7\(0) => \bus2ip_addr_i_reg[3]_6\(0),
      \bus2ip_addr_i_reg[3]_8\(0) => \bus2ip_addr_i_reg[3]_7\(0),
      \bus2ip_addr_i_reg[3]_9\(0) => \bus2ip_addr_i_reg[3]_8\(0),
      \bus2ip_addr_i_reg[4]_0\(0) => \bus2ip_addr_i_reg[4]\(0),
      \bus2ip_addr_i_reg[4]_1\(0) => \bus2ip_addr_i_reg[4]_0\(0),
      \bus2ip_addr_i_reg[4]_2\(0) => \bus2ip_addr_i_reg[4]_1\(0),
      \bus2ip_addr_i_reg[4]_3\(0) => \bus2ip_addr_i_reg[4]_2\(0),
      \bus2ip_addr_i_reg[4]_4\(0) => \bus2ip_addr_i_reg[4]_3\(0),
      \bus2ip_addr_i_reg[4]_5\(0) => \bus2ip_addr_i_reg[4]_4\(0),
      \bus2ip_addr_i_reg[5]_0\(0) => \bus2ip_addr_i_reg[5]\(0),
      \bus2ip_addr_i_reg[5]_1\(0) => \bus2ip_addr_i_reg[5]_0\(0),
      \bus2ip_addr_i_reg[5]_2\(0) => \bus2ip_addr_i_reg[5]_1\(0),
      \bus2ip_addr_i_reg[6]_0\(0) => \bus2ip_addr_i_reg[6]\(0),
      \bus2ip_addr_i_reg[6]_1\(0) => \bus2ip_addr_i_reg[6]_0\(0),
      \bus2ip_addr_i_reg[8]_0\ => \bus2ip_addr_i_reg[8]\,
      \bus2ip_addr_i_reg[9]_0\(0) => \bus2ip_addr_i_reg[9]\(0),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      config_reg(0) => config_reg(0),
      \current_state_reg[1]\ => \current_state_reg[1]\,
      dummy_local_reg_rdack0 => dummy_local_reg_rdack0,
      dummy_local_reg_rdack_d1 => dummy_local_reg_rdack_d1,
      dummy_local_reg_rdack_d10 => dummy_local_reg_rdack_d10,
      dummy_local_reg_wrack => dummy_local_reg_wrack,
      dummy_local_reg_wrack0 => dummy_local_reg_wrack0,
      dummy_local_reg_wrack_d1 => dummy_local_reg_wrack_d1,
      dummy_local_reg_wrack_d10 => dummy_local_reg_wrack_d10,
      ip2bus_error_int1 => ip2bus_error_int1,
      ip2bus_rdack => ip2bus_rdack,
      \^ip2bus_wrack\ => \^ip2bus_wrack\,
      ip2bus_wrack_int1 => ip2bus_wrack_int1,
      load_enable_reg_d_reg => load_enable_reg_d_reg,
      p_1_in(0) => p_1_in(0),
      \ram_clk_config_reg[2][17]\(17 downto 0) => \ram_clk_config_reg[2][17]\(17 downto 0),
      \ram_clk_config_reg[2][18]\ => \ram_clk_config_reg[2][18]\,
      rdack_reg_10 => rdack_reg_10,
      reset_trig0 => reset_trig0,
      rst_ip2bus_rdack0 => rst_ip2bus_rdack0,
      rst_ip2bus_rdack_d1 => rst_ip2bus_rdack_d1,
      rst_reg_0 => reset2ip_reset,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(10 downto 0) => s_axi_araddr(10 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(10 downto 0) => s_axi_awaddr(10 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i[0]_i_3\ => \s_axi_rdata_i[0]_i_3\,
      \s_axi_rdata_i[0]_i_3_0\ => \s_axi_rdata_i[0]_i_3_0\,
      \s_axi_rdata_i[0]_i_3_1\ => \s_axi_rdata_i[0]_i_3_1\,
      \s_axi_rdata_i[0]_i_3_2\ => \s_axi_rdata_i[0]_i_3_2\,
      \s_axi_rdata_i[0]_i_3_3\ => \s_axi_rdata_i[0]_i_3_3\,
      \s_axi_rdata_i[0]_i_3_4\ => \s_axi_rdata_i[0]_i_3_4\,
      \s_axi_rdata_i[17]_i_11_0\(0) => \s_axi_rdata_i[17]_i_11\(0),
      \s_axi_rdata_i[17]_i_11_1\(0) => \s_axi_rdata_i[17]_i_11_0\(0),
      \s_axi_rdata_i[17]_i_3_0\(0) => \s_axi_rdata_i[17]_i_3\(0),
      \s_axi_rdata_i[17]_i_3_1\(0) => \s_axi_rdata_i[17]_i_3_0\(0),
      \s_axi_rdata_i[17]_i_3_2\(0) => \s_axi_rdata_i[17]_i_3_1\(0),
      \s_axi_rdata_i[17]_i_3_3\(0) => \s_axi_rdata_i[17]_i_3_2\(0),
      \s_axi_rdata_i[17]_i_3_4\(0) => \s_axi_rdata_i[17]_i_3_3\(0),
      \s_axi_rdata_i[17]_i_3_5\(0) => \s_axi_rdata_i[17]_i_3_4\(0),
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i_reg[0]\,
      \s_axi_rdata_i_reg[10]_0\ => \s_axi_rdata_i_reg[10]\,
      \s_axi_rdata_i_reg[11]_0\ => \s_axi_rdata_i_reg[11]\,
      \s_axi_rdata_i_reg[12]_0\ => \s_axi_rdata_i_reg[12]\,
      \s_axi_rdata_i_reg[13]_0\ => \s_axi_rdata_i_reg[13]\,
      \s_axi_rdata_i_reg[13]_1\ => \s_axi_rdata_i_reg[13]_0\,
      \s_axi_rdata_i_reg[14]_0\ => \s_axi_rdata_i_reg[14]\,
      \s_axi_rdata_i_reg[15]_0\(15 downto 0) => \s_axi_rdata_i_reg[15]\(15 downto 0),
      \s_axi_rdata_i_reg[15]_1\ => \s_axi_rdata_i_reg[15]_0\,
      \s_axi_rdata_i_reg[17]_0\ => \s_axi_rdata_i_reg[17]\,
      \s_axi_rdata_i_reg[17]_1\ => \s_axi_rdata_i_reg[17]_0\,
      \s_axi_rdata_i_reg[17]_2\ => \s_axi_rdata_i_reg[17]_1\,
      \s_axi_rdata_i_reg[18]_0\(16 downto 0) => \s_axi_rdata_i_reg[18]\(16 downto 0),
      \s_axi_rdata_i_reg[18]_1\ => \s_axi_rdata_i_reg[18]_0\,
      \s_axi_rdata_i_reg[18]_2\ => \s_axi_rdata_i_reg[18]_1\,
      \s_axi_rdata_i_reg[1]_0\ => \s_axi_rdata_i_reg[1]\,
      \s_axi_rdata_i_reg[2]_0\ => \s_axi_rdata_i_reg[2]\,
      \s_axi_rdata_i_reg[3]_0\ => \s_axi_rdata_i_reg[3]\,
      \s_axi_rdata_i_reg[4]_0\ => \s_axi_rdata_i_reg[4]\,
      \s_axi_rdata_i_reg[5]_0\ => \s_axi_rdata_i_reg[5]\,
      \s_axi_rdata_i_reg[6]_0\ => \s_axi_rdata_i_reg[6]\,
      \s_axi_rdata_i_reg[6]_1\ => \s_axi_rdata_i_reg[6]_0\,
      \s_axi_rdata_i_reg[7]_0\ => \s_axi_rdata_i_reg[7]\,
      \s_axi_rdata_i_reg[8]_0\ => \s_axi_rdata_i_reg[8]\,
      \s_axi_rdata_i_reg[9]_0\ => \s_axi_rdata_i_reg[9]\,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      \s_axi_wdata[31]\(4 downto 0) => \s_axi_wdata[31]\(4 downto 0),
      \s_axi_wdata[31]_0\(31 downto 0) => \s_axi_wdata[31]_0\(31 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wrack => wrack,
      wrack_reg_10 => wrack_reg_10
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0_axi_clk_config is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of rfdc_ex_clk_wiz_adc1_0_axi_clk_config : entity is 11;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of rfdc_ex_clk_wiz_adc1_0_axi_clk_config : entity is 32;
end rfdc_ex_clk_wiz_adc1_0_axi_clk_config;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0_axi_clk_config is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_100 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_101 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_16 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_17 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_18 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_19 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_20 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_21 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_22 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_23 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_24 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_25 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_26 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_27 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_28 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_29 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_30 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_31 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_32 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_33 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_34 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_35 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_36 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_37 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_38 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_39 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_40 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_41 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_43 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_44 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_45 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_46 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_47 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_48 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_49 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_50 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_51 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_52 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_53 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_54 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_55 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_56 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_57 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_58 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_59 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_6 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_60 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_61 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_62 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_63 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_64 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_65 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_66 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_67 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_68 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_69 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_70 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_71 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_72 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_73 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_74 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_75 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_76 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_77 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_78 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_79 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_80 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_92 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_93 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_94 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_95 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_96 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_97 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_98 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_99 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_107 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_36 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_37 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_38 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_39 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_40 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_41 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_42 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_43 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_44 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_45 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_46 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_47 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_48 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_49 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_50 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_51 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_52 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_53 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_54 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_55 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_56 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_57 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_58 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_59 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_60 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_61 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_70 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_71 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_72 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_73 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_74 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_75 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_76 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_77 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_78 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_79 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_80 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_81 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_82 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_83 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_84 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_85 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_86 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_87 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_88 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_89 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_90 : STD_LOGIC;
  signal CLK_CORE_DRP_I_n_91 : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 0 to 15 );
  signal IP2Bus_WrAck : STD_LOGIC;
  signal SOFT_RESET_I_n_2 : STD_LOGIC;
  signal SRDY : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 8 to 8 );
  signal bus2ip_reset_active_high : STD_LOGIC;
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 0 to 0 );
  signal config_reg : STD_LOGIC_VECTOR ( 30 to 31 );
  signal \config_reg__0\ : STD_LOGIC_VECTOR ( 13 to 29 );
  signal dummy_local_reg_rdack : STD_LOGIC;
  signal dummy_local_reg_rdack0 : STD_LOGIC;
  signal dummy_local_reg_rdack_d1 : STD_LOGIC;
  signal dummy_local_reg_rdack_d10 : STD_LOGIC;
  signal dummy_local_reg_wrack : STD_LOGIC;
  signal dummy_local_reg_wrack0 : STD_LOGIC;
  signal dummy_local_reg_wrack_d1 : STD_LOGIC;
  signal dummy_local_reg_wrack_d10 : STD_LOGIC;
  signal ip2bus_error_int1 : STD_LOGIC;
  signal ip2bus_rdack : STD_LOGIC;
  signal ip2bus_rdack_int1 : STD_LOGIC;
  signal \^ip2bus_wrack\ : STD_LOGIC;
  signal ip2bus_wrack_int1 : STD_LOGIC;
  signal \^locked\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_36_in : STD_LOGIC;
  signal p_39_in : STD_LOGIC;
  signal p_42_in : STD_LOGIC;
  signal p_45_in : STD_LOGIC;
  signal p_48_in : STD_LOGIC;
  signal p_51_in : STD_LOGIC;
  signal p_54_in : STD_LOGIC;
  signal p_57_in : STD_LOGIC;
  signal p_60_in : STD_LOGIC;
  signal p_63_in : STD_LOGIC;
  signal p_66_in : STD_LOGIC;
  signal p_69_in : STD_LOGIC;
  signal p_72_in : STD_LOGIC;
  signal p_75_in : STD_LOGIC;
  signal p_93_in : STD_LOGIC;
  signal \ram_clk_config_reg[12]_5\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \ram_clk_config_reg[14]_6\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \ram_clk_config_reg[15]_7\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \ram_clk_config_reg[24]_3\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \ram_clk_config_reg[25]_4\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \ram_clk_config_reg[29]_0\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \ram_clk_config_reg[30]_1\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal \ram_clk_config_reg[31]_2\ : STD_LOGIC_VECTOR ( 17 to 17 );
  signal rdack_reg_10 : STD_LOGIC;
  signal reset2ip_reset : STD_LOGIC;
  signal reset_trig0 : STD_LOGIC;
  signal rst_ip2bus_rdack : STD_LOGIC;
  signal rst_ip2bus_rdack0 : STD_LOGIC;
  signal rst_ip2bus_rdack_d1 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sw_rst_cond : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
  signal wrack : STD_LOGIC;
  signal wrack_reg_10 : STD_LOGIC;
begin
  locked <= \^locked\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
AXI_LITE_IPIF_I: entity work.rfdc_ex_clk_wiz_adc1_0_axi_lite_ipif
     port map (
      Bus_RNW_reg_reg(0) => AXI_LITE_IPIF_I_n_39,
      D(13) => IP2Bus_Data(0),
      D(12) => IP2Bus_Data(1),
      D(11) => IP2Bus_Data(2),
      D(10) => IP2Bus_Data(3),
      D(9) => IP2Bus_Data(4),
      D(8) => IP2Bus_Data(5),
      D(7) => IP2Bus_Data(6),
      D(6) => IP2Bus_Data(7),
      D(5) => IP2Bus_Data(8),
      D(4) => IP2Bus_Data(9),
      D(3) => IP2Bus_Data(10),
      D(2) => IP2Bus_Data(11),
      D(1) => IP2Bus_Data(12),
      D(0) => IP2Bus_Data(15),
      E(0) => AXI_LITE_IPIF_I_n_6,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => AXI_LITE_IPIF_I_n_40,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0) => AXI_LITE_IPIF_I_n_38,
      IP2Bus_WrAck => IP2Bus_WrAck,
      Q(4 downto 0) => bus2ip_addr(6 downto 2),
      SRDY => SRDY,
      \bus2ip_addr_i_reg[1]\ => AXI_LITE_IPIF_I_n_48,
      \bus2ip_addr_i_reg[2]\(0) => AXI_LITE_IPIF_I_n_15,
      \bus2ip_addr_i_reg[2]_0\(0) => AXI_LITE_IPIF_I_n_16,
      \bus2ip_addr_i_reg[2]_1\(0) => AXI_LITE_IPIF_I_n_17,
      \bus2ip_addr_i_reg[2]_2\(0) => AXI_LITE_IPIF_I_n_24,
      \bus2ip_addr_i_reg[2]_3\(0) => AXI_LITE_IPIF_I_n_30,
      \bus2ip_addr_i_reg[2]_4\(0) => AXI_LITE_IPIF_I_n_34,
      \bus2ip_addr_i_reg[2]_5\(0) => AXI_LITE_IPIF_I_n_93,
      \bus2ip_addr_i_reg[2]_6\(0) => AXI_LITE_IPIF_I_n_94,
      \bus2ip_addr_i_reg[3]\(0) => AXI_LITE_IPIF_I_n_18,
      \bus2ip_addr_i_reg[3]_0\(0) => AXI_LITE_IPIF_I_n_23,
      \bus2ip_addr_i_reg[3]_1\(0) => AXI_LITE_IPIF_I_n_25,
      \bus2ip_addr_i_reg[3]_10\(0) => AXI_LITE_IPIF_I_n_96,
      \bus2ip_addr_i_reg[3]_11\(0) => AXI_LITE_IPIF_I_n_98,
      \bus2ip_addr_i_reg[3]_2\(0) => AXI_LITE_IPIF_I_n_26,
      \bus2ip_addr_i_reg[3]_3\(0) => AXI_LITE_IPIF_I_n_27,
      \bus2ip_addr_i_reg[3]_4\(0) => AXI_LITE_IPIF_I_n_28,
      \bus2ip_addr_i_reg[3]_5\(0) => AXI_LITE_IPIF_I_n_29,
      \bus2ip_addr_i_reg[3]_6\(0) => AXI_LITE_IPIF_I_n_31,
      \bus2ip_addr_i_reg[3]_7\(0) => AXI_LITE_IPIF_I_n_33,
      \bus2ip_addr_i_reg[3]_8\(0) => AXI_LITE_IPIF_I_n_35,
      \bus2ip_addr_i_reg[3]_9\(0) => AXI_LITE_IPIF_I_n_92,
      \bus2ip_addr_i_reg[4]\(0) => AXI_LITE_IPIF_I_n_20,
      \bus2ip_addr_i_reg[4]_0\(0) => AXI_LITE_IPIF_I_n_21,
      \bus2ip_addr_i_reg[4]_1\(0) => AXI_LITE_IPIF_I_n_22,
      \bus2ip_addr_i_reg[4]_2\(0) => AXI_LITE_IPIF_I_n_32,
      \bus2ip_addr_i_reg[4]_3\(0) => AXI_LITE_IPIF_I_n_95,
      \bus2ip_addr_i_reg[4]_4\(0) => AXI_LITE_IPIF_I_n_99,
      \bus2ip_addr_i_reg[5]\(0) => AXI_LITE_IPIF_I_n_19,
      \bus2ip_addr_i_reg[5]_0\(0) => AXI_LITE_IPIF_I_n_36,
      \bus2ip_addr_i_reg[5]_1\(0) => AXI_LITE_IPIF_I_n_100,
      \bus2ip_addr_i_reg[6]\(0) => AXI_LITE_IPIF_I_n_37,
      \bus2ip_addr_i_reg[6]_0\(0) => AXI_LITE_IPIF_I_n_97,
      \bus2ip_addr_i_reg[8]\ => AXI_LITE_IPIF_I_n_41,
      \bus2ip_addr_i_reg[9]\(0) => AXI_LITE_IPIF_I_n_13,
      bus2ip_rdce(0) => bus2ip_rdce(8),
      bus2ip_reset_active_high => bus2ip_reset_active_high,
      bus2ip_wrce(0) => bus2ip_wrce(0),
      config_reg(0) => config_reg(31),
      \current_state_reg[1]\ => SOFT_RESET_I_n_2,
      dummy_local_reg_rdack0 => dummy_local_reg_rdack0,
      dummy_local_reg_rdack_d1 => dummy_local_reg_rdack_d1,
      dummy_local_reg_rdack_d10 => dummy_local_reg_rdack_d10,
      dummy_local_reg_wrack => dummy_local_reg_wrack,
      dummy_local_reg_wrack0 => dummy_local_reg_wrack0,
      dummy_local_reg_wrack_d1 => dummy_local_reg_wrack_d1,
      dummy_local_reg_wrack_d10 => dummy_local_reg_wrack_d10,
      ip2bus_error_int1 => ip2bus_error_int1,
      ip2bus_rdack => ip2bus_rdack,
      \^ip2bus_wrack\ => \^ip2bus_wrack\,
      ip2bus_wrack_int1 => ip2bus_wrack_int1,
      load_enable_reg_d_reg => \^locked\,
      p_1_in(0) => p_1_in(1),
      \ram_clk_config_reg[2][17]\(17) => CLK_CORE_DRP_I_n_44,
      \ram_clk_config_reg[2][17]\(16) => CLK_CORE_DRP_I_n_45,
      \ram_clk_config_reg[2][17]\(15) => CLK_CORE_DRP_I_n_46,
      \ram_clk_config_reg[2][17]\(14) => CLK_CORE_DRP_I_n_47,
      \ram_clk_config_reg[2][17]\(13) => CLK_CORE_DRP_I_n_48,
      \ram_clk_config_reg[2][17]\(12) => CLK_CORE_DRP_I_n_49,
      \ram_clk_config_reg[2][17]\(11) => CLK_CORE_DRP_I_n_50,
      \ram_clk_config_reg[2][17]\(10) => CLK_CORE_DRP_I_n_51,
      \ram_clk_config_reg[2][17]\(9) => CLK_CORE_DRP_I_n_52,
      \ram_clk_config_reg[2][17]\(8) => CLK_CORE_DRP_I_n_53,
      \ram_clk_config_reg[2][17]\(7) => CLK_CORE_DRP_I_n_54,
      \ram_clk_config_reg[2][17]\(6) => CLK_CORE_DRP_I_n_55,
      \ram_clk_config_reg[2][17]\(5) => CLK_CORE_DRP_I_n_56,
      \ram_clk_config_reg[2][17]\(4) => CLK_CORE_DRP_I_n_57,
      \ram_clk_config_reg[2][17]\(3) => CLK_CORE_DRP_I_n_58,
      \ram_clk_config_reg[2][17]\(2) => CLK_CORE_DRP_I_n_59,
      \ram_clk_config_reg[2][17]\(1) => CLK_CORE_DRP_I_n_60,
      \ram_clk_config_reg[2][17]\(0) => CLK_CORE_DRP_I_n_61,
      \ram_clk_config_reg[2][18]\ => CLK_CORE_DRP_I_n_43,
      rdack_reg_10 => rdack_reg_10,
      reset2ip_reset => reset2ip_reset,
      reset_trig0 => reset_trig0,
      rst_ip2bus_rdack0 => rst_ip2bus_rdack0,
      rst_ip2bus_rdack_d1 => rst_ip2bus_rdack_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(10 downto 0) => s_axi_araddr(10 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(10 downto 0) => s_axi_awaddr(10 downto 0),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i[0]_i_3\ => CLK_CORE_DRP_I_n_90,
      \s_axi_rdata_i[0]_i_3_0\ => CLK_CORE_DRP_I_n_91,
      \s_axi_rdata_i[0]_i_3_1\ => CLK_CORE_DRP_I_n_86,
      \s_axi_rdata_i[0]_i_3_2\ => CLK_CORE_DRP_I_n_85,
      \s_axi_rdata_i[0]_i_3_3\ => CLK_CORE_DRP_I_n_88,
      \s_axi_rdata_i[0]_i_3_4\ => CLK_CORE_DRP_I_n_89,
      \s_axi_rdata_i[17]_i_11\(0) => \ram_clk_config_reg[14]_6\(17),
      \s_axi_rdata_i[17]_i_11_0\(0) => \ram_clk_config_reg[15]_7\(17),
      \s_axi_rdata_i[17]_i_3\(0) => \ram_clk_config_reg[29]_0\(17),
      \s_axi_rdata_i[17]_i_3_0\(0) => \ram_clk_config_reg[31]_2\(17),
      \s_axi_rdata_i[17]_i_3_1\(0) => \ram_clk_config_reg[25]_4\(17),
      \s_axi_rdata_i[17]_i_3_2\(0) => \ram_clk_config_reg[24]_3\(17),
      \s_axi_rdata_i[17]_i_3_3\(0) => \ram_clk_config_reg[30]_1\(17),
      \s_axi_rdata_i[17]_i_3_4\(0) => \ram_clk_config_reg[12]_5\(17),
      \s_axi_rdata_i_reg[0]\ => CLK_CORE_DRP_I_n_87,
      \s_axi_rdata_i_reg[10]\ => CLK_CORE_DRP_I_n_38,
      \s_axi_rdata_i_reg[11]\ => CLK_CORE_DRP_I_n_77,
      \s_axi_rdata_i_reg[12]\ => CLK_CORE_DRP_I_n_76,
      \s_axi_rdata_i_reg[13]\ => CLK_CORE_DRP_I_n_74,
      \s_axi_rdata_i_reg[13]_0\ => CLK_CORE_DRP_I_n_75,
      \s_axi_rdata_i_reg[14]\ => CLK_CORE_DRP_I_n_73,
      \s_axi_rdata_i_reg[15]\(15) => p_93_in,
      \s_axi_rdata_i_reg[15]\(14) => p_75_in,
      \s_axi_rdata_i_reg[15]\(13) => p_72_in,
      \s_axi_rdata_i_reg[15]\(12) => p_69_in,
      \s_axi_rdata_i_reg[15]\(11) => p_66_in,
      \s_axi_rdata_i_reg[15]\(10) => p_63_in,
      \s_axi_rdata_i_reg[15]\(9) => p_60_in,
      \s_axi_rdata_i_reg[15]\(8) => p_57_in,
      \s_axi_rdata_i_reg[15]\(7) => p_54_in,
      \s_axi_rdata_i_reg[15]\(6) => p_51_in,
      \s_axi_rdata_i_reg[15]\(5) => p_48_in,
      \s_axi_rdata_i_reg[15]\(4) => p_45_in,
      \s_axi_rdata_i_reg[15]\(3) => p_42_in,
      \s_axi_rdata_i_reg[15]\(2) => p_39_in,
      \s_axi_rdata_i_reg[15]\(1) => p_36_in,
      \s_axi_rdata_i_reg[15]\(0) => CLK_CORE_DRP_I_n_107,
      \s_axi_rdata_i_reg[15]_0\ => CLK_CORE_DRP_I_n_72,
      \s_axi_rdata_i_reg[17]\ => CLK_CORE_DRP_I_n_40,
      \s_axi_rdata_i_reg[17]_0\ => CLK_CORE_DRP_I_n_42,
      \s_axi_rdata_i_reg[17]_1\ => CLK_CORE_DRP_I_n_41,
      \s_axi_rdata_i_reg[18]\(16) => \config_reg__0\(13),
      \s_axi_rdata_i_reg[18]\(15) => \config_reg__0\(14),
      \s_axi_rdata_i_reg[18]\(14) => \config_reg__0\(16),
      \s_axi_rdata_i_reg[18]\(13) => \config_reg__0\(17),
      \s_axi_rdata_i_reg[18]\(12) => \config_reg__0\(18),
      \s_axi_rdata_i_reg[18]\(11) => \config_reg__0\(19),
      \s_axi_rdata_i_reg[18]\(10) => \config_reg__0\(20),
      \s_axi_rdata_i_reg[18]\(9) => \config_reg__0\(21),
      \s_axi_rdata_i_reg[18]\(8) => \config_reg__0\(22),
      \s_axi_rdata_i_reg[18]\(7) => \config_reg__0\(23),
      \s_axi_rdata_i_reg[18]\(6) => \config_reg__0\(24),
      \s_axi_rdata_i_reg[18]\(5) => \config_reg__0\(25),
      \s_axi_rdata_i_reg[18]\(4) => \config_reg__0\(26),
      \s_axi_rdata_i_reg[18]\(3) => \config_reg__0\(27),
      \s_axi_rdata_i_reg[18]\(2) => \config_reg__0\(28),
      \s_axi_rdata_i_reg[18]\(1) => \config_reg__0\(29),
      \s_axi_rdata_i_reg[18]\(0) => config_reg(30),
      \s_axi_rdata_i_reg[18]_0\ => CLK_CORE_DRP_I_n_70,
      \s_axi_rdata_i_reg[18]_1\ => CLK_CORE_DRP_I_n_71,
      \s_axi_rdata_i_reg[1]\ => CLK_CORE_DRP_I_n_39,
      \s_axi_rdata_i_reg[2]\ => CLK_CORE_DRP_I_n_36,
      \s_axi_rdata_i_reg[3]\ => CLK_CORE_DRP_I_n_84,
      \s_axi_rdata_i_reg[4]\ => CLK_CORE_DRP_I_n_83,
      \s_axi_rdata_i_reg[5]\ => CLK_CORE_DRP_I_n_82,
      \s_axi_rdata_i_reg[6]\ => CLK_CORE_DRP_I_n_80,
      \s_axi_rdata_i_reg[6]_0\ => CLK_CORE_DRP_I_n_81,
      \s_axi_rdata_i_reg[7]\ => CLK_CORE_DRP_I_n_79,
      \s_axi_rdata_i_reg[8]\ => CLK_CORE_DRP_I_n_37,
      \s_axi_rdata_i_reg[9]\ => CLK_CORE_DRP_I_n_78,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      \s_axi_wdata[31]\(4) => AXI_LITE_IPIF_I_n_43,
      \s_axi_wdata[31]\(3) => AXI_LITE_IPIF_I_n_44,
      \s_axi_wdata[31]\(2) => AXI_LITE_IPIF_I_n_45,
      \s_axi_wdata[31]\(1) => AXI_LITE_IPIF_I_n_46,
      \s_axi_wdata[31]\(0) => AXI_LITE_IPIF_I_n_47,
      \s_axi_wdata[31]_0\(31) => AXI_LITE_IPIF_I_n_49,
      \s_axi_wdata[31]_0\(30) => AXI_LITE_IPIF_I_n_50,
      \s_axi_wdata[31]_0\(29) => AXI_LITE_IPIF_I_n_51,
      \s_axi_wdata[31]_0\(28) => AXI_LITE_IPIF_I_n_52,
      \s_axi_wdata[31]_0\(27) => AXI_LITE_IPIF_I_n_53,
      \s_axi_wdata[31]_0\(26) => AXI_LITE_IPIF_I_n_54,
      \s_axi_wdata[31]_0\(25) => AXI_LITE_IPIF_I_n_55,
      \s_axi_wdata[31]_0\(24) => AXI_LITE_IPIF_I_n_56,
      \s_axi_wdata[31]_0\(23) => AXI_LITE_IPIF_I_n_57,
      \s_axi_wdata[31]_0\(22) => AXI_LITE_IPIF_I_n_58,
      \s_axi_wdata[31]_0\(21) => AXI_LITE_IPIF_I_n_59,
      \s_axi_wdata[31]_0\(20) => AXI_LITE_IPIF_I_n_60,
      \s_axi_wdata[31]_0\(19) => AXI_LITE_IPIF_I_n_61,
      \s_axi_wdata[31]_0\(18) => AXI_LITE_IPIF_I_n_62,
      \s_axi_wdata[31]_0\(17) => AXI_LITE_IPIF_I_n_63,
      \s_axi_wdata[31]_0\(16) => AXI_LITE_IPIF_I_n_64,
      \s_axi_wdata[31]_0\(15) => AXI_LITE_IPIF_I_n_65,
      \s_axi_wdata[31]_0\(14) => AXI_LITE_IPIF_I_n_66,
      \s_axi_wdata[31]_0\(13) => AXI_LITE_IPIF_I_n_67,
      \s_axi_wdata[31]_0\(12) => AXI_LITE_IPIF_I_n_68,
      \s_axi_wdata[31]_0\(11) => AXI_LITE_IPIF_I_n_69,
      \s_axi_wdata[31]_0\(10) => AXI_LITE_IPIF_I_n_70,
      \s_axi_wdata[31]_0\(9) => AXI_LITE_IPIF_I_n_71,
      \s_axi_wdata[31]_0\(8) => AXI_LITE_IPIF_I_n_72,
      \s_axi_wdata[31]_0\(7) => AXI_LITE_IPIF_I_n_73,
      \s_axi_wdata[31]_0\(6) => AXI_LITE_IPIF_I_n_74,
      \s_axi_wdata[31]_0\(5) => AXI_LITE_IPIF_I_n_75,
      \s_axi_wdata[31]_0\(4) => AXI_LITE_IPIF_I_n_76,
      \s_axi_wdata[31]_0\(3) => AXI_LITE_IPIF_I_n_77,
      \s_axi_wdata[31]_0\(2) => AXI_LITE_IPIF_I_n_78,
      \s_axi_wdata[31]_0\(1) => AXI_LITE_IPIF_I_n_79,
      \s_axi_wdata[31]_0\(0) => AXI_LITE_IPIF_I_n_80,
      s_axi_wdata_0_sp_1 => AXI_LITE_IPIF_I_n_101,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wrack => wrack,
      wrack_reg_10 => wrack_reg_10
    );
CLK_CORE_DRP_I: entity work.rfdc_ex_clk_wiz_adc1_0_clk_wiz_drp
     port map (
      D(13) => IP2Bus_Data(0),
      D(12) => IP2Bus_Data(1),
      D(11) => IP2Bus_Data(2),
      D(10) => IP2Bus_Data(3),
      D(9) => IP2Bus_Data(4),
      D(8) => IP2Bus_Data(5),
      D(7) => IP2Bus_Data(6),
      D(6) => IP2Bus_Data(7),
      D(5) => IP2Bus_Data(8),
      D(4) => IP2Bus_Data(9),
      D(3) => IP2Bus_Data(10),
      D(2) => IP2Bus_Data(11),
      D(1) => IP2Bus_Data(12),
      D(0) => IP2Bus_Data(15),
      E(0) => AXI_LITE_IPIF_I_n_13,
      IP2Bus_WrAck => IP2Bus_WrAck,
      Q(4 downto 0) => bus2ip_addr(6 downto 2),
      SR(0) => reset2ip_reset,
      SRDY => SRDY,
      \bus2ip_addr_i_reg[2]\ => CLK_CORE_DRP_I_n_41,
      \bus2ip_addr_i_reg[4]\ => CLK_CORE_DRP_I_n_40,
      \bus2ip_addr_i_reg[4]_0\ => CLK_CORE_DRP_I_n_87,
      \bus2ip_addr_i_reg[5]\ => CLK_CORE_DRP_I_n_37,
      \bus2ip_addr_i_reg[5]_0\ => CLK_CORE_DRP_I_n_38,
      \bus2ip_addr_i_reg[5]_1\ => CLK_CORE_DRP_I_n_39,
      \bus2ip_addr_i_reg[5]_2\ => CLK_CORE_DRP_I_n_70,
      \bus2ip_addr_i_reg[5]_3\ => CLK_CORE_DRP_I_n_71,
      \bus2ip_addr_i_reg[5]_4\ => CLK_CORE_DRP_I_n_74,
      \bus2ip_addr_i_reg[5]_5\ => CLK_CORE_DRP_I_n_75,
      \bus2ip_addr_i_reg[5]_6\ => CLK_CORE_DRP_I_n_80,
      \bus2ip_addr_i_reg[5]_7\ => CLK_CORE_DRP_I_n_81,
      \bus2ip_addr_i_reg[6]\ => CLK_CORE_DRP_I_n_36,
      \bus2ip_addr_i_reg[6]_0\ => CLK_CORE_DRP_I_n_72,
      \bus2ip_addr_i_reg[6]_1\ => CLK_CORE_DRP_I_n_73,
      \bus2ip_addr_i_reg[6]_2\ => CLK_CORE_DRP_I_n_76,
      \bus2ip_addr_i_reg[6]_3\ => CLK_CORE_DRP_I_n_77,
      \bus2ip_addr_i_reg[6]_4\ => CLK_CORE_DRP_I_n_78,
      \bus2ip_addr_i_reg[6]_5\ => CLK_CORE_DRP_I_n_79,
      \bus2ip_addr_i_reg[6]_6\ => CLK_CORE_DRP_I_n_82,
      \bus2ip_addr_i_reg[6]_7\ => CLK_CORE_DRP_I_n_83,
      \bus2ip_addr_i_reg[6]_8\ => CLK_CORE_DRP_I_n_84,
      bus2ip_wrce(0) => bus2ip_wrce(0),
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      \clkout0_reg_reg[14]_0\(17) => CLK_CORE_DRP_I_n_44,
      \clkout0_reg_reg[14]_0\(16) => CLK_CORE_DRP_I_n_45,
      \clkout0_reg_reg[14]_0\(15) => CLK_CORE_DRP_I_n_46,
      \clkout0_reg_reg[14]_0\(14) => CLK_CORE_DRP_I_n_47,
      \clkout0_reg_reg[14]_0\(13) => CLK_CORE_DRP_I_n_48,
      \clkout0_reg_reg[14]_0\(12) => CLK_CORE_DRP_I_n_49,
      \clkout0_reg_reg[14]_0\(11) => CLK_CORE_DRP_I_n_50,
      \clkout0_reg_reg[14]_0\(10) => CLK_CORE_DRP_I_n_51,
      \clkout0_reg_reg[14]_0\(9) => CLK_CORE_DRP_I_n_52,
      \clkout0_reg_reg[14]_0\(8) => CLK_CORE_DRP_I_n_53,
      \clkout0_reg_reg[14]_0\(7) => CLK_CORE_DRP_I_n_54,
      \clkout0_reg_reg[14]_0\(6) => CLK_CORE_DRP_I_n_55,
      \clkout0_reg_reg[14]_0\(5) => CLK_CORE_DRP_I_n_56,
      \clkout0_reg_reg[14]_0\(4) => CLK_CORE_DRP_I_n_57,
      \clkout0_reg_reg[14]_0\(3) => CLK_CORE_DRP_I_n_58,
      \clkout0_reg_reg[14]_0\(2) => CLK_CORE_DRP_I_n_59,
      \clkout0_reg_reg[14]_0\(1) => CLK_CORE_DRP_I_n_60,
      \clkout0_reg_reg[14]_0\(0) => CLK_CORE_DRP_I_n_61,
      \clkout0_reg_reg[14]_1\(0) => AXI_LITE_IPIF_I_n_6,
      \clkout0_reg_reg[20]_0\ => CLK_CORE_DRP_I_n_43,
      config_reg(1) => config_reg(30),
      config_reg(0) => config_reg(31),
      dummy_local_reg_rdack => dummy_local_reg_rdack,
      \interrupt_enable_reg_reg[15]_0\(15) => p_93_in,
      \interrupt_enable_reg_reg[15]_0\(14) => p_75_in,
      \interrupt_enable_reg_reg[15]_0\(13) => p_72_in,
      \interrupt_enable_reg_reg[15]_0\(12) => p_69_in,
      \interrupt_enable_reg_reg[15]_0\(11) => p_66_in,
      \interrupt_enable_reg_reg[15]_0\(10) => p_63_in,
      \interrupt_enable_reg_reg[15]_0\(9) => p_60_in,
      \interrupt_enable_reg_reg[15]_0\(8) => p_57_in,
      \interrupt_enable_reg_reg[15]_0\(7) => p_54_in,
      \interrupt_enable_reg_reg[15]_0\(6) => p_51_in,
      \interrupt_enable_reg_reg[15]_0\(5) => p_48_in,
      \interrupt_enable_reg_reg[15]_0\(4) => p_45_in,
      \interrupt_enable_reg_reg[15]_0\(3) => p_42_in,
      \interrupt_enable_reg_reg[15]_0\(2) => p_39_in,
      \interrupt_enable_reg_reg[15]_0\(1) => p_36_in,
      \interrupt_enable_reg_reg[15]_0\(0) => CLK_CORE_DRP_I_n_107,
      \interrupt_enable_reg_reg[15]_1\(0) => AXI_LITE_IPIF_I_n_39,
      ip2bus_rdack_int1 => ip2bus_rdack_int1,
      load_enable_reg_d_reg_0 => AXI_LITE_IPIF_I_n_101,
      \load_enable_reg_reg[0]_0\(0) => AXI_LITE_IPIF_I_n_38,
      \load_enable_reg_reg[13]_0\(15) => \config_reg__0\(13),
      \load_enable_reg_reg[13]_0\(14) => \config_reg__0\(14),
      \load_enable_reg_reg[13]_0\(13) => \config_reg__0\(16),
      \load_enable_reg_reg[13]_0\(12) => \config_reg__0\(17),
      \load_enable_reg_reg[13]_0\(11) => \config_reg__0\(18),
      \load_enable_reg_reg[13]_0\(10) => \config_reg__0\(19),
      \load_enable_reg_reg[13]_0\(9) => \config_reg__0\(20),
      \load_enable_reg_reg[13]_0\(8) => \config_reg__0\(21),
      \load_enable_reg_reg[13]_0\(7) => \config_reg__0\(22),
      \load_enable_reg_reg[13]_0\(6) => \config_reg__0\(23),
      \load_enable_reg_reg[13]_0\(5) => \config_reg__0\(24),
      \load_enable_reg_reg[13]_0\(4) => \config_reg__0\(25),
      \load_enable_reg_reg[13]_0\(3) => \config_reg__0\(26),
      \load_enable_reg_reg[13]_0\(2) => \config_reg__0\(27),
      \load_enable_reg_reg[13]_0\(1) => \config_reg__0\(28),
      \load_enable_reg_reg[13]_0\(0) => \config_reg__0\(29),
      plle4_adv_inst => \^locked\,
      \ram_clk_config_reg[0][0]_0\ => AXI_LITE_IPIF_I_n_48,
      \ram_clk_config_reg[0][31]_0\(0) => AXI_LITE_IPIF_I_n_37,
      \ram_clk_config_reg[0][31]_1\(4) => AXI_LITE_IPIF_I_n_43,
      \ram_clk_config_reg[0][31]_1\(3) => AXI_LITE_IPIF_I_n_44,
      \ram_clk_config_reg[0][31]_1\(2) => AXI_LITE_IPIF_I_n_45,
      \ram_clk_config_reg[0][31]_1\(1) => AXI_LITE_IPIF_I_n_46,
      \ram_clk_config_reg[0][31]_1\(0) => AXI_LITE_IPIF_I_n_47,
      \ram_clk_config_reg[10][31]_0\(0) => AXI_LITE_IPIF_I_n_16,
      \ram_clk_config_reg[11][0]_0\ => CLK_CORE_DRP_I_n_86,
      \ram_clk_config_reg[11][31]_0\(0) => AXI_LITE_IPIF_I_n_29,
      \ram_clk_config_reg[12][0]_0\(0) => AXI_LITE_IPIF_I_n_96,
      \ram_clk_config_reg[12][17]_0\(0) => \ram_clk_config_reg[12]_5\(17),
      \ram_clk_config_reg[13][31]_0\(0) => AXI_LITE_IPIF_I_n_31,
      \ram_clk_config_reg[14][17]_0\(0) => \ram_clk_config_reg[14]_6\(17),
      \ram_clk_config_reg[14][31]_0\(0) => AXI_LITE_IPIF_I_n_30,
      \ram_clk_config_reg[15][0]_0\ => CLK_CORE_DRP_I_n_85,
      \ram_clk_config_reg[15][0]_1\(0) => AXI_LITE_IPIF_I_n_97,
      \ram_clk_config_reg[15][17]_0\(0) => \ram_clk_config_reg[15]_7\(17),
      \ram_clk_config_reg[16][31]_0\(0) => AXI_LITE_IPIF_I_n_28,
      \ram_clk_config_reg[17][31]_0\(0) => AXI_LITE_IPIF_I_n_27,
      \ram_clk_config_reg[18][0]_0\(0) => AXI_LITE_IPIF_I_n_95,
      \ram_clk_config_reg[19][0]_0\ => CLK_CORE_DRP_I_n_90,
      \ram_clk_config_reg[19][0]_1\(0) => AXI_LITE_IPIF_I_n_93,
      \ram_clk_config_reg[1][0]_0\(0) => AXI_LITE_IPIF_I_n_99,
      \ram_clk_config_reg[20][31]_0\(0) => AXI_LITE_IPIF_I_n_26,
      \ram_clk_config_reg[21][31]_0\(0) => AXI_LITE_IPIF_I_n_25,
      \ram_clk_config_reg[22][31]_0\(0) => AXI_LITE_IPIF_I_n_24,
      \ram_clk_config_reg[23][0]_0\ => CLK_CORE_DRP_I_n_91,
      \ram_clk_config_reg[23][0]_1\(0) => AXI_LITE_IPIF_I_n_94,
      \ram_clk_config_reg[24][17]_0\(0) => \ram_clk_config_reg[24]_3\(17),
      \ram_clk_config_reg[24][31]_0\(0) => AXI_LITE_IPIF_I_n_23,
      \ram_clk_config_reg[25][17]_0\(0) => \ram_clk_config_reg[25]_4\(17),
      \ram_clk_config_reg[25][31]_0\(0) => AXI_LITE_IPIF_I_n_20,
      \ram_clk_config_reg[26][31]_0\(0) => AXI_LITE_IPIF_I_n_22,
      \ram_clk_config_reg[27][0]_0\ => CLK_CORE_DRP_I_n_88,
      \ram_clk_config_reg[27][31]_0\(0) => AXI_LITE_IPIF_I_n_19,
      \ram_clk_config_reg[28][0]_0\(0) => AXI_LITE_IPIF_I_n_92,
      \ram_clk_config_reg[28][17]_0\ => CLK_CORE_DRP_I_n_42,
      \ram_clk_config_reg[29][17]_0\(0) => \ram_clk_config_reg[29]_0\(17),
      \ram_clk_config_reg[29][31]_0\(0) => AXI_LITE_IPIF_I_n_18,
      \ram_clk_config_reg[2][31]_0\(0) => AXI_LITE_IPIF_I_n_15,
      \ram_clk_config_reg[2][31]_1\(31) => AXI_LITE_IPIF_I_n_49,
      \ram_clk_config_reg[2][31]_1\(30) => AXI_LITE_IPIF_I_n_50,
      \ram_clk_config_reg[2][31]_1\(29) => AXI_LITE_IPIF_I_n_51,
      \ram_clk_config_reg[2][31]_1\(28) => AXI_LITE_IPIF_I_n_52,
      \ram_clk_config_reg[2][31]_1\(27) => AXI_LITE_IPIF_I_n_53,
      \ram_clk_config_reg[2][31]_1\(26) => AXI_LITE_IPIF_I_n_54,
      \ram_clk_config_reg[2][31]_1\(25) => AXI_LITE_IPIF_I_n_55,
      \ram_clk_config_reg[2][31]_1\(24) => AXI_LITE_IPIF_I_n_56,
      \ram_clk_config_reg[2][31]_1\(23) => AXI_LITE_IPIF_I_n_57,
      \ram_clk_config_reg[2][31]_1\(22) => AXI_LITE_IPIF_I_n_58,
      \ram_clk_config_reg[2][31]_1\(21) => AXI_LITE_IPIF_I_n_59,
      \ram_clk_config_reg[2][31]_1\(20) => AXI_LITE_IPIF_I_n_60,
      \ram_clk_config_reg[2][31]_1\(19) => AXI_LITE_IPIF_I_n_61,
      \ram_clk_config_reg[2][31]_1\(18) => AXI_LITE_IPIF_I_n_62,
      \ram_clk_config_reg[2][31]_1\(17) => AXI_LITE_IPIF_I_n_63,
      \ram_clk_config_reg[2][31]_1\(16) => AXI_LITE_IPIF_I_n_64,
      \ram_clk_config_reg[2][31]_1\(15) => AXI_LITE_IPIF_I_n_65,
      \ram_clk_config_reg[2][31]_1\(14) => AXI_LITE_IPIF_I_n_66,
      \ram_clk_config_reg[2][31]_1\(13) => AXI_LITE_IPIF_I_n_67,
      \ram_clk_config_reg[2][31]_1\(12) => AXI_LITE_IPIF_I_n_68,
      \ram_clk_config_reg[2][31]_1\(11) => AXI_LITE_IPIF_I_n_69,
      \ram_clk_config_reg[2][31]_1\(10) => AXI_LITE_IPIF_I_n_70,
      \ram_clk_config_reg[2][31]_1\(9) => AXI_LITE_IPIF_I_n_71,
      \ram_clk_config_reg[2][31]_1\(8) => AXI_LITE_IPIF_I_n_72,
      \ram_clk_config_reg[2][31]_1\(7) => AXI_LITE_IPIF_I_n_73,
      \ram_clk_config_reg[2][31]_1\(6) => AXI_LITE_IPIF_I_n_74,
      \ram_clk_config_reg[2][31]_1\(5) => AXI_LITE_IPIF_I_n_75,
      \ram_clk_config_reg[2][31]_1\(4) => AXI_LITE_IPIF_I_n_76,
      \ram_clk_config_reg[2][31]_1\(3) => AXI_LITE_IPIF_I_n_77,
      \ram_clk_config_reg[2][31]_1\(2) => AXI_LITE_IPIF_I_n_78,
      \ram_clk_config_reg[2][31]_1\(1) => AXI_LITE_IPIF_I_n_79,
      \ram_clk_config_reg[2][31]_1\(0) => AXI_LITE_IPIF_I_n_80,
      \ram_clk_config_reg[30][17]_0\(0) => \ram_clk_config_reg[30]_1\(17),
      \ram_clk_config_reg[30][31]_0\(0) => AXI_LITE_IPIF_I_n_21,
      \ram_clk_config_reg[31][0]_0\ => CLK_CORE_DRP_I_n_89,
      \ram_clk_config_reg[31][17]_0\(0) => \ram_clk_config_reg[31]_2\(17),
      \ram_clk_config_reg[31][31]_0\(0) => AXI_LITE_IPIF_I_n_17,
      \ram_clk_config_reg[3][0]_0\(0) => AXI_LITE_IPIF_I_n_100,
      \ram_clk_config_reg[4][31]_0\(0) => AXI_LITE_IPIF_I_n_36,
      \ram_clk_config_reg[5][31]_0\(0) => AXI_LITE_IPIF_I_n_35,
      \ram_clk_config_reg[6][31]_0\(0) => AXI_LITE_IPIF_I_n_34,
      \ram_clk_config_reg[7][31]_0\(0) => AXI_LITE_IPIF_I_n_33,
      \ram_clk_config_reg[8][0]_0\(0) => AXI_LITE_IPIF_I_n_98,
      \ram_clk_config_reg[9][31]_0\(0) => AXI_LITE_IPIF_I_n_32,
      rdack_reg_10 => rdack_reg_10,
      rst_ip2bus_rdack => rst_ip2bus_rdack,
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i_reg[16]\ => AXI_LITE_IPIF_I_n_41,
      \s_axi_rdata_i_reg[16]_0\ => AXI_LITE_IPIF_I_n_40,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      wrack_reg_10 => wrack_reg_10
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
SOFT_RESET_I: entity work.rfdc_ex_clk_wiz_adc1_0_soft_reset
     port map (
      \RESET_FLOPS[15].RST_FLOPS_0\ => SOFT_RESET_I_n_2,
      bus2ip_reset_active_high => bus2ip_reset_active_high,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wrack => wrack
    );
dummy_local_reg_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_local_reg_rdack_d10,
      Q => dummy_local_reg_rdack_d1,
      R => reset2ip_reset
    );
dummy_local_reg_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_local_reg_rdack0,
      Q => dummy_local_reg_rdack,
      R => reset2ip_reset
    );
dummy_local_reg_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_local_reg_wrack_d10,
      Q => dummy_local_reg_wrack_d1,
      R => reset2ip_reset
    );
dummy_local_reg_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_local_reg_wrack0,
      Q => dummy_local_reg_wrack,
      R => reset2ip_reset
    );
ip2bus_error_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_error_int1,
      Q => p_1_in(1),
      R => reset2ip_reset
    );
ip2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_int1,
      Q => ip2bus_rdack,
      R => reset2ip_reset
    );
ip2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_int1,
      Q => \^ip2bus_wrack\,
      R => reset2ip_reset
    );
rst_ip2bus_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rdce(8),
      Q => rst_ip2bus_rdack_d1,
      R => reset2ip_reset
    );
rst_ip2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_ip2bus_rdack0,
      Q => rst_ip2bus_rdack,
      R => reset2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_clk_wiz_adc1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rfdc_ex_clk_wiz_adc1_0 : entity is true;
end rfdc_ex_clk_wiz_adc1_0;

architecture STRUCTURE of rfdc_ex_clk_wiz_adc1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 11;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.rfdc_ex_clk_wiz_adc1_0_axi_clk_config
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      locked => locked,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(10 downto 0) => s_axi_araddr(10 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(10 downto 0) => s_axi_awaddr(10 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1) => \^s_axi_bresp\(1),
      s_axi_bresp(0) => NLW_inst_s_axi_bresp_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1) => \^s_axi_rresp\(1),
      s_axi_rresp(0) => NLW_inst_s_axi_rresp_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
