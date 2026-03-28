-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Wed Mar 25 19:15:49 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_int_0_0/ps_axi_int_0_0_sim_netlist.vhdl
-- Design      : ps_axi_int_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_int_0_0_axi_int is
  port (
    M_AXI_BREADY : out STD_LOGIC;
    clk : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_int_0_0_axi_int : entity is "axi_int";
end ps_axi_int_0_0_axi_int;

architecture STRUCTURE of ps_axi_int_0_0_axi_int is
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \axi_int.M_AXI_BREADY_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reset : STD_LOGIC;
begin
  M_AXI_BREADY <= \^m_axi_bready\;
\axi_int.M_AXI_BREADY_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => reset,
      I1 => \^m_axi_bready\,
      I2 => M_AXI_BVALID,
      O => \axi_int.M_AXI_BREADY_i_1_n_0\
    );
\axi_int.M_AXI_BREADY_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_int.M_AXI_BREADY_i_1_n_0\,
      Q => \^m_axi_bready\,
      R => '0'
    );
\axi_int.reset_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => p_0_in
    );
\axi_int.reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_int_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    up : in STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BREADY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_axi_int_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_axi_int_0_0 : entity is "ps_axi_int_0_0,axi_int,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_axi_int_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_axi_int_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_axi_int_0_0 : entity is "axi_int,Vivado 2025.1";
end ps_axi_int_0_0;

architecture STRUCTURE of ps_axi_int_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of M_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_MODE of M_AXI_AWADDR : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXI_AWADDR : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 333250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of M_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of M_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
begin
  M_AXI_AWADDR(31) <= \<const0>\;
  M_AXI_AWADDR(30) <= \<const0>\;
  M_AXI_AWADDR(29) <= \<const0>\;
  M_AXI_AWADDR(28) <= \<const0>\;
  M_AXI_AWADDR(27) <= \<const0>\;
  M_AXI_AWADDR(26) <= \<const0>\;
  M_AXI_AWADDR(25) <= \<const0>\;
  M_AXI_AWADDR(24) <= \<const0>\;
  M_AXI_AWADDR(23) <= \<const0>\;
  M_AXI_AWADDR(22) <= \<const0>\;
  M_AXI_AWADDR(21) <= \<const0>\;
  M_AXI_AWADDR(20) <= \<const0>\;
  M_AXI_AWADDR(19) <= \<const0>\;
  M_AXI_AWADDR(18) <= \<const0>\;
  M_AXI_AWADDR(17) <= \<const0>\;
  M_AXI_AWADDR(16) <= \<const0>\;
  M_AXI_AWADDR(15) <= \<const0>\;
  M_AXI_AWADDR(14) <= \<const0>\;
  M_AXI_AWADDR(13) <= \<const0>\;
  M_AXI_AWADDR(12) <= \<const0>\;
  M_AXI_AWADDR(11) <= \<const0>\;
  M_AXI_AWADDR(10) <= \<const0>\;
  M_AXI_AWADDR(9) <= \<const0>\;
  M_AXI_AWADDR(8) <= \<const0>\;
  M_AXI_AWADDR(7) <= \<const0>\;
  M_AXI_AWADDR(6) <= \<const0>\;
  M_AXI_AWADDR(5) <= \<const0>\;
  M_AXI_AWADDR(4) <= \<const0>\;
  M_AXI_AWADDR(3) <= \<const0>\;
  M_AXI_AWADDR(2) <= \<const0>\;
  M_AXI_AWADDR(1) <= \<const0>\;
  M_AXI_AWADDR(0) <= \<const0>\;
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const1>\;
  M_AXI_AWLEN(7) <= \<const0>\;
  M_AXI_AWLEN(6) <= \<const0>\;
  M_AXI_AWLEN(5) <= \<const0>\;
  M_AXI_AWLEN(4) <= \<const0>\;
  M_AXI_AWLEN(3) <= \<const0>\;
  M_AXI_AWLEN(2) <= \<const0>\;
  M_AXI_AWLEN(1) <= \<const0>\;
  M_AXI_AWLEN(0) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const1>\;
  M_AXI_AWSIZE(2) <= \<const1>\;
  M_AXI_AWSIZE(1) <= \<const0>\;
  M_AXI_AWSIZE(0) <= \<const1>\;
  M_AXI_AWVALID <= \<const0>\;
  M_AXI_WDATA(255) <= \<const0>\;
  M_AXI_WDATA(254) <= \<const0>\;
  M_AXI_WDATA(253) <= \<const0>\;
  M_AXI_WDATA(252) <= \<const0>\;
  M_AXI_WDATA(251) <= \<const0>\;
  M_AXI_WDATA(250) <= \<const0>\;
  M_AXI_WDATA(249) <= \<const0>\;
  M_AXI_WDATA(248) <= \<const0>\;
  M_AXI_WDATA(247) <= \<const0>\;
  M_AXI_WDATA(246) <= \<const0>\;
  M_AXI_WDATA(245) <= \<const0>\;
  M_AXI_WDATA(244) <= \<const0>\;
  M_AXI_WDATA(243) <= \<const0>\;
  M_AXI_WDATA(242) <= \<const0>\;
  M_AXI_WDATA(241) <= \<const0>\;
  M_AXI_WDATA(240) <= \<const0>\;
  M_AXI_WDATA(239) <= \<const0>\;
  M_AXI_WDATA(238) <= \<const0>\;
  M_AXI_WDATA(237) <= \<const0>\;
  M_AXI_WDATA(236) <= \<const0>\;
  M_AXI_WDATA(235) <= \<const0>\;
  M_AXI_WDATA(234) <= \<const0>\;
  M_AXI_WDATA(233) <= \<const0>\;
  M_AXI_WDATA(232) <= \<const0>\;
  M_AXI_WDATA(231) <= \<const0>\;
  M_AXI_WDATA(230) <= \<const0>\;
  M_AXI_WDATA(229) <= \<const0>\;
  M_AXI_WDATA(228) <= \<const0>\;
  M_AXI_WDATA(227) <= \<const0>\;
  M_AXI_WDATA(226) <= \<const0>\;
  M_AXI_WDATA(225) <= \<const0>\;
  M_AXI_WDATA(224) <= \<const0>\;
  M_AXI_WDATA(223) <= \<const0>\;
  M_AXI_WDATA(222) <= \<const0>\;
  M_AXI_WDATA(221) <= \<const0>\;
  M_AXI_WDATA(220) <= \<const0>\;
  M_AXI_WDATA(219) <= \<const0>\;
  M_AXI_WDATA(218) <= \<const0>\;
  M_AXI_WDATA(217) <= \<const0>\;
  M_AXI_WDATA(216) <= \<const0>\;
  M_AXI_WDATA(215) <= \<const0>\;
  M_AXI_WDATA(214) <= \<const0>\;
  M_AXI_WDATA(213) <= \<const0>\;
  M_AXI_WDATA(212) <= \<const0>\;
  M_AXI_WDATA(211) <= \<const0>\;
  M_AXI_WDATA(210) <= \<const0>\;
  M_AXI_WDATA(209) <= \<const0>\;
  M_AXI_WDATA(208) <= \<const0>\;
  M_AXI_WDATA(207) <= \<const0>\;
  M_AXI_WDATA(206) <= \<const0>\;
  M_AXI_WDATA(205) <= \<const0>\;
  M_AXI_WDATA(204) <= \<const0>\;
  M_AXI_WDATA(203) <= \<const0>\;
  M_AXI_WDATA(202) <= \<const0>\;
  M_AXI_WDATA(201) <= \<const0>\;
  M_AXI_WDATA(200) <= \<const0>\;
  M_AXI_WDATA(199) <= \<const0>\;
  M_AXI_WDATA(198) <= \<const0>\;
  M_AXI_WDATA(197) <= \<const0>\;
  M_AXI_WDATA(196) <= \<const0>\;
  M_AXI_WDATA(195) <= \<const0>\;
  M_AXI_WDATA(194) <= \<const0>\;
  M_AXI_WDATA(193) <= \<const0>\;
  M_AXI_WDATA(192) <= \<const0>\;
  M_AXI_WDATA(191) <= \<const0>\;
  M_AXI_WDATA(190) <= \<const0>\;
  M_AXI_WDATA(189) <= \<const0>\;
  M_AXI_WDATA(188) <= \<const0>\;
  M_AXI_WDATA(187) <= \<const0>\;
  M_AXI_WDATA(186) <= \<const0>\;
  M_AXI_WDATA(185) <= \<const0>\;
  M_AXI_WDATA(184) <= \<const0>\;
  M_AXI_WDATA(183) <= \<const0>\;
  M_AXI_WDATA(182) <= \<const0>\;
  M_AXI_WDATA(181) <= \<const0>\;
  M_AXI_WDATA(180) <= \<const0>\;
  M_AXI_WDATA(179) <= \<const0>\;
  M_AXI_WDATA(178) <= \<const0>\;
  M_AXI_WDATA(177) <= \<const0>\;
  M_AXI_WDATA(176) <= \<const0>\;
  M_AXI_WDATA(175) <= \<const0>\;
  M_AXI_WDATA(174) <= \<const0>\;
  M_AXI_WDATA(173) <= \<const0>\;
  M_AXI_WDATA(172) <= \<const0>\;
  M_AXI_WDATA(171) <= \<const0>\;
  M_AXI_WDATA(170) <= \<const0>\;
  M_AXI_WDATA(169) <= \<const0>\;
  M_AXI_WDATA(168) <= \<const0>\;
  M_AXI_WDATA(167) <= \<const0>\;
  M_AXI_WDATA(166) <= \<const0>\;
  M_AXI_WDATA(165) <= \<const0>\;
  M_AXI_WDATA(164) <= \<const0>\;
  M_AXI_WDATA(163) <= \<const0>\;
  M_AXI_WDATA(162) <= \<const0>\;
  M_AXI_WDATA(161) <= \<const0>\;
  M_AXI_WDATA(160) <= \<const0>\;
  M_AXI_WDATA(159) <= \<const0>\;
  M_AXI_WDATA(158) <= \<const0>\;
  M_AXI_WDATA(157) <= \<const0>\;
  M_AXI_WDATA(156) <= \<const0>\;
  M_AXI_WDATA(155) <= \<const0>\;
  M_AXI_WDATA(154) <= \<const0>\;
  M_AXI_WDATA(153) <= \<const0>\;
  M_AXI_WDATA(152) <= \<const0>\;
  M_AXI_WDATA(151) <= \<const0>\;
  M_AXI_WDATA(150) <= \<const0>\;
  M_AXI_WDATA(149) <= \<const0>\;
  M_AXI_WDATA(148) <= \<const0>\;
  M_AXI_WDATA(147) <= \<const0>\;
  M_AXI_WDATA(146) <= \<const0>\;
  M_AXI_WDATA(145) <= \<const0>\;
  M_AXI_WDATA(144) <= \<const0>\;
  M_AXI_WDATA(143) <= \<const0>\;
  M_AXI_WDATA(142) <= \<const0>\;
  M_AXI_WDATA(141) <= \<const0>\;
  M_AXI_WDATA(140) <= \<const0>\;
  M_AXI_WDATA(139) <= \<const0>\;
  M_AXI_WDATA(138) <= \<const0>\;
  M_AXI_WDATA(137) <= \<const0>\;
  M_AXI_WDATA(136) <= \<const0>\;
  M_AXI_WDATA(135) <= \<const0>\;
  M_AXI_WDATA(134) <= \<const0>\;
  M_AXI_WDATA(133) <= \<const0>\;
  M_AXI_WDATA(132) <= \<const0>\;
  M_AXI_WDATA(131) <= \<const0>\;
  M_AXI_WDATA(130) <= \<const0>\;
  M_AXI_WDATA(129) <= \<const0>\;
  M_AXI_WDATA(128) <= \<const0>\;
  M_AXI_WDATA(127) <= \<const0>\;
  M_AXI_WDATA(126) <= \<const0>\;
  M_AXI_WDATA(125) <= \<const0>\;
  M_AXI_WDATA(124) <= \<const0>\;
  M_AXI_WDATA(123) <= \<const0>\;
  M_AXI_WDATA(122) <= \<const0>\;
  M_AXI_WDATA(121) <= \<const0>\;
  M_AXI_WDATA(120) <= \<const0>\;
  M_AXI_WDATA(119) <= \<const0>\;
  M_AXI_WDATA(118) <= \<const0>\;
  M_AXI_WDATA(117) <= \<const0>\;
  M_AXI_WDATA(116) <= \<const0>\;
  M_AXI_WDATA(115) <= \<const0>\;
  M_AXI_WDATA(114) <= \<const0>\;
  M_AXI_WDATA(113) <= \<const0>\;
  M_AXI_WDATA(112) <= \<const0>\;
  M_AXI_WDATA(111) <= \<const0>\;
  M_AXI_WDATA(110) <= \<const0>\;
  M_AXI_WDATA(109) <= \<const0>\;
  M_AXI_WDATA(108) <= \<const0>\;
  M_AXI_WDATA(107) <= \<const0>\;
  M_AXI_WDATA(106) <= \<const0>\;
  M_AXI_WDATA(105) <= \<const0>\;
  M_AXI_WDATA(104) <= \<const0>\;
  M_AXI_WDATA(103) <= \<const0>\;
  M_AXI_WDATA(102) <= \<const0>\;
  M_AXI_WDATA(101) <= \<const0>\;
  M_AXI_WDATA(100) <= \<const0>\;
  M_AXI_WDATA(99) <= \<const0>\;
  M_AXI_WDATA(98) <= \<const0>\;
  M_AXI_WDATA(97) <= \<const0>\;
  M_AXI_WDATA(96) <= \<const0>\;
  M_AXI_WDATA(95) <= \<const0>\;
  M_AXI_WDATA(94) <= \<const0>\;
  M_AXI_WDATA(93) <= \<const0>\;
  M_AXI_WDATA(92) <= \<const0>\;
  M_AXI_WDATA(91) <= \<const0>\;
  M_AXI_WDATA(90) <= \<const0>\;
  M_AXI_WDATA(89) <= \<const0>\;
  M_AXI_WDATA(88) <= \<const0>\;
  M_AXI_WDATA(87) <= \<const0>\;
  M_AXI_WDATA(86) <= \<const0>\;
  M_AXI_WDATA(85) <= \<const0>\;
  M_AXI_WDATA(84) <= \<const0>\;
  M_AXI_WDATA(83) <= \<const0>\;
  M_AXI_WDATA(82) <= \<const0>\;
  M_AXI_WDATA(81) <= \<const0>\;
  M_AXI_WDATA(80) <= \<const0>\;
  M_AXI_WDATA(79) <= \<const0>\;
  M_AXI_WDATA(78) <= \<const0>\;
  M_AXI_WDATA(77) <= \<const0>\;
  M_AXI_WDATA(76) <= \<const0>\;
  M_AXI_WDATA(75) <= \<const0>\;
  M_AXI_WDATA(74) <= \<const0>\;
  M_AXI_WDATA(73) <= \<const0>\;
  M_AXI_WDATA(72) <= \<const0>\;
  M_AXI_WDATA(71) <= \<const0>\;
  M_AXI_WDATA(70) <= \<const0>\;
  M_AXI_WDATA(69) <= \<const0>\;
  M_AXI_WDATA(68) <= \<const0>\;
  M_AXI_WDATA(67) <= \<const0>\;
  M_AXI_WDATA(66) <= \<const0>\;
  M_AXI_WDATA(65) <= \<const0>\;
  M_AXI_WDATA(64) <= \<const0>\;
  M_AXI_WDATA(63) <= \<const0>\;
  M_AXI_WDATA(62) <= \<const0>\;
  M_AXI_WDATA(61) <= \<const0>\;
  M_AXI_WDATA(60) <= \<const0>\;
  M_AXI_WDATA(59) <= \<const0>\;
  M_AXI_WDATA(58) <= \<const0>\;
  M_AXI_WDATA(57) <= \<const0>\;
  M_AXI_WDATA(56) <= \<const0>\;
  M_AXI_WDATA(55) <= \<const0>\;
  M_AXI_WDATA(54) <= \<const0>\;
  M_AXI_WDATA(53) <= \<const0>\;
  M_AXI_WDATA(52) <= \<const0>\;
  M_AXI_WDATA(51) <= \<const0>\;
  M_AXI_WDATA(50) <= \<const0>\;
  M_AXI_WDATA(49) <= \<const0>\;
  M_AXI_WDATA(48) <= \<const0>\;
  M_AXI_WDATA(47) <= \<const0>\;
  M_AXI_WDATA(46) <= \<const0>\;
  M_AXI_WDATA(45) <= \<const0>\;
  M_AXI_WDATA(44) <= \<const0>\;
  M_AXI_WDATA(43) <= \<const0>\;
  M_AXI_WDATA(42) <= \<const0>\;
  M_AXI_WDATA(41) <= \<const0>\;
  M_AXI_WDATA(40) <= \<const0>\;
  M_AXI_WDATA(39) <= \<const0>\;
  M_AXI_WDATA(38) <= \<const0>\;
  M_AXI_WDATA(37) <= \<const0>\;
  M_AXI_WDATA(36) <= \<const0>\;
  M_AXI_WDATA(35) <= \<const0>\;
  M_AXI_WDATA(34) <= \<const0>\;
  M_AXI_WDATA(33) <= \<const0>\;
  M_AXI_WDATA(32) <= \<const0>\;
  M_AXI_WDATA(31) <= \<const0>\;
  M_AXI_WDATA(30) <= \<const0>\;
  M_AXI_WDATA(29) <= \<const0>\;
  M_AXI_WDATA(28) <= \<const0>\;
  M_AXI_WDATA(27) <= \<const0>\;
  M_AXI_WDATA(26) <= \<const0>\;
  M_AXI_WDATA(25) <= \<const0>\;
  M_AXI_WDATA(24) <= \<const0>\;
  M_AXI_WDATA(23) <= \<const0>\;
  M_AXI_WDATA(22) <= \<const0>\;
  M_AXI_WDATA(21) <= \<const0>\;
  M_AXI_WDATA(20) <= \<const0>\;
  M_AXI_WDATA(19) <= \<const0>\;
  M_AXI_WDATA(18) <= \<const0>\;
  M_AXI_WDATA(17) <= \<const0>\;
  M_AXI_WDATA(16) <= \<const0>\;
  M_AXI_WDATA(15) <= \<const0>\;
  M_AXI_WDATA(14) <= \<const0>\;
  M_AXI_WDATA(13) <= \<const0>\;
  M_AXI_WDATA(12) <= \<const0>\;
  M_AXI_WDATA(11) <= \<const0>\;
  M_AXI_WDATA(10) <= \<const0>\;
  M_AXI_WDATA(9) <= \<const0>\;
  M_AXI_WDATA(8) <= \<const0>\;
  M_AXI_WDATA(7) <= \<const0>\;
  M_AXI_WDATA(6) <= \<const0>\;
  M_AXI_WDATA(5) <= \<const0>\;
  M_AXI_WDATA(4) <= \<const0>\;
  M_AXI_WDATA(3) <= \<const0>\;
  M_AXI_WDATA(2) <= \<const0>\;
  M_AXI_WDATA(1) <= \<const0>\;
  M_AXI_WDATA(0) <= \<const0>\;
  M_AXI_WLAST <= \<const0>\;
  M_AXI_WSTRB(31) <= \<const1>\;
  M_AXI_WSTRB(30) <= \<const1>\;
  M_AXI_WSTRB(29) <= \<const1>\;
  M_AXI_WSTRB(28) <= \<const1>\;
  M_AXI_WSTRB(27) <= \<const1>\;
  M_AXI_WSTRB(26) <= \<const1>\;
  M_AXI_WSTRB(25) <= \<const1>\;
  M_AXI_WSTRB(24) <= \<const1>\;
  M_AXI_WSTRB(23) <= \<const1>\;
  M_AXI_WSTRB(22) <= \<const1>\;
  M_AXI_WSTRB(21) <= \<const1>\;
  M_AXI_WSTRB(20) <= \<const1>\;
  M_AXI_WSTRB(19) <= \<const1>\;
  M_AXI_WSTRB(18) <= \<const1>\;
  M_AXI_WSTRB(17) <= \<const1>\;
  M_AXI_WSTRB(16) <= \<const1>\;
  M_AXI_WSTRB(15) <= \<const1>\;
  M_AXI_WSTRB(14) <= \<const1>\;
  M_AXI_WSTRB(13) <= \<const1>\;
  M_AXI_WSTRB(12) <= \<const1>\;
  M_AXI_WSTRB(11) <= \<const1>\;
  M_AXI_WSTRB(10) <= \<const1>\;
  M_AXI_WSTRB(9) <= \<const1>\;
  M_AXI_WSTRB(8) <= \<const1>\;
  M_AXI_WSTRB(7) <= \<const1>\;
  M_AXI_WSTRB(6) <= \<const1>\;
  M_AXI_WSTRB(5) <= \<const1>\;
  M_AXI_WSTRB(4) <= \<const1>\;
  M_AXI_WSTRB(3) <= \<const1>\;
  M_AXI_WSTRB(2) <= \<const1>\;
  M_AXI_WSTRB(1) <= \<const1>\;
  M_AXI_WSTRB(0) <= \<const1>\;
  M_AXI_WVALID <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.ps_axi_int_0_0_axi_int
     port map (
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      clk => clk,
      resetn => resetn
    );
end STRUCTURE;
