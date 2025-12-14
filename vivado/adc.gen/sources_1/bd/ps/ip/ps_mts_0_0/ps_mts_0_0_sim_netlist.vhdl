-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Dec 14 15:59:03 2025
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
    axi_clk : in STD_LOGIC;
    axi_reset_out : out STD_LOGIC;
    axi_adc_start : in STD_LOGIC;
    axi_sim_start : in STD_LOGIC;
    axi_adc_stop : in STD_LOGIC;
    axi_adc_active : out STD_LOGIC;
    axi_sim_active : out STD_LOGIC;
    deci_clk : out STD_LOGIC;
    deci_resetn : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    deci_adc_active : out STD_LOGIC;
    deci_sim_start : out STD_LOGIC;
    deci_sim_active_low : in STD_LOGIC;
    deci_sim_active_high : in STD_LOGIC;
    comp0_clk : out STD_LOGIC;
    comp0_reset : out STD_LOGIC;
    comp1_clk : out STD_LOGIC;
    comp1_reset : out STD_LOGIC;
    freq0_clk : out STD_LOGIC;
    freq0_reset : out STD_LOGIC;
    freq1_clk : out STD_LOGIC;
    freq1_reset : out STD_LOGIC
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
  signal \FSM_onehot_mts.deci_adc_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mts.deci_adc_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mts.deci_adc_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_mts.deci_adc_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_mts.deci_adc_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal adc_active : STD_LOGIC;
  signal adc_axi_start : STD_LOGIC;
  signal adc_axi_stop : STD_LOGIC;
  signal axi_adc_active_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of axi_adc_active_1 : signal is "true";
  signal axi_adc_active_2 : STD_LOGIC;
  attribute async_reg of axi_adc_active_2 : signal is "true";
  signal axi_reset_1 : STD_LOGIC;
  attribute async_reg of axi_reset_1 : signal is "true";
  signal axi_reset_2 : STD_LOGIC;
  attribute async_reg of axi_reset_2 : signal is "true";
  signal axi_sim_active_1 : STD_LOGIC;
  attribute async_reg of axi_sim_active_1 : signal is "true";
  signal axi_sim_active_2 : STD_LOGIC;
  attribute async_reg of axi_sim_active_2 : signal is "true";
  signal \^comp0_clk\ : STD_LOGIC;
  signal comp0_reset_1 : STD_LOGIC;
  attribute async_reg of comp0_reset_1 : signal is "true";
  signal comp0_reset_2 : STD_LOGIC;
  attribute async_reg of comp0_reset_2 : signal is "true";
  signal \^comp1_clk\ : STD_LOGIC;
  signal comp1_reset_1 : STD_LOGIC;
  attribute async_reg of comp1_reset_1 : signal is "true";
  signal comp1_reset_2 : STD_LOGIC;
  attribute async_reg of comp1_reset_2 : signal is "true";
  signal comp_locked : STD_LOGIC;
  signal \^deci_adc_active\ : STD_LOGIC;
  signal deci_adc_start : STD_LOGIC;
  signal deci_adc_start0 : STD_LOGIC;
  signal deci_adc_start_1 : STD_LOGIC;
  attribute async_reg of deci_adc_start_1 : signal is "true";
  signal deci_adc_start_2 : STD_LOGIC;
  attribute async_reg of deci_adc_start_2 : signal is "true";
  signal deci_adc_start_curr : STD_LOGIC;
  signal deci_adc_start_prev : STD_LOGIC;
  signal deci_adc_stop : STD_LOGIC;
  signal deci_adc_stop0 : STD_LOGIC;
  signal deci_adc_stop_1 : STD_LOGIC;
  attribute async_reg of deci_adc_stop_1 : signal is "true";
  signal deci_adc_stop_2 : STD_LOGIC;
  attribute async_reg of deci_adc_stop_2 : signal is "true";
  signal deci_adc_stop_curr : STD_LOGIC;
  signal deci_adc_stop_prev : STD_LOGIC;
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
  signal deci_reset_async2_out : STD_LOGIC;
  signal \^deci_resetn\ : STD_LOGIC;
  signal deci_sim_start0 : STD_LOGIC;
  signal deci_sim_start_1 : STD_LOGIC;
  attribute async_reg of deci_sim_start_1 : signal is "true";
  signal deci_sim_start_2 : STD_LOGIC;
  attribute async_reg of deci_sim_start_2 : signal is "true";
  signal deci_sim_start_curr : STD_LOGIC;
  signal deci_sim_start_prev : STD_LOGIC;
  signal \^freq0_clk\ : STD_LOGIC;
  signal freq0_reset_1 : STD_LOGIC;
  attribute async_reg of freq0_reset_1 : signal is "true";
  signal freq0_reset_2 : STD_LOGIC;
  attribute async_reg of freq0_reset_2 : signal is "true";
  signal \^freq1_clk\ : STD_LOGIC;
  signal freq1_reset_1 : STD_LOGIC;
  attribute async_reg of freq1_reset_1 : signal is "true";
  signal freq1_reset_2 : STD_LOGIC;
  attribute async_reg of freq1_reset_2 : signal is "true";
  signal freq_locked : STD_LOGIC;
  signal \mts.comp0_reset_1_reg0\ : STD_LOGIC;
  signal \mts.deci_adc_active_i_1_n_0\ : STD_LOGIC;
  signal \mts.deci_resetn_i_1_n_0\ : STD_LOGIC;
  signal \mts.freq0_reset_1_reg0\ : STD_LOGIC;
  signal \mts.sim_active_reg0\ : STD_LOGIC;
  signal \mts.sysref_active_i_1_n_0\ : STD_LOGIC;
  signal \mts.sysref_active_reg_n_0\ : STD_LOGIC;
  signal pl_clk_buf : STD_LOGIC;
  signal rst_async : STD_LOGIC;
  signal sim_active : STD_LOGIC;
  signal sim_axi_start : STD_LOGIC;
  signal sysref_active : STD_LOGIC;
  signal sysref_r : STD_LOGIC;
  attribute async_reg of sysref_r : signal is "true";
  signal sysref_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of sysref_sync : signal is "true";
  signal \^user_sysref_adc\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_mts.deci_adc_counter_reg[0]\ : label is "iSTATE:0001,iSTATE0:1000,iSTATE1:0100,iSTATE2:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mts.deci_adc_counter_reg[1]\ : label is "iSTATE:0001,iSTATE0:1000,iSTATE1:0100,iSTATE2:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mts.deci_adc_counter_reg[2]\ : label is "iSTATE:0001,iSTATE0:1000,iSTATE1:0100,iSTATE2:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mts.deci_adc_counter_reg[3]\ : label is "iSTATE:0001,iSTATE0:1000,iSTATE1:0100,iSTATE2:0010";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \mts.axi_adc_active_1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \mts.axi_adc_active_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.axi_adc_active_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.axi_adc_active_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.axi_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.axi_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.axi_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.axi_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.axi_sim_active_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.axi_sim_active_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.axi_sim_active_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.axi_sim_active_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.comp0_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.comp0_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.comp0_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.comp0_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.comp1_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.comp1_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.comp1_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.comp1_reset_2_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mts.deci_adc_active_i_1\ : label is "soft_lutpair0";
  attribute ASYNC_REG_boolean of \mts.deci_adc_start_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_adc_start_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_adc_start_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_adc_start_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_adc_stop_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_adc_stop_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_adc_stop_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_adc_stop_2_reg\ : label is "yes";
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
  attribute ASYNC_REG_boolean of \mts.deci_sim_start_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_sim_start_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.deci_sim_start_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.deci_sim_start_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.freq0_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.freq0_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.freq0_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.freq0_reset_2_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.freq1_reset_1_reg\ : label is std.standard.true;
  attribute KEEP of \mts.freq1_reset_1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \mts.freq1_reset_2_reg\ : label is std.standard.true;
  attribute KEEP of \mts.freq1_reset_2_reg\ : label is "yes";
  attribute SOFT_HLUTNM of \mts.sysref_active_i_1\ : label is "soft_lutpair0";
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
  attribute X_INTERFACE_PARAMETER of freq0_clk : signal is "XIL_INTERFACENAME FREQ0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
  attribute X_INTERFACE_PARAMETER of freq1_clk : signal is "XIL_INTERFACENAME FREQ1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0";
begin
  comp0_clk <= \^comp0_clk\;
  comp1_clk <= \^comp1_clk\;
  deci_adc_active <= \^deci_adc_active\;
  deci_clk <= \^deci_clk\;
  deci_resetn <= \^deci_resetn\;
  freq0_clk <= \^freq0_clk\;
  freq1_clk <= \^freq1_clk\;
  user_sysref_adc <= \^user_sysref_adc\;
\FSM_onehot_mts.deci_adc_counter[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^deci_resetn\,
      O => \FSM_onehot_mts.deci_adc_counter[3]_i_1_n_0\
    );
\FSM_onehot_mts.deci_adc_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[3]\,
      I1 => sysref_active,
      I2 => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[0]\,
      I3 => deci_adc_start,
      I4 => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[1]\,
      I5 => \^user_sysref_adc\,
      O => \FSM_onehot_mts.deci_adc_counter[3]_i_2_n_0\
    );
\FSM_onehot_mts.deci_adc_counter_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^deci_clk\,
      CE => \FSM_onehot_mts.deci_adc_counter[3]_i_2_n_0\,
      D => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[3]\,
      Q => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[0]\,
      S => \FSM_onehot_mts.deci_adc_counter[3]_i_1_n_0\
    );
\FSM_onehot_mts.deci_adc_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^deci_clk\,
      CE => \FSM_onehot_mts.deci_adc_counter[3]_i_2_n_0\,
      D => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[0]\,
      Q => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[1]\,
      R => \FSM_onehot_mts.deci_adc_counter[3]_i_1_n_0\
    );
\FSM_onehot_mts.deci_adc_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^deci_clk\,
      CE => \FSM_onehot_mts.deci_adc_counter[3]_i_2_n_0\,
      D => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[1]\,
      Q => sysref_active,
      R => \FSM_onehot_mts.deci_adc_counter[3]_i_1_n_0\
    );
\FSM_onehot_mts.deci_adc_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^deci_clk\,
      CE => \FSM_onehot_mts.deci_adc_counter[3]_i_2_n_0\,
      D => sysref_active,
      Q => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[3]\,
      R => \FSM_onehot_mts.deci_adc_counter[3]_i_1_n_0\
    );
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
clk_wiz_freq_i: component ps_mts_0_0_clk_wiz_adc_HD1
     port map (
      clk_in1 => pl_clk_buf,
      clk_out1 => \^freq0_clk\,
      clk_out2 => \^freq1_clk\,
      locked => freq_locked
    );
\mts.adc_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => \^deci_adc_active\,
      Q => adc_active,
      R => '0'
    );
\mts.adc_axi_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_adc_start,
      Q => adc_axi_start,
      R => '0'
    );
\mts.adc_axi_stop_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_adc_stop,
      Q => adc_axi_stop,
      R => '0'
    );
\mts.axi_adc_active_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => adc_active,
      Q => axi_adc_active_1,
      R => '0'
    );
\mts.axi_adc_active_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_adc_active_1,
      Q => axi_adc_active_2,
      R => '0'
    );
\mts.axi_adc_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_adc_active_2,
      Q => axi_adc_active,
      R => '0'
    );
\mts.axi_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => deci_reset_async,
      Q => axi_reset_1,
      R => '0'
    );
\mts.axi_reset_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_reset_1,
      Q => axi_reset_2,
      R => '0'
    );
\mts.axi_reset_out_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_reset_2,
      Q => axi_reset_out,
      R => '0'
    );
\mts.axi_sim_active_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => sim_active,
      Q => axi_sim_active_1,
      R => '0'
    );
\mts.axi_sim_active_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_sim_active_1,
      Q => axi_sim_active_2,
      R => '0'
    );
\mts.axi_sim_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_sim_active_2,
      Q => axi_sim_active,
      R => '0'
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
\mts.deci_adc_active_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F400"
    )
        port map (
      I0 => deci_adc_stop,
      I1 => \^deci_adc_active\,
      I2 => \FSM_onehot_mts.deci_adc_counter_reg_n_0_[3]\,
      I3 => \^deci_resetn\,
      O => \mts.deci_adc_active_i_1_n_0\
    );
\mts.deci_adc_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => \mts.deci_adc_active_i_1_n_0\,
      Q => \^deci_adc_active\,
      R => '0'
    );
\mts.deci_adc_start_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => adc_axi_start,
      Q => deci_adc_start_1,
      R => '0'
    );
\mts.deci_adc_start_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_adc_start_1,
      Q => deci_adc_start_2,
      R => '0'
    );
\mts.deci_adc_start_curr_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_adc_start_2,
      Q => deci_adc_start_curr,
      R => '0'
    );
\mts.deci_adc_start_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => deci_adc_start_curr,
      I1 => deci_adc_start_prev,
      O => deci_adc_start0
    );
\mts.deci_adc_start_prev_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_adc_start_curr,
      Q => deci_adc_start_prev,
      R => '0'
    );
\mts.deci_adc_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_adc_start0,
      Q => deci_adc_start,
      R => '0'
    );
\mts.deci_adc_stop_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => adc_axi_stop,
      Q => deci_adc_stop_1,
      R => '0'
    );
\mts.deci_adc_stop_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_adc_stop_1,
      Q => deci_adc_stop_2,
      R => '0'
    );
\mts.deci_adc_stop_curr_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_adc_stop_2,
      Q => deci_adc_stop_curr,
      R => '0'
    );
\mts.deci_adc_stop_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => deci_adc_stop_curr,
      I1 => deci_adc_stop_prev,
      O => deci_adc_stop0
    );
\mts.deci_adc_stop_prev_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_adc_stop_curr,
      Q => deci_adc_stop_prev,
      R => '0'
    );
\mts.deci_adc_stop_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_adc_stop0,
      Q => deci_adc_stop,
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
      O => deci_reset_async2_out
    );
\mts.deci_reset_async_reg\: unisim.vcomponents.FDPE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_reset_async2_out,
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
      Q => \^deci_resetn\,
      R => '0'
    );
\mts.deci_sim_start_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => sim_axi_start,
      Q => deci_sim_start_1,
      R => '0'
    );
\mts.deci_sim_start_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_sim_start_1,
      Q => deci_sim_start_2,
      R => '0'
    );
\mts.deci_sim_start_curr_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_sim_start_2,
      Q => deci_sim_start_curr,
      R => '0'
    );
\mts.deci_sim_start_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => deci_sim_start_curr,
      I1 => deci_sim_start_prev,
      O => deci_sim_start0
    );
\mts.deci_sim_start_prev_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_sim_start_curr,
      Q => deci_sim_start_prev,
      R => '0'
    );
\mts.deci_sim_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => deci_sim_start0,
      Q => deci_sim_start,
      R => '0'
    );
\mts.freq0_reset_1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => deci_reset_async,
      I1 => freq_locked,
      O => \mts.freq0_reset_1_reg0\
    );
\mts.freq0_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^freq0_clk\,
      CE => '1',
      D => \mts.freq0_reset_1_reg0\,
      Q => freq0_reset_1,
      R => '0'
    );
\mts.freq0_reset_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^freq0_clk\,
      CE => '1',
      D => freq0_reset_1,
      Q => freq0_reset_2,
      R => '0'
    );
\mts.freq0_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^freq0_clk\,
      CE => '1',
      D => freq0_reset_2,
      Q => freq0_reset,
      R => '0'
    );
\mts.freq1_reset_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^freq1_clk\,
      CE => '1',
      D => \mts.freq0_reset_1_reg0\,
      Q => freq1_reset_1,
      R => '0'
    );
\mts.freq1_reset_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^freq1_clk\,
      CE => '1',
      D => freq1_reset_1,
      Q => freq1_reset_2,
      R => '0'
    );
\mts.freq1_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^freq1_clk\,
      CE => '1',
      D => freq1_reset_2,
      Q => freq1_reset,
      R => '0'
    );
\mts.sim_active_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => deci_sim_active_low,
      I1 => deci_sim_active_high,
      O => \mts.sim_active_reg0\
    );
\mts.sim_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => \mts.sim_active_reg0\,
      Q => sim_active,
      R => '0'
    );
\mts.sim_axi_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => axi_sim_start,
      Q => sim_axi_start,
      R => '0'
    );
\mts.sysref_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => \^deci_resetn\,
      I1 => sysref_active,
      I2 => \^deci_adc_active\,
      O => \mts.sysref_active_i_1_n_0\
    );
\mts.sysref_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^deci_clk\,
      CE => '1',
      D => \mts.sysref_active_i_1_n_0\,
      Q => \mts.sysref_active_reg_n_0\,
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
user_sysref_adc_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mts.sysref_active_reg_n_0\,
      I1 => sysref_sync(2),
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
    axi_clk : in STD_LOGIC;
    axi_reset_out : out STD_LOGIC;
    axi_adc_start : in STD_LOGIC;
    axi_sim_start : in STD_LOGIC;
    axi_adc_stop : in STD_LOGIC;
    axi_adc_active : out STD_LOGIC;
    axi_sim_active : out STD_LOGIC;
    deci_clk : out STD_LOGIC;
    deci_resetn : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    deci_adc_active : out STD_LOGIC;
    deci_sim_start : out STD_LOGIC;
    deci_sim_active_low : in STD_LOGIC;
    deci_sim_active_high : in STD_LOGIC;
    comp0_clk : out STD_LOGIC;
    comp0_reset : out STD_LOGIC;
    comp1_clk : out STD_LOGIC;
    comp1_reset : out STD_LOGIC;
    freq0_clk : out STD_LOGIC;
    freq0_reset : out STD_LOGIC;
    freq1_clk : out STD_LOGIC;
    freq1_reset : out STD_LOGIC
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
  attribute X_INTERFACE_INFO of axi_clk : signal is "xilinx.com:signal:clock:1.0 axi_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of axi_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_clk : signal is "XIL_INTERFACENAME axi_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of comp0_clk : signal is "xilinx.com:signal:clock:1.0 comp0_clk CLK";
  attribute X_INTERFACE_MODE of comp0_clk : signal is "master";
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
  attribute X_INTERFACE_INFO of freq0_clk : signal is "xilinx.com:signal:clock:1.0 freq0_clk CLK";
  attribute X_INTERFACE_MODE of freq0_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of freq0_clk : signal is "XIL_INTERFACENAME freq0_clk, ASSOCIATED_RESET freq0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of freq0_reset : signal is "xilinx.com:signal:reset:1.0 freq0_reset RST";
  attribute X_INTERFACE_MODE of freq0_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of freq0_reset : signal is "XIL_INTERFACENAME freq0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of freq1_clk : signal is "xilinx.com:signal:clock:1.0 freq1_clk CLK";
  attribute X_INTERFACE_MODE of freq1_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of freq1_clk : signal is "XIL_INTERFACENAME freq1_clk, ASSOCIATED_RESET freq1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of freq1_reset : signal is "xilinx.com:signal:reset:1.0 freq1_reset RST";
  attribute X_INTERFACE_MODE of freq1_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of freq1_reset : signal is "XIL_INTERFACENAME freq1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_MODE of pl_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_reset : signal is "xilinx.com:signal:reset:1.0 sys_reset RST";
  attribute X_INTERFACE_MODE of sys_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sys_reset : signal is "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.ps_mts_0_0_mts
     port map (
      axi_adc_active => axi_adc_active,
      axi_adc_start => axi_adc_start,
      axi_adc_stop => axi_adc_stop,
      axi_clk => axi_clk,
      axi_reset_out => axi_reset_out,
      axi_sim_active => axi_sim_active,
      axi_sim_start => axi_sim_start,
      comp0_clk => comp0_clk,
      comp0_reset => comp0_reset,
      comp1_clk => comp1_clk,
      comp1_reset => comp1_reset,
      deci_adc_active => deci_adc_active,
      deci_clk => deci_clk,
      deci_resetn => deci_resetn,
      deci_sim_active_high => deci_sim_active_high,
      deci_sim_active_low => deci_sim_active_low,
      deci_sim_start => deci_sim_start,
      freq0_clk => freq0_clk,
      freq0_reset => freq0_reset,
      freq1_clk => freq1_clk,
      freq1_reset => freq1_reset,
      pl_clk => pl_clk,
      pl_sysref => pl_sysref,
      sys_reset => sys_reset,
      user_sysref_adc => user_sysref_adc
    );
end STRUCTURE;
