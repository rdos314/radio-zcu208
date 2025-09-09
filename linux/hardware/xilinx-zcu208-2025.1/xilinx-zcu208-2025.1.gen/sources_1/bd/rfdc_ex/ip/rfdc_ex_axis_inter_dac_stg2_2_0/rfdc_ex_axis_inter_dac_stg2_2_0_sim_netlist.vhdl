-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu May 22 09:25:22 2025
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_axis_inter_dac_stg2_2_0/rfdc_ex_axis_inter_dac_stg2_2_0_sim_netlist.vhdl
-- Design      : rfdc_ex_axis_inter_dac_stg2_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 26;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is "zynquplus";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 256;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 1;
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 4;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 256;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is "top_rfdc_ex_axis_inter_dac_stg2_2_0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 : entity is 289;
end rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0;

architecture STRUCTURE of rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal \^s_axis_tkeep\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
begin
  \^s_axis_tdata\(255 downto 0) <= s_axis_tdata(255 downto 0);
  \^s_axis_tkeep\(31 downto 0) <= s_axis_tkeep(31 downto 0);
  \^s_axis_tlast\ <= s_axis_tlast;
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(1023 downto 768) <= \^s_axis_tdata\(255 downto 0);
  m_axis_tdata(767 downto 512) <= \^s_axis_tdata\(255 downto 0);
  m_axis_tdata(511 downto 256) <= \^s_axis_tdata\(255 downto 0);
  m_axis_tdata(255 downto 0) <= \^s_axis_tdata\(255 downto 0);
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(127 downto 96) <= \^s_axis_tkeep\(31 downto 0);
  m_axis_tkeep(95 downto 64) <= \^s_axis_tkeep\(31 downto 0);
  m_axis_tkeep(63 downto 32) <= \^s_axis_tkeep\(31 downto 0);
  m_axis_tkeep(31 downto 0) <= \^s_axis_tkeep\(31 downto 0);
  m_axis_tlast(3) <= \^s_axis_tlast\;
  m_axis_tlast(2) <= \^s_axis_tlast\;
  m_axis_tlast(1) <= \^s_axis_tlast\;
  m_axis_tlast(0) <= \^s_axis_tlast\;
  m_axis_tstrb(127) <= \<const0>\;
  m_axis_tstrb(126) <= \<const0>\;
  m_axis_tstrb(125) <= \<const0>\;
  m_axis_tstrb(124) <= \<const0>\;
  m_axis_tstrb(123) <= \<const0>\;
  m_axis_tstrb(122) <= \<const0>\;
  m_axis_tstrb(121) <= \<const0>\;
  m_axis_tstrb(120) <= \<const0>\;
  m_axis_tstrb(119) <= \<const0>\;
  m_axis_tstrb(118) <= \<const0>\;
  m_axis_tstrb(117) <= \<const0>\;
  m_axis_tstrb(116) <= \<const0>\;
  m_axis_tstrb(115) <= \<const0>\;
  m_axis_tstrb(114) <= \<const0>\;
  m_axis_tstrb(113) <= \<const0>\;
  m_axis_tstrb(112) <= \<const0>\;
  m_axis_tstrb(111) <= \<const0>\;
  m_axis_tstrb(110) <= \<const0>\;
  m_axis_tstrb(109) <= \<const0>\;
  m_axis_tstrb(108) <= \<const0>\;
  m_axis_tstrb(107) <= \<const0>\;
  m_axis_tstrb(106) <= \<const0>\;
  m_axis_tstrb(105) <= \<const0>\;
  m_axis_tstrb(104) <= \<const0>\;
  m_axis_tstrb(103) <= \<const0>\;
  m_axis_tstrb(102) <= \<const0>\;
  m_axis_tstrb(101) <= \<const0>\;
  m_axis_tstrb(100) <= \<const0>\;
  m_axis_tstrb(99) <= \<const0>\;
  m_axis_tstrb(98) <= \<const0>\;
  m_axis_tstrb(97) <= \<const0>\;
  m_axis_tstrb(96) <= \<const0>\;
  m_axis_tstrb(95) <= \<const0>\;
  m_axis_tstrb(94) <= \<const0>\;
  m_axis_tstrb(93) <= \<const0>\;
  m_axis_tstrb(92) <= \<const0>\;
  m_axis_tstrb(91) <= \<const0>\;
  m_axis_tstrb(90) <= \<const0>\;
  m_axis_tstrb(89) <= \<const0>\;
  m_axis_tstrb(88) <= \<const0>\;
  m_axis_tstrb(87) <= \<const0>\;
  m_axis_tstrb(86) <= \<const0>\;
  m_axis_tstrb(85) <= \<const0>\;
  m_axis_tstrb(84) <= \<const0>\;
  m_axis_tstrb(83) <= \<const0>\;
  m_axis_tstrb(82) <= \<const0>\;
  m_axis_tstrb(81) <= \<const0>\;
  m_axis_tstrb(80) <= \<const0>\;
  m_axis_tstrb(79) <= \<const0>\;
  m_axis_tstrb(78) <= \<const0>\;
  m_axis_tstrb(77) <= \<const0>\;
  m_axis_tstrb(76) <= \<const0>\;
  m_axis_tstrb(75) <= \<const0>\;
  m_axis_tstrb(74) <= \<const0>\;
  m_axis_tstrb(73) <= \<const0>\;
  m_axis_tstrb(72) <= \<const0>\;
  m_axis_tstrb(71) <= \<const0>\;
  m_axis_tstrb(70) <= \<const0>\;
  m_axis_tstrb(69) <= \<const0>\;
  m_axis_tstrb(68) <= \<const0>\;
  m_axis_tstrb(67) <= \<const0>\;
  m_axis_tstrb(66) <= \<const0>\;
  m_axis_tstrb(65) <= \<const0>\;
  m_axis_tstrb(64) <= \<const0>\;
  m_axis_tstrb(63) <= \<const0>\;
  m_axis_tstrb(62) <= \<const0>\;
  m_axis_tstrb(61) <= \<const0>\;
  m_axis_tstrb(60) <= \<const0>\;
  m_axis_tstrb(59) <= \<const0>\;
  m_axis_tstrb(58) <= \<const0>\;
  m_axis_tstrb(57) <= \<const0>\;
  m_axis_tstrb(56) <= \<const0>\;
  m_axis_tstrb(55) <= \<const0>\;
  m_axis_tstrb(54) <= \<const0>\;
  m_axis_tstrb(53) <= \<const0>\;
  m_axis_tstrb(52) <= \<const0>\;
  m_axis_tstrb(51) <= \<const0>\;
  m_axis_tstrb(50) <= \<const0>\;
  m_axis_tstrb(49) <= \<const0>\;
  m_axis_tstrb(48) <= \<const0>\;
  m_axis_tstrb(47) <= \<const0>\;
  m_axis_tstrb(46) <= \<const0>\;
  m_axis_tstrb(45) <= \<const0>\;
  m_axis_tstrb(44) <= \<const0>\;
  m_axis_tstrb(43) <= \<const0>\;
  m_axis_tstrb(42) <= \<const0>\;
  m_axis_tstrb(41) <= \<const0>\;
  m_axis_tstrb(40) <= \<const0>\;
  m_axis_tstrb(39) <= \<const0>\;
  m_axis_tstrb(38) <= \<const0>\;
  m_axis_tstrb(37) <= \<const0>\;
  m_axis_tstrb(36) <= \<const0>\;
  m_axis_tstrb(35) <= \<const0>\;
  m_axis_tstrb(34) <= \<const0>\;
  m_axis_tstrb(33) <= \<const0>\;
  m_axis_tstrb(32) <= \<const0>\;
  m_axis_tstrb(31) <= \<const0>\;
  m_axis_tstrb(30) <= \<const0>\;
  m_axis_tstrb(29) <= \<const0>\;
  m_axis_tstrb(28) <= \<const0>\;
  m_axis_tstrb(27) <= \<const0>\;
  m_axis_tstrb(26) <= \<const0>\;
  m_axis_tstrb(25) <= \<const0>\;
  m_axis_tstrb(24) <= \<const0>\;
  m_axis_tstrb(23) <= \<const0>\;
  m_axis_tstrb(22) <= \<const0>\;
  m_axis_tstrb(21) <= \<const0>\;
  m_axis_tstrb(20) <= \<const0>\;
  m_axis_tstrb(19) <= \<const0>\;
  m_axis_tstrb(18) <= \<const0>\;
  m_axis_tstrb(17) <= \<const0>\;
  m_axis_tstrb(16) <= \<const0>\;
  m_axis_tstrb(15) <= \<const0>\;
  m_axis_tstrb(14) <= \<const0>\;
  m_axis_tstrb(13) <= \<const0>\;
  m_axis_tstrb(12) <= \<const0>\;
  m_axis_tstrb(11) <= \<const0>\;
  m_axis_tstrb(10) <= \<const0>\;
  m_axis_tstrb(9) <= \<const0>\;
  m_axis_tstrb(8) <= \<const0>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid(3) <= \^s_axis_tvalid\;
  m_axis_tvalid(2) <= \^s_axis_tvalid\;
  m_axis_tvalid(1) <= \^s_axis_tvalid\;
  m_axis_tvalid(0) <= \^s_axis_tvalid\;
  s_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_axis_inter_dac_stg2_2_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rfdc_ex_axis_inter_dac_stg2_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rfdc_ex_axis_inter_dac_stg2_2_0 : entity is "rfdc_ex_axis_inter_dac_stg2_2_0,top_rfdc_ex_axis_inter_dac_stg2_2_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rfdc_ex_axis_inter_dac_stg2_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rfdc_ex_axis_inter_dac_stg2_2_0 : entity is "top_rfdc_ex_axis_inter_dac_stg2_2_0,Vivado 2025.1";
end rfdc_ex_axis_inter_dac_stg2_2_0;

architecture STRUCTURE of rfdc_ex_axis_inter_dac_stg2_2_0 is
  signal NLW_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 26;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 256;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of inst : label is 4;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 256;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 289;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 245760000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_MODE of s_axis_tvalid : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 245760000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [255:0] [255:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [255:0] [511:256], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [255:0] [767:512], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [255:0] [1023:768]";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [31:0] [31:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [31:0] [63:32], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [31:0] [95:64], xilinx.com:interface:axis:1.0 M03_AXIS TKEEP [31:0] [127:96]";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3]";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3]";
  attribute X_INTERFACE_MODE of m_axis_tvalid : signal is "master M03_AXIS";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 245760000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
inst: entity work.rfdc_ex_axis_inter_dac_stg2_2_0_top_rfdc_ex_axis_inter_dac_stg2_2_0
     port map (
      aclk => '0',
      aclken => '1',
      aresetn => '0',
      m_axis_tdata(1023 downto 0) => m_axis_tdata(1023 downto 0),
      m_axis_tdest(3 downto 0) => NLW_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(3 downto 0) => NLW_inst_m_axis_tid_UNCONNECTED(3 downto 0),
      m_axis_tkeep(127 downto 0) => m_axis_tkeep(127 downto 0),
      m_axis_tlast(3 downto 0) => m_axis_tlast(3 downto 0),
      m_axis_tready(3 downto 0) => B"1111",
      m_axis_tstrb(127 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(127 downto 0),
      m_axis_tuser(3 downto 0) => NLW_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid(3 downto 0) => m_axis_tvalid(3 downto 0),
      s_axis_tdata(255 downto 0) => s_axis_tdata(255 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(31 downto 0) => s_axis_tkeep(31 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => NLW_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(31 downto 0) => B"11111111111111111111111111111111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
