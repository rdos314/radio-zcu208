-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Sep 30 22:50:22 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_0_0/ps_doa_0_0_sim_netlist.vhdl
-- Design      : ps_doa_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_0_0_doa is
  port (
    clk : in STD_LOGIC;
    data_0 : in STD_LOGIC_VECTOR ( 159 downto 0 );
    data_1 : in STD_LOGIC_VECTOR ( 159 downto 0 );
    data_2 : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_0 : in STD_LOGIC;
    ready_1 : in STD_LOGIC;
    ready_2 : in STD_LOGIC;
    started : in STD_LOGIC;
    running : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_doa_0_0_doa : entity is "doa";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_doa_0_0_doa : entity is "soft";
end ps_doa_0_0_doa;

architecture STRUCTURE of ps_doa_0_0_doa is
  component ps_doa_0_0_ila_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_doa_0_0_ila_0;
  signal \<const0>\ : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_0_inst : label is "ila_0,ila,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ila_0_inst : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ila_0_inst : label is "ila,Vivado 2025.1";
begin
  running <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ila_0_inst: component ps_doa_0_0_ila_0
     port map (
      clk => clk,
      probe0(15 downto 0) => data_0(15 downto 0),
      probe1(15 downto 0) => data_0(31 downto 16),
      probe10(15 downto 0) => data_1(15 downto 0),
      probe11(15 downto 0) => data_1(31 downto 16),
      probe12(15 downto 0) => data_1(47 downto 32),
      probe13(15 downto 0) => data_1(63 downto 48),
      probe14(15 downto 0) => data_1(79 downto 64),
      probe15(15 downto 0) => data_1(95 downto 80),
      probe16(15 downto 0) => data_1(111 downto 96),
      probe17(15 downto 0) => data_1(127 downto 112),
      probe18(15 downto 0) => data_1(143 downto 128),
      probe19(15 downto 0) => data_1(159 downto 144),
      probe2(15 downto 0) => data_0(47 downto 32),
      probe20(15 downto 0) => data_2(15 downto 0),
      probe21(15 downto 0) => data_2(31 downto 16),
      probe22(15 downto 0) => data_2(47 downto 32),
      probe23(15 downto 0) => data_2(63 downto 48),
      probe24(15 downto 0) => data_2(79 downto 64),
      probe25(15 downto 0) => data_2(95 downto 80),
      probe26(15 downto 0) => data_2(111 downto 96),
      probe27(15 downto 0) => data_2(127 downto 112),
      probe28(15 downto 0) => data_2(143 downto 128),
      probe29(15 downto 0) => data_2(159 downto 144),
      probe3(15 downto 0) => data_0(63 downto 48),
      probe30(0) => ready_0,
      probe31(0) => ready_1,
      probe32(0) => ready_2,
      probe33(0) => started,
      probe4(15 downto 0) => data_0(79 downto 64),
      probe5(15 downto 0) => data_0(95 downto 80),
      probe6(15 downto 0) => data_0(111 downto 96),
      probe7(15 downto 0) => data_0(127 downto 112),
      probe8(15 downto 0) => data_0(143 downto 128),
      probe9(15 downto 0) => data_0(159 downto 144)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_0_0 is
  port (
    clk : in STD_LOGIC;
    data_0 : in STD_LOGIC_VECTOR ( 159 downto 0 );
    data_1 : in STD_LOGIC_VECTOR ( 159 downto 0 );
    data_2 : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_0 : in STD_LOGIC;
    ready_1 : in STD_LOGIC;
    ready_2 : in STD_LOGIC;
    started : in STD_LOGIC;
    running : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_doa_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_doa_0_0 : entity is "ps_doa_0_0,doa,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_doa_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_doa_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_doa_0_0 : entity is "doa,Vivado 2025.1";
end ps_doa_0_0;

architecture STRUCTURE of ps_doa_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal NLW_inst_running_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_adc0_clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  running <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.ps_doa_0_0_doa
     port map (
      clk => clk,
      data_0(159 downto 0) => data_0(159 downto 0),
      data_1(159 downto 0) => data_1(159 downto 0),
      data_2(159 downto 0) => data_2(159 downto 0),
      ready_0 => ready_0,
      ready_1 => ready_1,
      ready_2 => ready_2,
      running => NLW_inst_running_UNCONNECTED,
      started => started
    );
end STRUCTURE;
