-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Oct  6 21:29:30 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_mts_0_0/ps_mts_0_0_sim_netlist.vhdl
-- Design      : ps_mts_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_mts_0_0_mts is
  port (
    pl_clk : in STD_LOGIC;
    pl_sysref : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    doa0_clk : out STD_LOGIC;
    doa1_clk : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    doa0_resetn : out STD_LOGIC;
    doa1_resetn : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_mts_0_0_mts : entity is "mts";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_mts_0_0_mts : entity is "soft";
end ps_mts_0_0_mts;

architecture STRUCTURE of ps_mts_0_0_mts is
  component ps_mts_0_0_ila_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_mts_0_0_ila_1;
  component ps_mts_0_0_clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component ps_mts_0_0_clk_wiz_0;
  signal \^doa0_clk\ : STD_LOGIC;
  signal doa0_reset_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of doa0_reset_1 : signal is "true";
  signal doa0_reset_2 : STD_LOGIC;
  attribute async_reg of doa0_reset_2 : signal is "true";
  signal \^doa1_clk\ : STD_LOGIC;
  signal doa1_reset_1 : STD_LOGIC;
  attribute async_reg of doa1_reset_1 : signal is "true";
  signal doa1_reset_2 : STD_LOGIC;
  attribute async_reg of doa1_reset_2 : signal is "true";
  signal m_clk : STD_LOGIC;
  signal m_clk_buf : STD_LOGIC;
  signal master_reset : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of master_reset : signal is "yes";
  attribute async_reg of master_reset : signal is "true";
  signal master_reset_async : STD_LOGIC;
  attribute async_reg of master_reset_async : signal is "true";
  signal mmcm_locked : STD_LOGIC;
  signal \mts.doa0_resetn_i_1_n_0\ : STD_LOGIC;
  signal \mts.doa1_resetn_i_1_n_0\ : STD_LOGIC;
  signal \mts.master_reset_async_i_1_n_0\ : STD_LOGIC;
  signal pl_clk_buf : STD_LOGIC;
  signal pl_sysref_r : STD_LOGIC;
  attribute async_reg of pl_sysref_r : signal is "true";
  signal release_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg of release_cnt : signal is "true";
  signal \release_cnt__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_async : STD_LOGIC;
  signal rst_async_msync : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of rst_async_msync : signal is "true";
  signal sysref_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of sysref_sync : signal is "true";
  signal \^user_sysref_adc\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of user_sysref_adc : signal is std.standard.true;
  signal NLW_pl_clk_wiz_i_reset_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of doa0_clk_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of doa0_clk_i : label is "BUFG";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of doa0_clk_i : label is "VCC:CE";
  attribute BOX_TYPE of doa1_clk_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of doa1_clk_i : label is "BUFG";
  attribute XILINX_TRANSFORM_PINMAP of doa1_clk_i : label is "VCC:CE";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_1,ila,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ila_i : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ila_i : label is "ila,Vivado 2025.1";
  attribute BOX_TYPE of m_clk_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of m_clk_i : label is "BUFG";
  attribute XILINX_TRANSFORM_PINMAP of m_clk_i : label is "VCC:CE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \mts.doa0_reset_1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \mts.doa0_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.doa0_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.doa0_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.doa1_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.doa1_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.doa1_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.doa1_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.master_reset_async_reg\ : label is std.standard.true;
  attribute KEEP of \mts.master_reset_async_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.master_reset_reg\ : label is std.standard.true;
  attribute KEEP of \mts.master_reset_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.pl_sysref_r_reg\ : label is std.standard.true;
  attribute KEEP of \mts.pl_sysref_r_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.release_cnt_reg[0]\ : label is std.standard.true;
  attribute KEEP of \mts.release_cnt_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.release_cnt_reg[1]\ : label is std.standard.true;
  attribute KEEP of \mts.release_cnt_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.release_cnt_reg[2]\ : label is std.standard.true;
  attribute KEEP of \mts.release_cnt_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.release_cnt_reg[3]\ : label is std.standard.true;
  attribute KEEP of \mts.release_cnt_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.rst_async_msync_reg[0]\ : label is std.standard.true;
  attribute KEEP of \mts.rst_async_msync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.rst_async_msync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \mts.rst_async_msync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.sysref_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP of \mts.sysref_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.sysref_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \mts.sysref_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.sysref_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \mts.sysref_sync_reg[2]\ : label is "yes";
  attribute BOX_TYPE of p_clk_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of p_clk_i : label is "BUFG";
  attribute XILINX_TRANSFORM_PINMAP of p_clk_i : label is "VCC:CE";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of doa0_clk : signal is "XIL_INTERFACENAME DOA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
  attribute X_INTERFACE_PARAMETER of doa1_clk : signal is "XIL_INTERFACENAME DOA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
begin
  doa0_clk <= \^doa0_clk\;
  doa1_clk <= \^doa1_clk\;
  user_sysref_adc <= \^user_sysref_adc\;
doa0_clk_i: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => m_clk,
      O => \^doa0_clk\
    );
doa1_clk_i: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => m_clk,
      O => \^doa1_clk\
    );
ila_i: component ps_mts_0_0_ila_1
     port map (
      clk => m_clk_buf,
      probe0(0) => \^user_sysref_adc\,
      probe1(0) => master_reset
    );
m_clk_i: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => m_clk,
      O => m_clk_buf
    );
\mts.doa0_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa0_clk\,
      CE => '1',
      D => master_reset,
      Q => doa0_reset_1,
      R => '0'
    );
\mts.doa0_reset_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa0_clk\,
      CE => '1',
      D => doa0_reset_1,
      Q => doa0_reset_2,
      R => '0'
    );
\mts.doa0_resetn_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => doa0_reset_2,
      O => \mts.doa0_resetn_i_1_n_0\
    );
\mts.doa0_resetn_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa0_clk\,
      CE => '1',
      D => \mts.doa0_resetn_i_1_n_0\,
      Q => doa0_resetn,
      R => '0'
    );
\mts.doa1_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa1_clk\,
      CE => '1',
      D => master_reset,
      Q => doa1_reset_1,
      R => '0'
    );
\mts.doa1_reset_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa1_clk\,
      CE => '1',
      D => doa1_reset_1,
      Q => doa1_reset_2,
      R => '0'
    );
\mts.doa1_resetn_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => doa1_reset_2,
      O => \mts.doa1_resetn_i_1_n_0\
    );
\mts.doa1_resetn_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa1_clk\,
      CE => '1',
      D => \mts.doa1_resetn_i_1_n_0\,
      Q => doa1_resetn,
      R => '0'
    );
\mts.master_reset_async_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => master_reset_async,
      I1 => release_cnt(3),
      I2 => release_cnt(2),
      I3 => release_cnt(0),
      I4 => release_cnt(1),
      O => \mts.master_reset_async_i_1_n_0\
    );
\mts.master_reset_async_reg\: unisim.vcomponents.FDPE
     port map (
      C => m_clk_buf,
      CE => '1',
      D => \mts.master_reset_async_i_1_n_0\,
      PRE => rst_async,
      Q => master_reset_async
    );
\mts.master_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_buf,
      CE => '1',
      D => master_reset_async,
      Q => master_reset,
      R => '0'
    );
\mts.pl_sysref_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => pl_clk_buf,
      CE => '1',
      D => pl_sysref,
      Q => pl_sysref_r,
      R => '0'
    );
\mts.release_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F0F"
    )
        port map (
      I0 => release_cnt(3),
      I1 => release_cnt(2),
      I2 => release_cnt(0),
      I3 => release_cnt(1),
      O => \release_cnt__0\(0)
    );
\mts.release_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5AA"
    )
        port map (
      I0 => release_cnt(0),
      I1 => release_cnt(2),
      I2 => release_cnt(3),
      I3 => release_cnt(1),
      O => \release_cnt__0\(1)
    );
\mts.release_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFC0"
    )
        port map (
      I0 => release_cnt(3),
      I1 => release_cnt(1),
      I2 => release_cnt(0),
      I3 => release_cnt(2),
      O => \release_cnt__0\(2)
    );
\mts.release_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => release_cnt(0),
      I1 => release_cnt(1),
      I2 => release_cnt(2),
      I3 => release_cnt(3),
      O => \release_cnt__0\(3)
    );
\mts.release_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sys_reset,
      I1 => mmcm_locked,
      O => rst_async
    );
\mts.release_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m_clk_buf,
      CE => master_reset_async,
      CLR => rst_async,
      D => \release_cnt__0\(0),
      Q => release_cnt(0)
    );
\mts.release_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m_clk_buf,
      CE => master_reset_async,
      CLR => rst_async,
      D => \release_cnt__0\(1),
      Q => release_cnt(1)
    );
\mts.release_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m_clk_buf,
      CE => master_reset_async,
      CLR => rst_async,
      D => \release_cnt__0\(2),
      Q => release_cnt(2)
    );
\mts.release_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m_clk_buf,
      CE => master_reset_async,
      CLR => rst_async,
      D => \release_cnt__0\(3),
      Q => release_cnt(3)
    );
\mts.rst_async_msync_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => m_clk_buf,
      CE => '1',
      D => '0',
      PRE => rst_async,
      Q => rst_async_msync(0)
    );
\mts.rst_async_msync_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => m_clk_buf,
      CE => '1',
      D => rst_async_msync(0),
      PRE => rst_async,
      Q => rst_async_msync(1)
    );
\mts.sysref_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_buf,
      CE => '1',
      D => pl_sysref_r,
      Q => sysref_sync(0),
      R => '0'
    );
\mts.sysref_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_buf,
      CE => '1',
      D => sysref_sync(0),
      Q => sysref_sync(1),
      R => '0'
    );
\mts.sysref_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk_buf,
      CE => '1',
      D => sysref_sync(1),
      Q => sysref_sync(2),
      R => '0'
    );
p_clk_i: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => pl_clk,
      O => pl_clk_buf
    );
pl_clk_wiz_i: component ps_mts_0_0_clk_wiz_0
     port map (
      clk_in1 => pl_clk_buf,
      clk_out1 => m_clk,
      locked => mmcm_locked,
      reset => NLW_pl_clk_wiz_i_reset_UNCONNECTED
    );
sysref_sync_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sysref_sync(2),
      O => \^user_sysref_adc\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_mts_0_0 is
  port (
    pl_clk : in STD_LOGIC;
    pl_sysref : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    doa0_clk : out STD_LOGIC;
    doa1_clk : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    doa0_resetn : out STD_LOGIC;
    doa1_resetn : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_mts_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_mts_0_0 : entity is "ps_mts_0_0,mts,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_mts_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_mts_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_mts_0_0 : entity is "mts,Vivado 2025.1";
end ps_mts_0_0;

architecture STRUCTURE of ps_mts_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of doa0_clk : signal is "xilinx.com:signal:clock:1.0 doa0_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of doa0_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of doa0_clk : signal is "XIL_INTERFACENAME doa0_clk, ASSOCIATED_RESET doa0_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa0_resetn : signal is "xilinx.com:signal:reset:1.0 doa0_resetn RST";
  attribute X_INTERFACE_MODE of doa0_resetn : signal is "master";
  attribute X_INTERFACE_PARAMETER of doa0_resetn : signal is "XIL_INTERFACENAME doa0_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa1_clk : signal is "xilinx.com:signal:clock:1.0 doa1_clk CLK";
  attribute X_INTERFACE_MODE of doa1_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of doa1_clk : signal is "XIL_INTERFACENAME doa1_clk, ASSOCIATED_RESET doa1_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa1_resetn : signal is "xilinx.com:signal:reset:1.0 doa1_resetn RST";
  attribute X_INTERFACE_MODE of doa1_resetn : signal is "master";
  attribute X_INTERFACE_PARAMETER of doa1_resetn : signal is "XIL_INTERFACENAME doa1_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_MODE of pl_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_reset : signal is "xilinx.com:signal:reset:1.0 sys_reset RST";
  attribute X_INTERFACE_MODE of sys_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sys_reset : signal is "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.ps_mts_0_0_mts
     port map (
      doa0_clk => doa0_clk,
      doa0_resetn => doa0_resetn,
      doa1_clk => doa1_clk,
      doa1_resetn => doa1_resetn,
      pl_clk => pl_clk,
      pl_sysref => pl_sysref,
      sys_reset => sys_reset,
      user_sysref_adc => user_sysref_adc
    );
end STRUCTURE;
