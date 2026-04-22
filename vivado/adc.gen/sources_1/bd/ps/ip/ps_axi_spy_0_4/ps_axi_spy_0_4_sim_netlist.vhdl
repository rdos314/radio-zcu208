-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Apr 21 22:55:06 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_spy_0_4/ps_axi_spy_0_4_sim_netlist.vhdl
-- Design      : ps_axi_spy_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_spy_0_4_axi_spy is
  port (
    data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wr : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_spy_0_4_axi_spy : entity is "axi_spy";
end ps_axi_spy_0_4_axi_spy;

architecture STRUCTURE of ps_axi_spy_0_4_axi_spy is
  signal \__0/i__n_0\ : STD_LOGIC;
  signal \axi_spy.match_i_1_n_0\ : STD_LOGIC;
  signal \axi_spy.match_i_2_n_0\ : STD_LOGIC;
  signal \axi_spy.match_i_3_n_0\ : STD_LOGIC;
  signal \axi_spy.match_i_4_n_0\ : STD_LOGIC;
  signal \axi_spy.match_i_5_n_0\ : STD_LOGIC;
  signal \axi_spy.match_reg_n_0\ : STD_LOGIC;
  signal \axi_spy.wr_i_1_n_0\ : STD_LOGIC;
begin
\__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_wready,
      I2 => \axi_spy.match_reg_n_0\,
      I3 => resetn,
      O => \__0/i__n_0\
    );
\axi_spy.data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(0),
      Q => data(0),
      R => '0'
    );
\axi_spy.data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(10),
      Q => data(10),
      R => '0'
    );
\axi_spy.data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(11),
      Q => data(11),
      R => '0'
    );
\axi_spy.data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(12),
      Q => data(12),
      R => '0'
    );
\axi_spy.data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(13),
      Q => data(13),
      R => '0'
    );
\axi_spy.data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(14),
      Q => data(14),
      R => '0'
    );
\axi_spy.data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(15),
      Q => data(15),
      R => '0'
    );
\axi_spy.data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(16),
      Q => data(16),
      R => '0'
    );
\axi_spy.data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(17),
      Q => data(17),
      R => '0'
    );
\axi_spy.data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(18),
      Q => data(18),
      R => '0'
    );
\axi_spy.data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(19),
      Q => data(19),
      R => '0'
    );
\axi_spy.data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(1),
      Q => data(1),
      R => '0'
    );
\axi_spy.data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(20),
      Q => data(20),
      R => '0'
    );
\axi_spy.data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(21),
      Q => data(21),
      R => '0'
    );
\axi_spy.data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(22),
      Q => data(22),
      R => '0'
    );
\axi_spy.data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(23),
      Q => data(23),
      R => '0'
    );
\axi_spy.data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(24),
      Q => data(24),
      R => '0'
    );
\axi_spy.data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(25),
      Q => data(25),
      R => '0'
    );
\axi_spy.data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(26),
      Q => data(26),
      R => '0'
    );
\axi_spy.data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(27),
      Q => data(27),
      R => '0'
    );
\axi_spy.data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(28),
      Q => data(28),
      R => '0'
    );
\axi_spy.data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(29),
      Q => data(29),
      R => '0'
    );
\axi_spy.data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(2),
      Q => data(2),
      R => '0'
    );
\axi_spy.data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(30),
      Q => data(30),
      R => '0'
    );
\axi_spy.data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(31),
      Q => data(31),
      R => '0'
    );
\axi_spy.data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(3),
      Q => data(3),
      R => '0'
    );
\axi_spy.data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(4),
      Q => data(4),
      R => '0'
    );
\axi_spy.data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(5),
      Q => data(5),
      R => '0'
    );
\axi_spy.data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(6),
      Q => data(6),
      R => '0'
    );
\axi_spy.data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(7),
      Q => data(7),
      R => '0'
    );
\axi_spy.data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(8),
      Q => data(8),
      R => '0'
    );
\axi_spy.data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__0/i__n_0\,
      D => s_axi_wdata(9),
      Q => data(9),
      R => '0'
    );
\axi_spy.match_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2222222"
    )
        port map (
      I0 => \axi_spy.match_reg_n_0\,
      I1 => \axi_spy.match_i_2_n_0\,
      I2 => \axi_spy.match_i_3_n_0\,
      I3 => \axi_spy.match_i_4_n_0\,
      I4 => \axi_spy.match_i_5_n_0\,
      I5 => resetn,
      O => \axi_spy.match_i_1_n_0\
    );
\axi_spy.match_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => s_axi_bvalid,
      I1 => s_axi_bready,
      I2 => s_axi_awready,
      I3 => s_axi_awvalid,
      O => \axi_spy.match_i_2_n_0\
    );
\axi_spy.match_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_awaddr(3),
      I3 => s_axi_awaddr(2),
      I4 => s_axi_awaddr(7),
      I5 => s_axi_awaddr(6),
      O => \axi_spy.match_i_3_n_0\
    );
\axi_spy.match_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      O => \axi_spy.match_i_4_n_0\
    );
\axi_spy.match_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => s_axi_awaddr(11),
      I2 => s_axi_awaddr(8),
      I3 => s_axi_awaddr(9),
      I4 => s_axi_awready,
      I5 => s_axi_awvalid,
      O => \axi_spy.match_i_5_n_0\
    );
\axi_spy.match_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_spy.match_i_1_n_0\,
      Q => \axi_spy.match_reg_n_0\,
      R => '0'
    );
\axi_spy.wr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_wready,
      I1 => s_axi_wvalid,
      I2 => \axi_spy.match_reg_n_0\,
      I3 => resetn,
      O => \axi_spy.wr_i_1_n_0\
    );
\axi_spy.wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_spy.wr_i_1_n_0\,
      Q => wr,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_spy_0_4 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_axi_spy_0_4 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_axi_spy_0_4 : entity is "ps_axi_spy_0_4,axi_spy,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_axi_spy_0_4 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_axi_spy_0_4 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_axi_spy_0_4 : entity is "axi_spy,Vivado 2025.1";
end ps_axi_spy_0_4;

architecture STRUCTURE of ps_axi_spy_0_4 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "monitor master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_MODE of s_axi_awvalid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awvalid : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
inst: entity work.ps_axi_spy_0_4_axi_spy
     port map (
      clk => clk,
      data(31 downto 0) => data(31 downto 0),
      resetn => resetn,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      wr => wr
    );
end STRUCTURE;
