-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Nov 13 23:41:46 2025
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
    deci_clk : out STD_LOGIC;
    deci_resetn : out STD_LOGIC;
    comp0_clk : out STD_LOGIC;
    comp0_reset : out STD_LOGIC;
    comp1_clk : out STD_LOGIC;
    comp1_reset : out STD_LOGIC;
    doa0_clk : out STD_LOGIC;
    doa0_reset : out STD_LOGIC;
    doa1_clk : out STD_LOGIC;
    doa1_reset : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_mts_0_0_mts : entity is "mts";
end ps_mts_0_0_mts;

architecture STRUCTURE of ps_mts_0_0_mts is
  component ps_mts_0_0_clk_wiz_adc is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component ps_mts_0_0_clk_wiz_adc;
  component ps_mts_0_0_clk_wiz_deci is
  port (
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component ps_mts_0_0_clk_wiz_deci;
  component ps_mts_0_0_clk_wiz_adc_HD1 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component ps_mts_0_0_clk_wiz_adc_HD1;
  signal \^comp0_clk\ : STD_LOGIC;
  signal comp0_reset_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of comp0_reset_1 : signal is "true";
  signal comp0_reset_2 : STD_LOGIC;
  attribute async_reg of comp0_reset_2 : signal is "true";
  signal \^comp1_clk\ : STD_LOGIC;
  signal comp1_reset_1 : STD_LOGIC;
  attribute async_reg of comp1_reset_1 : signal is "true";
  signal comp1_reset_2 : STD_LOGIC;
  attribute async_reg of comp1_reset_2 : signal is "true";
  signal comp_locked : STD_LOGIC;
  signal \^deci_clk\ : STD_LOGIC;
  signal deci_locked : STD_LOGIC;
  signal deci_release_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg of deci_release_cnt : signal is "true";
  signal \deci_release_cnt__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal deci_reset_1 : STD_LOGIC;
  attribute async_reg of deci_reset_1 : signal is "true";
  signal deci_reset_2 : STD_LOGIC;
  attribute async_reg of deci_reset_2 : signal is "true";
  signal deci_reset_async : STD_LOGIC;
  attribute async_reg of deci_reset_async : signal is "true";
  signal \^doa0_clk\ : STD_LOGIC;
  signal doa0_reset_1 : STD_LOGIC;
  attribute async_reg of doa0_reset_1 : signal is "true";
  signal doa0_reset_2 : STD_LOGIC;
  attribute async_reg of doa0_reset_2 : signal is "true";
  signal \^doa1_clk\ : STD_LOGIC;
  signal doa1_reset_1 : STD_LOGIC;
  attribute async_reg of doa1_reset_1 : signal is "true";
  signal doa1_reset_2 : STD_LOGIC;
  attribute async_reg of doa1_reset_2 : signal is "true";
  signal doa_locked : STD_LOGIC;
  signal \mts.comp0_reset_1_reg0\ : STD_LOGIC;
  signal \mts.deci_reset_async_i_1_n_0\ : STD_LOGIC;
  signal \mts.deci_resetn_i_1_n_0\ : STD_LOGIC;
  signal \mts.doa0_reset_1_reg0\ : STD_LOGIC;
  signal pl_clk_buf : STD_LOGIC;
  signal rst_async : STD_LOGIC;
  signal sysref_r : STD_LOGIC;
  attribute async_reg of sysref_r : signal is "true";
  signal sysref_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of sysref_sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \mts.comp0_reset_1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \mts.comp0_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.comp0_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.comp0_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.comp1_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.comp1_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.comp1_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.comp1_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_release_cnt_reg[0]\ : label is std.standard.true;
  attribute KEEP of \mts.deci_release_cnt_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_release_cnt_reg[1]\ : label is std.standard.true;
  attribute KEEP of \mts.deci_release_cnt_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_release_cnt_reg[2]\ : label is std.standard.true;
  attribute KEEP of \mts.deci_release_cnt_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_release_cnt_reg[3]\ : label is std.standard.true;
  attribute KEEP of \mts.deci_release_cnt_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_reset_async_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_reset_async_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.doa0_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.doa0_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.doa0_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.doa0_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.doa1_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.doa1_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.doa1_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.doa1_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.sysref_r_reg\ : label is std.standard.true;
  attribute KEEP of \mts.sysref_r_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.sysref_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP of \mts.sysref_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.sysref_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \mts.sysref_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.sysref_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \mts.sysref_sync_reg[2]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of p_clk_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of p_clk_i : label is "BUFG";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of p_clk_i : label is "VCC:CE";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of comp0_clk : signal is "XIL_INTERFACENAME COMP0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
  attribute X_INTERFACE_PARAMETER of comp1_clk : signal is "XIL_INTERFACENAME COMP1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
  attribute X_INTERFACE_PARAMETER of deci_clk : signal is "XIL_INTERFACENAME DECI_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
  attribute X_INTERFACE_PARAMETER of doa0_clk : signal is "XIL_INTERFACENAME DOA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
  attribute X_INTERFACE_PARAMETER of doa1_clk : signal is "XIL_INTERFACENAME DOA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
begin
  comp0_clk <= \^comp0_clk\;
  comp1_clk <= \^comp1_clk\;
  deci_clk <= \^deci_clk\;
  doa0_clk <= \^doa0_clk\;
  doa1_clk <= \^doa1_clk\;
  user_sysref_adc <= sysref_sync(2);
clk_wiz_comp_i: component ps_mts_0_0_clk_wiz_adc
     port map (
      clk_in1 => pl_clk_buf,
      clk_out1 => \^comp0_clk\,
      clk_out2 => \^comp1_clk\,
      locked => comp_locked
    );
clk_wiz_deci_i: component ps_mts_0_0_clk_wiz_deci
     port map (
      clk_in1 => pl_clk_buf,
      clk_out1 => \^deci_clk\,
      locked => deci_locked
    );
clk_wiz_doa_i: component ps_mts_0_0_clk_wiz_adc_HD1
     port map (
      clk_in1 => pl_clk_buf,
      clk_out1 => \^doa0_clk\,
      clk_out2 => \^doa1_clk\,
      locked => doa_locked
    );
\mts.comp0_reset_1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => deci_reset_async,
      I1 => comp_locked,
      O => \mts.comp0_reset_1_reg0\
    );
\mts.comp0_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^comp0_clk\,
      CE => '1',
      D => \mts.comp0_reset_1_reg0\,
      Q => comp0_reset_1,
      R => '0'
    );
\mts.comp0_reset_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^comp0_clk\,
      CE => '1',
      D => comp0_reset_1,
      Q => comp0_reset_2,
      R => '0'
    );
\mts.comp0_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^comp0_clk\,
      CE => '1',
      D => comp0_reset_2,
      Q => comp0_reset,
      R => '0'
    );
\mts.comp1_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^comp1_clk\,
      CE => '1',
      D => \mts.comp0_reset_1_reg0\,
      Q => comp1_reset_1,
      R => '0'
    );
\mts.comp1_reset_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^comp1_clk\,
      CE => '1',
      D => comp1_reset_1,
      Q => comp1_reset_2,
      R => '0'
    );
\mts.comp1_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^comp1_clk\,
      CE => '1',
      D => comp1_reset_2,
      Q => comp1_reset,
      R => '0'
    );
\mts.deci_release_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F0F"
    )
        port map (
      I0 => deci_release_cnt(3),
      I1 => deci_release_cnt(2),
      I2 => deci_release_cnt(0),
      I3 => deci_release_cnt(1),
      O => \deci_release_cnt__0\(0)
    );
\mts.deci_release_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5AA"
    )
        port map (
      I0 => deci_release_cnt(0),
      I1 => deci_release_cnt(2),
      I2 => deci_release_cnt(3),
      I3 => deci_release_cnt(1),
      O => \deci_release_cnt__0\(1)
    );
\mts.deci_release_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFC0"
    )
        port map (
      I0 => deci_release_cnt(3),
      I1 => deci_release_cnt(1),
      I2 => deci_release_cnt(0),
      I3 => deci_release_cnt(2),
      O => \deci_release_cnt__0\(2)
    );
\mts.deci_release_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => deci_release_cnt(0),
      I1 => deci_release_cnt(1),
      I2 => deci_release_cnt(2),
      I3 => deci_release_cnt(3),
      O => \deci_release_cnt__0\(3)
    );
\mts.deci_release_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sys_reset,
      I1 => deci_locked,
      O => rst_async
    );
\mts.deci_release_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^deci_clk\,
      CE => deci_reset_async,
      CLR => rst_async,
      D => \deci_release_cnt__0\(0),
      Q => deci_release_cnt(0)
    );
\mts.deci_release_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^deci_clk\,
      CE => deci_reset_async,
      CLR => rst_async,
      D => \deci_release_cnt__0\(1),
      Q => deci_release_cnt(1)
    );
\mts.deci_release_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^deci_clk\,
      CE => deci_reset_async,
      CLR => rst_async,
      D => \deci_release_cnt__0\(2),
      Q => deci_release_cnt(2)
    );
\mts.deci_release_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^deci_clk\,
      CE => deci_reset_async,
      CLR => rst_async,
      D => \deci_release_cnt__0\(3),
      Q => deci_release_cnt(3)
    );
\mts.deci_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_reset_async,
      Q => deci_reset_1,
      R => '0'
    );
\mts.deci_reset_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_reset_1,
      Q => deci_reset_2,
      R => '0'
    );
\mts.deci_reset_async_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => deci_reset_async,
      I1 => deci_release_cnt(3),
      I2 => deci_release_cnt(2),
      I3 => deci_release_cnt(0),
      I4 => deci_release_cnt(1),
      O => \mts.deci_reset_async_i_1_n_0\
    );
\mts.deci_reset_async_reg\: unisim.vcomponents.FDPE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => \mts.deci_reset_async_i_1_n_0\,
      PRE => rst_async,
      Q => deci_reset_async
    );
\mts.deci_resetn_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => deci_reset_2,
      O => \mts.deci_resetn_i_1_n_0\
    );
\mts.deci_resetn_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => \mts.deci_resetn_i_1_n_0\,
      Q => deci_resetn,
      R => '0'
    );
\mts.doa0_reset_1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => deci_reset_async,
      I1 => doa_locked,
      O => \mts.doa0_reset_1_reg0\
    );
\mts.doa0_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa0_clk\,
      CE => '1',
      D => \mts.doa0_reset_1_reg0\,
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
\mts.doa0_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa0_clk\,
      CE => '1',
      D => doa0_reset_2,
      Q => doa0_reset,
      R => '0'
    );
\mts.doa1_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa1_clk\,
      CE => '1',
      D => \mts.doa0_reset_1_reg0\,
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
\mts.doa1_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^doa1_clk\,
      CE => '1',
      D => doa1_reset_2,
      Q => doa1_reset,
      R => '0'
    );
\mts.sysref_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => pl_sysref,
      Q => sysref_r,
      R => '0'
    );
\mts.sysref_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => sysref_r,
      Q => sysref_sync(0),
      R => '0'
    );
\mts.sysref_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => sysref_sync(0),
      Q => sysref_sync(1),
      R => '0'
    );
\mts.sysref_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
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
    deci_clk : out STD_LOGIC;
    deci_resetn : out STD_LOGIC;
    comp0_clk : out STD_LOGIC;
    comp0_reset : out STD_LOGIC;
    comp1_clk : out STD_LOGIC;
    comp1_reset : out STD_LOGIC;
    doa0_clk : out STD_LOGIC;
    doa0_reset : out STD_LOGIC;
    doa1_clk : out STD_LOGIC;
    doa1_reset : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC
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
  attribute X_INTERFACE_INFO of comp0_clk : signal is "xilinx.com:signal:clock:1.0 comp0_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of comp0_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of comp0_clk : signal is "XIL_INTERFACENAME comp0_clk, ASSOCIATED_RESET comp0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of comp0_reset : signal is "xilinx.com:signal:reset:1.0 comp0_reset RST";
  attribute X_INTERFACE_MODE of comp0_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of comp0_reset : signal is "XIL_INTERFACENAME comp0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of comp1_clk : signal is "xilinx.com:signal:clock:1.0 comp1_clk CLK";
  attribute X_INTERFACE_MODE of comp1_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of comp1_clk : signal is "XIL_INTERFACENAME comp1_clk, ASSOCIATED_RESET comp1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of comp1_reset : signal is "xilinx.com:signal:reset:1.0 comp1_reset RST";
  attribute X_INTERFACE_MODE of comp1_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of comp1_reset : signal is "XIL_INTERFACENAME comp1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of deci_clk : signal is "xilinx.com:signal:clock:1.0 deci_clk CLK";
  attribute X_INTERFACE_MODE of deci_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of deci_clk : signal is "XIL_INTERFACENAME deci_clk, ASSOCIATED_RESET deci_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of deci_resetn : signal is "xilinx.com:signal:reset:1.0 deci_resetn RST";
  attribute X_INTERFACE_MODE of deci_resetn : signal is "master";
  attribute X_INTERFACE_PARAMETER of deci_resetn : signal is "XIL_INTERFACENAME deci_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa0_clk : signal is "xilinx.com:signal:clock:1.0 doa0_clk CLK";
  attribute X_INTERFACE_MODE of doa0_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of doa0_clk : signal is "XIL_INTERFACENAME doa0_clk, ASSOCIATED_RESET doa0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa0_reset : signal is "xilinx.com:signal:reset:1.0 doa0_reset RST";
  attribute X_INTERFACE_MODE of doa0_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of doa0_reset : signal is "XIL_INTERFACENAME doa0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa1_clk : signal is "xilinx.com:signal:clock:1.0 doa1_clk CLK";
  attribute X_INTERFACE_MODE of doa1_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of doa1_clk : signal is "XIL_INTERFACENAME doa1_clk, ASSOCIATED_RESET doa1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa1_reset : signal is "xilinx.com:signal:reset:1.0 doa1_reset RST";
  attribute X_INTERFACE_MODE of doa1_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of doa1_reset : signal is "XIL_INTERFACENAME doa1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_MODE of pl_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_reset : signal is "xilinx.com:signal:reset:1.0 sys_reset RST";
  attribute X_INTERFACE_MODE of sys_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sys_reset : signal is "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.ps_mts_0_0_mts
     port map (
      comp0_clk => comp0_clk,
      comp0_reset => comp0_reset,
      comp1_clk => comp1_clk,
      comp1_reset => comp1_reset,
      deci_clk => deci_clk,
      deci_resetn => deci_resetn,
      doa0_clk => doa0_clk,
      doa0_reset => doa0_reset,
      doa1_clk => doa1_clk,
      doa1_reset => doa1_reset,
      pl_clk => pl_clk,
      pl_sysref => pl_sysref,
      sys_reset => sys_reset,
      user_sysref_adc => user_sysref_adc
    );
end STRUCTURE;
