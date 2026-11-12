-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Nov 10 20:08:18 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_spi_gain_0_0/ps_spi_gain_0_0_sim_netlist.vhdl
-- Design      : ps_spi_gain_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_spi_gain_0_0_spi_gain is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    axi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_clk : out STD_LOGIC;
    spi_in : in STD_LOGIC;
    spi_out : out STD_LOGIC;
    spi_sel : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_spi_gain_0_0_spi_gain : entity is "spi_gain";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_spi_gain_0_0_spi_gain : entity is "soft";
end ps_spi_gain_0_0_spi_gain;

architecture STRUCTURE of ps_spi_gain_0_0_spi_gain is
  component ps_spi_gain_0_0_ila_2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component ps_spi_gain_0_0_ila_2;
  signal \^axi_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^axi_out\ : signal is std.standard.true;
  signal axi_out0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal busy : STD_LOGIC;
  attribute MARK_DEBUG of busy : signal is std.standard.true;
  signal counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of counter : signal is std.standard.true;
  signal curr_clk : STD_LOGIC;
  attribute MARK_DEBUG of curr_clk : signal is std.standard.true;
  signal curr_clk0 : STD_LOGIC;
  signal curr_clk2_out : STD_LOGIC;
  signal curr_in : STD_LOGIC;
  signal curr_out : STD_LOGIC;
  attribute MARK_DEBUG of curr_out : signal is std.standard.true;
  signal curr_out0_out : STD_LOGIC;
  signal curr_rd : STD_LOGIC;
  attribute MARK_DEBUG of curr_rd : signal is std.standard.true;
  signal curr_rd6_out : STD_LOGIC;
  signal curr_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of curr_sel : signal is std.standard.true;
  signal delay : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of delay : signal is std.standard.true;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal prev_start : STD_LOGIC;
  attribute MARK_DEBUG of prev_start : signal is std.standard.true;
  signal prev_start8_out : STD_LOGIC;
  signal req_adr : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of req_adr : signal is std.standard.true;
  signal req_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of req_data : signal is std.standard.true;
  signal req_read : STD_LOGIC;
  attribute MARK_DEBUG of req_read : signal is std.standard.true;
  signal req_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of req_sel : signal is std.standard.true;
  signal req_start : STD_LOGIC;
  attribute MARK_DEBUG of req_start : signal is std.standard.true;
  signal shift_data : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute MARK_DEBUG of shift_data : signal is std.standard.true;
  signal \^spi_clk\ : STD_LOGIC;
  attribute MARK_DEBUG of spi_clk : signal is std.standard.true;
  signal \spi_gain.axi_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.axi_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_gain.axi_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.axi_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.busy_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.busy_i_2_n_0\ : STD_LOGIC;
  signal \spi_gain.counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_gain.counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \spi_gain.curr_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.curr_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.curr_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_gain.delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.delay[7]_i_3_n_0\ : STD_LOGIC;
  signal \spi_gain.delay[7]_i_4_n_0\ : STD_LOGIC;
  signal \spi_gain.delay[7]_i_5_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.shift_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.spi_clk_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.spi_in_1_reg_n_0\ : STD_LOGIC;
  signal \spi_gain.spi_in_2_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.spi_out_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.spi_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.spi_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.spi_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_gain.start_i_1_n_0\ : STD_LOGIC;
  signal spi_in_1 : STD_LOGIC;
  signal spi_in_2 : STD_LOGIC;
  signal \^spi_out\ : STD_LOGIC;
  attribute MARK_DEBUG of spi_out : signal is std.standard.true;
  signal \^spi_sel\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of \^spi_sel\ : signal is std.standard.true;
  signal start : STD_LOGIC;
  attribute MARK_DEBUG of start : signal is std.standard.true;
  signal toggle_clk : STD_LOGIC;
  attribute MARK_DEBUG of toggle_clk : signal is std.standard.true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_2,ila,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ila_i : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ila_i : label is "ila,Vivado 2025.1";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \spi_gain.axi_out_reg[0]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.axi_out_reg[15]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.axi_out_reg[1]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.axi_out_reg[2]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.axi_out_reg[3]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.axi_out_reg[4]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.axi_out_reg[5]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.axi_out_reg[6]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.axi_out_reg[7]\ : label is "yes";
  attribute KEEP : string;
  attribute KEEP of \spi_gain.busy_reg\ : label is "yes";
  attribute KEEP of \spi_gain.counter_reg[0]\ : label is "yes";
  attribute KEEP of \spi_gain.counter_reg[1]\ : label is "yes";
  attribute KEEP of \spi_gain.counter_reg[2]\ : label is "yes";
  attribute KEEP of \spi_gain.counter_reg[3]\ : label is "yes";
  attribute KEEP of \spi_gain.curr_clk_reg\ : label is "yes";
  attribute KEEP of \spi_gain.curr_out_reg\ : label is "yes";
  attribute KEEP of \spi_gain.curr_rd_reg\ : label is "yes";
  attribute KEEP of \spi_gain.curr_sel_reg[0]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.curr_sel_reg[0]\ : label is "yes";
  attribute KEEP of \spi_gain.curr_sel_reg[1]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.curr_sel_reg[1]\ : label is "yes";
  attribute KEEP of \spi_gain.curr_sel_reg[2]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.curr_sel_reg[2]\ : label is "yes";
  attribute KEEP of \spi_gain.delay_reg[0]\ : label is "yes";
  attribute KEEP of \spi_gain.delay_reg[1]\ : label is "yes";
  attribute KEEP of \spi_gain.delay_reg[2]\ : label is "yes";
  attribute KEEP of \spi_gain.delay_reg[3]\ : label is "yes";
  attribute KEEP of \spi_gain.delay_reg[4]\ : label is "yes";
  attribute KEEP of \spi_gain.delay_reg[5]\ : label is "yes";
  attribute KEEP of \spi_gain.delay_reg[6]\ : label is "yes";
  attribute KEEP of \spi_gain.delay_reg[7]\ : label is "yes";
  attribute KEEP of \spi_gain.prev_start_reg\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[0]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[0]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[10]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[10]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[11]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[11]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[12]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[12]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[13]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[13]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[14]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[14]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[1]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[2]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[3]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[4]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[5]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[6]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[7]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[8]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[8]\ : label is "yes";
  attribute KEEP of \spi_gain.shift_data_reg[9]\ : label is "yes";
  attribute mark_debug_string of \spi_gain.shift_data_reg[9]\ : label is "yes";
  attribute KEEP of \spi_gain.spi_clk_reg\ : label is "yes";
  attribute KEEP of \spi_gain.spi_out_reg\ : label is "yes";
  attribute KEEP of \spi_gain.spi_sel_reg[0]\ : label is "yes";
  attribute KEEP of \spi_gain.spi_sel_reg[1]\ : label is "yes";
  attribute KEEP of \spi_gain.spi_sel_reg[2]\ : label is "yes";
  attribute KEEP of \spi_gain.start_reg\ : label is "yes";
  attribute KEEP of \spi_gain.toggle_clk_reg\ : label is "yes";
begin
  axi_out(15 downto 0) <= \^axi_out\(15 downto 0);
  req_adr(2 downto 0) <= axi_in(10 downto 8);
  req_data(7 downto 0) <= axi_in(7 downto 0);
  req_read <= axi_in(14);
  req_sel(2 downto 0) <= axi_in(13 downto 11);
  req_start <= axi_in(15);
  spi_clk <= \^spi_clk\;
  spi_out <= \^spi_out\;
  spi_sel(2 downto 0) <= \^spi_sel\(2 downto 0);
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^axi_out\(14)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^axi_out\(13)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^axi_out\(12)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^axi_out\(11)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^axi_out\(10)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^axi_out\(9)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^axi_out\(8)
    );
ila_i: component ps_spi_gain_0_0_ila_2
     port map (
      clk => clk,
      probe0(0) => req_start,
      probe1(0) => req_read,
      probe10(0) => curr_out,
      probe11(0) => curr_rd,
      probe12(3 downto 0) => counter(3 downto 0),
      probe13(14 downto 0) => shift_data(14 downto 0),
      probe14(7 downto 0) => delay(7 downto 0),
      probe15(0) => toggle_clk,
      probe16(15) => req_start,
      probe16(14) => req_read,
      probe16(13 downto 11) => req_sel(2 downto 0),
      probe16(10 downto 8) => req_adr(2 downto 0),
      probe16(7 downto 0) => req_data(7 downto 0),
      probe17(15 downto 0) => \^axi_out\(15 downto 0),
      probe18(0) => \^spi_clk\,
      probe19(0) => \^spi_out\,
      probe2(2 downto 0) => req_sel(2 downto 0),
      probe20(2 downto 0) => \^spi_sel\(2 downto 0),
      probe3(2 downto 0) => req_adr(2 downto 0),
      probe4(7 downto 0) => req_data(7 downto 0),
      probe5(0) => prev_start,
      probe6(0) => start,
      probe7(0) => busy,
      probe8(2 downto 0) => curr_sel(2 downto 0),
      probe9(0) => curr_clk
    );
\spi_gain.axi_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAAA8AAA"
    )
        port map (
      I0 => \^axi_out\(0),
      I1 => curr_clk,
      I2 => curr_rd,
      I3 => toggle_clk,
      I4 => curr_in,
      I5 => \spi_gain.axi_out[0]_i_2_n_0\,
      O => \spi_gain.axi_out[0]_i_1_n_0\
    );
\spi_gain.axi_out[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => start,
      I1 => resetn,
      O => \spi_gain.axi_out[0]_i_2_n_0\
    );
\spi_gain.axi_out[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => busy,
      O => \spi_gain.axi_out[15]_i_1_n_0\
    );
\spi_gain.axi_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => \^axi_out\(0),
      O => axi_out0_in(1)
    );
\spi_gain.axi_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => \^axi_out\(1),
      O => axi_out0_in(2)
    );
\spi_gain.axi_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => \^axi_out\(2),
      O => axi_out0_in(3)
    );
\spi_gain.axi_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => \^axi_out\(3),
      O => axi_out0_in(4)
    );
\spi_gain.axi_out[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => \^axi_out\(4),
      O => axi_out0_in(5)
    );
\spi_gain.axi_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => \^axi_out\(5),
      O => axi_out0_in(6)
    );
\spi_gain.axi_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => curr_clk,
      I1 => curr_rd,
      I2 => toggle_clk,
      I3 => resetn,
      O => \spi_gain.axi_out[7]_i_1_n_0\
    );
\spi_gain.axi_out[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => \^axi_out\(6),
      O => axi_out0_in(7)
    );
\spi_gain.axi_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.axi_out[0]_i_1_n_0\,
      Q => \^axi_out\(0),
      R => '0'
    );
\spi_gain.axi_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.axi_out[15]_i_1_n_0\,
      Q => \^axi_out\(15),
      R => '0'
    );
\spi_gain.axi_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spi_gain.axi_out[7]_i_1_n_0\,
      D => axi_out0_in(1),
      Q => \^axi_out\(1),
      R => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.axi_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spi_gain.axi_out[7]_i_1_n_0\,
      D => axi_out0_in(2),
      Q => \^axi_out\(2),
      R => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.axi_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spi_gain.axi_out[7]_i_1_n_0\,
      D => axi_out0_in(3),
      Q => \^axi_out\(3),
      R => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.axi_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spi_gain.axi_out[7]_i_1_n_0\,
      D => axi_out0_in(4),
      Q => \^axi_out\(4),
      R => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.axi_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spi_gain.axi_out[7]_i_1_n_0\,
      D => axi_out0_in(5),
      Q => \^axi_out\(5),
      R => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.axi_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spi_gain.axi_out[7]_i_1_n_0\,
      D => axi_out0_in(6),
      Q => \^axi_out\(6),
      R => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.axi_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spi_gain.axi_out[7]_i_1_n_0\,
      D => axi_out0_in(7),
      Q => \^axi_out\(7),
      R => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.busy_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF0000AAAA0000"
    )
        port map (
      I0 => start,
      I1 => \spi_gain.busy_i_2_n_0\,
      I2 => toggle_clk,
      I3 => curr_clk,
      I4 => resetn,
      I5 => busy,
      O => \spi_gain.busy_i_1_n_0\
    );
\spi_gain.busy_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => counter(2),
      I3 => counter(3),
      O => \spi_gain.busy_i_2_n_0\
    );
\spi_gain.busy_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.busy_i_1_n_0\,
      Q => busy,
      R => '0'
    );
\spi_gain.counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888822222220"
    )
        port map (
      I0 => resetn,
      I1 => \spi_gain.counter[3]_i_3_n_0\,
      I2 => counter(3),
      I3 => counter(2),
      I4 => counter(1),
      I5 => counter(0),
      O => \spi_gain.counter[0]_i_1_n_0\
    );
\spi_gain.counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AA0000A8"
    )
        port map (
      I0 => resetn,
      I1 => counter(3),
      I2 => counter(2),
      I3 => counter(1),
      I4 => \spi_gain.counter[3]_i_3_n_0\,
      I5 => counter(0),
      O => \spi_gain.counter[1]_i_1_n_0\
    );
\spi_gain.counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80002AAA80000"
    )
        port map (
      I0 => resetn,
      I1 => counter(0),
      I2 => \spi_gain.counter[3]_i_3_n_0\,
      I3 => counter(1),
      I4 => counter(2),
      I5 => counter(3),
      O => \spi_gain.counter[2]_i_1_n_0\
    );
\spi_gain.counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => start,
      O => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => counter(0),
      I1 => \spi_gain.counter[3]_i_3_n_0\,
      I2 => counter(1),
      I3 => counter(2),
      I4 => counter(3),
      I5 => resetn,
      O => \spi_gain.counter[3]_i_2_n_0\
    );
\spi_gain.counter[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => curr_clk,
      I1 => toggle_clk,
      O => \spi_gain.counter[3]_i_3_n_0\
    );
\spi_gain.counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.counter[0]_i_1_n_0\,
      Q => counter(0),
      S => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.counter_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.counter[1]_i_1_n_0\,
      Q => counter(1),
      S => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.counter_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.counter[2]_i_1_n_0\,
      Q => counter(2),
      S => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.counter_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.counter[3]_i_2_n_0\,
      Q => counter(3),
      S => \spi_gain.counter[3]_i_1_n_0\
    );
\spi_gain.curr_clk_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => resetn,
      I1 => toggle_clk,
      I2 => start,
      I3 => curr_clk,
      O => curr_clk2_out
    );
\spi_gain.curr_clk_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_clk2_out,
      Q => curr_clk,
      R => '0'
    );
\spi_gain.curr_in_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => spi_in_2,
      Q => curr_in,
      R => \spi_gain.spi_in_2_i_1_n_0\
    );
\spi_gain.curr_out_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080B0B0B0808080"
    )
        port map (
      I0 => req_read,
      I1 => start,
      I2 => resetn,
      I3 => curr_out,
      I4 => \spi_gain.counter[3]_i_3_n_0\,
      I5 => shift_data(14),
      O => curr_out0_out
    );
\spi_gain.curr_out_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_out0_out,
      Q => curr_out,
      R => '0'
    );
\spi_gain.curr_rd_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => req_read,
      I1 => start,
      I2 => resetn,
      I3 => curr_rd,
      O => curr_rd6_out
    );
\spi_gain.curr_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => curr_rd6_out,
      Q => curr_rd,
      R => '0'
    );
\spi_gain.curr_sel[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => req_sel(0),
      I1 => start,
      I2 => curr_sel(0),
      O => \spi_gain.curr_sel[0]_i_1_n_0\
    );
\spi_gain.curr_sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => req_sel(1),
      I1 => start,
      I2 => curr_sel(1),
      O => \spi_gain.curr_sel[1]_i_1_n_0\
    );
\spi_gain.curr_sel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => req_sel(2),
      I1 => start,
      I2 => curr_sel(2),
      O => \spi_gain.curr_sel[2]_i_1_n_0\
    );
\spi_gain.curr_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.curr_sel[0]_i_1_n_0\,
      Q => curr_sel(0),
      R => '0'
    );
\spi_gain.curr_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.curr_sel[1]_i_1_n_0\,
      Q => curr_sel(1),
      R => '0'
    );
\spi_gain.curr_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.curr_sel[2]_i_1_n_0\,
      Q => curr_sel(2),
      R => '0'
    );
\spi_gain.delay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFD0000"
    )
        port map (
      I0 => \spi_gain.delay[7]_i_3_n_0\,
      I1 => delay(3),
      I2 => delay(2),
      I3 => delay(1),
      I4 => resetn,
      I5 => delay(0),
      O => \p_1_in__0\(0)
    );
\spi_gain.delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282828282828082"
    )
        port map (
      I0 => resetn,
      I1 => delay(1),
      I2 => delay(0),
      I3 => \spi_gain.delay[7]_i_3_n_0\,
      I4 => delay(3),
      I5 => delay(2),
      O => \p_1_in__0\(1)
    );
\spi_gain.delay[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88820000"
    )
        port map (
      I0 => resetn,
      I1 => delay(2),
      I2 => delay(0),
      I3 => delay(1),
      I4 => busy,
      O => \p_1_in__0\(2)
    );
\spi_gain.delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC000000004"
    )
        port map (
      I0 => \spi_gain.delay[7]_i_3_n_0\,
      I1 => resetn,
      I2 => delay(2),
      I3 => delay(0),
      I4 => delay(1),
      I5 => delay(3),
      O => \p_1_in__0\(3)
    );
\spi_gain.delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => delay(2),
      I1 => delay(3),
      I2 => delay(0),
      I3 => delay(1),
      I4 => \spi_gain.delay[7]_i_3_n_0\,
      I5 => \spi_gain.axi_out[15]_i_1_n_0\,
      O => \spi_gain.delay[4]_i_1_n_0\
    );
\spi_gain.delay[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000100000000"
    )
        port map (
      I0 => delay(0),
      I1 => delay(1),
      I2 => delay(2),
      I3 => delay(3),
      I4 => delay(4),
      I5 => \spi_gain.axi_out[15]_i_1_n_0\,
      O => \spi_gain.delay[4]_i_2_n_0\
    );
\spi_gain.delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F000F00000E000"
    )
        port map (
      I0 => delay(7),
      I1 => delay(6),
      I2 => resetn,
      I3 => \spi_gain.delay[7]_i_5_n_0\,
      I4 => delay(4),
      I5 => delay(5),
      O => \p_1_in__0\(5)
    );
\spi_gain.delay[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCC0CC00000800"
    )
        port map (
      I0 => delay(7),
      I1 => resetn,
      I2 => delay(4),
      I3 => \spi_gain.delay[7]_i_5_n_0\,
      I4 => delay(5),
      I5 => delay(6),
      O => \p_1_in__0\(6)
    );
\spi_gain.delay[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080008AAAAAAA2"
    )
        port map (
      I0 => resetn,
      I1 => \spi_gain.delay[7]_i_3_n_0\,
      I2 => \spi_gain.delay[7]_i_4_n_0\,
      I3 => delay(1),
      I4 => delay(0),
      I5 => busy,
      O => \spi_gain.delay[7]_i_1_n_0\
    );
\spi_gain.delay[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB000000000000"
    )
        port map (
      I0 => delay(4),
      I1 => \spi_gain.delay[7]_i_5_n_0\,
      I2 => delay(5),
      I3 => delay(6),
      I4 => delay(7),
      I5 => resetn,
      O => \p_1_in__0\(7)
    );
\spi_gain.delay[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => delay(5),
      I1 => delay(6),
      I2 => delay(4),
      I3 => delay(7),
      O => \spi_gain.delay[7]_i_3_n_0\
    );
\spi_gain.delay[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => delay(3),
      I1 => delay(2),
      O => \spi_gain.delay[7]_i_4_n_0\
    );
\spi_gain.delay[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => delay(0),
      I1 => delay(1),
      I2 => delay(2),
      I3 => delay(3),
      O => \spi_gain.delay[7]_i_5_n_0\
    );
\spi_gain.delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(0),
      Q => delay(0),
      R => \spi_gain.delay[7]_i_1_n_0\
    );
\spi_gain.delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => delay(1),
      R => \spi_gain.delay[7]_i_1_n_0\
    );
\spi_gain.delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(2),
      Q => delay(2),
      S => \spi_gain.delay[4]_i_1_n_0\
    );
\spi_gain.delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(3),
      Q => delay(3),
      R => \spi_gain.delay[7]_i_1_n_0\
    );
\spi_gain.delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.delay[4]_i_2_n_0\,
      Q => delay(4),
      S => \spi_gain.delay[4]_i_1_n_0\
    );
\spi_gain.delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(5),
      Q => delay(5),
      R => \spi_gain.delay[7]_i_1_n_0\
    );
\spi_gain.delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(6),
      Q => delay(6),
      R => \spi_gain.delay[7]_i_1_n_0\
    );
\spi_gain.delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(7),
      Q => delay(7),
      R => \spi_gain.delay[7]_i_1_n_0\
    );
\spi_gain.prev_start_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => req_start,
      O => prev_start8_out
    );
\spi_gain.prev_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prev_start8_out,
      Q => prev_start,
      R => '0'
    );
\spi_gain.shift_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC0AAA"
    )
        port map (
      I0 => shift_data(0),
      I1 => req_data(0),
      I2 => curr_clk,
      I3 => toggle_clk,
      I4 => start,
      O => \spi_gain.shift_data[0]_i_1_n_0\
    );
\spi_gain.shift_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_adr(2),
      I1 => start,
      I2 => shift_data(10),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(9),
      O => \spi_gain.shift_data[10]_i_1_n_0\
    );
\spi_gain.shift_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CAAA"
    )
        port map (
      I0 => shift_data(11),
      I1 => shift_data(10),
      I2 => toggle_clk,
      I3 => curr_clk,
      I4 => start,
      O => \spi_gain.shift_data[11]_i_1_n_0\
    );
\spi_gain.shift_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CAAA"
    )
        port map (
      I0 => shift_data(12),
      I1 => shift_data(11),
      I2 => toggle_clk,
      I3 => curr_clk,
      I4 => start,
      O => \spi_gain.shift_data[12]_i_1_n_0\
    );
\spi_gain.shift_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CAAA"
    )
        port map (
      I0 => shift_data(13),
      I1 => shift_data(12),
      I2 => toggle_clk,
      I3 => curr_clk,
      I4 => start,
      O => \spi_gain.shift_data[13]_i_1_n_0\
    );
\spi_gain.shift_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CAAA"
    )
        port map (
      I0 => shift_data(14),
      I1 => shift_data(13),
      I2 => toggle_clk,
      I3 => curr_clk,
      I4 => start,
      O => \spi_gain.shift_data[14]_i_1_n_0\
    );
\spi_gain.shift_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_data(1),
      I1 => start,
      I2 => shift_data(1),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(0),
      O => \spi_gain.shift_data[1]_i_1_n_0\
    );
\spi_gain.shift_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_data(2),
      I1 => start,
      I2 => shift_data(2),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(1),
      O => \spi_gain.shift_data[2]_i_1_n_0\
    );
\spi_gain.shift_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_data(3),
      I1 => start,
      I2 => shift_data(3),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(2),
      O => \spi_gain.shift_data[3]_i_1_n_0\
    );
\spi_gain.shift_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_data(4),
      I1 => start,
      I2 => shift_data(4),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(3),
      O => \spi_gain.shift_data[4]_i_1_n_0\
    );
\spi_gain.shift_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_data(5),
      I1 => start,
      I2 => shift_data(5),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(4),
      O => \spi_gain.shift_data[5]_i_1_n_0\
    );
\spi_gain.shift_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_data(6),
      I1 => start,
      I2 => shift_data(6),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(5),
      O => \spi_gain.shift_data[6]_i_1_n_0\
    );
\spi_gain.shift_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_data(7),
      I1 => start,
      I2 => shift_data(7),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(6),
      O => \spi_gain.shift_data[7]_i_1_n_0\
    );
\spi_gain.shift_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_adr(0),
      I1 => start,
      I2 => shift_data(8),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(7),
      O => \spi_gain.shift_data[8]_i_1_n_0\
    );
\spi_gain.shift_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => req_adr(1),
      I1 => start,
      I2 => shift_data(9),
      I3 => curr_clk,
      I4 => toggle_clk,
      I5 => shift_data(8),
      O => \spi_gain.shift_data[9]_i_1_n_0\
    );
\spi_gain.shift_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[0]_i_1_n_0\,
      Q => shift_data(0),
      R => '0'
    );
\spi_gain.shift_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[10]_i_1_n_0\,
      Q => shift_data(10),
      R => '0'
    );
\spi_gain.shift_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[11]_i_1_n_0\,
      Q => shift_data(11),
      R => '0'
    );
\spi_gain.shift_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[12]_i_1_n_0\,
      Q => shift_data(12),
      R => '0'
    );
\spi_gain.shift_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[13]_i_1_n_0\,
      Q => shift_data(13),
      R => '0'
    );
\spi_gain.shift_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[14]_i_1_n_0\,
      Q => shift_data(14),
      R => '0'
    );
\spi_gain.shift_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[1]_i_1_n_0\,
      Q => shift_data(1),
      R => '0'
    );
\spi_gain.shift_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[2]_i_1_n_0\,
      Q => shift_data(2),
      R => '0'
    );
\spi_gain.shift_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[3]_i_1_n_0\,
      Q => shift_data(3),
      R => '0'
    );
\spi_gain.shift_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[4]_i_1_n_0\,
      Q => shift_data(4),
      R => '0'
    );
\spi_gain.shift_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[5]_i_1_n_0\,
      Q => shift_data(5),
      R => '0'
    );
\spi_gain.shift_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[6]_i_1_n_0\,
      Q => shift_data(6),
      R => '0'
    );
\spi_gain.shift_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[7]_i_1_n_0\,
      Q => shift_data(7),
      R => '0'
    );
\spi_gain.shift_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[8]_i_1_n_0\,
      Q => shift_data(8),
      R => '0'
    );
\spi_gain.shift_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn,
      D => \spi_gain.shift_data[9]_i_1_n_0\,
      Q => shift_data(9),
      R => '0'
    );
\spi_gain.spi_clk_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \spi_gain.spi_clk_i_1_n_0\
    );
\spi_gain.spi_clk_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_clk,
      O => curr_clk0
    );
\spi_gain.spi_clk_reg\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => curr_clk0,
      Q => \^spi_clk\,
      S => \spi_gain.spi_clk_i_1_n_0\
    );
\spi_gain.spi_in_1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => spi_in,
      I1 => curr_rd,
      I2 => resetn,
      O => spi_in_1
    );
\spi_gain.spi_in_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => spi_in_1,
      Q => \spi_gain.spi_in_1_reg_n_0\,
      R => '0'
    );
\spi_gain.spi_in_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => resetn,
      I1 => curr_rd,
      O => \spi_gain.spi_in_2_i_1_n_0\
    );
\spi_gain.spi_in_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.spi_in_1_reg_n_0\,
      Q => spi_in_2,
      R => \spi_gain.spi_in_2_i_1_n_0\
    );
\spi_gain.spi_out_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_out,
      O => \spi_gain.spi_out_i_1_n_0\
    );
\spi_gain.spi_out_reg\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.spi_out_i_1_n_0\,
      Q => \^spi_out\,
      S => \spi_gain.spi_clk_i_1_n_0\
    );
\spi_gain.spi_sel[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => curr_sel(0),
      I1 => busy,
      I2 => resetn,
      O => \spi_gain.spi_sel[0]_i_1_n_0\
    );
\spi_gain.spi_sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => curr_sel(1),
      I1 => busy,
      I2 => resetn,
      O => \spi_gain.spi_sel[1]_i_1_n_0\
    );
\spi_gain.spi_sel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => curr_sel(2),
      I1 => busy,
      I2 => resetn,
      O => \spi_gain.spi_sel[2]_i_1_n_0\
    );
\spi_gain.spi_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.spi_sel[0]_i_1_n_0\,
      Q => \^spi_sel\(0),
      R => '0'
    );
\spi_gain.spi_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.spi_sel[1]_i_1_n_0\,
      Q => \^spi_sel\(1),
      R => '0'
    );
\spi_gain.spi_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.spi_sel[2]_i_1_n_0\,
      Q => \^spi_sel\(2),
      R => '0'
    );
\spi_gain.start_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => prev_start,
      I1 => resetn,
      I2 => req_start,
      O => \spi_gain.start_i_1_n_0\
    );
\spi_gain.start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.start_i_1_n_0\,
      Q => start,
      R => '0'
    );
\spi_gain.toggle_clk_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \spi_gain.delay[4]_i_1_n_0\,
      Q => toggle_clk,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_spi_gain_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    axi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_clk : out STD_LOGIC;
    spi_in : in STD_LOGIC;
    spi_out : out STD_LOGIC;
    spi_sel : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_spi_gain_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_spi_gain_0_0 : entity is "ps_spi_gain_0_0,spi_gain,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_spi_gain_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_spi_gain_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_spi_gain_0_0 : entity is "spi_gain,Vivado 2025.1";
end ps_spi_gain_0_0;

architecture STRUCTURE of ps_spi_gain_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute X_INTERFACE_MODE of spi_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_spi_gain_0_0_spi_clk, INSERT_VIP 0";
begin
inst: entity work.ps_spi_gain_0_0_spi_gain
     port map (
      axi_in(15 downto 0) => axi_in(15 downto 0),
      axi_out(15 downto 0) => axi_out(15 downto 0),
      clk => clk,
      resetn => resetn,
      spi_clk => spi_clk,
      spi_in => spi_in,
      spi_out => spi_out,
      spi_sel(2 downto 0) => spi_sel(2 downto 0)
    );
end STRUCTURE;
