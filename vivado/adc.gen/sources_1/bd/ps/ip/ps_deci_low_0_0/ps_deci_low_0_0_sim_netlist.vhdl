-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Nov 13 23:54:23 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_deci_low_0_0/ps_deci_low_0_0_sim_netlist.vhdl
-- Design      : ps_deci_low_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_deci_low_0_0_deci_low is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    data_N : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ready_N : in STD_LOGIC;
    data_E : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ready_E : in STD_LOGIC;
    data_W : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ready_W : in STD_LOGIC;
    raw_clk : in STD_LOGIC;
    raw_ready : out STD_LOGIC;
    raw_data : out STD_LOGIC_VECTOR ( 195 downto 0 );
    doa_clk : in STD_LOGIC;
    doa_ready : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 69 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_deci_low_0_0_deci_low : entity is "deci_low";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_deci_low_0_0_deci_low : entity is "soft";
end ps_deci_low_0_0_deci_low;

architecture STRUCTURE of ps_deci_low_0_0_deci_low is
  component ps_deci_low_0_0_fifo_doa_low is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 69 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 69 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_deci_low_0_0_fifo_doa_low;
  component ps_deci_low_0_0_fifo_raw_low is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 195 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 195 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_deci_low_0_0_fifo_raw_low;
  component ps_deci_low_0_0_fir_deci_low is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_deci_low_0_0_fir_deci_low;
  component ps_deci_low_0_0_fir_deci_low_HD1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ps_deci_low_0_0_fir_deci_low_HD1;
  component ps_deci_low_0_0_fir_raw_deci is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ps_deci_low_0_0_fir_raw_deci;
  component ps_deci_low_0_0_fir_raw_deci_HD2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ps_deci_low_0_0_fir_raw_deci_HD2;
  component ps_deci_low_0_0_ila_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_deci_low_0_0_ila_0;
  component ps_deci_low_0_0_ila_0_HD3 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component ps_deci_low_0_0_ila_0_HD3;
  signal E0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of E0 : signal is std.standard.true;
  signal E1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E1 : signal is std.standard.true;
  signal E2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E2 : signal is std.standard.true;
  signal E3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E3 : signal is std.standard.true;
  signal E4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E4 : signal is std.standard.true;
  signal E5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E5 : signal is std.standard.true;
  signal E6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E6 : signal is std.standard.true;
  signal E7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E7 : signal is std.standard.true;
  signal N0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N0 : signal is std.standard.true;
  signal N1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N1 : signal is std.standard.true;
  signal N2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N2 : signal is std.standard.true;
  signal N3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N3 : signal is std.standard.true;
  signal N4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N4 : signal is std.standard.true;
  signal N5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N5 : signal is std.standard.true;
  signal N6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N6 : signal is std.standard.true;
  signal N7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N7 : signal is std.standard.true;
  signal W0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W0 : signal is std.standard.true;
  signal W1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W1 : signal is std.standard.true;
  signal W2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W2 : signal is std.standard.true;
  signal W3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W3 : signal is std.standard.true;
  signal W4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W4 : signal is std.standard.true;
  signal W5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W5 : signal is std.standard.true;
  signal W6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W6 : signal is std.standard.true;
  signal W7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W7 : signal is std.standard.true;
  signal active : STD_LOGIC;
  signal active0 : STD_LOGIC;
  signal active_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of active_1 : signal is "true";
  signal active_2 : STD_LOGIC;
  attribute async_reg of active_2 : signal is "true";
  signal clear : STD_LOGIC;
  signal dE : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of dE : signal is std.standard.true;
  signal dN : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of dN : signal is std.standard.true;
  signal dW : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of dW : signal is std.standard.true;
  signal \^data_e\ : STD_LOGIC_VECTOR ( 113 downto 0 );
  signal \^data_n\ : STD_LOGIC_VECTOR ( 113 downto 0 );
  signal \^data_w\ : STD_LOGIC_VECTOR ( 113 downto 0 );
  signal \deci_low.counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.counter_reg\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \deci_low.counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \deci_low.counter_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \deci_low.counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \deci_low.counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \deci_low.counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \deci_low.counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \deci_low.counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \deci_low.counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \deci_low.counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \deci_low.doa_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.doa_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \deci_low.doa_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \deci_low.doa_counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \deci_low.doa_out_active_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.raw_active_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.raw_active_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[11]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[11]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[11]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[11]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[11]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[11]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[8]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[8]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[8]_i_4_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[8]_i_5_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[8]_i_6_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[8]_i_7_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[8]_i_8_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay[8]_i_9_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \deci_low.raw_delay_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.raw_delay_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal doa_active : STD_LOGIC;
  signal doa_active0 : STD_LOGIC;
  signal doa_fifo_empty : STD_LOGIC;
  signal doa_fifo_wr : STD_LOGIC;
  signal doa_in_data : STD_LOGIC_VECTOR ( 69 downto 0 );
  signal doa_out_active : STD_LOGIC;
  signal doa_out_data : STD_LOGIC_VECTOR ( 69 downto 0 );
  signal \^doa_ready\ : STD_LOGIC;
  signal fifo_raw_i_i_1_n_0 : STD_LOGIC;
  signal fir_raw_E : STD_LOGIC_VECTOR ( 126 downto 17 );
  signal fir_raw_N : STD_LOGIC_VECTOR ( 126 downto 17 );
  signal fir_raw_W : STD_LOGIC_VECTOR ( 126 downto 17 );
  signal raw_active : STD_LOGIC;
  signal raw_delay0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal raw_fifo_empty : STD_LOGIC;
  signal raw_fifo_wr : STD_LOGIC;
  signal raw_in_data : STD_LOGIC_VECTOR ( 195 downto 0 );
  signal raw_out_data : STD_LOGIC_VECTOR ( 195 downto 0 );
  signal \^raw_ready\ : STD_LOGIC;
  signal valid_E : STD_LOGIC;
  attribute MARK_DEBUG of valid_E : signal is std.standard.true;
  signal valid_N : STD_LOGIC;
  attribute MARK_DEBUG of valid_N : signal is std.standard.true;
  signal valid_W : STD_LOGIC;
  attribute MARK_DEBUG of valid_W : signal is std.standard.true;
  signal valid_raw_E : STD_LOGIC;
  signal valid_raw_N : STD_LOGIC;
  signal valid_raw_W : STD_LOGIC;
  signal \NLW_deci_low.counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_deci_low.counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_deci_low.doa_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_deci_low.doa_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_deci_low.raw_delay_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_deci_low.raw_delay_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_fifo_doa_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fir_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fir_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fir_deci_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_fir_deci_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_fir_deci_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \deci_low.active_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deci_low.counter_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \deci_low.counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \deci_low.counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \deci_low.counter_reg[8]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \deci_low.doa_counter_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \deci_low.doa_counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \deci_low.doa_counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \deci_low.doa_counter_reg[8]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \deci_low.raw_delay_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.raw_delay_reg[8]_i_1\ : label is 35;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_doa_i : label is "fifo_doa_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_doa_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_doa_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_raw_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
  attribute x_core_info of fifo_raw_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute SOFT_HLUTNM of fifo_raw_i_i_1 : label is "soft_lutpair0";
  attribute CHECK_LICENSE_TYPE of fir_E_i : label is "fir_deci_low,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_E_i : label is "yes";
  attribute x_core_info of fir_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_N_i : label is "fir_deci_low,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_N_i : label is "yes";
  attribute x_core_info of fir_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_W_i : label is "fir_deci_low,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_W_i : label is "yes";
  attribute x_core_info of fir_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_deci_E_i : label is "fir_raw_deci,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_deci_E_i : label is "yes";
  attribute x_core_info of fir_deci_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_deci_N_i : label is "fir_raw_deci,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_deci_N_i : label is "yes";
  attribute x_core_info of fir_deci_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_deci_W_i : label is "fir_raw_deci,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_deci_W_i : label is "yes";
  attribute x_core_info of fir_deci_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_E : label is "ila_0,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_E : label is "yes";
  attribute x_core_info of ila_E : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_N : label is "ila_0,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_N : label is "yes";
  attribute x_core_info of ila_N : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_W : label is "ila_0,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_W : label is "yes";
  attribute x_core_info of ila_W : label is "ila,Vivado 2025.1";
begin
  E0(13 downto 0) <= data_E(15 downto 2);
  E1(13 downto 0) <= data_E(31 downto 18);
  E2(13 downto 0) <= data_E(47 downto 34);
  E3(13 downto 0) <= data_E(63 downto 50);
  E4(13 downto 0) <= data_E(79 downto 66);
  E5(13 downto 0) <= data_E(95 downto 82);
  E6(13 downto 0) <= data_E(111 downto 98);
  E7(13 downto 0) <= data_E(127 downto 114);
  N0(13 downto 0) <= data_N(15 downto 2);
  N1(13 downto 0) <= data_N(31 downto 18);
  N2(13 downto 0) <= data_N(47 downto 34);
  N3(13 downto 0) <= data_N(63 downto 50);
  N4(13 downto 0) <= data_N(79 downto 66);
  N5(13 downto 0) <= data_N(95 downto 82);
  N6(13 downto 0) <= data_N(111 downto 98);
  N7(13 downto 0) <= data_N(127 downto 114);
  W0(13 downto 0) <= data_W(15 downto 2);
  W1(13 downto 0) <= data_W(31 downto 18);
  W2(13 downto 0) <= data_W(47 downto 34);
  W3(13 downto 0) <= data_W(63 downto 50);
  W4(13 downto 0) <= data_W(79 downto 66);
  W5(13 downto 0) <= data_W(95 downto 82);
  W6(13 downto 0) <= data_W(111 downto 98);
  W7(13 downto 0) <= data_W(127 downto 114);
  \^data_e\(113 downto 112) <= data_E(113 downto 112);
  \^data_e\(97 downto 96) <= data_E(97 downto 96);
  \^data_e\(81 downto 80) <= data_E(81 downto 80);
  \^data_e\(65 downto 64) <= data_E(65 downto 64);
  \^data_e\(49 downto 48) <= data_E(49 downto 48);
  \^data_e\(33 downto 32) <= data_E(33 downto 32);
  \^data_e\(17 downto 16) <= data_E(17 downto 16);
  \^data_e\(1 downto 0) <= data_E(1 downto 0);
  \^data_n\(113 downto 112) <= data_N(113 downto 112);
  \^data_n\(97 downto 96) <= data_N(97 downto 96);
  \^data_n\(81 downto 80) <= data_N(81 downto 80);
  \^data_n\(65 downto 64) <= data_N(65 downto 64);
  \^data_n\(49 downto 48) <= data_N(49 downto 48);
  \^data_n\(33 downto 32) <= data_N(33 downto 32);
  \^data_n\(17 downto 16) <= data_N(17 downto 16);
  \^data_n\(1 downto 0) <= data_N(1 downto 0);
  \^data_w\(113 downto 112) <= data_W(113 downto 112);
  \^data_w\(97 downto 96) <= data_W(97 downto 96);
  \^data_w\(81 downto 80) <= data_W(81 downto 80);
  \^data_w\(65 downto 64) <= data_W(65 downto 64);
  \^data_w\(49 downto 48) <= data_W(49 downto 48);
  \^data_w\(33 downto 32) <= data_W(33 downto 32);
  \^data_w\(17 downto 16) <= data_W(17 downto 16);
  \^data_w\(1 downto 0) <= data_W(1 downto 0);
  doa_ready <= \^doa_ready\;
  raw_ready <= \^raw_ready\;
\deci_low.active_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => valid_raw_W,
      I1 => resetn,
      I2 => valid_raw_N,
      I3 => valid_raw_E,
      O => active0
    );
\deci_low.active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active0,
      Q => active,
      R => '0'
    );
\deci_low.counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => active,
      O => clear
    );
\deci_low.counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.counter_reg\(0),
      O => \deci_low.counter[0]_i_3_n_0\
    );
\deci_low.counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[0]_i_2_n_15\,
      Q => \deci_low.counter_reg\(0),
      R => clear
    );
\deci_low.counter_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \deci_low.counter_reg[0]_i_2_n_0\,
      CO(6) => \deci_low.counter_reg[0]_i_2_n_1\,
      CO(5) => \deci_low.counter_reg[0]_i_2_n_2\,
      CO(4) => \deci_low.counter_reg[0]_i_2_n_3\,
      CO(3) => \deci_low.counter_reg[0]_i_2_n_4\,
      CO(2) => \deci_low.counter_reg[0]_i_2_n_5\,
      CO(1) => \deci_low.counter_reg[0]_i_2_n_6\,
      CO(0) => \deci_low.counter_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \deci_low.counter_reg[0]_i_2_n_8\,
      O(6) => \deci_low.counter_reg[0]_i_2_n_9\,
      O(5) => \deci_low.counter_reg[0]_i_2_n_10\,
      O(4) => \deci_low.counter_reg[0]_i_2_n_11\,
      O(3) => \deci_low.counter_reg[0]_i_2_n_12\,
      O(2) => \deci_low.counter_reg[0]_i_2_n_13\,
      O(1) => \deci_low.counter_reg[0]_i_2_n_14\,
      O(0) => \deci_low.counter_reg[0]_i_2_n_15\,
      S(7 downto 1) => \deci_low.counter_reg\(7 downto 1),
      S(0) => \deci_low.counter[0]_i_3_n_0\
    );
\deci_low.counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[8]_i_1_n_13\,
      Q => \deci_low.counter_reg\(10),
      R => clear
    );
\deci_low.counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[8]_i_1_n_12\,
      Q => \deci_low.counter_reg\(11),
      R => clear
    );
\deci_low.counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[8]_i_1_n_11\,
      Q => \deci_low.counter_reg\(12),
      R => clear
    );
\deci_low.counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[8]_i_1_n_10\,
      Q => \deci_low.counter_reg\(13),
      R => clear
    );
\deci_low.counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[8]_i_1_n_9\,
      Q => \deci_low.counter_reg\(14),
      R => clear
    );
\deci_low.counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[8]_i_1_n_8\,
      Q => \deci_low.counter_reg\(15),
      R => clear
    );
\deci_low.counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[16]_i_1_n_15\,
      Q => \deci_low.counter_reg\(16),
      R => clear
    );
\deci_low.counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \deci_low.counter_reg[16]_i_1_n_0\,
      CO(6) => \deci_low.counter_reg[16]_i_1_n_1\,
      CO(5) => \deci_low.counter_reg[16]_i_1_n_2\,
      CO(4) => \deci_low.counter_reg[16]_i_1_n_3\,
      CO(3) => \deci_low.counter_reg[16]_i_1_n_4\,
      CO(2) => \deci_low.counter_reg[16]_i_1_n_5\,
      CO(1) => \deci_low.counter_reg[16]_i_1_n_6\,
      CO(0) => \deci_low.counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \deci_low.counter_reg[16]_i_1_n_8\,
      O(6) => \deci_low.counter_reg[16]_i_1_n_9\,
      O(5) => \deci_low.counter_reg[16]_i_1_n_10\,
      O(4) => \deci_low.counter_reg[16]_i_1_n_11\,
      O(3) => \deci_low.counter_reg[16]_i_1_n_12\,
      O(2) => \deci_low.counter_reg[16]_i_1_n_13\,
      O(1) => \deci_low.counter_reg[16]_i_1_n_14\,
      O(0) => \deci_low.counter_reg[16]_i_1_n_15\,
      S(7 downto 0) => \deci_low.counter_reg\(23 downto 16)
    );
\deci_low.counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[16]_i_1_n_14\,
      Q => \deci_low.counter_reg\(17),
      R => clear
    );
\deci_low.counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[16]_i_1_n_13\,
      Q => \deci_low.counter_reg\(18),
      R => clear
    );
\deci_low.counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[16]_i_1_n_12\,
      Q => \deci_low.counter_reg\(19),
      R => clear
    );
\deci_low.counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[0]_i_2_n_14\,
      Q => \deci_low.counter_reg\(1),
      R => clear
    );
\deci_low.counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[16]_i_1_n_11\,
      Q => \deci_low.counter_reg\(20),
      R => clear
    );
\deci_low.counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[16]_i_1_n_10\,
      Q => \deci_low.counter_reg\(21),
      R => clear
    );
\deci_low.counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[16]_i_1_n_9\,
      Q => \deci_low.counter_reg\(22),
      R => clear
    );
\deci_low.counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[16]_i_1_n_8\,
      Q => \deci_low.counter_reg\(23),
      R => clear
    );
\deci_low.counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[24]_i_1_n_15\,
      Q => \deci_low.counter_reg\(24),
      R => clear
    );
\deci_low.counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_deci_low.counter_reg[24]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \deci_low.counter_reg[24]_i_1_n_5\,
      CO(1) => \deci_low.counter_reg[24]_i_1_n_6\,
      CO(0) => \deci_low.counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_deci_low.counter_reg[24]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \deci_low.counter_reg[24]_i_1_n_12\,
      O(2) => \deci_low.counter_reg[24]_i_1_n_13\,
      O(1) => \deci_low.counter_reg[24]_i_1_n_14\,
      O(0) => \deci_low.counter_reg[24]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => \deci_low.counter_reg\(27 downto 24)
    );
\deci_low.counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[24]_i_1_n_14\,
      Q => \deci_low.counter_reg\(25),
      R => clear
    );
\deci_low.counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[24]_i_1_n_13\,
      Q => \deci_low.counter_reg\(26),
      R => clear
    );
\deci_low.counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[24]_i_1_n_12\,
      Q => \deci_low.counter_reg\(27),
      R => clear
    );
\deci_low.counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[0]_i_2_n_13\,
      Q => \deci_low.counter_reg\(2),
      R => clear
    );
\deci_low.counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[0]_i_2_n_12\,
      Q => \deci_low.counter_reg\(3),
      R => clear
    );
\deci_low.counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[0]_i_2_n_11\,
      Q => \deci_low.counter_reg\(4),
      R => clear
    );
\deci_low.counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[0]_i_2_n_10\,
      Q => \deci_low.counter_reg\(5),
      R => clear
    );
\deci_low.counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[0]_i_2_n_9\,
      Q => \deci_low.counter_reg\(6),
      R => clear
    );
\deci_low.counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[0]_i_2_n_8\,
      Q => \deci_low.counter_reg\(7),
      R => clear
    );
\deci_low.counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[8]_i_1_n_15\,
      Q => \deci_low.counter_reg\(8),
      R => clear
    );
\deci_low.counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.counter_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \deci_low.counter_reg[8]_i_1_n_0\,
      CO(6) => \deci_low.counter_reg[8]_i_1_n_1\,
      CO(5) => \deci_low.counter_reg[8]_i_1_n_2\,
      CO(4) => \deci_low.counter_reg[8]_i_1_n_3\,
      CO(3) => \deci_low.counter_reg[8]_i_1_n_4\,
      CO(2) => \deci_low.counter_reg[8]_i_1_n_5\,
      CO(1) => \deci_low.counter_reg[8]_i_1_n_6\,
      CO(0) => \deci_low.counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \deci_low.counter_reg[8]_i_1_n_8\,
      O(6) => \deci_low.counter_reg[8]_i_1_n_9\,
      O(5) => \deci_low.counter_reg[8]_i_1_n_10\,
      O(4) => \deci_low.counter_reg[8]_i_1_n_11\,
      O(3) => \deci_low.counter_reg[8]_i_1_n_12\,
      O(2) => \deci_low.counter_reg[8]_i_1_n_13\,
      O(1) => \deci_low.counter_reg[8]_i_1_n_14\,
      O(0) => \deci_low.counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => \deci_low.counter_reg\(15 downto 8)
    );
\deci_low.counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.counter_reg[8]_i_1_n_14\,
      Q => \deci_low.counter_reg\(9),
      R => clear
    );
\deci_low.doa_active_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => valid_W,
      I1 => resetn,
      I2 => valid_N,
      I3 => valid_E,
      O => doa_active0
    );
\deci_low.doa_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => doa_active0,
      Q => doa_active,
      R => '0'
    );
\deci_low.doa_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => doa_active,
      O => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.doa_counter_reg\(0),
      O => \deci_low.doa_counter[0]_i_3_n_0\
    );
\deci_low.doa_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[0]_i_2_n_15\,
      Q => \deci_low.doa_counter_reg\(0),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \deci_low.doa_counter_reg[0]_i_2_n_0\,
      CO(6) => \deci_low.doa_counter_reg[0]_i_2_n_1\,
      CO(5) => \deci_low.doa_counter_reg[0]_i_2_n_2\,
      CO(4) => \deci_low.doa_counter_reg[0]_i_2_n_3\,
      CO(3) => \deci_low.doa_counter_reg[0]_i_2_n_4\,
      CO(2) => \deci_low.doa_counter_reg[0]_i_2_n_5\,
      CO(1) => \deci_low.doa_counter_reg[0]_i_2_n_6\,
      CO(0) => \deci_low.doa_counter_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \deci_low.doa_counter_reg[0]_i_2_n_8\,
      O(6) => \deci_low.doa_counter_reg[0]_i_2_n_9\,
      O(5) => \deci_low.doa_counter_reg[0]_i_2_n_10\,
      O(4) => \deci_low.doa_counter_reg[0]_i_2_n_11\,
      O(3) => \deci_low.doa_counter_reg[0]_i_2_n_12\,
      O(2) => \deci_low.doa_counter_reg[0]_i_2_n_13\,
      O(1) => \deci_low.doa_counter_reg[0]_i_2_n_14\,
      O(0) => \deci_low.doa_counter_reg[0]_i_2_n_15\,
      S(7 downto 1) => \deci_low.doa_counter_reg\(7 downto 1),
      S(0) => \deci_low.doa_counter[0]_i_3_n_0\
    );
\deci_low.doa_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[8]_i_1_n_13\,
      Q => \deci_low.doa_counter_reg\(10),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[8]_i_1_n_12\,
      Q => \deci_low.doa_counter_reg\(11),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[8]_i_1_n_11\,
      Q => \deci_low.doa_counter_reg\(12),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[8]_i_1_n_10\,
      Q => \deci_low.doa_counter_reg\(13),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[8]_i_1_n_9\,
      Q => \deci_low.doa_counter_reg\(14),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[8]_i_1_n_8\,
      Q => \deci_low.doa_counter_reg\(15),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[16]_i_1_n_15\,
      Q => \deci_low.doa_counter_reg\(16),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.doa_counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \deci_low.doa_counter_reg[16]_i_1_n_0\,
      CO(6) => \deci_low.doa_counter_reg[16]_i_1_n_1\,
      CO(5) => \deci_low.doa_counter_reg[16]_i_1_n_2\,
      CO(4) => \deci_low.doa_counter_reg[16]_i_1_n_3\,
      CO(3) => \deci_low.doa_counter_reg[16]_i_1_n_4\,
      CO(2) => \deci_low.doa_counter_reg[16]_i_1_n_5\,
      CO(1) => \deci_low.doa_counter_reg[16]_i_1_n_6\,
      CO(0) => \deci_low.doa_counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \deci_low.doa_counter_reg[16]_i_1_n_8\,
      O(6) => \deci_low.doa_counter_reg[16]_i_1_n_9\,
      O(5) => \deci_low.doa_counter_reg[16]_i_1_n_10\,
      O(4) => \deci_low.doa_counter_reg[16]_i_1_n_11\,
      O(3) => \deci_low.doa_counter_reg[16]_i_1_n_12\,
      O(2) => \deci_low.doa_counter_reg[16]_i_1_n_13\,
      O(1) => \deci_low.doa_counter_reg[16]_i_1_n_14\,
      O(0) => \deci_low.doa_counter_reg[16]_i_1_n_15\,
      S(7 downto 0) => \deci_low.doa_counter_reg\(23 downto 16)
    );
\deci_low.doa_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[16]_i_1_n_14\,
      Q => \deci_low.doa_counter_reg\(17),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[16]_i_1_n_13\,
      Q => \deci_low.doa_counter_reg\(18),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[16]_i_1_n_12\,
      Q => \deci_low.doa_counter_reg\(19),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[0]_i_2_n_14\,
      Q => \deci_low.doa_counter_reg\(1),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[16]_i_1_n_11\,
      Q => \deci_low.doa_counter_reg\(20),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[16]_i_1_n_10\,
      Q => \deci_low.doa_counter_reg\(21),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[16]_i_1_n_9\,
      Q => \deci_low.doa_counter_reg\(22),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[16]_i_1_n_8\,
      Q => \deci_low.doa_counter_reg\(23),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[24]_i_1_n_15\,
      Q => \deci_low.doa_counter_reg\(24),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.doa_counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_deci_low.doa_counter_reg[24]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \deci_low.doa_counter_reg[24]_i_1_n_5\,
      CO(1) => \deci_low.doa_counter_reg[24]_i_1_n_6\,
      CO(0) => \deci_low.doa_counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_deci_low.doa_counter_reg[24]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \deci_low.doa_counter_reg[24]_i_1_n_12\,
      O(2) => \deci_low.doa_counter_reg[24]_i_1_n_13\,
      O(1) => \deci_low.doa_counter_reg[24]_i_1_n_14\,
      O(0) => \deci_low.doa_counter_reg[24]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => \deci_low.doa_counter_reg\(27 downto 24)
    );
\deci_low.doa_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[24]_i_1_n_14\,
      Q => \deci_low.doa_counter_reg\(25),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[24]_i_1_n_13\,
      Q => \deci_low.doa_counter_reg\(26),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[24]_i_1_n_12\,
      Q => \deci_low.doa_counter_reg\(27),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[0]_i_2_n_13\,
      Q => \deci_low.doa_counter_reg\(2),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[0]_i_2_n_12\,
      Q => \deci_low.doa_counter_reg\(3),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[0]_i_2_n_11\,
      Q => \deci_low.doa_counter_reg\(4),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[0]_i_2_n_10\,
      Q => \deci_low.doa_counter_reg\(5),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[0]_i_2_n_9\,
      Q => \deci_low.doa_counter_reg\(6),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[0]_i_2_n_8\,
      Q => \deci_low.doa_counter_reg\(7),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[8]_i_1_n_15\,
      Q => \deci_low.doa_counter_reg\(8),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.doa_counter_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \deci_low.doa_counter_reg[8]_i_1_n_0\,
      CO(6) => \deci_low.doa_counter_reg[8]_i_1_n_1\,
      CO(5) => \deci_low.doa_counter_reg[8]_i_1_n_2\,
      CO(4) => \deci_low.doa_counter_reg[8]_i_1_n_3\,
      CO(3) => \deci_low.doa_counter_reg[8]_i_1_n_4\,
      CO(2) => \deci_low.doa_counter_reg[8]_i_1_n_5\,
      CO(1) => \deci_low.doa_counter_reg[8]_i_1_n_6\,
      CO(0) => \deci_low.doa_counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \deci_low.doa_counter_reg[8]_i_1_n_8\,
      O(6) => \deci_low.doa_counter_reg[8]_i_1_n_9\,
      O(5) => \deci_low.doa_counter_reg[8]_i_1_n_10\,
      O(4) => \deci_low.doa_counter_reg[8]_i_1_n_11\,
      O(3) => \deci_low.doa_counter_reg[8]_i_1_n_12\,
      O(2) => \deci_low.doa_counter_reg[8]_i_1_n_13\,
      O(1) => \deci_low.doa_counter_reg[8]_i_1_n_14\,
      O(0) => \deci_low.doa_counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => \deci_low.doa_counter_reg\(15 downto 8)
    );
\deci_low.doa_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_counter_reg[8]_i_1_n_14\,
      Q => \deci_low.doa_counter_reg\(9),
      R => \deci_low.doa_counter[0]_i_1_n_0\
    );
\deci_low.doa_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(0),
      Q => doa_data(0),
      R => '0'
    );
\deci_low.doa_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(10),
      Q => doa_data(10),
      R => '0'
    );
\deci_low.doa_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(11),
      Q => doa_data(11),
      R => '0'
    );
\deci_low.doa_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(12),
      Q => doa_data(12),
      R => '0'
    );
\deci_low.doa_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(13),
      Q => doa_data(13),
      R => '0'
    );
\deci_low.doa_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(14),
      Q => doa_data(14),
      R => '0'
    );
\deci_low.doa_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(15),
      Q => doa_data(15),
      R => '0'
    );
\deci_low.doa_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(16),
      Q => doa_data(16),
      R => '0'
    );
\deci_low.doa_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(17),
      Q => doa_data(17),
      R => '0'
    );
\deci_low.doa_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(18),
      Q => doa_data(18),
      R => '0'
    );
\deci_low.doa_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(19),
      Q => doa_data(19),
      R => '0'
    );
\deci_low.doa_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(1),
      Q => doa_data(1),
      R => '0'
    );
\deci_low.doa_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(20),
      Q => doa_data(20),
      R => '0'
    );
\deci_low.doa_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(21),
      Q => doa_data(21),
      R => '0'
    );
\deci_low.doa_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(22),
      Q => doa_data(22),
      R => '0'
    );
\deci_low.doa_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(23),
      Q => doa_data(23),
      R => '0'
    );
\deci_low.doa_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(24),
      Q => doa_data(24),
      R => '0'
    );
\deci_low.doa_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(25),
      Q => doa_data(25),
      R => '0'
    );
\deci_low.doa_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(26),
      Q => doa_data(26),
      R => '0'
    );
\deci_low.doa_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(27),
      Q => doa_data(27),
      R => '0'
    );
\deci_low.doa_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(28),
      Q => doa_data(28),
      R => '0'
    );
\deci_low.doa_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(29),
      Q => doa_data(29),
      R => '0'
    );
\deci_low.doa_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(2),
      Q => doa_data(2),
      R => '0'
    );
\deci_low.doa_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(30),
      Q => doa_data(30),
      R => '0'
    );
\deci_low.doa_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(31),
      Q => doa_data(31),
      R => '0'
    );
\deci_low.doa_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(32),
      Q => doa_data(32),
      R => '0'
    );
\deci_low.doa_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(33),
      Q => doa_data(33),
      R => '0'
    );
\deci_low.doa_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(34),
      Q => doa_data(34),
      R => '0'
    );
\deci_low.doa_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(35),
      Q => doa_data(35),
      R => '0'
    );
\deci_low.doa_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(36),
      Q => doa_data(36),
      R => '0'
    );
\deci_low.doa_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(37),
      Q => doa_data(37),
      R => '0'
    );
\deci_low.doa_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(38),
      Q => doa_data(38),
      R => '0'
    );
\deci_low.doa_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(39),
      Q => doa_data(39),
      R => '0'
    );
\deci_low.doa_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(3),
      Q => doa_data(3),
      R => '0'
    );
\deci_low.doa_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(40),
      Q => doa_data(40),
      R => '0'
    );
\deci_low.doa_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(41),
      Q => doa_data(41),
      R => '0'
    );
\deci_low.doa_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(42),
      Q => doa_data(42),
      R => '0'
    );
\deci_low.doa_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(43),
      Q => doa_data(43),
      R => '0'
    );
\deci_low.doa_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(44),
      Q => doa_data(44),
      R => '0'
    );
\deci_low.doa_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(45),
      Q => doa_data(45),
      R => '0'
    );
\deci_low.doa_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(46),
      Q => doa_data(46),
      R => '0'
    );
\deci_low.doa_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(47),
      Q => doa_data(47),
      R => '0'
    );
\deci_low.doa_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(48),
      Q => doa_data(48),
      R => '0'
    );
\deci_low.doa_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(49),
      Q => doa_data(49),
      R => '0'
    );
\deci_low.doa_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(4),
      Q => doa_data(4),
      R => '0'
    );
\deci_low.doa_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(50),
      Q => doa_data(50),
      R => '0'
    );
\deci_low.doa_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(51),
      Q => doa_data(51),
      R => '0'
    );
\deci_low.doa_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(52),
      Q => doa_data(52),
      R => '0'
    );
\deci_low.doa_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(53),
      Q => doa_data(53),
      R => '0'
    );
\deci_low.doa_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(54),
      Q => doa_data(54),
      R => '0'
    );
\deci_low.doa_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(55),
      Q => doa_data(55),
      R => '0'
    );
\deci_low.doa_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(56),
      Q => doa_data(56),
      R => '0'
    );
\deci_low.doa_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(57),
      Q => doa_data(57),
      R => '0'
    );
\deci_low.doa_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(58),
      Q => doa_data(58),
      R => '0'
    );
\deci_low.doa_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(59),
      Q => doa_data(59),
      R => '0'
    );
\deci_low.doa_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(5),
      Q => doa_data(5),
      R => '0'
    );
\deci_low.doa_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(60),
      Q => doa_data(60),
      R => '0'
    );
\deci_low.doa_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(61),
      Q => doa_data(61),
      R => '0'
    );
\deci_low.doa_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(62),
      Q => doa_data(62),
      R => '0'
    );
\deci_low.doa_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(63),
      Q => doa_data(63),
      R => '0'
    );
\deci_low.doa_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(64),
      Q => doa_data(64),
      R => '0'
    );
\deci_low.doa_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(65),
      Q => doa_data(65),
      R => '0'
    );
\deci_low.doa_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(66),
      Q => doa_data(66),
      R => '0'
    );
\deci_low.doa_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(67),
      Q => doa_data(67),
      R => '0'
    );
\deci_low.doa_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(68),
      Q => doa_data(68),
      R => '0'
    );
\deci_low.doa_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(69),
      Q => doa_data(69),
      R => '0'
    );
\deci_low.doa_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(6),
      Q => doa_data(6),
      R => '0'
    );
\deci_low.doa_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(7),
      Q => doa_data(7),
      R => '0'
    );
\deci_low.doa_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(8),
      Q => doa_data(8),
      R => '0'
    );
\deci_low.doa_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => doa_out_active,
      D => doa_out_data(9),
      Q => doa_data(9),
      R => '0'
    );
\deci_low.doa_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => doa_active,
      Q => doa_fifo_wr,
      R => '0'
    );
\deci_low.doa_in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(0),
      Q => doa_in_data(0),
      R => '0'
    );
\deci_low.doa_in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(10),
      Q => doa_in_data(10),
      R => '0'
    );
\deci_low.doa_in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(11),
      Q => doa_in_data(11),
      R => '0'
    );
\deci_low.doa_in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(12),
      Q => doa_in_data(12),
      R => '0'
    );
\deci_low.doa_in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(13),
      Q => doa_in_data(13),
      R => '0'
    );
\deci_low.doa_in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(14),
      Q => doa_in_data(14),
      R => '0'
    );
\deci_low.doa_in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(15),
      Q => doa_in_data(15),
      R => '0'
    );
\deci_low.doa_in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(16),
      Q => doa_in_data(16),
      R => '0'
    );
\deci_low.doa_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(17),
      Q => doa_in_data(17),
      R => '0'
    );
\deci_low.doa_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(18),
      Q => doa_in_data(18),
      R => '0'
    );
\deci_low.doa_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(19),
      Q => doa_in_data(19),
      R => '0'
    );
\deci_low.doa_in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(1),
      Q => doa_in_data(1),
      R => '0'
    );
\deci_low.doa_in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(20),
      Q => doa_in_data(20),
      R => '0'
    );
\deci_low.doa_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(21),
      Q => doa_in_data(21),
      R => '0'
    );
\deci_low.doa_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(22),
      Q => doa_in_data(22),
      R => '0'
    );
\deci_low.doa_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(23),
      Q => doa_in_data(23),
      R => '0'
    );
\deci_low.doa_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(24),
      Q => doa_in_data(24),
      R => '0'
    );
\deci_low.doa_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(25),
      Q => doa_in_data(25),
      R => '0'
    );
\deci_low.doa_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(26),
      Q => doa_in_data(26),
      R => '0'
    );
\deci_low.doa_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(27),
      Q => doa_in_data(27),
      R => '0'
    );
\deci_low.doa_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(0),
      Q => doa_in_data(28),
      R => '0'
    );
\deci_low.doa_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(1),
      Q => doa_in_data(29),
      R => '0'
    );
\deci_low.doa_in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(2),
      Q => doa_in_data(2),
      R => '0'
    );
\deci_low.doa_in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(2),
      Q => doa_in_data(30),
      R => '0'
    );
\deci_low.doa_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(3),
      Q => doa_in_data(31),
      R => '0'
    );
\deci_low.doa_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(4),
      Q => doa_in_data(32),
      R => '0'
    );
\deci_low.doa_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(5),
      Q => doa_in_data(33),
      R => '0'
    );
\deci_low.doa_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(6),
      Q => doa_in_data(34),
      R => '0'
    );
\deci_low.doa_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(7),
      Q => doa_in_data(35),
      R => '0'
    );
\deci_low.doa_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(8),
      Q => doa_in_data(36),
      R => '0'
    );
\deci_low.doa_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(9),
      Q => doa_in_data(37),
      R => '0'
    );
\deci_low.doa_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(10),
      Q => doa_in_data(38),
      R => '0'
    );
\deci_low.doa_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(11),
      Q => doa_in_data(39),
      R => '0'
    );
\deci_low.doa_in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(3),
      Q => doa_in_data(3),
      R => '0'
    );
\deci_low.doa_in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(12),
      Q => doa_in_data(40),
      R => '0'
    );
\deci_low.doa_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dN(13),
      Q => doa_in_data(41),
      R => '0'
    );
\deci_low.doa_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(0),
      Q => doa_in_data(42),
      R => '0'
    );
\deci_low.doa_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(1),
      Q => doa_in_data(43),
      R => '0'
    );
\deci_low.doa_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(2),
      Q => doa_in_data(44),
      R => '0'
    );
\deci_low.doa_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(3),
      Q => doa_in_data(45),
      R => '0'
    );
\deci_low.doa_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(4),
      Q => doa_in_data(46),
      R => '0'
    );
\deci_low.doa_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(5),
      Q => doa_in_data(47),
      R => '0'
    );
\deci_low.doa_in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(6),
      Q => doa_in_data(48),
      R => '0'
    );
\deci_low.doa_in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(7),
      Q => doa_in_data(49),
      R => '0'
    );
\deci_low.doa_in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(4),
      Q => doa_in_data(4),
      R => '0'
    );
\deci_low.doa_in_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(8),
      Q => doa_in_data(50),
      R => '0'
    );
\deci_low.doa_in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(9),
      Q => doa_in_data(51),
      R => '0'
    );
\deci_low.doa_in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(10),
      Q => doa_in_data(52),
      R => '0'
    );
\deci_low.doa_in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(11),
      Q => doa_in_data(53),
      R => '0'
    );
\deci_low.doa_in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(12),
      Q => doa_in_data(54),
      R => '0'
    );
\deci_low.doa_in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dE(13),
      Q => doa_in_data(55),
      R => '0'
    );
\deci_low.doa_in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(0),
      Q => doa_in_data(56),
      R => '0'
    );
\deci_low.doa_in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(1),
      Q => doa_in_data(57),
      R => '0'
    );
\deci_low.doa_in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(2),
      Q => doa_in_data(58),
      R => '0'
    );
\deci_low.doa_in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(3),
      Q => doa_in_data(59),
      R => '0'
    );
\deci_low.doa_in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(5),
      Q => doa_in_data(5),
      R => '0'
    );
\deci_low.doa_in_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(4),
      Q => doa_in_data(60),
      R => '0'
    );
\deci_low.doa_in_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(5),
      Q => doa_in_data(61),
      R => '0'
    );
\deci_low.doa_in_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(6),
      Q => doa_in_data(62),
      R => '0'
    );
\deci_low.doa_in_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(7),
      Q => doa_in_data(63),
      R => '0'
    );
\deci_low.doa_in_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(8),
      Q => doa_in_data(64),
      R => '0'
    );
\deci_low.doa_in_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(9),
      Q => doa_in_data(65),
      R => '0'
    );
\deci_low.doa_in_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(10),
      Q => doa_in_data(66),
      R => '0'
    );
\deci_low.doa_in_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(11),
      Q => doa_in_data(67),
      R => '0'
    );
\deci_low.doa_in_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(12),
      Q => doa_in_data(68),
      R => '0'
    );
\deci_low.doa_in_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => dW(13),
      Q => doa_in_data(69),
      R => '0'
    );
\deci_low.doa_in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(6),
      Q => doa_in_data(6),
      R => '0'
    );
\deci_low.doa_in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(7),
      Q => doa_in_data(7),
      R => '0'
    );
\deci_low.doa_in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(8),
      Q => doa_in_data(8),
      R => '0'
    );
\deci_low.doa_in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doa_active,
      D => \deci_low.doa_counter_reg\(9),
      Q => doa_in_data(9),
      R => '0'
    );
\deci_low.doa_out_active_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => doa_fifo_empty,
      O => \deci_low.doa_out_active_i_1_n_0\
    );
\deci_low.doa_out_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => '1',
      D => \deci_low.doa_out_active_i_1_n_0\,
      Q => doa_out_active,
      R => '0'
    );
\deci_low.doa_ready_reg\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => '1',
      D => doa_out_active,
      Q => \^doa_ready\,
      R => '0'
    );
\deci_low.raw_active_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => raw_fifo_empty,
      I1 => \deci_low.raw_delay[11]_i_4_n_0\,
      I2 => \deci_low.raw_delay[11]_i_3_n_0\,
      I3 => \deci_low.raw_active_i_2_n_0\,
      O => \deci_low.raw_active_i_1_n_0\
    );
\deci_low.raw_active_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(1),
      I1 => \deci_low.raw_delay_reg\(0),
      I2 => \deci_low.raw_delay_reg\(3),
      I3 => \deci_low.raw_delay_reg\(2),
      O => \deci_low.raw_active_i_2_n_0\
    );
\deci_low.raw_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_active_i_1_n_0\,
      Q => raw_active,
      R => '0'
    );
\deci_low.raw_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(0),
      Q => raw_data(0),
      R => '0'
    );
\deci_low.raw_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(100),
      Q => raw_data(100),
      R => '0'
    );
\deci_low.raw_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(101),
      Q => raw_data(101),
      R => '0'
    );
\deci_low.raw_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(102),
      Q => raw_data(102),
      R => '0'
    );
\deci_low.raw_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(103),
      Q => raw_data(103),
      R => '0'
    );
\deci_low.raw_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(104),
      Q => raw_data(104),
      R => '0'
    );
\deci_low.raw_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(105),
      Q => raw_data(105),
      R => '0'
    );
\deci_low.raw_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(106),
      Q => raw_data(106),
      R => '0'
    );
\deci_low.raw_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(107),
      Q => raw_data(107),
      R => '0'
    );
\deci_low.raw_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(108),
      Q => raw_data(108),
      R => '0'
    );
\deci_low.raw_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(109),
      Q => raw_data(109),
      R => '0'
    );
\deci_low.raw_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(10),
      Q => raw_data(10),
      R => '0'
    );
\deci_low.raw_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(110),
      Q => raw_data(110),
      R => '0'
    );
\deci_low.raw_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(111),
      Q => raw_data(111),
      R => '0'
    );
\deci_low.raw_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(112),
      Q => raw_data(112),
      R => '0'
    );
\deci_low.raw_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(113),
      Q => raw_data(113),
      R => '0'
    );
\deci_low.raw_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(114),
      Q => raw_data(114),
      R => '0'
    );
\deci_low.raw_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(115),
      Q => raw_data(115),
      R => '0'
    );
\deci_low.raw_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(116),
      Q => raw_data(116),
      R => '0'
    );
\deci_low.raw_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(117),
      Q => raw_data(117),
      R => '0'
    );
\deci_low.raw_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(118),
      Q => raw_data(118),
      R => '0'
    );
\deci_low.raw_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(119),
      Q => raw_data(119),
      R => '0'
    );
\deci_low.raw_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(11),
      Q => raw_data(11),
      R => '0'
    );
\deci_low.raw_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(120),
      Q => raw_data(120),
      R => '0'
    );
\deci_low.raw_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(121),
      Q => raw_data(121),
      R => '0'
    );
\deci_low.raw_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(122),
      Q => raw_data(122),
      R => '0'
    );
\deci_low.raw_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(123),
      Q => raw_data(123),
      R => '0'
    );
\deci_low.raw_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(124),
      Q => raw_data(124),
      R => '0'
    );
\deci_low.raw_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(125),
      Q => raw_data(125),
      R => '0'
    );
\deci_low.raw_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(126),
      Q => raw_data(126),
      R => '0'
    );
\deci_low.raw_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(127),
      Q => raw_data(127),
      R => '0'
    );
\deci_low.raw_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(128),
      Q => raw_data(128),
      R => '0'
    );
\deci_low.raw_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(129),
      Q => raw_data(129),
      R => '0'
    );
\deci_low.raw_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(12),
      Q => raw_data(12),
      R => '0'
    );
\deci_low.raw_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(130),
      Q => raw_data(130),
      R => '0'
    );
\deci_low.raw_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(131),
      Q => raw_data(131),
      R => '0'
    );
\deci_low.raw_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(132),
      Q => raw_data(132),
      R => '0'
    );
\deci_low.raw_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(133),
      Q => raw_data(133),
      R => '0'
    );
\deci_low.raw_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(134),
      Q => raw_data(134),
      R => '0'
    );
\deci_low.raw_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(135),
      Q => raw_data(135),
      R => '0'
    );
\deci_low.raw_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(136),
      Q => raw_data(136),
      R => '0'
    );
\deci_low.raw_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(137),
      Q => raw_data(137),
      R => '0'
    );
\deci_low.raw_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(138),
      Q => raw_data(138),
      R => '0'
    );
\deci_low.raw_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(139),
      Q => raw_data(139),
      R => '0'
    );
\deci_low.raw_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(13),
      Q => raw_data(13),
      R => '0'
    );
\deci_low.raw_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(140),
      Q => raw_data(140),
      R => '0'
    );
\deci_low.raw_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(141),
      Q => raw_data(141),
      R => '0'
    );
\deci_low.raw_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(142),
      Q => raw_data(142),
      R => '0'
    );
\deci_low.raw_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(143),
      Q => raw_data(143),
      R => '0'
    );
\deci_low.raw_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(144),
      Q => raw_data(144),
      R => '0'
    );
\deci_low.raw_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(145),
      Q => raw_data(145),
      R => '0'
    );
\deci_low.raw_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(146),
      Q => raw_data(146),
      R => '0'
    );
\deci_low.raw_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(147),
      Q => raw_data(147),
      R => '0'
    );
\deci_low.raw_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(148),
      Q => raw_data(148),
      R => '0'
    );
\deci_low.raw_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(149),
      Q => raw_data(149),
      R => '0'
    );
\deci_low.raw_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(14),
      Q => raw_data(14),
      R => '0'
    );
\deci_low.raw_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(150),
      Q => raw_data(150),
      R => '0'
    );
\deci_low.raw_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(151),
      Q => raw_data(151),
      R => '0'
    );
\deci_low.raw_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(152),
      Q => raw_data(152),
      R => '0'
    );
\deci_low.raw_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(153),
      Q => raw_data(153),
      R => '0'
    );
\deci_low.raw_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(154),
      Q => raw_data(154),
      R => '0'
    );
\deci_low.raw_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(155),
      Q => raw_data(155),
      R => '0'
    );
\deci_low.raw_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(156),
      Q => raw_data(156),
      R => '0'
    );
\deci_low.raw_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(157),
      Q => raw_data(157),
      R => '0'
    );
\deci_low.raw_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(158),
      Q => raw_data(158),
      R => '0'
    );
\deci_low.raw_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(159),
      Q => raw_data(159),
      R => '0'
    );
\deci_low.raw_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(15),
      Q => raw_data(15),
      R => '0'
    );
\deci_low.raw_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(160),
      Q => raw_data(160),
      R => '0'
    );
\deci_low.raw_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(161),
      Q => raw_data(161),
      R => '0'
    );
\deci_low.raw_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(162),
      Q => raw_data(162),
      R => '0'
    );
\deci_low.raw_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(163),
      Q => raw_data(163),
      R => '0'
    );
\deci_low.raw_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(164),
      Q => raw_data(164),
      R => '0'
    );
\deci_low.raw_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(165),
      Q => raw_data(165),
      R => '0'
    );
\deci_low.raw_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(166),
      Q => raw_data(166),
      R => '0'
    );
\deci_low.raw_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(167),
      Q => raw_data(167),
      R => '0'
    );
\deci_low.raw_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(168),
      Q => raw_data(168),
      R => '0'
    );
\deci_low.raw_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(169),
      Q => raw_data(169),
      R => '0'
    );
\deci_low.raw_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(16),
      Q => raw_data(16),
      R => '0'
    );
\deci_low.raw_data_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(170),
      Q => raw_data(170),
      R => '0'
    );
\deci_low.raw_data_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(171),
      Q => raw_data(171),
      R => '0'
    );
\deci_low.raw_data_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(172),
      Q => raw_data(172),
      R => '0'
    );
\deci_low.raw_data_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(173),
      Q => raw_data(173),
      R => '0'
    );
\deci_low.raw_data_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(174),
      Q => raw_data(174),
      R => '0'
    );
\deci_low.raw_data_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(175),
      Q => raw_data(175),
      R => '0'
    );
\deci_low.raw_data_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(176),
      Q => raw_data(176),
      R => '0'
    );
\deci_low.raw_data_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(177),
      Q => raw_data(177),
      R => '0'
    );
\deci_low.raw_data_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(178),
      Q => raw_data(178),
      R => '0'
    );
\deci_low.raw_data_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(179),
      Q => raw_data(179),
      R => '0'
    );
\deci_low.raw_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(17),
      Q => raw_data(17),
      R => '0'
    );
\deci_low.raw_data_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(180),
      Q => raw_data(180),
      R => '0'
    );
\deci_low.raw_data_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(181),
      Q => raw_data(181),
      R => '0'
    );
\deci_low.raw_data_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(182),
      Q => raw_data(182),
      R => '0'
    );
\deci_low.raw_data_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(183),
      Q => raw_data(183),
      R => '0'
    );
\deci_low.raw_data_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(184),
      Q => raw_data(184),
      R => '0'
    );
\deci_low.raw_data_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(185),
      Q => raw_data(185),
      R => '0'
    );
\deci_low.raw_data_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(186),
      Q => raw_data(186),
      R => '0'
    );
\deci_low.raw_data_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(187),
      Q => raw_data(187),
      R => '0'
    );
\deci_low.raw_data_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(188),
      Q => raw_data(188),
      R => '0'
    );
\deci_low.raw_data_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(189),
      Q => raw_data(189),
      R => '0'
    );
\deci_low.raw_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(18),
      Q => raw_data(18),
      R => '0'
    );
\deci_low.raw_data_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(190),
      Q => raw_data(190),
      R => '0'
    );
\deci_low.raw_data_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(191),
      Q => raw_data(191),
      R => '0'
    );
\deci_low.raw_data_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(192),
      Q => raw_data(192),
      R => '0'
    );
\deci_low.raw_data_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(193),
      Q => raw_data(193),
      R => '0'
    );
\deci_low.raw_data_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(194),
      Q => raw_data(194),
      R => '0'
    );
\deci_low.raw_data_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(195),
      Q => raw_data(195),
      R => '0'
    );
\deci_low.raw_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(19),
      Q => raw_data(19),
      R => '0'
    );
\deci_low.raw_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(1),
      Q => raw_data(1),
      R => '0'
    );
\deci_low.raw_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(20),
      Q => raw_data(20),
      R => '0'
    );
\deci_low.raw_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(21),
      Q => raw_data(21),
      R => '0'
    );
\deci_low.raw_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(22),
      Q => raw_data(22),
      R => '0'
    );
\deci_low.raw_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(23),
      Q => raw_data(23),
      R => '0'
    );
\deci_low.raw_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(24),
      Q => raw_data(24),
      R => '0'
    );
\deci_low.raw_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(25),
      Q => raw_data(25),
      R => '0'
    );
\deci_low.raw_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(26),
      Q => raw_data(26),
      R => '0'
    );
\deci_low.raw_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(27),
      Q => raw_data(27),
      R => '0'
    );
\deci_low.raw_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(28),
      Q => raw_data(28),
      R => '0'
    );
\deci_low.raw_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(29),
      Q => raw_data(29),
      R => '0'
    );
\deci_low.raw_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(2),
      Q => raw_data(2),
      R => '0'
    );
\deci_low.raw_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(30),
      Q => raw_data(30),
      R => '0'
    );
\deci_low.raw_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(31),
      Q => raw_data(31),
      R => '0'
    );
\deci_low.raw_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(32),
      Q => raw_data(32),
      R => '0'
    );
\deci_low.raw_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(33),
      Q => raw_data(33),
      R => '0'
    );
\deci_low.raw_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(34),
      Q => raw_data(34),
      R => '0'
    );
\deci_low.raw_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(35),
      Q => raw_data(35),
      R => '0'
    );
\deci_low.raw_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(36),
      Q => raw_data(36),
      R => '0'
    );
\deci_low.raw_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(37),
      Q => raw_data(37),
      R => '0'
    );
\deci_low.raw_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(38),
      Q => raw_data(38),
      R => '0'
    );
\deci_low.raw_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(39),
      Q => raw_data(39),
      R => '0'
    );
\deci_low.raw_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(3),
      Q => raw_data(3),
      R => '0'
    );
\deci_low.raw_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(40),
      Q => raw_data(40),
      R => '0'
    );
\deci_low.raw_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(41),
      Q => raw_data(41),
      R => '0'
    );
\deci_low.raw_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(42),
      Q => raw_data(42),
      R => '0'
    );
\deci_low.raw_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(43),
      Q => raw_data(43),
      R => '0'
    );
\deci_low.raw_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(44),
      Q => raw_data(44),
      R => '0'
    );
\deci_low.raw_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(45),
      Q => raw_data(45),
      R => '0'
    );
\deci_low.raw_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(46),
      Q => raw_data(46),
      R => '0'
    );
\deci_low.raw_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(47),
      Q => raw_data(47),
      R => '0'
    );
\deci_low.raw_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(48),
      Q => raw_data(48),
      R => '0'
    );
\deci_low.raw_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(49),
      Q => raw_data(49),
      R => '0'
    );
\deci_low.raw_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(4),
      Q => raw_data(4),
      R => '0'
    );
\deci_low.raw_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(50),
      Q => raw_data(50),
      R => '0'
    );
\deci_low.raw_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(51),
      Q => raw_data(51),
      R => '0'
    );
\deci_low.raw_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(52),
      Q => raw_data(52),
      R => '0'
    );
\deci_low.raw_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(53),
      Q => raw_data(53),
      R => '0'
    );
\deci_low.raw_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(54),
      Q => raw_data(54),
      R => '0'
    );
\deci_low.raw_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(55),
      Q => raw_data(55),
      R => '0'
    );
\deci_low.raw_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(56),
      Q => raw_data(56),
      R => '0'
    );
\deci_low.raw_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(57),
      Q => raw_data(57),
      R => '0'
    );
\deci_low.raw_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(58),
      Q => raw_data(58),
      R => '0'
    );
\deci_low.raw_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(59),
      Q => raw_data(59),
      R => '0'
    );
\deci_low.raw_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(5),
      Q => raw_data(5),
      R => '0'
    );
\deci_low.raw_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(60),
      Q => raw_data(60),
      R => '0'
    );
\deci_low.raw_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(61),
      Q => raw_data(61),
      R => '0'
    );
\deci_low.raw_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(62),
      Q => raw_data(62),
      R => '0'
    );
\deci_low.raw_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(63),
      Q => raw_data(63),
      R => '0'
    );
\deci_low.raw_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(64),
      Q => raw_data(64),
      R => '0'
    );
\deci_low.raw_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(65),
      Q => raw_data(65),
      R => '0'
    );
\deci_low.raw_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(66),
      Q => raw_data(66),
      R => '0'
    );
\deci_low.raw_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(67),
      Q => raw_data(67),
      R => '0'
    );
\deci_low.raw_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(68),
      Q => raw_data(68),
      R => '0'
    );
\deci_low.raw_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(69),
      Q => raw_data(69),
      R => '0'
    );
\deci_low.raw_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(6),
      Q => raw_data(6),
      R => '0'
    );
\deci_low.raw_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(70),
      Q => raw_data(70),
      R => '0'
    );
\deci_low.raw_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(71),
      Q => raw_data(71),
      R => '0'
    );
\deci_low.raw_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(72),
      Q => raw_data(72),
      R => '0'
    );
\deci_low.raw_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(73),
      Q => raw_data(73),
      R => '0'
    );
\deci_low.raw_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(74),
      Q => raw_data(74),
      R => '0'
    );
\deci_low.raw_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(75),
      Q => raw_data(75),
      R => '0'
    );
\deci_low.raw_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(76),
      Q => raw_data(76),
      R => '0'
    );
\deci_low.raw_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(77),
      Q => raw_data(77),
      R => '0'
    );
\deci_low.raw_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(78),
      Q => raw_data(78),
      R => '0'
    );
\deci_low.raw_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(79),
      Q => raw_data(79),
      R => '0'
    );
\deci_low.raw_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(7),
      Q => raw_data(7),
      R => '0'
    );
\deci_low.raw_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(80),
      Q => raw_data(80),
      R => '0'
    );
\deci_low.raw_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(81),
      Q => raw_data(81),
      R => '0'
    );
\deci_low.raw_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(82),
      Q => raw_data(82),
      R => '0'
    );
\deci_low.raw_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(83),
      Q => raw_data(83),
      R => '0'
    );
\deci_low.raw_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(84),
      Q => raw_data(84),
      R => '0'
    );
\deci_low.raw_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(85),
      Q => raw_data(85),
      R => '0'
    );
\deci_low.raw_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(86),
      Q => raw_data(86),
      R => '0'
    );
\deci_low.raw_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(87),
      Q => raw_data(87),
      R => '0'
    );
\deci_low.raw_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(88),
      Q => raw_data(88),
      R => '0'
    );
\deci_low.raw_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(89),
      Q => raw_data(89),
      R => '0'
    );
\deci_low.raw_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(8),
      Q => raw_data(8),
      R => '0'
    );
\deci_low.raw_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(90),
      Q => raw_data(90),
      R => '0'
    );
\deci_low.raw_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(91),
      Q => raw_data(91),
      R => '0'
    );
\deci_low.raw_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(92),
      Q => raw_data(92),
      R => '0'
    );
\deci_low.raw_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(93),
      Q => raw_data(93),
      R => '0'
    );
\deci_low.raw_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(94),
      Q => raw_data(94),
      R => '0'
    );
\deci_low.raw_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(95),
      Q => raw_data(95),
      R => '0'
    );
\deci_low.raw_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(96),
      Q => raw_data(96),
      R => '0'
    );
\deci_low.raw_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(97),
      Q => raw_data(97),
      R => '0'
    );
\deci_low.raw_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(98),
      Q => raw_data(98),
      R => '0'
    );
\deci_low.raw_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(99),
      Q => raw_data(99),
      R => '0'
    );
\deci_low.raw_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => raw_active,
      D => raw_out_data(9),
      Q => raw_data(9),
      R => '0'
    );
\deci_low.raw_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(0),
      O => raw_delay0(0)
    );
\deci_low.raw_delay[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(2),
      I1 => \deci_low.raw_delay_reg\(3),
      I2 => \deci_low.raw_delay_reg\(0),
      I3 => \deci_low.raw_delay_reg\(1),
      I4 => \deci_low.raw_delay[11]_i_3_n_0\,
      I5 => \deci_low.raw_delay[11]_i_4_n_0\,
      O => \deci_low.raw_delay[11]_i_1_n_0\
    );
\deci_low.raw_delay[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(9),
      I1 => \deci_low.raw_delay_reg\(8),
      I2 => \deci_low.raw_delay_reg\(11),
      I3 => \deci_low.raw_delay_reg\(10),
      O => \deci_low.raw_delay[11]_i_3_n_0\
    );
\deci_low.raw_delay[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(5),
      I1 => \deci_low.raw_delay_reg\(4),
      I2 => \deci_low.raw_delay_reg\(7),
      I3 => \deci_low.raw_delay_reg\(6),
      O => \deci_low.raw_delay[11]_i_4_n_0\
    );
\deci_low.raw_delay[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(11),
      O => \deci_low.raw_delay[11]_i_5_n_0\
    );
\deci_low.raw_delay[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(10),
      O => \deci_low.raw_delay[11]_i_6_n_0\
    );
\deci_low.raw_delay[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(9),
      O => \deci_low.raw_delay[11]_i_7_n_0\
    );
\deci_low.raw_delay[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(8),
      O => \deci_low.raw_delay[8]_i_2_n_0\
    );
\deci_low.raw_delay[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(7),
      O => \deci_low.raw_delay[8]_i_3_n_0\
    );
\deci_low.raw_delay[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(6),
      O => \deci_low.raw_delay[8]_i_4_n_0\
    );
\deci_low.raw_delay[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(5),
      O => \deci_low.raw_delay[8]_i_5_n_0\
    );
\deci_low.raw_delay[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(4),
      O => \deci_low.raw_delay[8]_i_6_n_0\
    );
\deci_low.raw_delay[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(3),
      O => \deci_low.raw_delay[8]_i_7_n_0\
    );
\deci_low.raw_delay[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(2),
      O => \deci_low.raw_delay[8]_i_8_n_0\
    );
\deci_low.raw_delay[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.raw_delay_reg\(1),
      O => \deci_low.raw_delay[8]_i_9_n_0\
    );
\deci_low.raw_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(0),
      Q => \deci_low.raw_delay_reg\(0),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(10),
      Q => \deci_low.raw_delay_reg\(10),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(11),
      Q => \deci_low.raw_delay_reg\(11),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[11]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.raw_delay_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_deci_low.raw_delay_reg[11]_i_2_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \deci_low.raw_delay_reg[11]_i_2_n_6\,
      CO(0) => \deci_low.raw_delay_reg[11]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => \deci_low.raw_delay_reg\(10 downto 9),
      O(7 downto 3) => \NLW_deci_low.raw_delay_reg[11]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => raw_delay0(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2) => \deci_low.raw_delay[11]_i_5_n_0\,
      S(1) => \deci_low.raw_delay[11]_i_6_n_0\,
      S(0) => \deci_low.raw_delay[11]_i_7_n_0\
    );
\deci_low.raw_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(1),
      Q => \deci_low.raw_delay_reg\(1),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(2),
      Q => \deci_low.raw_delay_reg\(2),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(3),
      Q => \deci_low.raw_delay_reg\(3),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(4),
      Q => \deci_low.raw_delay_reg\(4),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(5),
      Q => \deci_low.raw_delay_reg\(5),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(6),
      Q => \deci_low.raw_delay_reg\(6),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(7),
      Q => \deci_low.raw_delay_reg\(7),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(8),
      Q => \deci_low.raw_delay_reg\(8),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.raw_delay_reg\(0),
      CI_TOP => '0',
      CO(7) => \deci_low.raw_delay_reg[8]_i_1_n_0\,
      CO(6) => \deci_low.raw_delay_reg[8]_i_1_n_1\,
      CO(5) => \deci_low.raw_delay_reg[8]_i_1_n_2\,
      CO(4) => \deci_low.raw_delay_reg[8]_i_1_n_3\,
      CO(3) => \deci_low.raw_delay_reg[8]_i_1_n_4\,
      CO(2) => \deci_low.raw_delay_reg[8]_i_1_n_5\,
      CO(1) => \deci_low.raw_delay_reg[8]_i_1_n_6\,
      CO(0) => \deci_low.raw_delay_reg[8]_i_1_n_7\,
      DI(7 downto 0) => \deci_low.raw_delay_reg\(8 downto 1),
      O(7 downto 0) => raw_delay0(8 downto 1),
      S(7) => \deci_low.raw_delay[8]_i_2_n_0\,
      S(6) => \deci_low.raw_delay[8]_i_3_n_0\,
      S(5) => \deci_low.raw_delay[8]_i_4_n_0\,
      S(4) => \deci_low.raw_delay[8]_i_5_n_0\,
      S(3) => \deci_low.raw_delay[8]_i_6_n_0\,
      S(2) => \deci_low.raw_delay[8]_i_7_n_0\,
      S(1) => \deci_low.raw_delay[8]_i_8_n_0\,
      S(0) => \deci_low.raw_delay[8]_i_9_n_0\
    );
\deci_low.raw_delay_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => raw_delay0(9),
      Q => \deci_low.raw_delay_reg\(9),
      S => raw_fifo_empty
    );
\deci_low.raw_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active,
      Q => raw_fifo_wr,
      R => '0'
    );
\deci_low.raw_in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(0),
      Q => raw_in_data(0),
      R => '0'
    );
\deci_low.raw_in_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(51),
      Q => raw_in_data(100),
      R => '0'
    );
\deci_low.raw_in_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(52),
      Q => raw_in_data(101),
      R => '0'
    );
\deci_low.raw_in_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(53),
      Q => raw_in_data(102),
      R => '0'
    );
\deci_low.raw_in_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(54),
      Q => raw_in_data(103),
      R => '0'
    );
\deci_low.raw_in_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(55),
      Q => raw_in_data(104),
      R => '0'
    );
\deci_low.raw_in_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(56),
      Q => raw_in_data(105),
      R => '0'
    );
\deci_low.raw_in_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(57),
      Q => raw_in_data(106),
      R => '0'
    );
\deci_low.raw_in_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(58),
      Q => raw_in_data(107),
      R => '0'
    );
\deci_low.raw_in_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(59),
      Q => raw_in_data(108),
      R => '0'
    );
\deci_low.raw_in_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(60),
      Q => raw_in_data(109),
      R => '0'
    );
\deci_low.raw_in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(10),
      Q => raw_in_data(10),
      R => '0'
    );
\deci_low.raw_in_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(61),
      Q => raw_in_data(110),
      R => '0'
    );
\deci_low.raw_in_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(62),
      Q => raw_in_data(111),
      R => '0'
    );
\deci_low.raw_in_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(81),
      Q => raw_in_data(112),
      R => '0'
    );
\deci_low.raw_in_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(82),
      Q => raw_in_data(113),
      R => '0'
    );
\deci_low.raw_in_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(83),
      Q => raw_in_data(114),
      R => '0'
    );
\deci_low.raw_in_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(84),
      Q => raw_in_data(115),
      R => '0'
    );
\deci_low.raw_in_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(85),
      Q => raw_in_data(116),
      R => '0'
    );
\deci_low.raw_in_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(86),
      Q => raw_in_data(117),
      R => '0'
    );
\deci_low.raw_in_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(87),
      Q => raw_in_data(118),
      R => '0'
    );
\deci_low.raw_in_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(88),
      Q => raw_in_data(119),
      R => '0'
    );
\deci_low.raw_in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(11),
      Q => raw_in_data(11),
      R => '0'
    );
\deci_low.raw_in_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(89),
      Q => raw_in_data(120),
      R => '0'
    );
\deci_low.raw_in_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(90),
      Q => raw_in_data(121),
      R => '0'
    );
\deci_low.raw_in_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(91),
      Q => raw_in_data(122),
      R => '0'
    );
\deci_low.raw_in_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(92),
      Q => raw_in_data(123),
      R => '0'
    );
\deci_low.raw_in_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(93),
      Q => raw_in_data(124),
      R => '0'
    );
\deci_low.raw_in_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(94),
      Q => raw_in_data(125),
      R => '0'
    );
\deci_low.raw_in_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(113),
      Q => raw_in_data(126),
      R => '0'
    );
\deci_low.raw_in_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(114),
      Q => raw_in_data(127),
      R => '0'
    );
\deci_low.raw_in_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(115),
      Q => raw_in_data(128),
      R => '0'
    );
\deci_low.raw_in_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(116),
      Q => raw_in_data(129),
      R => '0'
    );
\deci_low.raw_in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(12),
      Q => raw_in_data(12),
      R => '0'
    );
\deci_low.raw_in_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(117),
      Q => raw_in_data(130),
      R => '0'
    );
\deci_low.raw_in_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(118),
      Q => raw_in_data(131),
      R => '0'
    );
\deci_low.raw_in_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(119),
      Q => raw_in_data(132),
      R => '0'
    );
\deci_low.raw_in_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(120),
      Q => raw_in_data(133),
      R => '0'
    );
\deci_low.raw_in_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(121),
      Q => raw_in_data(134),
      R => '0'
    );
\deci_low.raw_in_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(122),
      Q => raw_in_data(135),
      R => '0'
    );
\deci_low.raw_in_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(123),
      Q => raw_in_data(136),
      R => '0'
    );
\deci_low.raw_in_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(124),
      Q => raw_in_data(137),
      R => '0'
    );
\deci_low.raw_in_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(125),
      Q => raw_in_data(138),
      R => '0'
    );
\deci_low.raw_in_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(126),
      Q => raw_in_data(139),
      R => '0'
    );
\deci_low.raw_in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(13),
      Q => raw_in_data(13),
      R => '0'
    );
\deci_low.raw_in_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(17),
      Q => raw_in_data(140),
      R => '0'
    );
\deci_low.raw_in_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(18),
      Q => raw_in_data(141),
      R => '0'
    );
\deci_low.raw_in_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(19),
      Q => raw_in_data(142),
      R => '0'
    );
\deci_low.raw_in_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(20),
      Q => raw_in_data(143),
      R => '0'
    );
\deci_low.raw_in_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(21),
      Q => raw_in_data(144),
      R => '0'
    );
\deci_low.raw_in_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(22),
      Q => raw_in_data(145),
      R => '0'
    );
\deci_low.raw_in_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(23),
      Q => raw_in_data(146),
      R => '0'
    );
\deci_low.raw_in_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(24),
      Q => raw_in_data(147),
      R => '0'
    );
\deci_low.raw_in_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(25),
      Q => raw_in_data(148),
      R => '0'
    );
\deci_low.raw_in_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(26),
      Q => raw_in_data(149),
      R => '0'
    );
\deci_low.raw_in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(14),
      Q => raw_in_data(14),
      R => '0'
    );
\deci_low.raw_in_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(27),
      Q => raw_in_data(150),
      R => '0'
    );
\deci_low.raw_in_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(28),
      Q => raw_in_data(151),
      R => '0'
    );
\deci_low.raw_in_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(29),
      Q => raw_in_data(152),
      R => '0'
    );
\deci_low.raw_in_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(30),
      Q => raw_in_data(153),
      R => '0'
    );
\deci_low.raw_in_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(49),
      Q => raw_in_data(154),
      R => '0'
    );
\deci_low.raw_in_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(50),
      Q => raw_in_data(155),
      R => '0'
    );
\deci_low.raw_in_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(51),
      Q => raw_in_data(156),
      R => '0'
    );
\deci_low.raw_in_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(52),
      Q => raw_in_data(157),
      R => '0'
    );
\deci_low.raw_in_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(53),
      Q => raw_in_data(158),
      R => '0'
    );
\deci_low.raw_in_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(54),
      Q => raw_in_data(159),
      R => '0'
    );
\deci_low.raw_in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(15),
      Q => raw_in_data(15),
      R => '0'
    );
\deci_low.raw_in_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(55),
      Q => raw_in_data(160),
      R => '0'
    );
\deci_low.raw_in_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(56),
      Q => raw_in_data(161),
      R => '0'
    );
\deci_low.raw_in_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(57),
      Q => raw_in_data(162),
      R => '0'
    );
\deci_low.raw_in_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(58),
      Q => raw_in_data(163),
      R => '0'
    );
\deci_low.raw_in_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(59),
      Q => raw_in_data(164),
      R => '0'
    );
\deci_low.raw_in_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(60),
      Q => raw_in_data(165),
      R => '0'
    );
\deci_low.raw_in_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(61),
      Q => raw_in_data(166),
      R => '0'
    );
\deci_low.raw_in_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(62),
      Q => raw_in_data(167),
      R => '0'
    );
\deci_low.raw_in_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(81),
      Q => raw_in_data(168),
      R => '0'
    );
\deci_low.raw_in_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(82),
      Q => raw_in_data(169),
      R => '0'
    );
\deci_low.raw_in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(16),
      Q => raw_in_data(16),
      R => '0'
    );
\deci_low.raw_in_data_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(83),
      Q => raw_in_data(170),
      R => '0'
    );
\deci_low.raw_in_data_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(84),
      Q => raw_in_data(171),
      R => '0'
    );
\deci_low.raw_in_data_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(85),
      Q => raw_in_data(172),
      R => '0'
    );
\deci_low.raw_in_data_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(86),
      Q => raw_in_data(173),
      R => '0'
    );
\deci_low.raw_in_data_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(87),
      Q => raw_in_data(174),
      R => '0'
    );
\deci_low.raw_in_data_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(88),
      Q => raw_in_data(175),
      R => '0'
    );
\deci_low.raw_in_data_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(89),
      Q => raw_in_data(176),
      R => '0'
    );
\deci_low.raw_in_data_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(90),
      Q => raw_in_data(177),
      R => '0'
    );
\deci_low.raw_in_data_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(91),
      Q => raw_in_data(178),
      R => '0'
    );
\deci_low.raw_in_data_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(92),
      Q => raw_in_data(179),
      R => '0'
    );
\deci_low.raw_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(17),
      Q => raw_in_data(17),
      R => '0'
    );
\deci_low.raw_in_data_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(93),
      Q => raw_in_data(180),
      R => '0'
    );
\deci_low.raw_in_data_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(94),
      Q => raw_in_data(181),
      R => '0'
    );
\deci_low.raw_in_data_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(113),
      Q => raw_in_data(182),
      R => '0'
    );
\deci_low.raw_in_data_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(114),
      Q => raw_in_data(183),
      R => '0'
    );
\deci_low.raw_in_data_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(115),
      Q => raw_in_data(184),
      R => '0'
    );
\deci_low.raw_in_data_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(116),
      Q => raw_in_data(185),
      R => '0'
    );
\deci_low.raw_in_data_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(117),
      Q => raw_in_data(186),
      R => '0'
    );
\deci_low.raw_in_data_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(118),
      Q => raw_in_data(187),
      R => '0'
    );
\deci_low.raw_in_data_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(119),
      Q => raw_in_data(188),
      R => '0'
    );
\deci_low.raw_in_data_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(120),
      Q => raw_in_data(189),
      R => '0'
    );
\deci_low.raw_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(18),
      Q => raw_in_data(18),
      R => '0'
    );
\deci_low.raw_in_data_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(121),
      Q => raw_in_data(190),
      R => '0'
    );
\deci_low.raw_in_data_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(122),
      Q => raw_in_data(191),
      R => '0'
    );
\deci_low.raw_in_data_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(123),
      Q => raw_in_data(192),
      R => '0'
    );
\deci_low.raw_in_data_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(124),
      Q => raw_in_data(193),
      R => '0'
    );
\deci_low.raw_in_data_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(125),
      Q => raw_in_data(194),
      R => '0'
    );
\deci_low.raw_in_data_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_W(126),
      Q => raw_in_data(195),
      R => '0'
    );
\deci_low.raw_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(19),
      Q => raw_in_data(19),
      R => '0'
    );
\deci_low.raw_in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(1),
      Q => raw_in_data(1),
      R => '0'
    );
\deci_low.raw_in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(20),
      Q => raw_in_data(20),
      R => '0'
    );
\deci_low.raw_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(21),
      Q => raw_in_data(21),
      R => '0'
    );
\deci_low.raw_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(22),
      Q => raw_in_data(22),
      R => '0'
    );
\deci_low.raw_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(23),
      Q => raw_in_data(23),
      R => '0'
    );
\deci_low.raw_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(24),
      Q => raw_in_data(24),
      R => '0'
    );
\deci_low.raw_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(25),
      Q => raw_in_data(25),
      R => '0'
    );
\deci_low.raw_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(26),
      Q => raw_in_data(26),
      R => '0'
    );
\deci_low.raw_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(27),
      Q => raw_in_data(27),
      R => '0'
    );
\deci_low.raw_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(17),
      Q => raw_in_data(28),
      R => '0'
    );
\deci_low.raw_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(18),
      Q => raw_in_data(29),
      R => '0'
    );
\deci_low.raw_in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(2),
      Q => raw_in_data(2),
      R => '0'
    );
\deci_low.raw_in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(19),
      Q => raw_in_data(30),
      R => '0'
    );
\deci_low.raw_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(20),
      Q => raw_in_data(31),
      R => '0'
    );
\deci_low.raw_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(21),
      Q => raw_in_data(32),
      R => '0'
    );
\deci_low.raw_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(22),
      Q => raw_in_data(33),
      R => '0'
    );
\deci_low.raw_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(23),
      Q => raw_in_data(34),
      R => '0'
    );
\deci_low.raw_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(24),
      Q => raw_in_data(35),
      R => '0'
    );
\deci_low.raw_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(25),
      Q => raw_in_data(36),
      R => '0'
    );
\deci_low.raw_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(26),
      Q => raw_in_data(37),
      R => '0'
    );
\deci_low.raw_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(27),
      Q => raw_in_data(38),
      R => '0'
    );
\deci_low.raw_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(28),
      Q => raw_in_data(39),
      R => '0'
    );
\deci_low.raw_in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(3),
      Q => raw_in_data(3),
      R => '0'
    );
\deci_low.raw_in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(29),
      Q => raw_in_data(40),
      R => '0'
    );
\deci_low.raw_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(30),
      Q => raw_in_data(41),
      R => '0'
    );
\deci_low.raw_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(49),
      Q => raw_in_data(42),
      R => '0'
    );
\deci_low.raw_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(50),
      Q => raw_in_data(43),
      R => '0'
    );
\deci_low.raw_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(51),
      Q => raw_in_data(44),
      R => '0'
    );
\deci_low.raw_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(52),
      Q => raw_in_data(45),
      R => '0'
    );
\deci_low.raw_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(53),
      Q => raw_in_data(46),
      R => '0'
    );
\deci_low.raw_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(54),
      Q => raw_in_data(47),
      R => '0'
    );
\deci_low.raw_in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(55),
      Q => raw_in_data(48),
      R => '0'
    );
\deci_low.raw_in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(56),
      Q => raw_in_data(49),
      R => '0'
    );
\deci_low.raw_in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(4),
      Q => raw_in_data(4),
      R => '0'
    );
\deci_low.raw_in_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(57),
      Q => raw_in_data(50),
      R => '0'
    );
\deci_low.raw_in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(58),
      Q => raw_in_data(51),
      R => '0'
    );
\deci_low.raw_in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(59),
      Q => raw_in_data(52),
      R => '0'
    );
\deci_low.raw_in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(60),
      Q => raw_in_data(53),
      R => '0'
    );
\deci_low.raw_in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(61),
      Q => raw_in_data(54),
      R => '0'
    );
\deci_low.raw_in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(62),
      Q => raw_in_data(55),
      R => '0'
    );
\deci_low.raw_in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(81),
      Q => raw_in_data(56),
      R => '0'
    );
\deci_low.raw_in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(82),
      Q => raw_in_data(57),
      R => '0'
    );
\deci_low.raw_in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(83),
      Q => raw_in_data(58),
      R => '0'
    );
\deci_low.raw_in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(84),
      Q => raw_in_data(59),
      R => '0'
    );
\deci_low.raw_in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(5),
      Q => raw_in_data(5),
      R => '0'
    );
\deci_low.raw_in_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(85),
      Q => raw_in_data(60),
      R => '0'
    );
\deci_low.raw_in_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(86),
      Q => raw_in_data(61),
      R => '0'
    );
\deci_low.raw_in_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(87),
      Q => raw_in_data(62),
      R => '0'
    );
\deci_low.raw_in_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(88),
      Q => raw_in_data(63),
      R => '0'
    );
\deci_low.raw_in_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(89),
      Q => raw_in_data(64),
      R => '0'
    );
\deci_low.raw_in_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(90),
      Q => raw_in_data(65),
      R => '0'
    );
\deci_low.raw_in_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(91),
      Q => raw_in_data(66),
      R => '0'
    );
\deci_low.raw_in_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(92),
      Q => raw_in_data(67),
      R => '0'
    );
\deci_low.raw_in_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(93),
      Q => raw_in_data(68),
      R => '0'
    );
\deci_low.raw_in_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(94),
      Q => raw_in_data(69),
      R => '0'
    );
\deci_low.raw_in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(6),
      Q => raw_in_data(6),
      R => '0'
    );
\deci_low.raw_in_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(113),
      Q => raw_in_data(70),
      R => '0'
    );
\deci_low.raw_in_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(114),
      Q => raw_in_data(71),
      R => '0'
    );
\deci_low.raw_in_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(115),
      Q => raw_in_data(72),
      R => '0'
    );
\deci_low.raw_in_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(116),
      Q => raw_in_data(73),
      R => '0'
    );
\deci_low.raw_in_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(117),
      Q => raw_in_data(74),
      R => '0'
    );
\deci_low.raw_in_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(118),
      Q => raw_in_data(75),
      R => '0'
    );
\deci_low.raw_in_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(119),
      Q => raw_in_data(76),
      R => '0'
    );
\deci_low.raw_in_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(120),
      Q => raw_in_data(77),
      R => '0'
    );
\deci_low.raw_in_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(121),
      Q => raw_in_data(78),
      R => '0'
    );
\deci_low.raw_in_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(122),
      Q => raw_in_data(79),
      R => '0'
    );
\deci_low.raw_in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(7),
      Q => raw_in_data(7),
      R => '0'
    );
\deci_low.raw_in_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(123),
      Q => raw_in_data(80),
      R => '0'
    );
\deci_low.raw_in_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(124),
      Q => raw_in_data(81),
      R => '0'
    );
\deci_low.raw_in_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(125),
      Q => raw_in_data(82),
      R => '0'
    );
\deci_low.raw_in_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_N(126),
      Q => raw_in_data(83),
      R => '0'
    );
\deci_low.raw_in_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(17),
      Q => raw_in_data(84),
      R => '0'
    );
\deci_low.raw_in_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(18),
      Q => raw_in_data(85),
      R => '0'
    );
\deci_low.raw_in_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(19),
      Q => raw_in_data(86),
      R => '0'
    );
\deci_low.raw_in_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(20),
      Q => raw_in_data(87),
      R => '0'
    );
\deci_low.raw_in_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(21),
      Q => raw_in_data(88),
      R => '0'
    );
\deci_low.raw_in_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(22),
      Q => raw_in_data(89),
      R => '0'
    );
\deci_low.raw_in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(8),
      Q => raw_in_data(8),
      R => '0'
    );
\deci_low.raw_in_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(23),
      Q => raw_in_data(90),
      R => '0'
    );
\deci_low.raw_in_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(24),
      Q => raw_in_data(91),
      R => '0'
    );
\deci_low.raw_in_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(25),
      Q => raw_in_data(92),
      R => '0'
    );
\deci_low.raw_in_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(26),
      Q => raw_in_data(93),
      R => '0'
    );
\deci_low.raw_in_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(27),
      Q => raw_in_data(94),
      R => '0'
    );
\deci_low.raw_in_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(28),
      Q => raw_in_data(95),
      R => '0'
    );
\deci_low.raw_in_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(29),
      Q => raw_in_data(96),
      R => '0'
    );
\deci_low.raw_in_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(30),
      Q => raw_in_data(97),
      R => '0'
    );
\deci_low.raw_in_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(49),
      Q => raw_in_data(98),
      R => '0'
    );
\deci_low.raw_in_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fir_raw_E(50),
      Q => raw_in_data(99),
      R => '0'
    );
\deci_low.raw_in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \deci_low.counter_reg\(9),
      Q => raw_in_data(9),
      R => '0'
    );
\deci_low.raw_ready_reg\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => raw_active,
      Q => \^raw_ready\,
      R => '0'
    );
fifo_doa_i: component ps_deci_low_0_0_fifo_doa_low
     port map (
      din(69 downto 0) => doa_in_data(69 downto 0),
      dout(69 downto 0) => doa_out_data(69 downto 0),
      empty => doa_fifo_empty,
      full => NLW_fifo_doa_i_full_UNCONNECTED,
      rd_clk => doa_clk,
      rd_en => \^doa_ready\,
      rd_rst_busy => NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED,
      rst => fifo_raw_i_i_1_n_0,
      wr_clk => clk,
      wr_en => doa_fifo_wr,
      wr_rst_busy => NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED
    );
fifo_raw_i: component ps_deci_low_0_0_fifo_raw_low
     port map (
      din(195 downto 0) => raw_in_data(195 downto 0),
      dout(195 downto 0) => raw_out_data(195 downto 0),
      empty => raw_fifo_empty,
      full => NLW_fifo_raw_i_full_UNCONNECTED,
      rd_clk => raw_clk,
      rd_en => \^raw_ready\,
      rd_rst_busy => NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED,
      rst => fifo_raw_i_i_1_n_0,
      wr_clk => clk,
      wr_en => raw_fifo_wr,
      wr_rst_busy => NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED
    );
fifo_raw_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => fifo_raw_i_i_1_n_0
    );
fir_E_i: component ps_deci_low_0_0_fir_deci_low
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(31) => NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 17) => dE(13 downto 0),
      m_axis_data_tdata(16 downto 0) => NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_E,
      s_axis_data_tdata(127 downto 114) => E7(13 downto 0),
      s_axis_data_tdata(113 downto 112) => \^data_e\(113 downto 112),
      s_axis_data_tdata(111 downto 98) => E6(13 downto 0),
      s_axis_data_tdata(97 downto 96) => \^data_e\(97 downto 96),
      s_axis_data_tdata(95 downto 82) => E5(13 downto 0),
      s_axis_data_tdata(81 downto 80) => \^data_e\(81 downto 80),
      s_axis_data_tdata(79 downto 66) => E4(13 downto 0),
      s_axis_data_tdata(65 downto 64) => \^data_e\(65 downto 64),
      s_axis_data_tdata(63 downto 50) => E3(13 downto 0),
      s_axis_data_tdata(49 downto 48) => \^data_e\(49 downto 48),
      s_axis_data_tdata(47 downto 34) => E2(13 downto 0),
      s_axis_data_tdata(33 downto 32) => \^data_e\(33 downto 32),
      s_axis_data_tdata(31 downto 18) => E1(13 downto 0),
      s_axis_data_tdata(17 downto 16) => \^data_e\(17 downto 16),
      s_axis_data_tdata(15 downto 2) => E0(13 downto 0),
      s_axis_data_tdata(1 downto 0) => \^data_e\(1 downto 0),
      s_axis_data_tready => NLW_fir_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => ready_E
    );
fir_N_i: component ps_deci_low_0_0_fir_deci_low
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(31) => NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 17) => dN(13 downto 0),
      m_axis_data_tdata(16 downto 0) => NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_N,
      s_axis_data_tdata(127 downto 114) => N7(13 downto 0),
      s_axis_data_tdata(113 downto 112) => \^data_n\(113 downto 112),
      s_axis_data_tdata(111 downto 98) => N6(13 downto 0),
      s_axis_data_tdata(97 downto 96) => \^data_n\(97 downto 96),
      s_axis_data_tdata(95 downto 82) => N5(13 downto 0),
      s_axis_data_tdata(81 downto 80) => \^data_n\(81 downto 80),
      s_axis_data_tdata(79 downto 66) => N4(13 downto 0),
      s_axis_data_tdata(65 downto 64) => \^data_n\(65 downto 64),
      s_axis_data_tdata(63 downto 50) => N3(13 downto 0),
      s_axis_data_tdata(49 downto 48) => \^data_n\(49 downto 48),
      s_axis_data_tdata(47 downto 34) => N2(13 downto 0),
      s_axis_data_tdata(33 downto 32) => \^data_n\(33 downto 32),
      s_axis_data_tdata(31 downto 18) => N1(13 downto 0),
      s_axis_data_tdata(17 downto 16) => \^data_n\(17 downto 16),
      s_axis_data_tdata(15 downto 2) => N0(13 downto 0),
      s_axis_data_tdata(1 downto 0) => \^data_n\(1 downto 0),
      s_axis_data_tready => NLW_fir_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => ready_N
    );
fir_W_i: component ps_deci_low_0_0_fir_deci_low_HD1
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(31) => NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 17) => dW(13 downto 0),
      m_axis_data_tdata(16 downto 0) => NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_W,
      s_axis_data_tdata(127 downto 114) => W7(13 downto 0),
      s_axis_data_tdata(113 downto 112) => \^data_w\(113 downto 112),
      s_axis_data_tdata(111 downto 98) => W6(13 downto 0),
      s_axis_data_tdata(97 downto 96) => \^data_w\(97 downto 96),
      s_axis_data_tdata(95 downto 82) => W5(13 downto 0),
      s_axis_data_tdata(81 downto 80) => \^data_w\(81 downto 80),
      s_axis_data_tdata(79 downto 66) => W4(13 downto 0),
      s_axis_data_tdata(65 downto 64) => \^data_w\(65 downto 64),
      s_axis_data_tdata(63 downto 50) => W3(13 downto 0),
      s_axis_data_tdata(49 downto 48) => \^data_w\(49 downto 48),
      s_axis_data_tdata(47 downto 34) => W2(13 downto 0),
      s_axis_data_tdata(33 downto 32) => \^data_w\(33 downto 32),
      s_axis_data_tdata(31 downto 18) => W1(13 downto 0),
      s_axis_data_tdata(17 downto 16) => \^data_w\(17 downto 16),
      s_axis_data_tdata(15 downto 2) => W0(13 downto 0),
      s_axis_data_tdata(1 downto 0) => \^data_w\(1 downto 0),
      s_axis_data_tready => NLW_fir_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => ready_W
    );
fir_deci_E_i: component ps_deci_low_0_0_fir_raw_deci
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(127) => NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED(127),
      m_axis_data_tdata(126 downto 113) => fir_raw_E(126 downto 113),
      m_axis_data_tdata(112 downto 95) => NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED(112 downto 95),
      m_axis_data_tdata(94 downto 81) => fir_raw_E(94 downto 81),
      m_axis_data_tdata(80 downto 63) => NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED(80 downto 63),
      m_axis_data_tdata(62 downto 49) => fir_raw_E(62 downto 49),
      m_axis_data_tdata(48 downto 31) => NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED(48 downto 31),
      m_axis_data_tdata(30 downto 17) => fir_raw_E(30 downto 17),
      m_axis_data_tdata(16 downto 0) => NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_raw_E,
      s_axis_data_tdata(127 downto 114) => E7(13 downto 0),
      s_axis_data_tdata(113 downto 112) => \^data_e\(113 downto 112),
      s_axis_data_tdata(111 downto 98) => E6(13 downto 0),
      s_axis_data_tdata(97 downto 96) => \^data_e\(97 downto 96),
      s_axis_data_tdata(95 downto 82) => E5(13 downto 0),
      s_axis_data_tdata(81 downto 80) => \^data_e\(81 downto 80),
      s_axis_data_tdata(79 downto 66) => E4(13 downto 0),
      s_axis_data_tdata(65 downto 64) => \^data_e\(65 downto 64),
      s_axis_data_tdata(63 downto 50) => E3(13 downto 0),
      s_axis_data_tdata(49 downto 48) => \^data_e\(49 downto 48),
      s_axis_data_tdata(47 downto 34) => E2(13 downto 0),
      s_axis_data_tdata(33 downto 32) => \^data_e\(33 downto 32),
      s_axis_data_tdata(31 downto 18) => E1(13 downto 0),
      s_axis_data_tdata(17 downto 16) => \^data_e\(17 downto 16),
      s_axis_data_tdata(15 downto 2) => E0(13 downto 0),
      s_axis_data_tdata(1 downto 0) => \^data_e\(1 downto 0),
      s_axis_data_tready => NLW_fir_deci_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => ready_E
    );
fir_deci_N_i: component ps_deci_low_0_0_fir_raw_deci
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(127) => NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED(127),
      m_axis_data_tdata(126 downto 113) => fir_raw_N(126 downto 113),
      m_axis_data_tdata(112 downto 95) => NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED(112 downto 95),
      m_axis_data_tdata(94 downto 81) => fir_raw_N(94 downto 81),
      m_axis_data_tdata(80 downto 63) => NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED(80 downto 63),
      m_axis_data_tdata(62 downto 49) => fir_raw_N(62 downto 49),
      m_axis_data_tdata(48 downto 31) => NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED(48 downto 31),
      m_axis_data_tdata(30 downto 17) => fir_raw_N(30 downto 17),
      m_axis_data_tdata(16 downto 0) => NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_raw_N,
      s_axis_data_tdata(127 downto 114) => N7(13 downto 0),
      s_axis_data_tdata(113 downto 112) => \^data_n\(113 downto 112),
      s_axis_data_tdata(111 downto 98) => N6(13 downto 0),
      s_axis_data_tdata(97 downto 96) => \^data_n\(97 downto 96),
      s_axis_data_tdata(95 downto 82) => N5(13 downto 0),
      s_axis_data_tdata(81 downto 80) => \^data_n\(81 downto 80),
      s_axis_data_tdata(79 downto 66) => N4(13 downto 0),
      s_axis_data_tdata(65 downto 64) => \^data_n\(65 downto 64),
      s_axis_data_tdata(63 downto 50) => N3(13 downto 0),
      s_axis_data_tdata(49 downto 48) => \^data_n\(49 downto 48),
      s_axis_data_tdata(47 downto 34) => N2(13 downto 0),
      s_axis_data_tdata(33 downto 32) => \^data_n\(33 downto 32),
      s_axis_data_tdata(31 downto 18) => N1(13 downto 0),
      s_axis_data_tdata(17 downto 16) => \^data_n\(17 downto 16),
      s_axis_data_tdata(15 downto 2) => N0(13 downto 0),
      s_axis_data_tdata(1 downto 0) => \^data_n\(1 downto 0),
      s_axis_data_tready => NLW_fir_deci_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => ready_N
    );
fir_deci_W_i: component ps_deci_low_0_0_fir_raw_deci_HD2
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(127) => NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED(127),
      m_axis_data_tdata(126 downto 113) => fir_raw_W(126 downto 113),
      m_axis_data_tdata(112 downto 95) => NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED(112 downto 95),
      m_axis_data_tdata(94 downto 81) => fir_raw_W(94 downto 81),
      m_axis_data_tdata(80 downto 63) => NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED(80 downto 63),
      m_axis_data_tdata(62 downto 49) => fir_raw_W(62 downto 49),
      m_axis_data_tdata(48 downto 31) => NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED(48 downto 31),
      m_axis_data_tdata(30 downto 17) => fir_raw_W(30 downto 17),
      m_axis_data_tdata(16 downto 0) => NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_raw_W,
      s_axis_data_tdata(127 downto 114) => W7(13 downto 0),
      s_axis_data_tdata(113 downto 112) => \^data_w\(113 downto 112),
      s_axis_data_tdata(111 downto 98) => W6(13 downto 0),
      s_axis_data_tdata(97 downto 96) => \^data_w\(97 downto 96),
      s_axis_data_tdata(95 downto 82) => W5(13 downto 0),
      s_axis_data_tdata(81 downto 80) => \^data_w\(81 downto 80),
      s_axis_data_tdata(79 downto 66) => W4(13 downto 0),
      s_axis_data_tdata(65 downto 64) => \^data_w\(65 downto 64),
      s_axis_data_tdata(63 downto 50) => W3(13 downto 0),
      s_axis_data_tdata(49 downto 48) => \^data_w\(49 downto 48),
      s_axis_data_tdata(47 downto 34) => W2(13 downto 0),
      s_axis_data_tdata(33 downto 32) => \^data_w\(33 downto 32),
      s_axis_data_tdata(31 downto 18) => W1(13 downto 0),
      s_axis_data_tdata(17 downto 16) => \^data_w\(17 downto 16),
      s_axis_data_tdata(15 downto 2) => W0(13 downto 0),
      s_axis_data_tdata(1 downto 0) => \^data_w\(1 downto 0),
      s_axis_data_tready => NLW_fir_deci_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => ready_W
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => active_1
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => active_2
    );
ila_E: component ps_deci_low_0_0_ila_0
     port map (
      clk => clk,
      probe0(13 downto 0) => E0(13 downto 0),
      probe1(13 downto 0) => E1(13 downto 0),
      probe10(0) => valid_E,
      probe2(13 downto 0) => E2(13 downto 0),
      probe3(13 downto 0) => E3(13 downto 0),
      probe4(13 downto 0) => E4(13 downto 0),
      probe5(13 downto 0) => E5(13 downto 0),
      probe6(13 downto 0) => E6(13 downto 0),
      probe7(13 downto 0) => E7(13 downto 0),
      probe8(0) => ready_E,
      probe9(13 downto 0) => dE(13 downto 0)
    );
ila_N: component ps_deci_low_0_0_ila_0
     port map (
      clk => clk,
      probe0(13 downto 0) => N0(13 downto 0),
      probe1(13 downto 0) => N1(13 downto 0),
      probe10(0) => valid_N,
      probe2(13 downto 0) => N2(13 downto 0),
      probe3(13 downto 0) => N3(13 downto 0),
      probe4(13 downto 0) => N4(13 downto 0),
      probe5(13 downto 0) => N5(13 downto 0),
      probe6(13 downto 0) => N6(13 downto 0),
      probe7(13 downto 0) => N7(13 downto 0),
      probe8(0) => ready_N,
      probe9(13 downto 0) => dN(13 downto 0)
    );
ila_W: component ps_deci_low_0_0_ila_0_HD3
     port map (
      clk => clk,
      probe0(13 downto 0) => W0(13 downto 0),
      probe1(13 downto 0) => W1(13 downto 0),
      probe10(0) => valid_W,
      probe2(13 downto 0) => W2(13 downto 0),
      probe3(13 downto 0) => W3(13 downto 0),
      probe4(13 downto 0) => W4(13 downto 0),
      probe5(13 downto 0) => W5(13 downto 0),
      probe6(13 downto 0) => W6(13 downto 0),
      probe7(13 downto 0) => W7(13 downto 0),
      probe8(0) => ready_W,
      probe9(13 downto 0) => dW(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_deci_low_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    data_N : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ready_N : in STD_LOGIC;
    data_E : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ready_E : in STD_LOGIC;
    data_W : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ready_W : in STD_LOGIC;
    raw_clk : in STD_LOGIC;
    raw_ready : out STD_LOGIC;
    raw_data : out STD_LOGIC_VECTOR ( 195 downto 0 );
    doa_clk : in STD_LOGIC;
    doa_ready : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 69 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_deci_low_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_deci_low_0_0 : entity is "ps_deci_low_0_0,deci_low,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_deci_low_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_deci_low_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_deci_low_0_0 : entity is "deci_low,Vivado 2025.1";
end ps_deci_low_0_0;

architecture STRUCTURE of ps_deci_low_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa_clk : signal is "xilinx.com:signal:clock:1.0 doa_clk CLK";
  attribute X_INTERFACE_MODE of doa_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of doa_clk : signal is "XIL_INTERFACENAME doa_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of raw_clk : signal is "xilinx.com:signal:clock:1.0 raw_clk CLK";
  attribute X_INTERFACE_MODE of raw_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of raw_clk : signal is "XIL_INTERFACENAME raw_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_deci_low_0_0_deci_low
     port map (
      clk => clk,
      data_E(127 downto 0) => data_E(127 downto 0),
      data_N(127 downto 0) => data_N(127 downto 0),
      data_W(127 downto 0) => data_W(127 downto 0),
      doa_clk => doa_clk,
      doa_data(69 downto 0) => doa_data(69 downto 0),
      doa_ready => doa_ready,
      raw_clk => raw_clk,
      raw_data(195 downto 0) => raw_data(195 downto 0),
      raw_ready => raw_ready,
      ready_E => ready_E,
      ready_N => ready_N,
      ready_W => ready_W,
      resetn => resetn
    );
end STRUCTURE;
