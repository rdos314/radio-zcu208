-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Nov 24 21:12:35 2025
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
    sim_start : in STD_LOGIC;
    adc_active : in STD_LOGIC;
    sim_active : out STD_LOGIC;
    stop : out STD_LOGIC;
    sim_clk : in STD_LOGIC;
    sim_resetn : in STD_LOGIC;
    sim_wr : in STD_LOGIC;
    sim_channel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  component ps_deci_low_0_0_fifo_sim is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_deci_low_0_0_fifo_sim;
  component ps_deci_low_0_0_fifo_sim_HD1 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ps_deci_low_0_0_fifo_sim_HD1;
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
  component ps_deci_low_0_0_fir_deci_low_HD2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ps_deci_low_0_0_fir_deci_low_HD2;
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
  component ps_deci_low_0_0_fir_raw_deci_HD3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ps_deci_low_0_0_fir_raw_deci_HD3;
  component ps_deci_low_0_0_ila_2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component ps_deci_low_0_0_ila_2;
  component ps_deci_low_0_0_ila_5 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ps_deci_low_0_0_ila_5;
  signal active : STD_LOGIC;
  signal active0 : STD_LOGIC;
  signal active_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of active_1 : signal is "true";
  signal active_2 : STD_LOGIC;
  attribute async_reg of active_2 : signal is "true";
  signal clear : STD_LOGIC;
  signal dE : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal dN : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal dW : STD_LOGIC_VECTOR ( 13 downto 0 );
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
  signal \deci_low.mux_E[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[100]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[101]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[102]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[103]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[104]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[105]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[106]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[107]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[108]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[109]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[10]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[110]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[111]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[112]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[113]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[114]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[115]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[116]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[117]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[118]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[119]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[11]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[120]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[121]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[122]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[123]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[124]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[125]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[126]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[127]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[12]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[13]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[14]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[15]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[16]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[17]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[18]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[19]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[20]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[21]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[22]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[23]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[24]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[25]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[26]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[27]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[28]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[29]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[2]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[30]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[31]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[32]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[33]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[34]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[35]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[36]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[37]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[38]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[39]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[3]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[40]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[41]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[42]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[43]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[44]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[45]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[46]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[47]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[48]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[49]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[4]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[50]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[51]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[52]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[53]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[54]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[55]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[56]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[57]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[58]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[59]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[5]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[60]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[61]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[62]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[63]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[64]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[65]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[66]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[67]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[68]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[69]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[6]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[70]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[71]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[72]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[73]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[74]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[75]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[76]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[77]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[78]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[79]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[80]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[81]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[82]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[83]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[84]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[85]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[86]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[87]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[88]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[89]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[8]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[90]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[91]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[92]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[93]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[94]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[95]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[96]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[97]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[98]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[99]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_E[9]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[100]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[101]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[102]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[103]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[104]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[105]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[106]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[107]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[108]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[109]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[10]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[110]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[111]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[112]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[113]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[114]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[115]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[116]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[117]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[118]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[119]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[11]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[120]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[121]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[122]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[123]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[124]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[125]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[126]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[127]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[12]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[13]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[14]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[15]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[16]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[17]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[18]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[19]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[20]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[21]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[22]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[23]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[24]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[25]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[26]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[27]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[28]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[29]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[2]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[30]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[31]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[32]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[33]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[34]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[35]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[36]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[37]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[38]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[39]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[3]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[40]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[41]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[42]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[43]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[44]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[45]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[46]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[47]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[48]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[49]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[4]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[50]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[51]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[52]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[53]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[54]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[55]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[56]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[57]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[58]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[59]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[5]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[60]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[61]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[62]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[63]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[64]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[65]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[66]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[67]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[68]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[69]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[6]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[70]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[71]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[72]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[73]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[74]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[75]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[76]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[77]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[78]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[79]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[80]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[81]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[82]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[83]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[84]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[85]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[86]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[87]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[88]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[89]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[8]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[90]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[91]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[92]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[93]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[94]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[95]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[96]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[97]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[98]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[99]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_N[9]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[100]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[101]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[102]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[103]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[104]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[105]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[106]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[107]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[108]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[109]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[10]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[110]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[111]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[112]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[113]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[114]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[115]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[116]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[117]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[118]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[119]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[11]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[120]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[121]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[122]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[123]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[124]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[125]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[126]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[127]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[12]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[13]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[14]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[15]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[16]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[17]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[18]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[19]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[20]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[21]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[22]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[23]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[24]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[25]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[26]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[27]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[28]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[29]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[2]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[30]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[31]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[32]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[33]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[34]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[35]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[36]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[37]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[38]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[39]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[3]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[40]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[41]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[42]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[43]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[44]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[45]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[46]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[47]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[48]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[49]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[4]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[50]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[51]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[52]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[53]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[54]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[55]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[56]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[57]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[58]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[59]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[5]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[60]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[61]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[62]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[63]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[64]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[65]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[66]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[67]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[68]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[69]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[6]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[70]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[71]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[72]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[73]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[74]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[75]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[76]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[77]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[78]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[79]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[80]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[81]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[82]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[83]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[84]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[85]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[86]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[87]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[88]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[89]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[8]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[90]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[91]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[92]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[93]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[94]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[95]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[96]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[97]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[98]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[99]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_W[9]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_active_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.mux_active_i_2_n_0\ : STD_LOGIC;
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
  signal \deci_low.sim_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.sim_curr_wr_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_rd_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_wr_E_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_wr_E_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.sim_wr_N_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_wr_W_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.stop_i_1_n_0\ : STD_LOGIC;
  signal doa_active : STD_LOGIC;
  signal doa_active0 : STD_LOGIC;
  signal doa_fifo_empty : STD_LOGIC;
  signal doa_fifo_wr : STD_LOGIC;
  signal doa_in_data : STD_LOGIC_VECTOR ( 69 downto 0 );
  signal doa_out_active : STD_LOGIC;
  signal doa_out_data : STD_LOGIC_VECTOR ( 69 downto 0 );
  signal \^doa_ready\ : STD_LOGIC;
  signal fifo_raw_i_i_1_n_0 : STD_LOGIC;
  signal fifo_sim_N_i_i_1_n_0 : STD_LOGIC;
  signal fir_raw_E : STD_LOGIC_VECTOR ( 126 downto 17 );
  signal fir_raw_N : STD_LOGIC_VECTOR ( 126 downto 17 );
  signal fir_raw_W : STD_LOGIC_VECTOR ( 126 downto 17 );
  signal mux_E : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal mux_N : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal mux_W : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal mux_active : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of mux_active : signal is std.standard.true;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal raw_active : STD_LOGIC;
  signal raw_delay0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal raw_fifo_empty : STD_LOGIC;
  signal raw_fifo_wr : STD_LOGIC;
  signal raw_in_data : STD_LOGIC_VECTOR ( 195 downto 0 );
  signal raw_out_data : STD_LOGIC_VECTOR ( 195 downto 0 );
  signal \^raw_ready\ : STD_LOGIC;
  signal sim_E0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_E0 : signal is std.standard.true;
  signal sim_E1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_E1 : signal is std.standard.true;
  signal sim_E2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_E2 : signal is std.standard.true;
  signal sim_E3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_E3 : signal is std.standard.true;
  signal sim_E4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_E4 : signal is std.standard.true;
  signal sim_E5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_E5 : signal is std.standard.true;
  signal sim_E6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_E6 : signal is std.standard.true;
  signal sim_E7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_E7 : signal is std.standard.true;
  signal sim_N0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_N0 : signal is std.standard.true;
  signal sim_N1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_N1 : signal is std.standard.true;
  signal sim_N2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_N2 : signal is std.standard.true;
  signal sim_N3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_N3 : signal is std.standard.true;
  signal sim_N4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_N4 : signal is std.standard.true;
  signal sim_N5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_N5 : signal is std.standard.true;
  signal sim_N6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_N6 : signal is std.standard.true;
  signal sim_N7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_N7 : signal is std.standard.true;
  signal sim_W0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_W0 : signal is std.standard.true;
  signal sim_W1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_W1 : signal is std.standard.true;
  signal sim_W2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_W2 : signal is std.standard.true;
  signal sim_W3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_W3 : signal is std.standard.true;
  signal sim_W4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_W4 : signal is std.standard.true;
  signal sim_W5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_W5 : signal is std.standard.true;
  signal sim_W6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_W6 : signal is std.standard.true;
  signal sim_W7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of sim_W7 : signal is std.standard.true;
  signal \^sim_active\ : STD_LOGIC;
  attribute MARK_DEBUG of sim_active : signal is std.standard.true;
  signal sim_count : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of sim_count : signal is std.standard.true;
  signal sim_curr_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of sim_curr_data : signal is std.standard.true;
  signal sim_curr_wr : STD_LOGIC;
  attribute MARK_DEBUG of sim_curr_wr : signal is std.standard.true;
  signal sim_empty_E : STD_LOGIC;
  attribute MARK_DEBUG of sim_empty_E : signal is std.standard.true;
  signal sim_empty_N : STD_LOGIC;
  attribute MARK_DEBUG of sim_empty_N : signal is std.standard.true;
  signal sim_empty_W : STD_LOGIC;
  attribute MARK_DEBUG of sim_empty_W : signal is std.standard.true;
  signal sim_in_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of sim_in_data : signal is std.standard.true;
  signal sim_out_E : STD_LOGIC_VECTOR ( 113 downto 0 );
  signal sim_out_N : STD_LOGIC_VECTOR ( 113 downto 0 );
  signal sim_out_W : STD_LOGIC_VECTOR ( 113 downto 0 );
  signal sim_rd : STD_LOGIC;
  attribute MARK_DEBUG of sim_rd : signal is std.standard.true;
  signal sim_wr_E : STD_LOGIC;
  attribute MARK_DEBUG of sim_wr_E : signal is std.standard.true;
  signal sim_wr_N : STD_LOGIC;
  attribute MARK_DEBUG of sim_wr_N : signal is std.standard.true;
  signal sim_wr_W : STD_LOGIC;
  attribute MARK_DEBUG of sim_wr_W : signal is std.standard.true;
  signal \^stop\ : STD_LOGIC;
  attribute MARK_DEBUG of stop : signal is std.standard.true;
  signal valid_E : STD_LOGIC;
  signal valid_N : STD_LOGIC;
  signal valid_W : STD_LOGIC;
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
  signal NLW_fifo_sim_E_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_sim_E_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_sim_E_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_sim_N_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_sim_N_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_sim_N_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_sim_W_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_sim_W_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_sim_W_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
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
  attribute KEEP : string;
  attribute KEEP of \deci_low.mux_active_reg\ : label is "yes";
  attribute ADDER_THRESHOLD of \deci_low.raw_delay_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \deci_low.raw_delay_reg[8]_i_1\ : label is 35;
  attribute KEEP of \deci_low.sim_count_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.sim_count_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[100]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[100]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[101]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[101]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[102]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[102]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[103]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[103]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[104]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[104]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[105]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[105]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[106]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[106]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[107]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[107]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[108]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[108]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[109]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[109]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[110]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[110]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[111]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[111]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[112]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[112]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[113]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[113]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[114]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[114]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[115]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[115]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[116]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[116]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[117]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[117]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[118]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[118]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[119]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[119]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[120]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[120]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[121]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[121]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[122]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[122]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[123]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[123]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[124]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[124]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[125]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[125]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[126]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[126]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[127]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[127]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[16]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[16]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[17]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[17]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[18]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[18]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[19]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[19]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[20]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[20]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[21]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[21]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[22]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[22]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[23]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[23]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[24]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[24]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[25]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[25]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[26]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[26]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[27]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[27]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[28]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[28]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[29]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[29]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[30]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[30]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[31]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[31]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[32]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[32]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[33]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[33]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[34]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[34]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[35]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[35]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[36]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[36]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[37]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[37]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[38]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[38]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[39]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[39]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[40]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[40]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[41]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[41]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[42]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[42]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[43]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[43]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[44]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[44]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[45]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[45]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[46]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[46]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[47]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[47]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[48]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[48]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[49]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[49]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[50]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[50]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[51]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[51]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[52]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[52]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[53]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[53]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[54]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[54]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[55]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[55]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[56]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[56]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[57]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[57]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[58]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[58]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[59]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[59]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[60]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[60]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[61]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[61]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[62]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[62]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[63]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[63]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[64]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[64]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[65]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[65]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[66]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[66]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[67]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[67]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[68]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[68]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[69]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[69]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[70]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[70]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[71]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[71]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[72]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[72]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[73]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[73]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[74]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[74]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[75]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[75]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[76]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[76]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[77]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[77]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[78]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[78]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[79]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[79]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[80]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[80]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[81]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[81]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[82]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[82]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[83]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[83]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[84]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[84]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[85]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[85]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[86]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[86]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[87]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[87]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[88]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[88]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[89]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[89]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[90]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[90]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[91]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[91]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[92]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[92]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[93]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[93]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[94]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[94]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[95]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[95]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[96]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[96]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[97]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[97]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[98]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[98]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[99]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[99]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_data_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_curr_data_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.sim_curr_wr_reg\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[100]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[100]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[101]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[101]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[102]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[102]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[103]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[103]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[104]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[104]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[105]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[105]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[106]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[106]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[107]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[107]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[108]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[108]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[109]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[109]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[110]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[110]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[111]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[111]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[112]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[112]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[113]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[113]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[114]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[114]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[115]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[115]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[116]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[116]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[117]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[117]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[118]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[118]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[119]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[119]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[120]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[120]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[121]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[121]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[122]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[122]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[123]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[123]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[124]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[124]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[125]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[125]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[126]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[126]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[127]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[127]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[12]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[13]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[14]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[15]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[15]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[16]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[16]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[17]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[17]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[18]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[18]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[19]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[19]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[20]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[20]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[21]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[21]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[22]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[22]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[23]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[23]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[24]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[24]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[25]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[25]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[26]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[26]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[27]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[27]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[28]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[28]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[29]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[29]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[30]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[30]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[31]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[31]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[32]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[32]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[33]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[33]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[34]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[34]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[35]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[35]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[36]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[36]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[37]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[37]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[38]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[38]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[39]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[39]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[40]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[40]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[41]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[41]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[42]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[42]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[43]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[43]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[44]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[44]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[45]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[45]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[46]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[46]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[47]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[47]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[48]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[48]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[49]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[49]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[50]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[50]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[51]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[51]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[52]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[52]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[53]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[53]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[54]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[54]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[55]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[55]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[56]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[56]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[57]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[57]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[58]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[58]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[59]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[59]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[60]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[60]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[61]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[61]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[62]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[62]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[63]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[63]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[64]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[64]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[65]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[65]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[66]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[66]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[67]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[67]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[68]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[68]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[69]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[69]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[70]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[70]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[71]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[71]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[72]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[72]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[73]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[73]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[74]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[74]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[75]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[75]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[76]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[76]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[77]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[77]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[78]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[78]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[79]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[79]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[80]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[80]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[81]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[81]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[82]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[82]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[83]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[83]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[84]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[84]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[85]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[85]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[86]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[86]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[87]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[87]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[88]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[88]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[89]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[89]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[90]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[90]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[91]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[91]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[92]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[92]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[93]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[93]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[94]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[94]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[95]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[95]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[96]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[96]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[97]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[97]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[98]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[98]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[99]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[99]\ : label is "yes";
  attribute KEEP of \deci_low.sim_in_data_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.sim_in_data_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.sim_rd_reg\ : label is "yes";
  attribute KEEP of \deci_low.sim_wr_E_reg\ : label is "yes";
  attribute KEEP of \deci_low.sim_wr_N_reg\ : label is "yes";
  attribute KEEP of \deci_low.sim_wr_W_reg\ : label is "yes";
  attribute KEEP of \deci_low.stop_reg\ : label is "yes";
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
  attribute CHECK_LICENSE_TYPE of fifo_sim_E_i : label is "fifo_sim,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_sim_E_i : label is "yes";
  attribute x_core_info of fifo_sim_E_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_sim_N_i : label is "fifo_sim,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_sim_N_i : label is "yes";
  attribute x_core_info of fifo_sim_N_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_sim_W_i : label is "fifo_sim,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_sim_W_i : label is "yes";
  attribute x_core_info of fifo_sim_W_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
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
  attribute CHECK_LICENSE_TYPE of ila_2_i : label is "ila_2,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_2_i : label is "yes";
  attribute x_core_info of ila_2_i : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_5_i : label is "ila_5,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_5_i : label is "yes";
  attribute x_core_info of ila_5_i : label is "ila,Vivado 2025.1";
begin
  doa_ready <= \^doa_ready\;
  raw_ready <= \^raw_ready\;
  sim_active <= \^sim_active\;
  stop <= \^stop\;
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
\deci_low.mux_E[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(0),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(0),
      O => \deci_low.mux_E[0]_i_1_n_0\
    );
\deci_low.mux_E[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(100),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(2),
      O => \deci_low.mux_E[100]_i_1_n_0\
    );
\deci_low.mux_E[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(101),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(3),
      O => \deci_low.mux_E[101]_i_1_n_0\
    );
\deci_low.mux_E[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(102),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(4),
      O => \deci_low.mux_E[102]_i_1_n_0\
    );
\deci_low.mux_E[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(103),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(5),
      O => \deci_low.mux_E[103]_i_1_n_0\
    );
\deci_low.mux_E[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(104),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(6),
      O => \deci_low.mux_E[104]_i_1_n_0\
    );
\deci_low.mux_E[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(105),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(7),
      O => \deci_low.mux_E[105]_i_1_n_0\
    );
\deci_low.mux_E[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(106),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(8),
      O => \deci_low.mux_E[106]_i_1_n_0\
    );
\deci_low.mux_E[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(107),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(9),
      O => \deci_low.mux_E[107]_i_1_n_0\
    );
\deci_low.mux_E[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(108),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(10),
      O => \deci_low.mux_E[108]_i_1_n_0\
    );
\deci_low.mux_E[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(109),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(11),
      O => \deci_low.mux_E[109]_i_1_n_0\
    );
\deci_low.mux_E[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(10),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(8),
      O => \deci_low.mux_E[10]_i_1_n_0\
    );
\deci_low.mux_E[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(110),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(12),
      O => \deci_low.mux_E[110]_i_1_n_0\
    );
\deci_low.mux_E[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(111),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(13),
      O => \deci_low.mux_E[111]_i_1_n_0\
    );
\deci_low.mux_E[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(112),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(112),
      O => \deci_low.mux_E[112]_i_1_n_0\
    );
\deci_low.mux_E[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(113),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(113),
      O => \deci_low.mux_E[113]_i_1_n_0\
    );
\deci_low.mux_E[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(114),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(0),
      O => \deci_low.mux_E[114]_i_1_n_0\
    );
\deci_low.mux_E[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(115),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(1),
      O => \deci_low.mux_E[115]_i_1_n_0\
    );
\deci_low.mux_E[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(116),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(2),
      O => \deci_low.mux_E[116]_i_1_n_0\
    );
\deci_low.mux_E[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(117),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(3),
      O => \deci_low.mux_E[117]_i_1_n_0\
    );
\deci_low.mux_E[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(118),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(4),
      O => \deci_low.mux_E[118]_i_1_n_0\
    );
\deci_low.mux_E[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(119),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(5),
      O => \deci_low.mux_E[119]_i_1_n_0\
    );
\deci_low.mux_E[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(11),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(9),
      O => \deci_low.mux_E[11]_i_1_n_0\
    );
\deci_low.mux_E[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(120),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(6),
      O => \deci_low.mux_E[120]_i_1_n_0\
    );
\deci_low.mux_E[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(121),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(7),
      O => \deci_low.mux_E[121]_i_1_n_0\
    );
\deci_low.mux_E[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(122),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(8),
      O => \deci_low.mux_E[122]_i_1_n_0\
    );
\deci_low.mux_E[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(123),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(9),
      O => \deci_low.mux_E[123]_i_1_n_0\
    );
\deci_low.mux_E[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(124),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(10),
      O => \deci_low.mux_E[124]_i_1_n_0\
    );
\deci_low.mux_E[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(125),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(11),
      O => \deci_low.mux_E[125]_i_1_n_0\
    );
\deci_low.mux_E[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(126),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(12),
      O => \deci_low.mux_E[126]_i_1_n_0\
    );
\deci_low.mux_E[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(127),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E7(13),
      O => \deci_low.mux_E[127]_i_1_n_0\
    );
\deci_low.mux_E[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(12),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(10),
      O => \deci_low.mux_E[12]_i_1_n_0\
    );
\deci_low.mux_E[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(13),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(11),
      O => \deci_low.mux_E[13]_i_1_n_0\
    );
\deci_low.mux_E[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(14),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(12),
      O => \deci_low.mux_E[14]_i_1_n_0\
    );
\deci_low.mux_E[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(15),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(13),
      O => \deci_low.mux_E[15]_i_1_n_0\
    );
\deci_low.mux_E[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(16),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(16),
      O => \deci_low.mux_E[16]_i_1_n_0\
    );
\deci_low.mux_E[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(17),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(17),
      O => \deci_low.mux_E[17]_i_1_n_0\
    );
\deci_low.mux_E[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(18),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(0),
      O => \deci_low.mux_E[18]_i_1_n_0\
    );
\deci_low.mux_E[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(19),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(1),
      O => \deci_low.mux_E[19]_i_1_n_0\
    );
\deci_low.mux_E[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(1),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(1),
      O => \deci_low.mux_E[1]_i_1_n_0\
    );
\deci_low.mux_E[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(20),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(2),
      O => \deci_low.mux_E[20]_i_1_n_0\
    );
\deci_low.mux_E[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(21),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(3),
      O => \deci_low.mux_E[21]_i_1_n_0\
    );
\deci_low.mux_E[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(22),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(4),
      O => \deci_low.mux_E[22]_i_1_n_0\
    );
\deci_low.mux_E[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(23),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(5),
      O => \deci_low.mux_E[23]_i_1_n_0\
    );
\deci_low.mux_E[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(24),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(6),
      O => \deci_low.mux_E[24]_i_1_n_0\
    );
\deci_low.mux_E[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(25),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(7),
      O => \deci_low.mux_E[25]_i_1_n_0\
    );
\deci_low.mux_E[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(26),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(8),
      O => \deci_low.mux_E[26]_i_1_n_0\
    );
\deci_low.mux_E[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(27),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(9),
      O => \deci_low.mux_E[27]_i_1_n_0\
    );
\deci_low.mux_E[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(28),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(10),
      O => \deci_low.mux_E[28]_i_1_n_0\
    );
\deci_low.mux_E[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(29),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(11),
      O => \deci_low.mux_E[29]_i_1_n_0\
    );
\deci_low.mux_E[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(2),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(0),
      O => \deci_low.mux_E[2]_i_1_n_0\
    );
\deci_low.mux_E[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(30),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(12),
      O => \deci_low.mux_E[30]_i_1_n_0\
    );
\deci_low.mux_E[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(31),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E1(13),
      O => \deci_low.mux_E[31]_i_1_n_0\
    );
\deci_low.mux_E[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(32),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(32),
      O => \deci_low.mux_E[32]_i_1_n_0\
    );
\deci_low.mux_E[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(33),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(33),
      O => \deci_low.mux_E[33]_i_1_n_0\
    );
\deci_low.mux_E[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(34),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(0),
      O => \deci_low.mux_E[34]_i_1_n_0\
    );
\deci_low.mux_E[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(35),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(1),
      O => \deci_low.mux_E[35]_i_1_n_0\
    );
\deci_low.mux_E[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(36),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(2),
      O => \deci_low.mux_E[36]_i_1_n_0\
    );
\deci_low.mux_E[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(37),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(3),
      O => \deci_low.mux_E[37]_i_1_n_0\
    );
\deci_low.mux_E[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(38),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(4),
      O => \deci_low.mux_E[38]_i_1_n_0\
    );
\deci_low.mux_E[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(39),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(5),
      O => \deci_low.mux_E[39]_i_1_n_0\
    );
\deci_low.mux_E[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(3),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(1),
      O => \deci_low.mux_E[3]_i_1_n_0\
    );
\deci_low.mux_E[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(40),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(6),
      O => \deci_low.mux_E[40]_i_1_n_0\
    );
\deci_low.mux_E[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(41),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(7),
      O => \deci_low.mux_E[41]_i_1_n_0\
    );
\deci_low.mux_E[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(42),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(8),
      O => \deci_low.mux_E[42]_i_1_n_0\
    );
\deci_low.mux_E[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(43),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(9),
      O => \deci_low.mux_E[43]_i_1_n_0\
    );
\deci_low.mux_E[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(44),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(10),
      O => \deci_low.mux_E[44]_i_1_n_0\
    );
\deci_low.mux_E[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(45),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(11),
      O => \deci_low.mux_E[45]_i_1_n_0\
    );
\deci_low.mux_E[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(46),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(12),
      O => \deci_low.mux_E[46]_i_1_n_0\
    );
\deci_low.mux_E[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(47),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E2(13),
      O => \deci_low.mux_E[47]_i_1_n_0\
    );
\deci_low.mux_E[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(48),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(48),
      O => \deci_low.mux_E[48]_i_1_n_0\
    );
\deci_low.mux_E[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(49),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(49),
      O => \deci_low.mux_E[49]_i_1_n_0\
    );
\deci_low.mux_E[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(4),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(2),
      O => \deci_low.mux_E[4]_i_1_n_0\
    );
\deci_low.mux_E[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(50),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(0),
      O => \deci_low.mux_E[50]_i_1_n_0\
    );
\deci_low.mux_E[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(51),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(1),
      O => \deci_low.mux_E[51]_i_1_n_0\
    );
\deci_low.mux_E[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(52),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(2),
      O => \deci_low.mux_E[52]_i_1_n_0\
    );
\deci_low.mux_E[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(53),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(3),
      O => \deci_low.mux_E[53]_i_1_n_0\
    );
\deci_low.mux_E[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(54),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(4),
      O => \deci_low.mux_E[54]_i_1_n_0\
    );
\deci_low.mux_E[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(55),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(5),
      O => \deci_low.mux_E[55]_i_1_n_0\
    );
\deci_low.mux_E[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(56),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(6),
      O => \deci_low.mux_E[56]_i_1_n_0\
    );
\deci_low.mux_E[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(57),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(7),
      O => \deci_low.mux_E[57]_i_1_n_0\
    );
\deci_low.mux_E[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(58),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(8),
      O => \deci_low.mux_E[58]_i_1_n_0\
    );
\deci_low.mux_E[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(59),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(9),
      O => \deci_low.mux_E[59]_i_1_n_0\
    );
\deci_low.mux_E[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(5),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(3),
      O => \deci_low.mux_E[5]_i_1_n_0\
    );
\deci_low.mux_E[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(60),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(10),
      O => \deci_low.mux_E[60]_i_1_n_0\
    );
\deci_low.mux_E[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(61),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(11),
      O => \deci_low.mux_E[61]_i_1_n_0\
    );
\deci_low.mux_E[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(62),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(12),
      O => \deci_low.mux_E[62]_i_1_n_0\
    );
\deci_low.mux_E[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(63),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E3(13),
      O => \deci_low.mux_E[63]_i_1_n_0\
    );
\deci_low.mux_E[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(64),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(64),
      O => \deci_low.mux_E[64]_i_1_n_0\
    );
\deci_low.mux_E[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(65),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(65),
      O => \deci_low.mux_E[65]_i_1_n_0\
    );
\deci_low.mux_E[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(66),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(0),
      O => \deci_low.mux_E[66]_i_1_n_0\
    );
\deci_low.mux_E[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(67),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(1),
      O => \deci_low.mux_E[67]_i_1_n_0\
    );
\deci_low.mux_E[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(68),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(2),
      O => \deci_low.mux_E[68]_i_1_n_0\
    );
\deci_low.mux_E[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(69),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(3),
      O => \deci_low.mux_E[69]_i_1_n_0\
    );
\deci_low.mux_E[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(6),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(4),
      O => \deci_low.mux_E[6]_i_1_n_0\
    );
\deci_low.mux_E[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(70),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(4),
      O => \deci_low.mux_E[70]_i_1_n_0\
    );
\deci_low.mux_E[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(71),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(5),
      O => \deci_low.mux_E[71]_i_1_n_0\
    );
\deci_low.mux_E[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(72),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(6),
      O => \deci_low.mux_E[72]_i_1_n_0\
    );
\deci_low.mux_E[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(73),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(7),
      O => \deci_low.mux_E[73]_i_1_n_0\
    );
\deci_low.mux_E[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(74),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(8),
      O => \deci_low.mux_E[74]_i_1_n_0\
    );
\deci_low.mux_E[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(75),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(9),
      O => \deci_low.mux_E[75]_i_1_n_0\
    );
\deci_low.mux_E[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(76),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(10),
      O => \deci_low.mux_E[76]_i_1_n_0\
    );
\deci_low.mux_E[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(77),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(11),
      O => \deci_low.mux_E[77]_i_1_n_0\
    );
\deci_low.mux_E[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(78),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(12),
      O => \deci_low.mux_E[78]_i_1_n_0\
    );
\deci_low.mux_E[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(79),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E4(13),
      O => \deci_low.mux_E[79]_i_1_n_0\
    );
\deci_low.mux_E[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(7),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(5),
      O => \deci_low.mux_E[7]_i_1_n_0\
    );
\deci_low.mux_E[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(80),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(80),
      O => \deci_low.mux_E[80]_i_1_n_0\
    );
\deci_low.mux_E[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(81),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(81),
      O => \deci_low.mux_E[81]_i_1_n_0\
    );
\deci_low.mux_E[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(82),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(0),
      O => \deci_low.mux_E[82]_i_1_n_0\
    );
\deci_low.mux_E[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(83),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(1),
      O => \deci_low.mux_E[83]_i_1_n_0\
    );
\deci_low.mux_E[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(84),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(2),
      O => \deci_low.mux_E[84]_i_1_n_0\
    );
\deci_low.mux_E[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(85),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(3),
      O => \deci_low.mux_E[85]_i_1_n_0\
    );
\deci_low.mux_E[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(86),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(4),
      O => \deci_low.mux_E[86]_i_1_n_0\
    );
\deci_low.mux_E[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(87),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(5),
      O => \deci_low.mux_E[87]_i_1_n_0\
    );
\deci_low.mux_E[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(88),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(6),
      O => \deci_low.mux_E[88]_i_1_n_0\
    );
\deci_low.mux_E[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(89),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(7),
      O => \deci_low.mux_E[89]_i_1_n_0\
    );
\deci_low.mux_E[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(8),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(6),
      O => \deci_low.mux_E[8]_i_1_n_0\
    );
\deci_low.mux_E[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(90),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(8),
      O => \deci_low.mux_E[90]_i_1_n_0\
    );
\deci_low.mux_E[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(91),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(9),
      O => \deci_low.mux_E[91]_i_1_n_0\
    );
\deci_low.mux_E[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(92),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(10),
      O => \deci_low.mux_E[92]_i_1_n_0\
    );
\deci_low.mux_E[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(93),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(11),
      O => \deci_low.mux_E[93]_i_1_n_0\
    );
\deci_low.mux_E[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(94),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(12),
      O => \deci_low.mux_E[94]_i_1_n_0\
    );
\deci_low.mux_E[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(95),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E5(13),
      O => \deci_low.mux_E[95]_i_1_n_0\
    );
\deci_low.mux_E[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(96),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(96),
      O => \deci_low.mux_E[96]_i_1_n_0\
    );
\deci_low.mux_E[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(97),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_E(97),
      O => \deci_low.mux_E[97]_i_1_n_0\
    );
\deci_low.mux_E[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(98),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(0),
      O => \deci_low.mux_E[98]_i_1_n_0\
    );
\deci_low.mux_E[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(99),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E6(1),
      O => \deci_low.mux_E[99]_i_1_n_0\
    );
\deci_low.mux_E[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_E(9),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_E0(7),
      O => \deci_low.mux_E[9]_i_1_n_0\
    );
\deci_low.mux_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[0]_i_1_n_0\,
      Q => mux_E(0),
      R => '0'
    );
\deci_low.mux_E_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[100]_i_1_n_0\,
      Q => mux_E(100),
      R => '0'
    );
\deci_low.mux_E_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[101]_i_1_n_0\,
      Q => mux_E(101),
      R => '0'
    );
\deci_low.mux_E_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[102]_i_1_n_0\,
      Q => mux_E(102),
      R => '0'
    );
\deci_low.mux_E_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[103]_i_1_n_0\,
      Q => mux_E(103),
      R => '0'
    );
\deci_low.mux_E_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[104]_i_1_n_0\,
      Q => mux_E(104),
      R => '0'
    );
\deci_low.mux_E_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[105]_i_1_n_0\,
      Q => mux_E(105),
      R => '0'
    );
\deci_low.mux_E_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[106]_i_1_n_0\,
      Q => mux_E(106),
      R => '0'
    );
\deci_low.mux_E_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[107]_i_1_n_0\,
      Q => mux_E(107),
      R => '0'
    );
\deci_low.mux_E_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[108]_i_1_n_0\,
      Q => mux_E(108),
      R => '0'
    );
\deci_low.mux_E_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[109]_i_1_n_0\,
      Q => mux_E(109),
      R => '0'
    );
\deci_low.mux_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[10]_i_1_n_0\,
      Q => mux_E(10),
      R => '0'
    );
\deci_low.mux_E_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[110]_i_1_n_0\,
      Q => mux_E(110),
      R => '0'
    );
\deci_low.mux_E_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[111]_i_1_n_0\,
      Q => mux_E(111),
      R => '0'
    );
\deci_low.mux_E_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[112]_i_1_n_0\,
      Q => mux_E(112),
      R => '0'
    );
\deci_low.mux_E_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[113]_i_1_n_0\,
      Q => mux_E(113),
      R => '0'
    );
\deci_low.mux_E_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[114]_i_1_n_0\,
      Q => mux_E(114),
      R => '0'
    );
\deci_low.mux_E_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[115]_i_1_n_0\,
      Q => mux_E(115),
      R => '0'
    );
\deci_low.mux_E_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[116]_i_1_n_0\,
      Q => mux_E(116),
      R => '0'
    );
\deci_low.mux_E_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[117]_i_1_n_0\,
      Q => mux_E(117),
      R => '0'
    );
\deci_low.mux_E_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[118]_i_1_n_0\,
      Q => mux_E(118),
      R => '0'
    );
\deci_low.mux_E_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[119]_i_1_n_0\,
      Q => mux_E(119),
      R => '0'
    );
\deci_low.mux_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[11]_i_1_n_0\,
      Q => mux_E(11),
      R => '0'
    );
\deci_low.mux_E_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[120]_i_1_n_0\,
      Q => mux_E(120),
      R => '0'
    );
\deci_low.mux_E_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[121]_i_1_n_0\,
      Q => mux_E(121),
      R => '0'
    );
\deci_low.mux_E_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[122]_i_1_n_0\,
      Q => mux_E(122),
      R => '0'
    );
\deci_low.mux_E_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[123]_i_1_n_0\,
      Q => mux_E(123),
      R => '0'
    );
\deci_low.mux_E_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[124]_i_1_n_0\,
      Q => mux_E(124),
      R => '0'
    );
\deci_low.mux_E_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[125]_i_1_n_0\,
      Q => mux_E(125),
      R => '0'
    );
\deci_low.mux_E_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[126]_i_1_n_0\,
      Q => mux_E(126),
      R => '0'
    );
\deci_low.mux_E_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[127]_i_1_n_0\,
      Q => mux_E(127),
      R => '0'
    );
\deci_low.mux_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[12]_i_1_n_0\,
      Q => mux_E(12),
      R => '0'
    );
\deci_low.mux_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[13]_i_1_n_0\,
      Q => mux_E(13),
      R => '0'
    );
\deci_low.mux_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[14]_i_1_n_0\,
      Q => mux_E(14),
      R => '0'
    );
\deci_low.mux_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[15]_i_1_n_0\,
      Q => mux_E(15),
      R => '0'
    );
\deci_low.mux_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[16]_i_1_n_0\,
      Q => mux_E(16),
      R => '0'
    );
\deci_low.mux_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[17]_i_1_n_0\,
      Q => mux_E(17),
      R => '0'
    );
\deci_low.mux_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[18]_i_1_n_0\,
      Q => mux_E(18),
      R => '0'
    );
\deci_low.mux_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[19]_i_1_n_0\,
      Q => mux_E(19),
      R => '0'
    );
\deci_low.mux_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[1]_i_1_n_0\,
      Q => mux_E(1),
      R => '0'
    );
\deci_low.mux_E_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[20]_i_1_n_0\,
      Q => mux_E(20),
      R => '0'
    );
\deci_low.mux_E_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[21]_i_1_n_0\,
      Q => mux_E(21),
      R => '0'
    );
\deci_low.mux_E_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[22]_i_1_n_0\,
      Q => mux_E(22),
      R => '0'
    );
\deci_low.mux_E_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[23]_i_1_n_0\,
      Q => mux_E(23),
      R => '0'
    );
\deci_low.mux_E_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[24]_i_1_n_0\,
      Q => mux_E(24),
      R => '0'
    );
\deci_low.mux_E_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[25]_i_1_n_0\,
      Q => mux_E(25),
      R => '0'
    );
\deci_low.mux_E_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[26]_i_1_n_0\,
      Q => mux_E(26),
      R => '0'
    );
\deci_low.mux_E_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[27]_i_1_n_0\,
      Q => mux_E(27),
      R => '0'
    );
\deci_low.mux_E_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[28]_i_1_n_0\,
      Q => mux_E(28),
      R => '0'
    );
\deci_low.mux_E_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[29]_i_1_n_0\,
      Q => mux_E(29),
      R => '0'
    );
\deci_low.mux_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[2]_i_1_n_0\,
      Q => mux_E(2),
      R => '0'
    );
\deci_low.mux_E_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[30]_i_1_n_0\,
      Q => mux_E(30),
      R => '0'
    );
\deci_low.mux_E_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[31]_i_1_n_0\,
      Q => mux_E(31),
      R => '0'
    );
\deci_low.mux_E_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[32]_i_1_n_0\,
      Q => mux_E(32),
      R => '0'
    );
\deci_low.mux_E_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[33]_i_1_n_0\,
      Q => mux_E(33),
      R => '0'
    );
\deci_low.mux_E_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[34]_i_1_n_0\,
      Q => mux_E(34),
      R => '0'
    );
\deci_low.mux_E_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[35]_i_1_n_0\,
      Q => mux_E(35),
      R => '0'
    );
\deci_low.mux_E_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[36]_i_1_n_0\,
      Q => mux_E(36),
      R => '0'
    );
\deci_low.mux_E_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[37]_i_1_n_0\,
      Q => mux_E(37),
      R => '0'
    );
\deci_low.mux_E_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[38]_i_1_n_0\,
      Q => mux_E(38),
      R => '0'
    );
\deci_low.mux_E_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[39]_i_1_n_0\,
      Q => mux_E(39),
      R => '0'
    );
\deci_low.mux_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[3]_i_1_n_0\,
      Q => mux_E(3),
      R => '0'
    );
\deci_low.mux_E_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[40]_i_1_n_0\,
      Q => mux_E(40),
      R => '0'
    );
\deci_low.mux_E_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[41]_i_1_n_0\,
      Q => mux_E(41),
      R => '0'
    );
\deci_low.mux_E_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[42]_i_1_n_0\,
      Q => mux_E(42),
      R => '0'
    );
\deci_low.mux_E_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[43]_i_1_n_0\,
      Q => mux_E(43),
      R => '0'
    );
\deci_low.mux_E_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[44]_i_1_n_0\,
      Q => mux_E(44),
      R => '0'
    );
\deci_low.mux_E_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[45]_i_1_n_0\,
      Q => mux_E(45),
      R => '0'
    );
\deci_low.mux_E_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[46]_i_1_n_0\,
      Q => mux_E(46),
      R => '0'
    );
\deci_low.mux_E_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[47]_i_1_n_0\,
      Q => mux_E(47),
      R => '0'
    );
\deci_low.mux_E_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[48]_i_1_n_0\,
      Q => mux_E(48),
      R => '0'
    );
\deci_low.mux_E_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[49]_i_1_n_0\,
      Q => mux_E(49),
      R => '0'
    );
\deci_low.mux_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[4]_i_1_n_0\,
      Q => mux_E(4),
      R => '0'
    );
\deci_low.mux_E_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[50]_i_1_n_0\,
      Q => mux_E(50),
      R => '0'
    );
\deci_low.mux_E_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[51]_i_1_n_0\,
      Q => mux_E(51),
      R => '0'
    );
\deci_low.mux_E_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[52]_i_1_n_0\,
      Q => mux_E(52),
      R => '0'
    );
\deci_low.mux_E_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[53]_i_1_n_0\,
      Q => mux_E(53),
      R => '0'
    );
\deci_low.mux_E_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[54]_i_1_n_0\,
      Q => mux_E(54),
      R => '0'
    );
\deci_low.mux_E_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[55]_i_1_n_0\,
      Q => mux_E(55),
      R => '0'
    );
\deci_low.mux_E_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[56]_i_1_n_0\,
      Q => mux_E(56),
      R => '0'
    );
\deci_low.mux_E_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[57]_i_1_n_0\,
      Q => mux_E(57),
      R => '0'
    );
\deci_low.mux_E_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[58]_i_1_n_0\,
      Q => mux_E(58),
      R => '0'
    );
\deci_low.mux_E_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[59]_i_1_n_0\,
      Q => mux_E(59),
      R => '0'
    );
\deci_low.mux_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[5]_i_1_n_0\,
      Q => mux_E(5),
      R => '0'
    );
\deci_low.mux_E_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[60]_i_1_n_0\,
      Q => mux_E(60),
      R => '0'
    );
\deci_low.mux_E_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[61]_i_1_n_0\,
      Q => mux_E(61),
      R => '0'
    );
\deci_low.mux_E_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[62]_i_1_n_0\,
      Q => mux_E(62),
      R => '0'
    );
\deci_low.mux_E_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[63]_i_1_n_0\,
      Q => mux_E(63),
      R => '0'
    );
\deci_low.mux_E_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[64]_i_1_n_0\,
      Q => mux_E(64),
      R => '0'
    );
\deci_low.mux_E_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[65]_i_1_n_0\,
      Q => mux_E(65),
      R => '0'
    );
\deci_low.mux_E_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[66]_i_1_n_0\,
      Q => mux_E(66),
      R => '0'
    );
\deci_low.mux_E_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[67]_i_1_n_0\,
      Q => mux_E(67),
      R => '0'
    );
\deci_low.mux_E_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[68]_i_1_n_0\,
      Q => mux_E(68),
      R => '0'
    );
\deci_low.mux_E_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[69]_i_1_n_0\,
      Q => mux_E(69),
      R => '0'
    );
\deci_low.mux_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[6]_i_1_n_0\,
      Q => mux_E(6),
      R => '0'
    );
\deci_low.mux_E_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[70]_i_1_n_0\,
      Q => mux_E(70),
      R => '0'
    );
\deci_low.mux_E_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[71]_i_1_n_0\,
      Q => mux_E(71),
      R => '0'
    );
\deci_low.mux_E_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[72]_i_1_n_0\,
      Q => mux_E(72),
      R => '0'
    );
\deci_low.mux_E_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[73]_i_1_n_0\,
      Q => mux_E(73),
      R => '0'
    );
\deci_low.mux_E_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[74]_i_1_n_0\,
      Q => mux_E(74),
      R => '0'
    );
\deci_low.mux_E_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[75]_i_1_n_0\,
      Q => mux_E(75),
      R => '0'
    );
\deci_low.mux_E_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[76]_i_1_n_0\,
      Q => mux_E(76),
      R => '0'
    );
\deci_low.mux_E_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[77]_i_1_n_0\,
      Q => mux_E(77),
      R => '0'
    );
\deci_low.mux_E_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[78]_i_1_n_0\,
      Q => mux_E(78),
      R => '0'
    );
\deci_low.mux_E_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[79]_i_1_n_0\,
      Q => mux_E(79),
      R => '0'
    );
\deci_low.mux_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[7]_i_1_n_0\,
      Q => mux_E(7),
      R => '0'
    );
\deci_low.mux_E_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[80]_i_1_n_0\,
      Q => mux_E(80),
      R => '0'
    );
\deci_low.mux_E_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[81]_i_1_n_0\,
      Q => mux_E(81),
      R => '0'
    );
\deci_low.mux_E_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[82]_i_1_n_0\,
      Q => mux_E(82),
      R => '0'
    );
\deci_low.mux_E_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[83]_i_1_n_0\,
      Q => mux_E(83),
      R => '0'
    );
\deci_low.mux_E_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[84]_i_1_n_0\,
      Q => mux_E(84),
      R => '0'
    );
\deci_low.mux_E_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[85]_i_1_n_0\,
      Q => mux_E(85),
      R => '0'
    );
\deci_low.mux_E_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[86]_i_1_n_0\,
      Q => mux_E(86),
      R => '0'
    );
\deci_low.mux_E_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[87]_i_1_n_0\,
      Q => mux_E(87),
      R => '0'
    );
\deci_low.mux_E_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[88]_i_1_n_0\,
      Q => mux_E(88),
      R => '0'
    );
\deci_low.mux_E_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[89]_i_1_n_0\,
      Q => mux_E(89),
      R => '0'
    );
\deci_low.mux_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[8]_i_1_n_0\,
      Q => mux_E(8),
      R => '0'
    );
\deci_low.mux_E_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[90]_i_1_n_0\,
      Q => mux_E(90),
      R => '0'
    );
\deci_low.mux_E_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[91]_i_1_n_0\,
      Q => mux_E(91),
      R => '0'
    );
\deci_low.mux_E_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[92]_i_1_n_0\,
      Q => mux_E(92),
      R => '0'
    );
\deci_low.mux_E_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[93]_i_1_n_0\,
      Q => mux_E(93),
      R => '0'
    );
\deci_low.mux_E_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[94]_i_1_n_0\,
      Q => mux_E(94),
      R => '0'
    );
\deci_low.mux_E_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[95]_i_1_n_0\,
      Q => mux_E(95),
      R => '0'
    );
\deci_low.mux_E_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[96]_i_1_n_0\,
      Q => mux_E(96),
      R => '0'
    );
\deci_low.mux_E_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[97]_i_1_n_0\,
      Q => mux_E(97),
      R => '0'
    );
\deci_low.mux_E_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[98]_i_1_n_0\,
      Q => mux_E(98),
      R => '0'
    );
\deci_low.mux_E_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[99]_i_1_n_0\,
      Q => mux_E(99),
      R => '0'
    );
\deci_low.mux_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_E[9]_i_1_n_0\,
      Q => mux_E(9),
      R => '0'
    );
\deci_low.mux_N[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(0),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(0),
      O => \deci_low.mux_N[0]_i_1_n_0\
    );
\deci_low.mux_N[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(100),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(2),
      O => \deci_low.mux_N[100]_i_1_n_0\
    );
\deci_low.mux_N[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(101),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(3),
      O => \deci_low.mux_N[101]_i_1_n_0\
    );
\deci_low.mux_N[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(102),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(4),
      O => \deci_low.mux_N[102]_i_1_n_0\
    );
\deci_low.mux_N[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(103),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(5),
      O => \deci_low.mux_N[103]_i_1_n_0\
    );
\deci_low.mux_N[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(104),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(6),
      O => \deci_low.mux_N[104]_i_1_n_0\
    );
\deci_low.mux_N[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(105),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(7),
      O => \deci_low.mux_N[105]_i_1_n_0\
    );
\deci_low.mux_N[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(106),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(8),
      O => \deci_low.mux_N[106]_i_1_n_0\
    );
\deci_low.mux_N[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(107),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(9),
      O => \deci_low.mux_N[107]_i_1_n_0\
    );
\deci_low.mux_N[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(108),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(10),
      O => \deci_low.mux_N[108]_i_1_n_0\
    );
\deci_low.mux_N[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(109),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(11),
      O => \deci_low.mux_N[109]_i_1_n_0\
    );
\deci_low.mux_N[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(10),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(8),
      O => \deci_low.mux_N[10]_i_1_n_0\
    );
\deci_low.mux_N[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(110),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(12),
      O => \deci_low.mux_N[110]_i_1_n_0\
    );
\deci_low.mux_N[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(111),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(13),
      O => \deci_low.mux_N[111]_i_1_n_0\
    );
\deci_low.mux_N[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(112),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(112),
      O => \deci_low.mux_N[112]_i_1_n_0\
    );
\deci_low.mux_N[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(113),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(113),
      O => \deci_low.mux_N[113]_i_1_n_0\
    );
\deci_low.mux_N[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(114),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(0),
      O => \deci_low.mux_N[114]_i_1_n_0\
    );
\deci_low.mux_N[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(115),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(1),
      O => \deci_low.mux_N[115]_i_1_n_0\
    );
\deci_low.mux_N[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(116),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(2),
      O => \deci_low.mux_N[116]_i_1_n_0\
    );
\deci_low.mux_N[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(117),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(3),
      O => \deci_low.mux_N[117]_i_1_n_0\
    );
\deci_low.mux_N[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(118),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(4),
      O => \deci_low.mux_N[118]_i_1_n_0\
    );
\deci_low.mux_N[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(119),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(5),
      O => \deci_low.mux_N[119]_i_1_n_0\
    );
\deci_low.mux_N[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(11),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(9),
      O => \deci_low.mux_N[11]_i_1_n_0\
    );
\deci_low.mux_N[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(120),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(6),
      O => \deci_low.mux_N[120]_i_1_n_0\
    );
\deci_low.mux_N[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(121),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(7),
      O => \deci_low.mux_N[121]_i_1_n_0\
    );
\deci_low.mux_N[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(122),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(8),
      O => \deci_low.mux_N[122]_i_1_n_0\
    );
\deci_low.mux_N[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(123),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(9),
      O => \deci_low.mux_N[123]_i_1_n_0\
    );
\deci_low.mux_N[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(124),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(10),
      O => \deci_low.mux_N[124]_i_1_n_0\
    );
\deci_low.mux_N[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(125),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(11),
      O => \deci_low.mux_N[125]_i_1_n_0\
    );
\deci_low.mux_N[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(126),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(12),
      O => \deci_low.mux_N[126]_i_1_n_0\
    );
\deci_low.mux_N[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(127),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N7(13),
      O => \deci_low.mux_N[127]_i_1_n_0\
    );
\deci_low.mux_N[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(12),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(10),
      O => \deci_low.mux_N[12]_i_1_n_0\
    );
\deci_low.mux_N[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(13),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(11),
      O => \deci_low.mux_N[13]_i_1_n_0\
    );
\deci_low.mux_N[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(14),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(12),
      O => \deci_low.mux_N[14]_i_1_n_0\
    );
\deci_low.mux_N[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(15),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(13),
      O => \deci_low.mux_N[15]_i_1_n_0\
    );
\deci_low.mux_N[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(16),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(16),
      O => \deci_low.mux_N[16]_i_1_n_0\
    );
\deci_low.mux_N[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(17),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(17),
      O => \deci_low.mux_N[17]_i_1_n_0\
    );
\deci_low.mux_N[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(18),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(0),
      O => \deci_low.mux_N[18]_i_1_n_0\
    );
\deci_low.mux_N[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(19),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(1),
      O => \deci_low.mux_N[19]_i_1_n_0\
    );
\deci_low.mux_N[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(1),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(1),
      O => \deci_low.mux_N[1]_i_1_n_0\
    );
\deci_low.mux_N[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(20),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(2),
      O => \deci_low.mux_N[20]_i_1_n_0\
    );
\deci_low.mux_N[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(21),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(3),
      O => \deci_low.mux_N[21]_i_1_n_0\
    );
\deci_low.mux_N[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(22),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(4),
      O => \deci_low.mux_N[22]_i_1_n_0\
    );
\deci_low.mux_N[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(23),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(5),
      O => \deci_low.mux_N[23]_i_1_n_0\
    );
\deci_low.mux_N[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(24),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(6),
      O => \deci_low.mux_N[24]_i_1_n_0\
    );
\deci_low.mux_N[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(25),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(7),
      O => \deci_low.mux_N[25]_i_1_n_0\
    );
\deci_low.mux_N[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(26),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(8),
      O => \deci_low.mux_N[26]_i_1_n_0\
    );
\deci_low.mux_N[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(27),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(9),
      O => \deci_low.mux_N[27]_i_1_n_0\
    );
\deci_low.mux_N[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(28),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(10),
      O => \deci_low.mux_N[28]_i_1_n_0\
    );
\deci_low.mux_N[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(29),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(11),
      O => \deci_low.mux_N[29]_i_1_n_0\
    );
\deci_low.mux_N[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(2),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(0),
      O => \deci_low.mux_N[2]_i_1_n_0\
    );
\deci_low.mux_N[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(30),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(12),
      O => \deci_low.mux_N[30]_i_1_n_0\
    );
\deci_low.mux_N[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(31),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N1(13),
      O => \deci_low.mux_N[31]_i_1_n_0\
    );
\deci_low.mux_N[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(32),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(32),
      O => \deci_low.mux_N[32]_i_1_n_0\
    );
\deci_low.mux_N[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(33),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(33),
      O => \deci_low.mux_N[33]_i_1_n_0\
    );
\deci_low.mux_N[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(34),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(0),
      O => \deci_low.mux_N[34]_i_1_n_0\
    );
\deci_low.mux_N[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(35),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(1),
      O => \deci_low.mux_N[35]_i_1_n_0\
    );
\deci_low.mux_N[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(36),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(2),
      O => \deci_low.mux_N[36]_i_1_n_0\
    );
\deci_low.mux_N[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(37),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(3),
      O => \deci_low.mux_N[37]_i_1_n_0\
    );
\deci_low.mux_N[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(38),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(4),
      O => \deci_low.mux_N[38]_i_1_n_0\
    );
\deci_low.mux_N[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(39),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(5),
      O => \deci_low.mux_N[39]_i_1_n_0\
    );
\deci_low.mux_N[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(3),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(1),
      O => \deci_low.mux_N[3]_i_1_n_0\
    );
\deci_low.mux_N[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(40),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(6),
      O => \deci_low.mux_N[40]_i_1_n_0\
    );
\deci_low.mux_N[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(41),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(7),
      O => \deci_low.mux_N[41]_i_1_n_0\
    );
\deci_low.mux_N[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(42),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(8),
      O => \deci_low.mux_N[42]_i_1_n_0\
    );
\deci_low.mux_N[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(43),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(9),
      O => \deci_low.mux_N[43]_i_1_n_0\
    );
\deci_low.mux_N[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(44),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(10),
      O => \deci_low.mux_N[44]_i_1_n_0\
    );
\deci_low.mux_N[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(45),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(11),
      O => \deci_low.mux_N[45]_i_1_n_0\
    );
\deci_low.mux_N[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(46),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(12),
      O => \deci_low.mux_N[46]_i_1_n_0\
    );
\deci_low.mux_N[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(47),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N2(13),
      O => \deci_low.mux_N[47]_i_1_n_0\
    );
\deci_low.mux_N[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(48),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(48),
      O => \deci_low.mux_N[48]_i_1_n_0\
    );
\deci_low.mux_N[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(49),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(49),
      O => \deci_low.mux_N[49]_i_1_n_0\
    );
\deci_low.mux_N[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(4),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(2),
      O => \deci_low.mux_N[4]_i_1_n_0\
    );
\deci_low.mux_N[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(50),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(0),
      O => \deci_low.mux_N[50]_i_1_n_0\
    );
\deci_low.mux_N[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(51),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(1),
      O => \deci_low.mux_N[51]_i_1_n_0\
    );
\deci_low.mux_N[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(52),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(2),
      O => \deci_low.mux_N[52]_i_1_n_0\
    );
\deci_low.mux_N[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(53),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(3),
      O => \deci_low.mux_N[53]_i_1_n_0\
    );
\deci_low.mux_N[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(54),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(4),
      O => \deci_low.mux_N[54]_i_1_n_0\
    );
\deci_low.mux_N[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(55),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(5),
      O => \deci_low.mux_N[55]_i_1_n_0\
    );
\deci_low.mux_N[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(56),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(6),
      O => \deci_low.mux_N[56]_i_1_n_0\
    );
\deci_low.mux_N[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(57),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(7),
      O => \deci_low.mux_N[57]_i_1_n_0\
    );
\deci_low.mux_N[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(58),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(8),
      O => \deci_low.mux_N[58]_i_1_n_0\
    );
\deci_low.mux_N[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(59),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(9),
      O => \deci_low.mux_N[59]_i_1_n_0\
    );
\deci_low.mux_N[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(5),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(3),
      O => \deci_low.mux_N[5]_i_1_n_0\
    );
\deci_low.mux_N[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(60),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(10),
      O => \deci_low.mux_N[60]_i_1_n_0\
    );
\deci_low.mux_N[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(61),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(11),
      O => \deci_low.mux_N[61]_i_1_n_0\
    );
\deci_low.mux_N[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(62),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(12),
      O => \deci_low.mux_N[62]_i_1_n_0\
    );
\deci_low.mux_N[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(63),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N3(13),
      O => \deci_low.mux_N[63]_i_1_n_0\
    );
\deci_low.mux_N[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(64),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(64),
      O => \deci_low.mux_N[64]_i_1_n_0\
    );
\deci_low.mux_N[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(65),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(65),
      O => \deci_low.mux_N[65]_i_1_n_0\
    );
\deci_low.mux_N[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(66),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(0),
      O => \deci_low.mux_N[66]_i_1_n_0\
    );
\deci_low.mux_N[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(67),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(1),
      O => \deci_low.mux_N[67]_i_1_n_0\
    );
\deci_low.mux_N[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(68),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(2),
      O => \deci_low.mux_N[68]_i_1_n_0\
    );
\deci_low.mux_N[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(69),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(3),
      O => \deci_low.mux_N[69]_i_1_n_0\
    );
\deci_low.mux_N[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(6),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(4),
      O => \deci_low.mux_N[6]_i_1_n_0\
    );
\deci_low.mux_N[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(70),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(4),
      O => \deci_low.mux_N[70]_i_1_n_0\
    );
\deci_low.mux_N[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(71),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(5),
      O => \deci_low.mux_N[71]_i_1_n_0\
    );
\deci_low.mux_N[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(72),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(6),
      O => \deci_low.mux_N[72]_i_1_n_0\
    );
\deci_low.mux_N[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(73),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(7),
      O => \deci_low.mux_N[73]_i_1_n_0\
    );
\deci_low.mux_N[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(74),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(8),
      O => \deci_low.mux_N[74]_i_1_n_0\
    );
\deci_low.mux_N[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(75),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(9),
      O => \deci_low.mux_N[75]_i_1_n_0\
    );
\deci_low.mux_N[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(76),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(10),
      O => \deci_low.mux_N[76]_i_1_n_0\
    );
\deci_low.mux_N[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(77),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(11),
      O => \deci_low.mux_N[77]_i_1_n_0\
    );
\deci_low.mux_N[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(78),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(12),
      O => \deci_low.mux_N[78]_i_1_n_0\
    );
\deci_low.mux_N[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(79),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N4(13),
      O => \deci_low.mux_N[79]_i_1_n_0\
    );
\deci_low.mux_N[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(7),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(5),
      O => \deci_low.mux_N[7]_i_1_n_0\
    );
\deci_low.mux_N[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(80),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(80),
      O => \deci_low.mux_N[80]_i_1_n_0\
    );
\deci_low.mux_N[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(81),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(81),
      O => \deci_low.mux_N[81]_i_1_n_0\
    );
\deci_low.mux_N[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(82),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(0),
      O => \deci_low.mux_N[82]_i_1_n_0\
    );
\deci_low.mux_N[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(83),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(1),
      O => \deci_low.mux_N[83]_i_1_n_0\
    );
\deci_low.mux_N[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(84),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(2),
      O => \deci_low.mux_N[84]_i_1_n_0\
    );
\deci_low.mux_N[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(85),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(3),
      O => \deci_low.mux_N[85]_i_1_n_0\
    );
\deci_low.mux_N[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(86),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(4),
      O => \deci_low.mux_N[86]_i_1_n_0\
    );
\deci_low.mux_N[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(87),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(5),
      O => \deci_low.mux_N[87]_i_1_n_0\
    );
\deci_low.mux_N[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(88),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(6),
      O => \deci_low.mux_N[88]_i_1_n_0\
    );
\deci_low.mux_N[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(89),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(7),
      O => \deci_low.mux_N[89]_i_1_n_0\
    );
\deci_low.mux_N[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(8),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(6),
      O => \deci_low.mux_N[8]_i_1_n_0\
    );
\deci_low.mux_N[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(90),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(8),
      O => \deci_low.mux_N[90]_i_1_n_0\
    );
\deci_low.mux_N[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(91),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(9),
      O => \deci_low.mux_N[91]_i_1_n_0\
    );
\deci_low.mux_N[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(92),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(10),
      O => \deci_low.mux_N[92]_i_1_n_0\
    );
\deci_low.mux_N[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(93),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(11),
      O => \deci_low.mux_N[93]_i_1_n_0\
    );
\deci_low.mux_N[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(94),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(12),
      O => \deci_low.mux_N[94]_i_1_n_0\
    );
\deci_low.mux_N[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(95),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N5(13),
      O => \deci_low.mux_N[95]_i_1_n_0\
    );
\deci_low.mux_N[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(96),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(96),
      O => \deci_low.mux_N[96]_i_1_n_0\
    );
\deci_low.mux_N[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(97),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_N(97),
      O => \deci_low.mux_N[97]_i_1_n_0\
    );
\deci_low.mux_N[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(98),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(0),
      O => \deci_low.mux_N[98]_i_1_n_0\
    );
\deci_low.mux_N[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(99),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N6(1),
      O => \deci_low.mux_N[99]_i_1_n_0\
    );
\deci_low.mux_N[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_N(9),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_N0(7),
      O => \deci_low.mux_N[9]_i_1_n_0\
    );
\deci_low.mux_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[0]_i_1_n_0\,
      Q => mux_N(0),
      R => '0'
    );
\deci_low.mux_N_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[100]_i_1_n_0\,
      Q => mux_N(100),
      R => '0'
    );
\deci_low.mux_N_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[101]_i_1_n_0\,
      Q => mux_N(101),
      R => '0'
    );
\deci_low.mux_N_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[102]_i_1_n_0\,
      Q => mux_N(102),
      R => '0'
    );
\deci_low.mux_N_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[103]_i_1_n_0\,
      Q => mux_N(103),
      R => '0'
    );
\deci_low.mux_N_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[104]_i_1_n_0\,
      Q => mux_N(104),
      R => '0'
    );
\deci_low.mux_N_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[105]_i_1_n_0\,
      Q => mux_N(105),
      R => '0'
    );
\deci_low.mux_N_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[106]_i_1_n_0\,
      Q => mux_N(106),
      R => '0'
    );
\deci_low.mux_N_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[107]_i_1_n_0\,
      Q => mux_N(107),
      R => '0'
    );
\deci_low.mux_N_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[108]_i_1_n_0\,
      Q => mux_N(108),
      R => '0'
    );
\deci_low.mux_N_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[109]_i_1_n_0\,
      Q => mux_N(109),
      R => '0'
    );
\deci_low.mux_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[10]_i_1_n_0\,
      Q => mux_N(10),
      R => '0'
    );
\deci_low.mux_N_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[110]_i_1_n_0\,
      Q => mux_N(110),
      R => '0'
    );
\deci_low.mux_N_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[111]_i_1_n_0\,
      Q => mux_N(111),
      R => '0'
    );
\deci_low.mux_N_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[112]_i_1_n_0\,
      Q => mux_N(112),
      R => '0'
    );
\deci_low.mux_N_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[113]_i_1_n_0\,
      Q => mux_N(113),
      R => '0'
    );
\deci_low.mux_N_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[114]_i_1_n_0\,
      Q => mux_N(114),
      R => '0'
    );
\deci_low.mux_N_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[115]_i_1_n_0\,
      Q => mux_N(115),
      R => '0'
    );
\deci_low.mux_N_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[116]_i_1_n_0\,
      Q => mux_N(116),
      R => '0'
    );
\deci_low.mux_N_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[117]_i_1_n_0\,
      Q => mux_N(117),
      R => '0'
    );
\deci_low.mux_N_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[118]_i_1_n_0\,
      Q => mux_N(118),
      R => '0'
    );
\deci_low.mux_N_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[119]_i_1_n_0\,
      Q => mux_N(119),
      R => '0'
    );
\deci_low.mux_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[11]_i_1_n_0\,
      Q => mux_N(11),
      R => '0'
    );
\deci_low.mux_N_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[120]_i_1_n_0\,
      Q => mux_N(120),
      R => '0'
    );
\deci_low.mux_N_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[121]_i_1_n_0\,
      Q => mux_N(121),
      R => '0'
    );
\deci_low.mux_N_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[122]_i_1_n_0\,
      Q => mux_N(122),
      R => '0'
    );
\deci_low.mux_N_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[123]_i_1_n_0\,
      Q => mux_N(123),
      R => '0'
    );
\deci_low.mux_N_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[124]_i_1_n_0\,
      Q => mux_N(124),
      R => '0'
    );
\deci_low.mux_N_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[125]_i_1_n_0\,
      Q => mux_N(125),
      R => '0'
    );
\deci_low.mux_N_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[126]_i_1_n_0\,
      Q => mux_N(126),
      R => '0'
    );
\deci_low.mux_N_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[127]_i_1_n_0\,
      Q => mux_N(127),
      R => '0'
    );
\deci_low.mux_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[12]_i_1_n_0\,
      Q => mux_N(12),
      R => '0'
    );
\deci_low.mux_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[13]_i_1_n_0\,
      Q => mux_N(13),
      R => '0'
    );
\deci_low.mux_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[14]_i_1_n_0\,
      Q => mux_N(14),
      R => '0'
    );
\deci_low.mux_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[15]_i_1_n_0\,
      Q => mux_N(15),
      R => '0'
    );
\deci_low.mux_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[16]_i_1_n_0\,
      Q => mux_N(16),
      R => '0'
    );
\deci_low.mux_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[17]_i_1_n_0\,
      Q => mux_N(17),
      R => '0'
    );
\deci_low.mux_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[18]_i_1_n_0\,
      Q => mux_N(18),
      R => '0'
    );
\deci_low.mux_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[19]_i_1_n_0\,
      Q => mux_N(19),
      R => '0'
    );
\deci_low.mux_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[1]_i_1_n_0\,
      Q => mux_N(1),
      R => '0'
    );
\deci_low.mux_N_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[20]_i_1_n_0\,
      Q => mux_N(20),
      R => '0'
    );
\deci_low.mux_N_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[21]_i_1_n_0\,
      Q => mux_N(21),
      R => '0'
    );
\deci_low.mux_N_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[22]_i_1_n_0\,
      Q => mux_N(22),
      R => '0'
    );
\deci_low.mux_N_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[23]_i_1_n_0\,
      Q => mux_N(23),
      R => '0'
    );
\deci_low.mux_N_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[24]_i_1_n_0\,
      Q => mux_N(24),
      R => '0'
    );
\deci_low.mux_N_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[25]_i_1_n_0\,
      Q => mux_N(25),
      R => '0'
    );
\deci_low.mux_N_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[26]_i_1_n_0\,
      Q => mux_N(26),
      R => '0'
    );
\deci_low.mux_N_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[27]_i_1_n_0\,
      Q => mux_N(27),
      R => '0'
    );
\deci_low.mux_N_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[28]_i_1_n_0\,
      Q => mux_N(28),
      R => '0'
    );
\deci_low.mux_N_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[29]_i_1_n_0\,
      Q => mux_N(29),
      R => '0'
    );
\deci_low.mux_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[2]_i_1_n_0\,
      Q => mux_N(2),
      R => '0'
    );
\deci_low.mux_N_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[30]_i_1_n_0\,
      Q => mux_N(30),
      R => '0'
    );
\deci_low.mux_N_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[31]_i_1_n_0\,
      Q => mux_N(31),
      R => '0'
    );
\deci_low.mux_N_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[32]_i_1_n_0\,
      Q => mux_N(32),
      R => '0'
    );
\deci_low.mux_N_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[33]_i_1_n_0\,
      Q => mux_N(33),
      R => '0'
    );
\deci_low.mux_N_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[34]_i_1_n_0\,
      Q => mux_N(34),
      R => '0'
    );
\deci_low.mux_N_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[35]_i_1_n_0\,
      Q => mux_N(35),
      R => '0'
    );
\deci_low.mux_N_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[36]_i_1_n_0\,
      Q => mux_N(36),
      R => '0'
    );
\deci_low.mux_N_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[37]_i_1_n_0\,
      Q => mux_N(37),
      R => '0'
    );
\deci_low.mux_N_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[38]_i_1_n_0\,
      Q => mux_N(38),
      R => '0'
    );
\deci_low.mux_N_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[39]_i_1_n_0\,
      Q => mux_N(39),
      R => '0'
    );
\deci_low.mux_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[3]_i_1_n_0\,
      Q => mux_N(3),
      R => '0'
    );
\deci_low.mux_N_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[40]_i_1_n_0\,
      Q => mux_N(40),
      R => '0'
    );
\deci_low.mux_N_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[41]_i_1_n_0\,
      Q => mux_N(41),
      R => '0'
    );
\deci_low.mux_N_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[42]_i_1_n_0\,
      Q => mux_N(42),
      R => '0'
    );
\deci_low.mux_N_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[43]_i_1_n_0\,
      Q => mux_N(43),
      R => '0'
    );
\deci_low.mux_N_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[44]_i_1_n_0\,
      Q => mux_N(44),
      R => '0'
    );
\deci_low.mux_N_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[45]_i_1_n_0\,
      Q => mux_N(45),
      R => '0'
    );
\deci_low.mux_N_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[46]_i_1_n_0\,
      Q => mux_N(46),
      R => '0'
    );
\deci_low.mux_N_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[47]_i_1_n_0\,
      Q => mux_N(47),
      R => '0'
    );
\deci_low.mux_N_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[48]_i_1_n_0\,
      Q => mux_N(48),
      R => '0'
    );
\deci_low.mux_N_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[49]_i_1_n_0\,
      Q => mux_N(49),
      R => '0'
    );
\deci_low.mux_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[4]_i_1_n_0\,
      Q => mux_N(4),
      R => '0'
    );
\deci_low.mux_N_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[50]_i_1_n_0\,
      Q => mux_N(50),
      R => '0'
    );
\deci_low.mux_N_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[51]_i_1_n_0\,
      Q => mux_N(51),
      R => '0'
    );
\deci_low.mux_N_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[52]_i_1_n_0\,
      Q => mux_N(52),
      R => '0'
    );
\deci_low.mux_N_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[53]_i_1_n_0\,
      Q => mux_N(53),
      R => '0'
    );
\deci_low.mux_N_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[54]_i_1_n_0\,
      Q => mux_N(54),
      R => '0'
    );
\deci_low.mux_N_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[55]_i_1_n_0\,
      Q => mux_N(55),
      R => '0'
    );
\deci_low.mux_N_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[56]_i_1_n_0\,
      Q => mux_N(56),
      R => '0'
    );
\deci_low.mux_N_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[57]_i_1_n_0\,
      Q => mux_N(57),
      R => '0'
    );
\deci_low.mux_N_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[58]_i_1_n_0\,
      Q => mux_N(58),
      R => '0'
    );
\deci_low.mux_N_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[59]_i_1_n_0\,
      Q => mux_N(59),
      R => '0'
    );
\deci_low.mux_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[5]_i_1_n_0\,
      Q => mux_N(5),
      R => '0'
    );
\deci_low.mux_N_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[60]_i_1_n_0\,
      Q => mux_N(60),
      R => '0'
    );
\deci_low.mux_N_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[61]_i_1_n_0\,
      Q => mux_N(61),
      R => '0'
    );
\deci_low.mux_N_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[62]_i_1_n_0\,
      Q => mux_N(62),
      R => '0'
    );
\deci_low.mux_N_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[63]_i_1_n_0\,
      Q => mux_N(63),
      R => '0'
    );
\deci_low.mux_N_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[64]_i_1_n_0\,
      Q => mux_N(64),
      R => '0'
    );
\deci_low.mux_N_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[65]_i_1_n_0\,
      Q => mux_N(65),
      R => '0'
    );
\deci_low.mux_N_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[66]_i_1_n_0\,
      Q => mux_N(66),
      R => '0'
    );
\deci_low.mux_N_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[67]_i_1_n_0\,
      Q => mux_N(67),
      R => '0'
    );
\deci_low.mux_N_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[68]_i_1_n_0\,
      Q => mux_N(68),
      R => '0'
    );
\deci_low.mux_N_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[69]_i_1_n_0\,
      Q => mux_N(69),
      R => '0'
    );
\deci_low.mux_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[6]_i_1_n_0\,
      Q => mux_N(6),
      R => '0'
    );
\deci_low.mux_N_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[70]_i_1_n_0\,
      Q => mux_N(70),
      R => '0'
    );
\deci_low.mux_N_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[71]_i_1_n_0\,
      Q => mux_N(71),
      R => '0'
    );
\deci_low.mux_N_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[72]_i_1_n_0\,
      Q => mux_N(72),
      R => '0'
    );
\deci_low.mux_N_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[73]_i_1_n_0\,
      Q => mux_N(73),
      R => '0'
    );
\deci_low.mux_N_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[74]_i_1_n_0\,
      Q => mux_N(74),
      R => '0'
    );
\deci_low.mux_N_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[75]_i_1_n_0\,
      Q => mux_N(75),
      R => '0'
    );
\deci_low.mux_N_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[76]_i_1_n_0\,
      Q => mux_N(76),
      R => '0'
    );
\deci_low.mux_N_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[77]_i_1_n_0\,
      Q => mux_N(77),
      R => '0'
    );
\deci_low.mux_N_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[78]_i_1_n_0\,
      Q => mux_N(78),
      R => '0'
    );
\deci_low.mux_N_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[79]_i_1_n_0\,
      Q => mux_N(79),
      R => '0'
    );
\deci_low.mux_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[7]_i_1_n_0\,
      Q => mux_N(7),
      R => '0'
    );
\deci_low.mux_N_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[80]_i_1_n_0\,
      Q => mux_N(80),
      R => '0'
    );
\deci_low.mux_N_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[81]_i_1_n_0\,
      Q => mux_N(81),
      R => '0'
    );
\deci_low.mux_N_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[82]_i_1_n_0\,
      Q => mux_N(82),
      R => '0'
    );
\deci_low.mux_N_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[83]_i_1_n_0\,
      Q => mux_N(83),
      R => '0'
    );
\deci_low.mux_N_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[84]_i_1_n_0\,
      Q => mux_N(84),
      R => '0'
    );
\deci_low.mux_N_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[85]_i_1_n_0\,
      Q => mux_N(85),
      R => '0'
    );
\deci_low.mux_N_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[86]_i_1_n_0\,
      Q => mux_N(86),
      R => '0'
    );
\deci_low.mux_N_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[87]_i_1_n_0\,
      Q => mux_N(87),
      R => '0'
    );
\deci_low.mux_N_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[88]_i_1_n_0\,
      Q => mux_N(88),
      R => '0'
    );
\deci_low.mux_N_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[89]_i_1_n_0\,
      Q => mux_N(89),
      R => '0'
    );
\deci_low.mux_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[8]_i_1_n_0\,
      Q => mux_N(8),
      R => '0'
    );
\deci_low.mux_N_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[90]_i_1_n_0\,
      Q => mux_N(90),
      R => '0'
    );
\deci_low.mux_N_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[91]_i_1_n_0\,
      Q => mux_N(91),
      R => '0'
    );
\deci_low.mux_N_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[92]_i_1_n_0\,
      Q => mux_N(92),
      R => '0'
    );
\deci_low.mux_N_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[93]_i_1_n_0\,
      Q => mux_N(93),
      R => '0'
    );
\deci_low.mux_N_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[94]_i_1_n_0\,
      Q => mux_N(94),
      R => '0'
    );
\deci_low.mux_N_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[95]_i_1_n_0\,
      Q => mux_N(95),
      R => '0'
    );
\deci_low.mux_N_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[96]_i_1_n_0\,
      Q => mux_N(96),
      R => '0'
    );
\deci_low.mux_N_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[97]_i_1_n_0\,
      Q => mux_N(97),
      R => '0'
    );
\deci_low.mux_N_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[98]_i_1_n_0\,
      Q => mux_N(98),
      R => '0'
    );
\deci_low.mux_N_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[99]_i_1_n_0\,
      Q => mux_N(99),
      R => '0'
    );
\deci_low.mux_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[9]_i_1_n_0\,
      Q => mux_N(9),
      R => '0'
    );
\deci_low.mux_W[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(0),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(0),
      O => \deci_low.mux_W[0]_i_1_n_0\
    );
\deci_low.mux_W[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(100),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(2),
      O => \deci_low.mux_W[100]_i_1_n_0\
    );
\deci_low.mux_W[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(101),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(3),
      O => \deci_low.mux_W[101]_i_1_n_0\
    );
\deci_low.mux_W[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(102),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(4),
      O => \deci_low.mux_W[102]_i_1_n_0\
    );
\deci_low.mux_W[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(103),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(5),
      O => \deci_low.mux_W[103]_i_1_n_0\
    );
\deci_low.mux_W[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(104),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(6),
      O => \deci_low.mux_W[104]_i_1_n_0\
    );
\deci_low.mux_W[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(105),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(7),
      O => \deci_low.mux_W[105]_i_1_n_0\
    );
\deci_low.mux_W[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(106),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(8),
      O => \deci_low.mux_W[106]_i_1_n_0\
    );
\deci_low.mux_W[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(107),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(9),
      O => \deci_low.mux_W[107]_i_1_n_0\
    );
\deci_low.mux_W[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(108),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(10),
      O => \deci_low.mux_W[108]_i_1_n_0\
    );
\deci_low.mux_W[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(109),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(11),
      O => \deci_low.mux_W[109]_i_1_n_0\
    );
\deci_low.mux_W[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(10),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(8),
      O => \deci_low.mux_W[10]_i_1_n_0\
    );
\deci_low.mux_W[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(110),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(12),
      O => \deci_low.mux_W[110]_i_1_n_0\
    );
\deci_low.mux_W[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(111),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(13),
      O => \deci_low.mux_W[111]_i_1_n_0\
    );
\deci_low.mux_W[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(112),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(112),
      O => \deci_low.mux_W[112]_i_1_n_0\
    );
\deci_low.mux_W[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(113),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(113),
      O => \deci_low.mux_W[113]_i_1_n_0\
    );
\deci_low.mux_W[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(114),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(0),
      O => \deci_low.mux_W[114]_i_1_n_0\
    );
\deci_low.mux_W[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(115),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(1),
      O => \deci_low.mux_W[115]_i_1_n_0\
    );
\deci_low.mux_W[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(116),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(2),
      O => \deci_low.mux_W[116]_i_1_n_0\
    );
\deci_low.mux_W[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(117),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(3),
      O => \deci_low.mux_W[117]_i_1_n_0\
    );
\deci_low.mux_W[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(118),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(4),
      O => \deci_low.mux_W[118]_i_1_n_0\
    );
\deci_low.mux_W[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(119),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(5),
      O => \deci_low.mux_W[119]_i_1_n_0\
    );
\deci_low.mux_W[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(11),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(9),
      O => \deci_low.mux_W[11]_i_1_n_0\
    );
\deci_low.mux_W[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(120),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(6),
      O => \deci_low.mux_W[120]_i_1_n_0\
    );
\deci_low.mux_W[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(121),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(7),
      O => \deci_low.mux_W[121]_i_1_n_0\
    );
\deci_low.mux_W[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(122),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(8),
      O => \deci_low.mux_W[122]_i_1_n_0\
    );
\deci_low.mux_W[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(123),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(9),
      O => \deci_low.mux_W[123]_i_1_n_0\
    );
\deci_low.mux_W[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(124),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(10),
      O => \deci_low.mux_W[124]_i_1_n_0\
    );
\deci_low.mux_W[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(125),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(11),
      O => \deci_low.mux_W[125]_i_1_n_0\
    );
\deci_low.mux_W[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(126),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(12),
      O => \deci_low.mux_W[126]_i_1_n_0\
    );
\deci_low.mux_W[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(127),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W7(13),
      O => \deci_low.mux_W[127]_i_1_n_0\
    );
\deci_low.mux_W[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(12),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(10),
      O => \deci_low.mux_W[12]_i_1_n_0\
    );
\deci_low.mux_W[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(13),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(11),
      O => \deci_low.mux_W[13]_i_1_n_0\
    );
\deci_low.mux_W[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(14),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(12),
      O => \deci_low.mux_W[14]_i_1_n_0\
    );
\deci_low.mux_W[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(15),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(13),
      O => \deci_low.mux_W[15]_i_1_n_0\
    );
\deci_low.mux_W[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(16),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(16),
      O => \deci_low.mux_W[16]_i_1_n_0\
    );
\deci_low.mux_W[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(17),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(17),
      O => \deci_low.mux_W[17]_i_1_n_0\
    );
\deci_low.mux_W[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(18),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(0),
      O => \deci_low.mux_W[18]_i_1_n_0\
    );
\deci_low.mux_W[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(19),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(1),
      O => \deci_low.mux_W[19]_i_1_n_0\
    );
\deci_low.mux_W[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(1),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(1),
      O => \deci_low.mux_W[1]_i_1_n_0\
    );
\deci_low.mux_W[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(20),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(2),
      O => \deci_low.mux_W[20]_i_1_n_0\
    );
\deci_low.mux_W[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(21),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(3),
      O => \deci_low.mux_W[21]_i_1_n_0\
    );
\deci_low.mux_W[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(22),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(4),
      O => \deci_low.mux_W[22]_i_1_n_0\
    );
\deci_low.mux_W[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(23),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(5),
      O => \deci_low.mux_W[23]_i_1_n_0\
    );
\deci_low.mux_W[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(24),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(6),
      O => \deci_low.mux_W[24]_i_1_n_0\
    );
\deci_low.mux_W[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(25),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(7),
      O => \deci_low.mux_W[25]_i_1_n_0\
    );
\deci_low.mux_W[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(26),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(8),
      O => \deci_low.mux_W[26]_i_1_n_0\
    );
\deci_low.mux_W[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(27),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(9),
      O => \deci_low.mux_W[27]_i_1_n_0\
    );
\deci_low.mux_W[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(28),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(10),
      O => \deci_low.mux_W[28]_i_1_n_0\
    );
\deci_low.mux_W[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(29),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(11),
      O => \deci_low.mux_W[29]_i_1_n_0\
    );
\deci_low.mux_W[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(2),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(0),
      O => \deci_low.mux_W[2]_i_1_n_0\
    );
\deci_low.mux_W[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(30),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(12),
      O => \deci_low.mux_W[30]_i_1_n_0\
    );
\deci_low.mux_W[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(31),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W1(13),
      O => \deci_low.mux_W[31]_i_1_n_0\
    );
\deci_low.mux_W[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(32),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(32),
      O => \deci_low.mux_W[32]_i_1_n_0\
    );
\deci_low.mux_W[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(33),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(33),
      O => \deci_low.mux_W[33]_i_1_n_0\
    );
\deci_low.mux_W[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(34),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(0),
      O => \deci_low.mux_W[34]_i_1_n_0\
    );
\deci_low.mux_W[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(35),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(1),
      O => \deci_low.mux_W[35]_i_1_n_0\
    );
\deci_low.mux_W[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(36),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(2),
      O => \deci_low.mux_W[36]_i_1_n_0\
    );
\deci_low.mux_W[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(37),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(3),
      O => \deci_low.mux_W[37]_i_1_n_0\
    );
\deci_low.mux_W[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(38),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(4),
      O => \deci_low.mux_W[38]_i_1_n_0\
    );
\deci_low.mux_W[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(39),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(5),
      O => \deci_low.mux_W[39]_i_1_n_0\
    );
\deci_low.mux_W[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(3),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(1),
      O => \deci_low.mux_W[3]_i_1_n_0\
    );
\deci_low.mux_W[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(40),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(6),
      O => \deci_low.mux_W[40]_i_1_n_0\
    );
\deci_low.mux_W[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(41),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(7),
      O => \deci_low.mux_W[41]_i_1_n_0\
    );
\deci_low.mux_W[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(42),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(8),
      O => \deci_low.mux_W[42]_i_1_n_0\
    );
\deci_low.mux_W[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(43),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(9),
      O => \deci_low.mux_W[43]_i_1_n_0\
    );
\deci_low.mux_W[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(44),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(10),
      O => \deci_low.mux_W[44]_i_1_n_0\
    );
\deci_low.mux_W[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(45),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(11),
      O => \deci_low.mux_W[45]_i_1_n_0\
    );
\deci_low.mux_W[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(46),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(12),
      O => \deci_low.mux_W[46]_i_1_n_0\
    );
\deci_low.mux_W[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(47),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W2(13),
      O => \deci_low.mux_W[47]_i_1_n_0\
    );
\deci_low.mux_W[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(48),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(48),
      O => \deci_low.mux_W[48]_i_1_n_0\
    );
\deci_low.mux_W[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(49),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(49),
      O => \deci_low.mux_W[49]_i_1_n_0\
    );
\deci_low.mux_W[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(4),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(2),
      O => \deci_low.mux_W[4]_i_1_n_0\
    );
\deci_low.mux_W[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(50),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(0),
      O => \deci_low.mux_W[50]_i_1_n_0\
    );
\deci_low.mux_W[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(51),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(1),
      O => \deci_low.mux_W[51]_i_1_n_0\
    );
\deci_low.mux_W[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(52),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(2),
      O => \deci_low.mux_W[52]_i_1_n_0\
    );
\deci_low.mux_W[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(53),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(3),
      O => \deci_low.mux_W[53]_i_1_n_0\
    );
\deci_low.mux_W[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(54),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(4),
      O => \deci_low.mux_W[54]_i_1_n_0\
    );
\deci_low.mux_W[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(55),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(5),
      O => \deci_low.mux_W[55]_i_1_n_0\
    );
\deci_low.mux_W[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(56),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(6),
      O => \deci_low.mux_W[56]_i_1_n_0\
    );
\deci_low.mux_W[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(57),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(7),
      O => \deci_low.mux_W[57]_i_1_n_0\
    );
\deci_low.mux_W[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(58),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(8),
      O => \deci_low.mux_W[58]_i_1_n_0\
    );
\deci_low.mux_W[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(59),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(9),
      O => \deci_low.mux_W[59]_i_1_n_0\
    );
\deci_low.mux_W[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(5),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(3),
      O => \deci_low.mux_W[5]_i_1_n_0\
    );
\deci_low.mux_W[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(60),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(10),
      O => \deci_low.mux_W[60]_i_1_n_0\
    );
\deci_low.mux_W[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(61),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(11),
      O => \deci_low.mux_W[61]_i_1_n_0\
    );
\deci_low.mux_W[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(62),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(12),
      O => \deci_low.mux_W[62]_i_1_n_0\
    );
\deci_low.mux_W[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(63),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W3(13),
      O => \deci_low.mux_W[63]_i_1_n_0\
    );
\deci_low.mux_W[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(64),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(64),
      O => \deci_low.mux_W[64]_i_1_n_0\
    );
\deci_low.mux_W[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(65),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(65),
      O => \deci_low.mux_W[65]_i_1_n_0\
    );
\deci_low.mux_W[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(66),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(0),
      O => \deci_low.mux_W[66]_i_1_n_0\
    );
\deci_low.mux_W[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(67),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(1),
      O => \deci_low.mux_W[67]_i_1_n_0\
    );
\deci_low.mux_W[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(68),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(2),
      O => \deci_low.mux_W[68]_i_1_n_0\
    );
\deci_low.mux_W[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(69),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(3),
      O => \deci_low.mux_W[69]_i_1_n_0\
    );
\deci_low.mux_W[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(6),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(4),
      O => \deci_low.mux_W[6]_i_1_n_0\
    );
\deci_low.mux_W[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(70),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(4),
      O => \deci_low.mux_W[70]_i_1_n_0\
    );
\deci_low.mux_W[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(71),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(5),
      O => \deci_low.mux_W[71]_i_1_n_0\
    );
\deci_low.mux_W[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(72),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(6),
      O => \deci_low.mux_W[72]_i_1_n_0\
    );
\deci_low.mux_W[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(73),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(7),
      O => \deci_low.mux_W[73]_i_1_n_0\
    );
\deci_low.mux_W[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(74),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(8),
      O => \deci_low.mux_W[74]_i_1_n_0\
    );
\deci_low.mux_W[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(75),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(9),
      O => \deci_low.mux_W[75]_i_1_n_0\
    );
\deci_low.mux_W[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(76),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(10),
      O => \deci_low.mux_W[76]_i_1_n_0\
    );
\deci_low.mux_W[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(77),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(11),
      O => \deci_low.mux_W[77]_i_1_n_0\
    );
\deci_low.mux_W[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(78),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(12),
      O => \deci_low.mux_W[78]_i_1_n_0\
    );
\deci_low.mux_W[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(79),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W4(13),
      O => \deci_low.mux_W[79]_i_1_n_0\
    );
\deci_low.mux_W[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(7),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(5),
      O => \deci_low.mux_W[7]_i_1_n_0\
    );
\deci_low.mux_W[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(80),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(80),
      O => \deci_low.mux_W[80]_i_1_n_0\
    );
\deci_low.mux_W[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(81),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(81),
      O => \deci_low.mux_W[81]_i_1_n_0\
    );
\deci_low.mux_W[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(82),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(0),
      O => \deci_low.mux_W[82]_i_1_n_0\
    );
\deci_low.mux_W[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(83),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(1),
      O => \deci_low.mux_W[83]_i_1_n_0\
    );
\deci_low.mux_W[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(84),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(2),
      O => \deci_low.mux_W[84]_i_1_n_0\
    );
\deci_low.mux_W[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(85),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(3),
      O => \deci_low.mux_W[85]_i_1_n_0\
    );
\deci_low.mux_W[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(86),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(4),
      O => \deci_low.mux_W[86]_i_1_n_0\
    );
\deci_low.mux_W[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(87),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(5),
      O => \deci_low.mux_W[87]_i_1_n_0\
    );
\deci_low.mux_W[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(88),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(6),
      O => \deci_low.mux_W[88]_i_1_n_0\
    );
\deci_low.mux_W[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(89),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(7),
      O => \deci_low.mux_W[89]_i_1_n_0\
    );
\deci_low.mux_W[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(8),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(6),
      O => \deci_low.mux_W[8]_i_1_n_0\
    );
\deci_low.mux_W[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(90),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(8),
      O => \deci_low.mux_W[90]_i_1_n_0\
    );
\deci_low.mux_W[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(91),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(9),
      O => \deci_low.mux_W[91]_i_1_n_0\
    );
\deci_low.mux_W[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(92),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(10),
      O => \deci_low.mux_W[92]_i_1_n_0\
    );
\deci_low.mux_W[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(93),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(11),
      O => \deci_low.mux_W[93]_i_1_n_0\
    );
\deci_low.mux_W[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(94),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(12),
      O => \deci_low.mux_W[94]_i_1_n_0\
    );
\deci_low.mux_W[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(95),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W5(13),
      O => \deci_low.mux_W[95]_i_1_n_0\
    );
\deci_low.mux_W[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(96),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(96),
      O => \deci_low.mux_W[96]_i_1_n_0\
    );
\deci_low.mux_W[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(97),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_out_W(97),
      O => \deci_low.mux_W[97]_i_1_n_0\
    );
\deci_low.mux_W[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(98),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(0),
      O => \deci_low.mux_W[98]_i_1_n_0\
    );
\deci_low.mux_W[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(99),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W6(1),
      O => \deci_low.mux_W[99]_i_1_n_0\
    );
\deci_low.mux_W[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data_W(9),
      I1 => adc_active,
      I2 => \^sim_active\,
      I3 => \deci_low.mux_active_i_2_n_0\,
      I4 => sim_W0(7),
      O => \deci_low.mux_W[9]_i_1_n_0\
    );
\deci_low.mux_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[0]_i_1_n_0\,
      Q => mux_W(0),
      R => '0'
    );
\deci_low.mux_W_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[100]_i_1_n_0\,
      Q => mux_W(100),
      R => '0'
    );
\deci_low.mux_W_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[101]_i_1_n_0\,
      Q => mux_W(101),
      R => '0'
    );
\deci_low.mux_W_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[102]_i_1_n_0\,
      Q => mux_W(102),
      R => '0'
    );
\deci_low.mux_W_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[103]_i_1_n_0\,
      Q => mux_W(103),
      R => '0'
    );
\deci_low.mux_W_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[104]_i_1_n_0\,
      Q => mux_W(104),
      R => '0'
    );
\deci_low.mux_W_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[105]_i_1_n_0\,
      Q => mux_W(105),
      R => '0'
    );
\deci_low.mux_W_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[106]_i_1_n_0\,
      Q => mux_W(106),
      R => '0'
    );
\deci_low.mux_W_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[107]_i_1_n_0\,
      Q => mux_W(107),
      R => '0'
    );
\deci_low.mux_W_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[108]_i_1_n_0\,
      Q => mux_W(108),
      R => '0'
    );
\deci_low.mux_W_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[109]_i_1_n_0\,
      Q => mux_W(109),
      R => '0'
    );
\deci_low.mux_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[10]_i_1_n_0\,
      Q => mux_W(10),
      R => '0'
    );
\deci_low.mux_W_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[110]_i_1_n_0\,
      Q => mux_W(110),
      R => '0'
    );
\deci_low.mux_W_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[111]_i_1_n_0\,
      Q => mux_W(111),
      R => '0'
    );
\deci_low.mux_W_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[112]_i_1_n_0\,
      Q => mux_W(112),
      R => '0'
    );
\deci_low.mux_W_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[113]_i_1_n_0\,
      Q => mux_W(113),
      R => '0'
    );
\deci_low.mux_W_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[114]_i_1_n_0\,
      Q => mux_W(114),
      R => '0'
    );
\deci_low.mux_W_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[115]_i_1_n_0\,
      Q => mux_W(115),
      R => '0'
    );
\deci_low.mux_W_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[116]_i_1_n_0\,
      Q => mux_W(116),
      R => '0'
    );
\deci_low.mux_W_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[117]_i_1_n_0\,
      Q => mux_W(117),
      R => '0'
    );
\deci_low.mux_W_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[118]_i_1_n_0\,
      Q => mux_W(118),
      R => '0'
    );
\deci_low.mux_W_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[119]_i_1_n_0\,
      Q => mux_W(119),
      R => '0'
    );
\deci_low.mux_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[11]_i_1_n_0\,
      Q => mux_W(11),
      R => '0'
    );
\deci_low.mux_W_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[120]_i_1_n_0\,
      Q => mux_W(120),
      R => '0'
    );
\deci_low.mux_W_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[121]_i_1_n_0\,
      Q => mux_W(121),
      R => '0'
    );
\deci_low.mux_W_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[122]_i_1_n_0\,
      Q => mux_W(122),
      R => '0'
    );
\deci_low.mux_W_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[123]_i_1_n_0\,
      Q => mux_W(123),
      R => '0'
    );
\deci_low.mux_W_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[124]_i_1_n_0\,
      Q => mux_W(124),
      R => '0'
    );
\deci_low.mux_W_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[125]_i_1_n_0\,
      Q => mux_W(125),
      R => '0'
    );
\deci_low.mux_W_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[126]_i_1_n_0\,
      Q => mux_W(126),
      R => '0'
    );
\deci_low.mux_W_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[127]_i_1_n_0\,
      Q => mux_W(127),
      R => '0'
    );
\deci_low.mux_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[12]_i_1_n_0\,
      Q => mux_W(12),
      R => '0'
    );
\deci_low.mux_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[13]_i_1_n_0\,
      Q => mux_W(13),
      R => '0'
    );
\deci_low.mux_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[14]_i_1_n_0\,
      Q => mux_W(14),
      R => '0'
    );
\deci_low.mux_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[15]_i_1_n_0\,
      Q => mux_W(15),
      R => '0'
    );
\deci_low.mux_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[16]_i_1_n_0\,
      Q => mux_W(16),
      R => '0'
    );
\deci_low.mux_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[17]_i_1_n_0\,
      Q => mux_W(17),
      R => '0'
    );
\deci_low.mux_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[18]_i_1_n_0\,
      Q => mux_W(18),
      R => '0'
    );
\deci_low.mux_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[19]_i_1_n_0\,
      Q => mux_W(19),
      R => '0'
    );
\deci_low.mux_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[1]_i_1_n_0\,
      Q => mux_W(1),
      R => '0'
    );
\deci_low.mux_W_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[20]_i_1_n_0\,
      Q => mux_W(20),
      R => '0'
    );
\deci_low.mux_W_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[21]_i_1_n_0\,
      Q => mux_W(21),
      R => '0'
    );
\deci_low.mux_W_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[22]_i_1_n_0\,
      Q => mux_W(22),
      R => '0'
    );
\deci_low.mux_W_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[23]_i_1_n_0\,
      Q => mux_W(23),
      R => '0'
    );
\deci_low.mux_W_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[24]_i_1_n_0\,
      Q => mux_W(24),
      R => '0'
    );
\deci_low.mux_W_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[25]_i_1_n_0\,
      Q => mux_W(25),
      R => '0'
    );
\deci_low.mux_W_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[26]_i_1_n_0\,
      Q => mux_W(26),
      R => '0'
    );
\deci_low.mux_W_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[27]_i_1_n_0\,
      Q => mux_W(27),
      R => '0'
    );
\deci_low.mux_W_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[28]_i_1_n_0\,
      Q => mux_W(28),
      R => '0'
    );
\deci_low.mux_W_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[29]_i_1_n_0\,
      Q => mux_W(29),
      R => '0'
    );
\deci_low.mux_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[2]_i_1_n_0\,
      Q => mux_W(2),
      R => '0'
    );
\deci_low.mux_W_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[30]_i_1_n_0\,
      Q => mux_W(30),
      R => '0'
    );
\deci_low.mux_W_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[31]_i_1_n_0\,
      Q => mux_W(31),
      R => '0'
    );
\deci_low.mux_W_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[32]_i_1_n_0\,
      Q => mux_W(32),
      R => '0'
    );
\deci_low.mux_W_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[33]_i_1_n_0\,
      Q => mux_W(33),
      R => '0'
    );
\deci_low.mux_W_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[34]_i_1_n_0\,
      Q => mux_W(34),
      R => '0'
    );
\deci_low.mux_W_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[35]_i_1_n_0\,
      Q => mux_W(35),
      R => '0'
    );
\deci_low.mux_W_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[36]_i_1_n_0\,
      Q => mux_W(36),
      R => '0'
    );
\deci_low.mux_W_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[37]_i_1_n_0\,
      Q => mux_W(37),
      R => '0'
    );
\deci_low.mux_W_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[38]_i_1_n_0\,
      Q => mux_W(38),
      R => '0'
    );
\deci_low.mux_W_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[39]_i_1_n_0\,
      Q => mux_W(39),
      R => '0'
    );
\deci_low.mux_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[3]_i_1_n_0\,
      Q => mux_W(3),
      R => '0'
    );
\deci_low.mux_W_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[40]_i_1_n_0\,
      Q => mux_W(40),
      R => '0'
    );
\deci_low.mux_W_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[41]_i_1_n_0\,
      Q => mux_W(41),
      R => '0'
    );
\deci_low.mux_W_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[42]_i_1_n_0\,
      Q => mux_W(42),
      R => '0'
    );
\deci_low.mux_W_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[43]_i_1_n_0\,
      Q => mux_W(43),
      R => '0'
    );
\deci_low.mux_W_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[44]_i_1_n_0\,
      Q => mux_W(44),
      R => '0'
    );
\deci_low.mux_W_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[45]_i_1_n_0\,
      Q => mux_W(45),
      R => '0'
    );
\deci_low.mux_W_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[46]_i_1_n_0\,
      Q => mux_W(46),
      R => '0'
    );
\deci_low.mux_W_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[47]_i_1_n_0\,
      Q => mux_W(47),
      R => '0'
    );
\deci_low.mux_W_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[48]_i_1_n_0\,
      Q => mux_W(48),
      R => '0'
    );
\deci_low.mux_W_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[49]_i_1_n_0\,
      Q => mux_W(49),
      R => '0'
    );
\deci_low.mux_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[4]_i_1_n_0\,
      Q => mux_W(4),
      R => '0'
    );
\deci_low.mux_W_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[50]_i_1_n_0\,
      Q => mux_W(50),
      R => '0'
    );
\deci_low.mux_W_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[51]_i_1_n_0\,
      Q => mux_W(51),
      R => '0'
    );
\deci_low.mux_W_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[52]_i_1_n_0\,
      Q => mux_W(52),
      R => '0'
    );
\deci_low.mux_W_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[53]_i_1_n_0\,
      Q => mux_W(53),
      R => '0'
    );
\deci_low.mux_W_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[54]_i_1_n_0\,
      Q => mux_W(54),
      R => '0'
    );
\deci_low.mux_W_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[55]_i_1_n_0\,
      Q => mux_W(55),
      R => '0'
    );
\deci_low.mux_W_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[56]_i_1_n_0\,
      Q => mux_W(56),
      R => '0'
    );
\deci_low.mux_W_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[57]_i_1_n_0\,
      Q => mux_W(57),
      R => '0'
    );
\deci_low.mux_W_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[58]_i_1_n_0\,
      Q => mux_W(58),
      R => '0'
    );
\deci_low.mux_W_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[59]_i_1_n_0\,
      Q => mux_W(59),
      R => '0'
    );
\deci_low.mux_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[5]_i_1_n_0\,
      Q => mux_W(5),
      R => '0'
    );
\deci_low.mux_W_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[60]_i_1_n_0\,
      Q => mux_W(60),
      R => '0'
    );
\deci_low.mux_W_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[61]_i_1_n_0\,
      Q => mux_W(61),
      R => '0'
    );
\deci_low.mux_W_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[62]_i_1_n_0\,
      Q => mux_W(62),
      R => '0'
    );
\deci_low.mux_W_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[63]_i_1_n_0\,
      Q => mux_W(63),
      R => '0'
    );
\deci_low.mux_W_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[64]_i_1_n_0\,
      Q => mux_W(64),
      R => '0'
    );
\deci_low.mux_W_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[65]_i_1_n_0\,
      Q => mux_W(65),
      R => '0'
    );
\deci_low.mux_W_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[66]_i_1_n_0\,
      Q => mux_W(66),
      R => '0'
    );
\deci_low.mux_W_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[67]_i_1_n_0\,
      Q => mux_W(67),
      R => '0'
    );
\deci_low.mux_W_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[68]_i_1_n_0\,
      Q => mux_W(68),
      R => '0'
    );
\deci_low.mux_W_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[69]_i_1_n_0\,
      Q => mux_W(69),
      R => '0'
    );
\deci_low.mux_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[6]_i_1_n_0\,
      Q => mux_W(6),
      R => '0'
    );
\deci_low.mux_W_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[70]_i_1_n_0\,
      Q => mux_W(70),
      R => '0'
    );
\deci_low.mux_W_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[71]_i_1_n_0\,
      Q => mux_W(71),
      R => '0'
    );
\deci_low.mux_W_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[72]_i_1_n_0\,
      Q => mux_W(72),
      R => '0'
    );
\deci_low.mux_W_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[73]_i_1_n_0\,
      Q => mux_W(73),
      R => '0'
    );
\deci_low.mux_W_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[74]_i_1_n_0\,
      Q => mux_W(74),
      R => '0'
    );
\deci_low.mux_W_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[75]_i_1_n_0\,
      Q => mux_W(75),
      R => '0'
    );
\deci_low.mux_W_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[76]_i_1_n_0\,
      Q => mux_W(76),
      R => '0'
    );
\deci_low.mux_W_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[77]_i_1_n_0\,
      Q => mux_W(77),
      R => '0'
    );
\deci_low.mux_W_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[78]_i_1_n_0\,
      Q => mux_W(78),
      R => '0'
    );
\deci_low.mux_W_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[79]_i_1_n_0\,
      Q => mux_W(79),
      R => '0'
    );
\deci_low.mux_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[7]_i_1_n_0\,
      Q => mux_W(7),
      R => '0'
    );
\deci_low.mux_W_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[80]_i_1_n_0\,
      Q => mux_W(80),
      R => '0'
    );
\deci_low.mux_W_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[81]_i_1_n_0\,
      Q => mux_W(81),
      R => '0'
    );
\deci_low.mux_W_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[82]_i_1_n_0\,
      Q => mux_W(82),
      R => '0'
    );
\deci_low.mux_W_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[83]_i_1_n_0\,
      Q => mux_W(83),
      R => '0'
    );
\deci_low.mux_W_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[84]_i_1_n_0\,
      Q => mux_W(84),
      R => '0'
    );
\deci_low.mux_W_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[85]_i_1_n_0\,
      Q => mux_W(85),
      R => '0'
    );
\deci_low.mux_W_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[86]_i_1_n_0\,
      Q => mux_W(86),
      R => '0'
    );
\deci_low.mux_W_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[87]_i_1_n_0\,
      Q => mux_W(87),
      R => '0'
    );
\deci_low.mux_W_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[88]_i_1_n_0\,
      Q => mux_W(88),
      R => '0'
    );
\deci_low.mux_W_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[89]_i_1_n_0\,
      Q => mux_W(89),
      R => '0'
    );
\deci_low.mux_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[8]_i_1_n_0\,
      Q => mux_W(8),
      R => '0'
    );
\deci_low.mux_W_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[90]_i_1_n_0\,
      Q => mux_W(90),
      R => '0'
    );
\deci_low.mux_W_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[91]_i_1_n_0\,
      Q => mux_W(91),
      R => '0'
    );
\deci_low.mux_W_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[92]_i_1_n_0\,
      Q => mux_W(92),
      R => '0'
    );
\deci_low.mux_W_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[93]_i_1_n_0\,
      Q => mux_W(93),
      R => '0'
    );
\deci_low.mux_W_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[94]_i_1_n_0\,
      Q => mux_W(94),
      R => '0'
    );
\deci_low.mux_W_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[95]_i_1_n_0\,
      Q => mux_W(95),
      R => '0'
    );
\deci_low.mux_W_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[96]_i_1_n_0\,
      Q => mux_W(96),
      R => '0'
    );
\deci_low.mux_W_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[97]_i_1_n_0\,
      Q => mux_W(97),
      R => '0'
    );
\deci_low.mux_W_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[98]_i_1_n_0\,
      Q => mux_W(98),
      R => '0'
    );
\deci_low.mux_W_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[99]_i_1_n_0\,
      Q => mux_W(99),
      R => '0'
    );
\deci_low.mux_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_W[9]_i_1_n_0\,
      Q => mux_W(9),
      R => '0'
    );
\deci_low.mux_active_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800080FF8000"
    )
        port map (
      I0 => ready_N,
      I1 => ready_E,
      I2 => ready_W,
      I3 => adc_active,
      I4 => \^sim_active\,
      I5 => \deci_low.mux_active_i_2_n_0\,
      O => \deci_low.mux_active_i_1_n_0\
    );
\deci_low.mux_active_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sim_empty_N,
      I1 => sim_empty_E,
      I2 => sim_empty_W,
      O => \deci_low.mux_active_i_2_n_0\
    );
\deci_low.mux_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_active_i_1_n_0\,
      Q => mux_active,
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
\deci_low.sim_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_wr,
      I2 => sim_resetn,
      O => \deci_low.sim_count[0]_i_1_n_0\
    );
\deci_low.sim_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sim_wr,
      I1 => sim_count(1),
      I2 => sim_count(0),
      I3 => sim_resetn,
      O => \deci_low.sim_count[1]_i_1_n_0\
    );
\deci_low.sim_count[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => sim_count(1),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_resetn,
      O => \deci_low.sim_count[1]_i_2_n_0\
    );
\deci_low.sim_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => '1',
      D => \deci_low.sim_count[0]_i_1_n_0\,
      Q => sim_count(0),
      R => \deci_low.sim_count[1]_i_1_n_0\
    );
\deci_low.sim_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => '1',
      D => \deci_low.sim_count[1]_i_2_n_0\,
      Q => sim_count(1),
      R => \deci_low.sim_count[1]_i_1_n_0\
    );
\deci_low.sim_curr_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(0),
      I3 => sim_wr,
      I4 => sim_curr_data(0),
      O => p_0_in1_in(0)
    );
\deci_low.sim_curr_data[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(4),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(100),
      I4 => sim_count(0),
      O => p_0_in1_in(100)
    );
\deci_low.sim_curr_data[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(5),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(101),
      I4 => sim_count(0),
      O => p_0_in1_in(101)
    );
\deci_low.sim_curr_data[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(6),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(102),
      I4 => sim_count(0),
      O => p_0_in1_in(102)
    );
\deci_low.sim_curr_data[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(7),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(103),
      I4 => sim_count(0),
      O => p_0_in1_in(103)
    );
\deci_low.sim_curr_data[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(8),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(104),
      I4 => sim_count(0),
      O => p_0_in1_in(104)
    );
\deci_low.sim_curr_data[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(9),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(105),
      I4 => sim_count(0),
      O => p_0_in1_in(105)
    );
\deci_low.sim_curr_data[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(10),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(106),
      I4 => sim_count(0),
      O => p_0_in1_in(106)
    );
\deci_low.sim_curr_data[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(11),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(107),
      I4 => sim_count(0),
      O => p_0_in1_in(107)
    );
\deci_low.sim_curr_data[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(12),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(108),
      I4 => sim_count(0),
      O => p_0_in1_in(108)
    );
\deci_low.sim_curr_data[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(13),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(109),
      I4 => sim_count(0),
      O => p_0_in1_in(109)
    );
\deci_low.sim_curr_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(10),
      I3 => sim_wr,
      I4 => sim_curr_data(10),
      O => p_0_in1_in(10)
    );
\deci_low.sim_curr_data[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(14),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(110),
      I4 => sim_count(0),
      O => p_0_in1_in(110)
    );
\deci_low.sim_curr_data[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(15),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(111),
      I4 => sim_count(0),
      O => p_0_in1_in(111)
    );
\deci_low.sim_curr_data[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(16),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(112),
      I4 => sim_count(0),
      O => p_0_in1_in(112)
    );
\deci_low.sim_curr_data[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(17),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(113),
      I4 => sim_count(0),
      O => p_0_in1_in(113)
    );
\deci_low.sim_curr_data[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(18),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(114),
      I4 => sim_count(0),
      O => p_0_in1_in(114)
    );
\deci_low.sim_curr_data[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(19),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(115),
      I4 => sim_count(0),
      O => p_0_in1_in(115)
    );
\deci_low.sim_curr_data[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(20),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(116),
      I4 => sim_count(0),
      O => p_0_in1_in(116)
    );
\deci_low.sim_curr_data[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(21),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(117),
      I4 => sim_count(0),
      O => p_0_in1_in(117)
    );
\deci_low.sim_curr_data[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(22),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(118),
      I4 => sim_count(0),
      O => p_0_in1_in(118)
    );
\deci_low.sim_curr_data[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(23),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(119),
      I4 => sim_count(0),
      O => p_0_in1_in(119)
    );
\deci_low.sim_curr_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(11),
      I3 => sim_wr,
      I4 => sim_curr_data(11),
      O => p_0_in1_in(11)
    );
\deci_low.sim_curr_data[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(24),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(120),
      I4 => sim_count(0),
      O => p_0_in1_in(120)
    );
\deci_low.sim_curr_data[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(25),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(121),
      I4 => sim_count(0),
      O => p_0_in1_in(121)
    );
\deci_low.sim_curr_data[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(26),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(122),
      I4 => sim_count(0),
      O => p_0_in1_in(122)
    );
\deci_low.sim_curr_data[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(27),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(123),
      I4 => sim_count(0),
      O => p_0_in1_in(123)
    );
\deci_low.sim_curr_data[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(28),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(124),
      I4 => sim_count(0),
      O => p_0_in1_in(124)
    );
\deci_low.sim_curr_data[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(29),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(125),
      I4 => sim_count(0),
      O => p_0_in1_in(125)
    );
\deci_low.sim_curr_data[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(30),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(126),
      I4 => sim_count(0),
      O => p_0_in1_in(126)
    );
\deci_low.sim_curr_data[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(31),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(127),
      I4 => sim_count(0),
      O => p_0_in1_in(127)
    );
\deci_low.sim_curr_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(12),
      I3 => sim_wr,
      I4 => sim_curr_data(12),
      O => p_0_in1_in(12)
    );
\deci_low.sim_curr_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(13),
      I3 => sim_wr,
      I4 => sim_curr_data(13),
      O => p_0_in1_in(13)
    );
\deci_low.sim_curr_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(14),
      I3 => sim_wr,
      I4 => sim_curr_data(14),
      O => p_0_in1_in(14)
    );
\deci_low.sim_curr_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(15),
      I3 => sim_wr,
      I4 => sim_curr_data(15),
      O => p_0_in1_in(15)
    );
\deci_low.sim_curr_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(16),
      I3 => sim_wr,
      I4 => sim_curr_data(16),
      O => p_0_in1_in(16)
    );
\deci_low.sim_curr_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(17),
      I3 => sim_wr,
      I4 => sim_curr_data(17),
      O => p_0_in1_in(17)
    );
\deci_low.sim_curr_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(18),
      I3 => sim_wr,
      I4 => sim_curr_data(18),
      O => p_0_in1_in(18)
    );
\deci_low.sim_curr_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(19),
      I3 => sim_wr,
      I4 => sim_curr_data(19),
      O => p_0_in1_in(19)
    );
\deci_low.sim_curr_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(1),
      I3 => sim_wr,
      I4 => sim_curr_data(1),
      O => p_0_in1_in(1)
    );
\deci_low.sim_curr_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(20),
      I3 => sim_wr,
      I4 => sim_curr_data(20),
      O => p_0_in1_in(20)
    );
\deci_low.sim_curr_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(21),
      I3 => sim_wr,
      I4 => sim_curr_data(21),
      O => p_0_in1_in(21)
    );
\deci_low.sim_curr_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(22),
      I3 => sim_wr,
      I4 => sim_curr_data(22),
      O => p_0_in1_in(22)
    );
\deci_low.sim_curr_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(23),
      I3 => sim_wr,
      I4 => sim_curr_data(23),
      O => p_0_in1_in(23)
    );
\deci_low.sim_curr_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(24),
      I3 => sim_wr,
      I4 => sim_curr_data(24),
      O => p_0_in1_in(24)
    );
\deci_low.sim_curr_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(25),
      I3 => sim_wr,
      I4 => sim_curr_data(25),
      O => p_0_in1_in(25)
    );
\deci_low.sim_curr_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(26),
      I3 => sim_wr,
      I4 => sim_curr_data(26),
      O => p_0_in1_in(26)
    );
\deci_low.sim_curr_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(27),
      I3 => sim_wr,
      I4 => sim_curr_data(27),
      O => p_0_in1_in(27)
    );
\deci_low.sim_curr_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(28),
      I3 => sim_wr,
      I4 => sim_curr_data(28),
      O => p_0_in1_in(28)
    );
\deci_low.sim_curr_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(29),
      I3 => sim_wr,
      I4 => sim_curr_data(29),
      O => p_0_in1_in(29)
    );
\deci_low.sim_curr_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(2),
      I3 => sim_wr,
      I4 => sim_curr_data(2),
      O => p_0_in1_in(2)
    );
\deci_low.sim_curr_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(30),
      I3 => sim_wr,
      I4 => sim_curr_data(30),
      O => p_0_in1_in(30)
    );
\deci_low.sim_curr_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(31),
      I3 => sim_wr,
      I4 => sim_curr_data(31),
      O => p_0_in1_in(31)
    );
\deci_low.sim_curr_data[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(0),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(32),
      O => p_0_in1_in(32)
    );
\deci_low.sim_curr_data[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(1),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(33),
      O => p_0_in1_in(33)
    );
\deci_low.sim_curr_data[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(2),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(34),
      O => p_0_in1_in(34)
    );
\deci_low.sim_curr_data[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(3),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(35),
      O => p_0_in1_in(35)
    );
\deci_low.sim_curr_data[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(4),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(36),
      O => p_0_in1_in(36)
    );
\deci_low.sim_curr_data[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(5),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(37),
      O => p_0_in1_in(37)
    );
\deci_low.sim_curr_data[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(6),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(38),
      O => p_0_in1_in(38)
    );
\deci_low.sim_curr_data[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(7),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(39),
      O => p_0_in1_in(39)
    );
\deci_low.sim_curr_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(3),
      I3 => sim_wr,
      I4 => sim_curr_data(3),
      O => p_0_in1_in(3)
    );
\deci_low.sim_curr_data[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(8),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(40),
      O => p_0_in1_in(40)
    );
\deci_low.sim_curr_data[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(9),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(41),
      O => p_0_in1_in(41)
    );
\deci_low.sim_curr_data[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(10),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(42),
      O => p_0_in1_in(42)
    );
\deci_low.sim_curr_data[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(11),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(43),
      O => p_0_in1_in(43)
    );
\deci_low.sim_curr_data[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(12),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(44),
      O => p_0_in1_in(44)
    );
\deci_low.sim_curr_data[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(13),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(45),
      O => p_0_in1_in(45)
    );
\deci_low.sim_curr_data[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(14),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(46),
      O => p_0_in1_in(46)
    );
\deci_low.sim_curr_data[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(15),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(47),
      O => p_0_in1_in(47)
    );
\deci_low.sim_curr_data[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(16),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(48),
      O => p_0_in1_in(48)
    );
\deci_low.sim_curr_data[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(17),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(49),
      O => p_0_in1_in(49)
    );
\deci_low.sim_curr_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(4),
      I3 => sim_wr,
      I4 => sim_curr_data(4),
      O => p_0_in1_in(4)
    );
\deci_low.sim_curr_data[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(18),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(50),
      O => p_0_in1_in(50)
    );
\deci_low.sim_curr_data[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(19),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(51),
      O => p_0_in1_in(51)
    );
\deci_low.sim_curr_data[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(20),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(52),
      O => p_0_in1_in(52)
    );
\deci_low.sim_curr_data[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(21),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(53),
      O => p_0_in1_in(53)
    );
\deci_low.sim_curr_data[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(22),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(54),
      O => p_0_in1_in(54)
    );
\deci_low.sim_curr_data[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(23),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(55),
      O => p_0_in1_in(55)
    );
\deci_low.sim_curr_data[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(24),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(56),
      O => p_0_in1_in(56)
    );
\deci_low.sim_curr_data[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(25),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(57),
      O => p_0_in1_in(57)
    );
\deci_low.sim_curr_data[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(26),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(58),
      O => p_0_in1_in(58)
    );
\deci_low.sim_curr_data[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(27),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(59),
      O => p_0_in1_in(59)
    );
\deci_low.sim_curr_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(5),
      I3 => sim_wr,
      I4 => sim_curr_data(5),
      O => p_0_in1_in(5)
    );
\deci_low.sim_curr_data[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(28),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(60),
      O => p_0_in1_in(60)
    );
\deci_low.sim_curr_data[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(29),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(61),
      O => p_0_in1_in(61)
    );
\deci_low.sim_curr_data[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(30),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(62),
      O => p_0_in1_in(62)
    );
\deci_low.sim_curr_data[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF0800"
    )
        port map (
      I0 => sim_data(31),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_count(0),
      I4 => sim_curr_data(63),
      O => p_0_in1_in(63)
    );
\deci_low.sim_curr_data[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(0),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(64),
      I4 => sim_count(1),
      O => p_0_in1_in(64)
    );
\deci_low.sim_curr_data[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(1),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(65),
      I4 => sim_count(1),
      O => p_0_in1_in(65)
    );
\deci_low.sim_curr_data[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(2),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(66),
      I4 => sim_count(1),
      O => p_0_in1_in(66)
    );
\deci_low.sim_curr_data[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(3),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(67),
      I4 => sim_count(1),
      O => p_0_in1_in(67)
    );
\deci_low.sim_curr_data[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(4),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(68),
      I4 => sim_count(1),
      O => p_0_in1_in(68)
    );
\deci_low.sim_curr_data[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(5),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(69),
      I4 => sim_count(1),
      O => p_0_in1_in(69)
    );
\deci_low.sim_curr_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(6),
      I3 => sim_wr,
      I4 => sim_curr_data(6),
      O => p_0_in1_in(6)
    );
\deci_low.sim_curr_data[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(6),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(70),
      I4 => sim_count(1),
      O => p_0_in1_in(70)
    );
\deci_low.sim_curr_data[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(7),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(71),
      I4 => sim_count(1),
      O => p_0_in1_in(71)
    );
\deci_low.sim_curr_data[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(8),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(72),
      I4 => sim_count(1),
      O => p_0_in1_in(72)
    );
\deci_low.sim_curr_data[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(9),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(73),
      I4 => sim_count(1),
      O => p_0_in1_in(73)
    );
\deci_low.sim_curr_data[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(10),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(74),
      I4 => sim_count(1),
      O => p_0_in1_in(74)
    );
\deci_low.sim_curr_data[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(11),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(75),
      I4 => sim_count(1),
      O => p_0_in1_in(75)
    );
\deci_low.sim_curr_data[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(12),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(76),
      I4 => sim_count(1),
      O => p_0_in1_in(76)
    );
\deci_low.sim_curr_data[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(13),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(77),
      I4 => sim_count(1),
      O => p_0_in1_in(77)
    );
\deci_low.sim_curr_data[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(14),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(78),
      I4 => sim_count(1),
      O => p_0_in1_in(78)
    );
\deci_low.sim_curr_data[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(15),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(79),
      I4 => sim_count(1),
      O => p_0_in1_in(79)
    );
\deci_low.sim_curr_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(7),
      I3 => sim_wr,
      I4 => sim_curr_data(7),
      O => p_0_in1_in(7)
    );
\deci_low.sim_curr_data[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(16),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(80),
      I4 => sim_count(1),
      O => p_0_in1_in(80)
    );
\deci_low.sim_curr_data[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(17),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(81),
      I4 => sim_count(1),
      O => p_0_in1_in(81)
    );
\deci_low.sim_curr_data[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(18),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(82),
      I4 => sim_count(1),
      O => p_0_in1_in(82)
    );
\deci_low.sim_curr_data[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(19),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(83),
      I4 => sim_count(1),
      O => p_0_in1_in(83)
    );
\deci_low.sim_curr_data[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(20),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(84),
      I4 => sim_count(1),
      O => p_0_in1_in(84)
    );
\deci_low.sim_curr_data[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(21),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(85),
      I4 => sim_count(1),
      O => p_0_in1_in(85)
    );
\deci_low.sim_curr_data[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(22),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(86),
      I4 => sim_count(1),
      O => p_0_in1_in(86)
    );
\deci_low.sim_curr_data[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(23),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(87),
      I4 => sim_count(1),
      O => p_0_in1_in(87)
    );
\deci_low.sim_curr_data[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(24),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(88),
      I4 => sim_count(1),
      O => p_0_in1_in(88)
    );
\deci_low.sim_curr_data[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(25),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(89),
      I4 => sim_count(1),
      O => p_0_in1_in(89)
    );
\deci_low.sim_curr_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(8),
      I3 => sim_wr,
      I4 => sim_curr_data(8),
      O => p_0_in1_in(8)
    );
\deci_low.sim_curr_data[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(26),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(90),
      I4 => sim_count(1),
      O => p_0_in1_in(90)
    );
\deci_low.sim_curr_data[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(27),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(91),
      I4 => sim_count(1),
      O => p_0_in1_in(91)
    );
\deci_low.sim_curr_data[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(28),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(92),
      I4 => sim_count(1),
      O => p_0_in1_in(92)
    );
\deci_low.sim_curr_data[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(29),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(93),
      I4 => sim_count(1),
      O => p_0_in1_in(93)
    );
\deci_low.sim_curr_data[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(30),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(94),
      I4 => sim_count(1),
      O => p_0_in1_in(94)
    );
\deci_low.sim_curr_data[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808CF00"
    )
        port map (
      I0 => sim_data(31),
      I1 => sim_wr,
      I2 => sim_count(0),
      I3 => sim_curr_data(95),
      I4 => sim_count(1),
      O => p_0_in1_in(95)
    );
\deci_low.sim_curr_data[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(0),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(96),
      I4 => sim_count(0),
      O => p_0_in1_in(96)
    );
\deci_low.sim_curr_data[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(1),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(97),
      I4 => sim_count(0),
      O => p_0_in1_in(97)
    );
\deci_low.sim_curr_data[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(2),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(98),
      I4 => sim_count(0),
      O => p_0_in1_in(98)
    );
\deci_low.sim_curr_data[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80CF00"
    )
        port map (
      I0 => sim_data(3),
      I1 => sim_wr,
      I2 => sim_count(1),
      I3 => sim_curr_data(99),
      I4 => sim_count(0),
      O => p_0_in1_in(99)
    );
\deci_low.sim_curr_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => sim_count(0),
      I1 => sim_count(1),
      I2 => sim_data(9),
      I3 => sim_wr,
      I4 => sim_curr_data(9),
      O => p_0_in1_in(9)
    );
\deci_low.sim_curr_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(0),
      Q => sim_curr_data(0),
      R => '0'
    );
\deci_low.sim_curr_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(100),
      Q => sim_curr_data(100),
      R => '0'
    );
\deci_low.sim_curr_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(101),
      Q => sim_curr_data(101),
      R => '0'
    );
\deci_low.sim_curr_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(102),
      Q => sim_curr_data(102),
      R => '0'
    );
\deci_low.sim_curr_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(103),
      Q => sim_curr_data(103),
      R => '0'
    );
\deci_low.sim_curr_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(104),
      Q => sim_curr_data(104),
      R => '0'
    );
\deci_low.sim_curr_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(105),
      Q => sim_curr_data(105),
      R => '0'
    );
\deci_low.sim_curr_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(106),
      Q => sim_curr_data(106),
      R => '0'
    );
\deci_low.sim_curr_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(107),
      Q => sim_curr_data(107),
      R => '0'
    );
\deci_low.sim_curr_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(108),
      Q => sim_curr_data(108),
      R => '0'
    );
\deci_low.sim_curr_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(109),
      Q => sim_curr_data(109),
      R => '0'
    );
\deci_low.sim_curr_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(10),
      Q => sim_curr_data(10),
      R => '0'
    );
\deci_low.sim_curr_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(110),
      Q => sim_curr_data(110),
      R => '0'
    );
\deci_low.sim_curr_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(111),
      Q => sim_curr_data(111),
      R => '0'
    );
\deci_low.sim_curr_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(112),
      Q => sim_curr_data(112),
      R => '0'
    );
\deci_low.sim_curr_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(113),
      Q => sim_curr_data(113),
      R => '0'
    );
\deci_low.sim_curr_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(114),
      Q => sim_curr_data(114),
      R => '0'
    );
\deci_low.sim_curr_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(115),
      Q => sim_curr_data(115),
      R => '0'
    );
\deci_low.sim_curr_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(116),
      Q => sim_curr_data(116),
      R => '0'
    );
\deci_low.sim_curr_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(117),
      Q => sim_curr_data(117),
      R => '0'
    );
\deci_low.sim_curr_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(118),
      Q => sim_curr_data(118),
      R => '0'
    );
\deci_low.sim_curr_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(119),
      Q => sim_curr_data(119),
      R => '0'
    );
\deci_low.sim_curr_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(11),
      Q => sim_curr_data(11),
      R => '0'
    );
\deci_low.sim_curr_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(120),
      Q => sim_curr_data(120),
      R => '0'
    );
\deci_low.sim_curr_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(121),
      Q => sim_curr_data(121),
      R => '0'
    );
\deci_low.sim_curr_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(122),
      Q => sim_curr_data(122),
      R => '0'
    );
\deci_low.sim_curr_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(123),
      Q => sim_curr_data(123),
      R => '0'
    );
\deci_low.sim_curr_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(124),
      Q => sim_curr_data(124),
      R => '0'
    );
\deci_low.sim_curr_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(125),
      Q => sim_curr_data(125),
      R => '0'
    );
\deci_low.sim_curr_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(126),
      Q => sim_curr_data(126),
      R => '0'
    );
\deci_low.sim_curr_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(127),
      Q => sim_curr_data(127),
      R => '0'
    );
\deci_low.sim_curr_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(12),
      Q => sim_curr_data(12),
      R => '0'
    );
\deci_low.sim_curr_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(13),
      Q => sim_curr_data(13),
      R => '0'
    );
\deci_low.sim_curr_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(14),
      Q => sim_curr_data(14),
      R => '0'
    );
\deci_low.sim_curr_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(15),
      Q => sim_curr_data(15),
      R => '0'
    );
\deci_low.sim_curr_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(16),
      Q => sim_curr_data(16),
      R => '0'
    );
\deci_low.sim_curr_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(17),
      Q => sim_curr_data(17),
      R => '0'
    );
\deci_low.sim_curr_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(18),
      Q => sim_curr_data(18),
      R => '0'
    );
\deci_low.sim_curr_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(19),
      Q => sim_curr_data(19),
      R => '0'
    );
\deci_low.sim_curr_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(1),
      Q => sim_curr_data(1),
      R => '0'
    );
\deci_low.sim_curr_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(20),
      Q => sim_curr_data(20),
      R => '0'
    );
\deci_low.sim_curr_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(21),
      Q => sim_curr_data(21),
      R => '0'
    );
\deci_low.sim_curr_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(22),
      Q => sim_curr_data(22),
      R => '0'
    );
\deci_low.sim_curr_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(23),
      Q => sim_curr_data(23),
      R => '0'
    );
\deci_low.sim_curr_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(24),
      Q => sim_curr_data(24),
      R => '0'
    );
\deci_low.sim_curr_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(25),
      Q => sim_curr_data(25),
      R => '0'
    );
\deci_low.sim_curr_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(26),
      Q => sim_curr_data(26),
      R => '0'
    );
\deci_low.sim_curr_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(27),
      Q => sim_curr_data(27),
      R => '0'
    );
\deci_low.sim_curr_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(28),
      Q => sim_curr_data(28),
      R => '0'
    );
\deci_low.sim_curr_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(29),
      Q => sim_curr_data(29),
      R => '0'
    );
\deci_low.sim_curr_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(2),
      Q => sim_curr_data(2),
      R => '0'
    );
\deci_low.sim_curr_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(30),
      Q => sim_curr_data(30),
      R => '0'
    );
\deci_low.sim_curr_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(31),
      Q => sim_curr_data(31),
      R => '0'
    );
\deci_low.sim_curr_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(32),
      Q => sim_curr_data(32),
      R => '0'
    );
\deci_low.sim_curr_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(33),
      Q => sim_curr_data(33),
      R => '0'
    );
\deci_low.sim_curr_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(34),
      Q => sim_curr_data(34),
      R => '0'
    );
\deci_low.sim_curr_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(35),
      Q => sim_curr_data(35),
      R => '0'
    );
\deci_low.sim_curr_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(36),
      Q => sim_curr_data(36),
      R => '0'
    );
\deci_low.sim_curr_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(37),
      Q => sim_curr_data(37),
      R => '0'
    );
\deci_low.sim_curr_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(38),
      Q => sim_curr_data(38),
      R => '0'
    );
\deci_low.sim_curr_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(39),
      Q => sim_curr_data(39),
      R => '0'
    );
\deci_low.sim_curr_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(3),
      Q => sim_curr_data(3),
      R => '0'
    );
\deci_low.sim_curr_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(40),
      Q => sim_curr_data(40),
      R => '0'
    );
\deci_low.sim_curr_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(41),
      Q => sim_curr_data(41),
      R => '0'
    );
\deci_low.sim_curr_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(42),
      Q => sim_curr_data(42),
      R => '0'
    );
\deci_low.sim_curr_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(43),
      Q => sim_curr_data(43),
      R => '0'
    );
\deci_low.sim_curr_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(44),
      Q => sim_curr_data(44),
      R => '0'
    );
\deci_low.sim_curr_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(45),
      Q => sim_curr_data(45),
      R => '0'
    );
\deci_low.sim_curr_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(46),
      Q => sim_curr_data(46),
      R => '0'
    );
\deci_low.sim_curr_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(47),
      Q => sim_curr_data(47),
      R => '0'
    );
\deci_low.sim_curr_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(48),
      Q => sim_curr_data(48),
      R => '0'
    );
\deci_low.sim_curr_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(49),
      Q => sim_curr_data(49),
      R => '0'
    );
\deci_low.sim_curr_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(4),
      Q => sim_curr_data(4),
      R => '0'
    );
\deci_low.sim_curr_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(50),
      Q => sim_curr_data(50),
      R => '0'
    );
\deci_low.sim_curr_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(51),
      Q => sim_curr_data(51),
      R => '0'
    );
\deci_low.sim_curr_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(52),
      Q => sim_curr_data(52),
      R => '0'
    );
\deci_low.sim_curr_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(53),
      Q => sim_curr_data(53),
      R => '0'
    );
\deci_low.sim_curr_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(54),
      Q => sim_curr_data(54),
      R => '0'
    );
\deci_low.sim_curr_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(55),
      Q => sim_curr_data(55),
      R => '0'
    );
\deci_low.sim_curr_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(56),
      Q => sim_curr_data(56),
      R => '0'
    );
\deci_low.sim_curr_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(57),
      Q => sim_curr_data(57),
      R => '0'
    );
\deci_low.sim_curr_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(58),
      Q => sim_curr_data(58),
      R => '0'
    );
\deci_low.sim_curr_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(59),
      Q => sim_curr_data(59),
      R => '0'
    );
\deci_low.sim_curr_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(5),
      Q => sim_curr_data(5),
      R => '0'
    );
\deci_low.sim_curr_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(60),
      Q => sim_curr_data(60),
      R => '0'
    );
\deci_low.sim_curr_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(61),
      Q => sim_curr_data(61),
      R => '0'
    );
\deci_low.sim_curr_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(62),
      Q => sim_curr_data(62),
      R => '0'
    );
\deci_low.sim_curr_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(63),
      Q => sim_curr_data(63),
      R => '0'
    );
\deci_low.sim_curr_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(64),
      Q => sim_curr_data(64),
      R => '0'
    );
\deci_low.sim_curr_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(65),
      Q => sim_curr_data(65),
      R => '0'
    );
\deci_low.sim_curr_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(66),
      Q => sim_curr_data(66),
      R => '0'
    );
\deci_low.sim_curr_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(67),
      Q => sim_curr_data(67),
      R => '0'
    );
\deci_low.sim_curr_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(68),
      Q => sim_curr_data(68),
      R => '0'
    );
\deci_low.sim_curr_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(69),
      Q => sim_curr_data(69),
      R => '0'
    );
\deci_low.sim_curr_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(6),
      Q => sim_curr_data(6),
      R => '0'
    );
\deci_low.sim_curr_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(70),
      Q => sim_curr_data(70),
      R => '0'
    );
\deci_low.sim_curr_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(71),
      Q => sim_curr_data(71),
      R => '0'
    );
\deci_low.sim_curr_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(72),
      Q => sim_curr_data(72),
      R => '0'
    );
\deci_low.sim_curr_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(73),
      Q => sim_curr_data(73),
      R => '0'
    );
\deci_low.sim_curr_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(74),
      Q => sim_curr_data(74),
      R => '0'
    );
\deci_low.sim_curr_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(75),
      Q => sim_curr_data(75),
      R => '0'
    );
\deci_low.sim_curr_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(76),
      Q => sim_curr_data(76),
      R => '0'
    );
\deci_low.sim_curr_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(77),
      Q => sim_curr_data(77),
      R => '0'
    );
\deci_low.sim_curr_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(78),
      Q => sim_curr_data(78),
      R => '0'
    );
\deci_low.sim_curr_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(79),
      Q => sim_curr_data(79),
      R => '0'
    );
\deci_low.sim_curr_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(7),
      Q => sim_curr_data(7),
      R => '0'
    );
\deci_low.sim_curr_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(80),
      Q => sim_curr_data(80),
      R => '0'
    );
\deci_low.sim_curr_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(81),
      Q => sim_curr_data(81),
      R => '0'
    );
\deci_low.sim_curr_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(82),
      Q => sim_curr_data(82),
      R => '0'
    );
\deci_low.sim_curr_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(83),
      Q => sim_curr_data(83),
      R => '0'
    );
\deci_low.sim_curr_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(84),
      Q => sim_curr_data(84),
      R => '0'
    );
\deci_low.sim_curr_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(85),
      Q => sim_curr_data(85),
      R => '0'
    );
\deci_low.sim_curr_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(86),
      Q => sim_curr_data(86),
      R => '0'
    );
\deci_low.sim_curr_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(87),
      Q => sim_curr_data(87),
      R => '0'
    );
\deci_low.sim_curr_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(88),
      Q => sim_curr_data(88),
      R => '0'
    );
\deci_low.sim_curr_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(89),
      Q => sim_curr_data(89),
      R => '0'
    );
\deci_low.sim_curr_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(8),
      Q => sim_curr_data(8),
      R => '0'
    );
\deci_low.sim_curr_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(90),
      Q => sim_curr_data(90),
      R => '0'
    );
\deci_low.sim_curr_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(91),
      Q => sim_curr_data(91),
      R => '0'
    );
\deci_low.sim_curr_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(92),
      Q => sim_curr_data(92),
      R => '0'
    );
\deci_low.sim_curr_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(93),
      Q => sim_curr_data(93),
      R => '0'
    );
\deci_low.sim_curr_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(94),
      Q => sim_curr_data(94),
      R => '0'
    );
\deci_low.sim_curr_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(95),
      Q => sim_curr_data(95),
      R => '0'
    );
\deci_low.sim_curr_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(96),
      Q => sim_curr_data(96),
      R => '0'
    );
\deci_low.sim_curr_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(97),
      Q => sim_curr_data(97),
      R => '0'
    );
\deci_low.sim_curr_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(98),
      Q => sim_curr_data(98),
      R => '0'
    );
\deci_low.sim_curr_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(99),
      Q => sim_curr_data(99),
      R => '0'
    );
\deci_low.sim_curr_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_resetn,
      D => p_0_in1_in(9),
      Q => sim_curr_data(9),
      R => '0'
    );
\deci_low.sim_curr_wr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => sim_wr,
      I1 => sim_resetn,
      I2 => sim_count(1),
      I3 => sim_count(0),
      O => \deci_low.sim_curr_wr_i_1_n_0\
    );
\deci_low.sim_curr_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => '1',
      D => \deci_low.sim_curr_wr_i_1_n_0\,
      Q => sim_curr_wr,
      R => '0'
    );
\deci_low.sim_in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(0),
      Q => sim_in_data(0),
      R => '0'
    );
\deci_low.sim_in_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(100),
      Q => sim_in_data(100),
      R => '0'
    );
\deci_low.sim_in_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(101),
      Q => sim_in_data(101),
      R => '0'
    );
\deci_low.sim_in_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(102),
      Q => sim_in_data(102),
      R => '0'
    );
\deci_low.sim_in_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(103),
      Q => sim_in_data(103),
      R => '0'
    );
\deci_low.sim_in_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(104),
      Q => sim_in_data(104),
      R => '0'
    );
\deci_low.sim_in_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(105),
      Q => sim_in_data(105),
      R => '0'
    );
\deci_low.sim_in_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(106),
      Q => sim_in_data(106),
      R => '0'
    );
\deci_low.sim_in_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(107),
      Q => sim_in_data(107),
      R => '0'
    );
\deci_low.sim_in_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(108),
      Q => sim_in_data(108),
      R => '0'
    );
\deci_low.sim_in_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(109),
      Q => sim_in_data(109),
      R => '0'
    );
\deci_low.sim_in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(10),
      Q => sim_in_data(10),
      R => '0'
    );
\deci_low.sim_in_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(110),
      Q => sim_in_data(110),
      R => '0'
    );
\deci_low.sim_in_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(111),
      Q => sim_in_data(111),
      R => '0'
    );
\deci_low.sim_in_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(112),
      Q => sim_in_data(112),
      R => '0'
    );
\deci_low.sim_in_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(113),
      Q => sim_in_data(113),
      R => '0'
    );
\deci_low.sim_in_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(114),
      Q => sim_in_data(114),
      R => '0'
    );
\deci_low.sim_in_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(115),
      Q => sim_in_data(115),
      R => '0'
    );
\deci_low.sim_in_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(116),
      Q => sim_in_data(116),
      R => '0'
    );
\deci_low.sim_in_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(117),
      Q => sim_in_data(117),
      R => '0'
    );
\deci_low.sim_in_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(118),
      Q => sim_in_data(118),
      R => '0'
    );
\deci_low.sim_in_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(119),
      Q => sim_in_data(119),
      R => '0'
    );
\deci_low.sim_in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(11),
      Q => sim_in_data(11),
      R => '0'
    );
\deci_low.sim_in_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(120),
      Q => sim_in_data(120),
      R => '0'
    );
\deci_low.sim_in_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(121),
      Q => sim_in_data(121),
      R => '0'
    );
\deci_low.sim_in_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(122),
      Q => sim_in_data(122),
      R => '0'
    );
\deci_low.sim_in_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(123),
      Q => sim_in_data(123),
      R => '0'
    );
\deci_low.sim_in_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(124),
      Q => sim_in_data(124),
      R => '0'
    );
\deci_low.sim_in_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(125),
      Q => sim_in_data(125),
      R => '0'
    );
\deci_low.sim_in_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(126),
      Q => sim_in_data(126),
      R => '0'
    );
\deci_low.sim_in_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(127),
      Q => sim_in_data(127),
      R => '0'
    );
\deci_low.sim_in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(12),
      Q => sim_in_data(12),
      R => '0'
    );
\deci_low.sim_in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(13),
      Q => sim_in_data(13),
      R => '0'
    );
\deci_low.sim_in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(14),
      Q => sim_in_data(14),
      R => '0'
    );
\deci_low.sim_in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(15),
      Q => sim_in_data(15),
      R => '0'
    );
\deci_low.sim_in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(16),
      Q => sim_in_data(16),
      R => '0'
    );
\deci_low.sim_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(17),
      Q => sim_in_data(17),
      R => '0'
    );
\deci_low.sim_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(18),
      Q => sim_in_data(18),
      R => '0'
    );
\deci_low.sim_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(19),
      Q => sim_in_data(19),
      R => '0'
    );
\deci_low.sim_in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(1),
      Q => sim_in_data(1),
      R => '0'
    );
\deci_low.sim_in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(20),
      Q => sim_in_data(20),
      R => '0'
    );
\deci_low.sim_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(21),
      Q => sim_in_data(21),
      R => '0'
    );
\deci_low.sim_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(22),
      Q => sim_in_data(22),
      R => '0'
    );
\deci_low.sim_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(23),
      Q => sim_in_data(23),
      R => '0'
    );
\deci_low.sim_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(24),
      Q => sim_in_data(24),
      R => '0'
    );
\deci_low.sim_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(25),
      Q => sim_in_data(25),
      R => '0'
    );
\deci_low.sim_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(26),
      Q => sim_in_data(26),
      R => '0'
    );
\deci_low.sim_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(27),
      Q => sim_in_data(27),
      R => '0'
    );
\deci_low.sim_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(28),
      Q => sim_in_data(28),
      R => '0'
    );
\deci_low.sim_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(29),
      Q => sim_in_data(29),
      R => '0'
    );
\deci_low.sim_in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(2),
      Q => sim_in_data(2),
      R => '0'
    );
\deci_low.sim_in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(30),
      Q => sim_in_data(30),
      R => '0'
    );
\deci_low.sim_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(31),
      Q => sim_in_data(31),
      R => '0'
    );
\deci_low.sim_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(32),
      Q => sim_in_data(32),
      R => '0'
    );
\deci_low.sim_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(33),
      Q => sim_in_data(33),
      R => '0'
    );
\deci_low.sim_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(34),
      Q => sim_in_data(34),
      R => '0'
    );
\deci_low.sim_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(35),
      Q => sim_in_data(35),
      R => '0'
    );
\deci_low.sim_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(36),
      Q => sim_in_data(36),
      R => '0'
    );
\deci_low.sim_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(37),
      Q => sim_in_data(37),
      R => '0'
    );
\deci_low.sim_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(38),
      Q => sim_in_data(38),
      R => '0'
    );
\deci_low.sim_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(39),
      Q => sim_in_data(39),
      R => '0'
    );
\deci_low.sim_in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(3),
      Q => sim_in_data(3),
      R => '0'
    );
\deci_low.sim_in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(40),
      Q => sim_in_data(40),
      R => '0'
    );
\deci_low.sim_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(41),
      Q => sim_in_data(41),
      R => '0'
    );
\deci_low.sim_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(42),
      Q => sim_in_data(42),
      R => '0'
    );
\deci_low.sim_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(43),
      Q => sim_in_data(43),
      R => '0'
    );
\deci_low.sim_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(44),
      Q => sim_in_data(44),
      R => '0'
    );
\deci_low.sim_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(45),
      Q => sim_in_data(45),
      R => '0'
    );
\deci_low.sim_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(46),
      Q => sim_in_data(46),
      R => '0'
    );
\deci_low.sim_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(47),
      Q => sim_in_data(47),
      R => '0'
    );
\deci_low.sim_in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(48),
      Q => sim_in_data(48),
      R => '0'
    );
\deci_low.sim_in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(49),
      Q => sim_in_data(49),
      R => '0'
    );
\deci_low.sim_in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(4),
      Q => sim_in_data(4),
      R => '0'
    );
\deci_low.sim_in_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(50),
      Q => sim_in_data(50),
      R => '0'
    );
\deci_low.sim_in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(51),
      Q => sim_in_data(51),
      R => '0'
    );
\deci_low.sim_in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(52),
      Q => sim_in_data(52),
      R => '0'
    );
\deci_low.sim_in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(53),
      Q => sim_in_data(53),
      R => '0'
    );
\deci_low.sim_in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(54),
      Q => sim_in_data(54),
      R => '0'
    );
\deci_low.sim_in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(55),
      Q => sim_in_data(55),
      R => '0'
    );
\deci_low.sim_in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(56),
      Q => sim_in_data(56),
      R => '0'
    );
\deci_low.sim_in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(57),
      Q => sim_in_data(57),
      R => '0'
    );
\deci_low.sim_in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(58),
      Q => sim_in_data(58),
      R => '0'
    );
\deci_low.sim_in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(59),
      Q => sim_in_data(59),
      R => '0'
    );
\deci_low.sim_in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(5),
      Q => sim_in_data(5),
      R => '0'
    );
\deci_low.sim_in_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(60),
      Q => sim_in_data(60),
      R => '0'
    );
\deci_low.sim_in_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(61),
      Q => sim_in_data(61),
      R => '0'
    );
\deci_low.sim_in_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(62),
      Q => sim_in_data(62),
      R => '0'
    );
\deci_low.sim_in_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(63),
      Q => sim_in_data(63),
      R => '0'
    );
\deci_low.sim_in_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(64),
      Q => sim_in_data(64),
      R => '0'
    );
\deci_low.sim_in_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(65),
      Q => sim_in_data(65),
      R => '0'
    );
\deci_low.sim_in_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(66),
      Q => sim_in_data(66),
      R => '0'
    );
\deci_low.sim_in_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(67),
      Q => sim_in_data(67),
      R => '0'
    );
\deci_low.sim_in_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(68),
      Q => sim_in_data(68),
      R => '0'
    );
\deci_low.sim_in_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(69),
      Q => sim_in_data(69),
      R => '0'
    );
\deci_low.sim_in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(6),
      Q => sim_in_data(6),
      R => '0'
    );
\deci_low.sim_in_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(70),
      Q => sim_in_data(70),
      R => '0'
    );
\deci_low.sim_in_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(71),
      Q => sim_in_data(71),
      R => '0'
    );
\deci_low.sim_in_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(72),
      Q => sim_in_data(72),
      R => '0'
    );
\deci_low.sim_in_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(73),
      Q => sim_in_data(73),
      R => '0'
    );
\deci_low.sim_in_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(74),
      Q => sim_in_data(74),
      R => '0'
    );
\deci_low.sim_in_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(75),
      Q => sim_in_data(75),
      R => '0'
    );
\deci_low.sim_in_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(76),
      Q => sim_in_data(76),
      R => '0'
    );
\deci_low.sim_in_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(77),
      Q => sim_in_data(77),
      R => '0'
    );
\deci_low.sim_in_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(78),
      Q => sim_in_data(78),
      R => '0'
    );
\deci_low.sim_in_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(79),
      Q => sim_in_data(79),
      R => '0'
    );
\deci_low.sim_in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(7),
      Q => sim_in_data(7),
      R => '0'
    );
\deci_low.sim_in_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(80),
      Q => sim_in_data(80),
      R => '0'
    );
\deci_low.sim_in_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(81),
      Q => sim_in_data(81),
      R => '0'
    );
\deci_low.sim_in_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(82),
      Q => sim_in_data(82),
      R => '0'
    );
\deci_low.sim_in_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(83),
      Q => sim_in_data(83),
      R => '0'
    );
\deci_low.sim_in_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(84),
      Q => sim_in_data(84),
      R => '0'
    );
\deci_low.sim_in_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(85),
      Q => sim_in_data(85),
      R => '0'
    );
\deci_low.sim_in_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(86),
      Q => sim_in_data(86),
      R => '0'
    );
\deci_low.sim_in_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(87),
      Q => sim_in_data(87),
      R => '0'
    );
\deci_low.sim_in_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(88),
      Q => sim_in_data(88),
      R => '0'
    );
\deci_low.sim_in_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(89),
      Q => sim_in_data(89),
      R => '0'
    );
\deci_low.sim_in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(8),
      Q => sim_in_data(8),
      R => '0'
    );
\deci_low.sim_in_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(90),
      Q => sim_in_data(90),
      R => '0'
    );
\deci_low.sim_in_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(91),
      Q => sim_in_data(91),
      R => '0'
    );
\deci_low.sim_in_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(92),
      Q => sim_in_data(92),
      R => '0'
    );
\deci_low.sim_in_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(93),
      Q => sim_in_data(93),
      R => '0'
    );
\deci_low.sim_in_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(94),
      Q => sim_in_data(94),
      R => '0'
    );
\deci_low.sim_in_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(95),
      Q => sim_in_data(95),
      R => '0'
    );
\deci_low.sim_in_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(96),
      Q => sim_in_data(96),
      R => '0'
    );
\deci_low.sim_in_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(97),
      Q => sim_in_data(97),
      R => '0'
    );
\deci_low.sim_in_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(98),
      Q => sim_in_data(98),
      R => '0'
    );
\deci_low.sim_in_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(99),
      Q => sim_in_data(99),
      R => '0'
    );
\deci_low.sim_in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_wr,
      D => sim_curr_data(9),
      Q => sim_in_data(9),
      R => '0'
    );
\deci_low.sim_rd_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \deci_low.mux_active_i_2_n_0\,
      I1 => \^sim_active\,
      I2 => adc_active,
      O => \deci_low.sim_rd_i_1_n_0\
    );
\deci_low.sim_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.sim_rd_i_1_n_0\,
      Q => sim_rd,
      R => '0'
    );
\deci_low.sim_wr_E_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sim_curr_wr,
      O => \deci_low.sim_wr_E_i_1_n_0\
    );
\deci_low.sim_wr_E_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sim_channel(0),
      I1 => sim_channel(1),
      O => \deci_low.sim_wr_E_i_2_n_0\
    );
\deci_low.sim_wr_E_reg\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => '1',
      D => \deci_low.sim_wr_E_i_2_n_0\,
      Q => sim_wr_E,
      R => \deci_low.sim_wr_E_i_1_n_0\
    );
\deci_low.sim_wr_N_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sim_channel(0),
      I1 => sim_channel(1),
      O => \deci_low.sim_wr_N_i_1_n_0\
    );
\deci_low.sim_wr_N_reg\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => '1',
      D => \deci_low.sim_wr_N_i_1_n_0\,
      Q => sim_wr_N,
      R => \deci_low.sim_wr_E_i_1_n_0\
    );
\deci_low.sim_wr_W_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sim_channel(1),
      I1 => sim_channel(0),
      O => \deci_low.sim_wr_W_i_1_n_0\
    );
\deci_low.sim_wr_W_reg\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => '1',
      D => \deci_low.sim_wr_W_i_1_n_0\,
      Q => sim_wr_W,
      R => \deci_low.sim_wr_E_i_1_n_0\
    );
\deci_low.stop_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \deci_low.mux_active_i_2_n_0\,
      I1 => \^sim_active\,
      I2 => adc_active,
      O => \deci_low.stop_i_1_n_0\
    );
\deci_low.stop_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.stop_i_1_n_0\,
      Q => \^stop\,
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
fifo_sim_E_i: component ps_deci_low_0_0_fifo_sim
     port map (
      din(127 downto 0) => sim_in_data(127 downto 0),
      dout(127 downto 114) => sim_E7(13 downto 0),
      dout(113 downto 112) => sim_out_E(113 downto 112),
      dout(111 downto 98) => sim_E6(13 downto 0),
      dout(97 downto 96) => sim_out_E(97 downto 96),
      dout(95 downto 82) => sim_E5(13 downto 0),
      dout(81 downto 80) => sim_out_E(81 downto 80),
      dout(79 downto 66) => sim_E4(13 downto 0),
      dout(65 downto 64) => sim_out_E(65 downto 64),
      dout(63 downto 50) => sim_E3(13 downto 0),
      dout(49 downto 48) => sim_out_E(49 downto 48),
      dout(47 downto 34) => sim_E2(13 downto 0),
      dout(33 downto 32) => sim_out_E(33 downto 32),
      dout(31 downto 18) => sim_E1(13 downto 0),
      dout(17 downto 16) => sim_out_E(17 downto 16),
      dout(15 downto 2) => sim_E0(13 downto 0),
      dout(1 downto 0) => sim_out_E(1 downto 0),
      empty => sim_empty_E,
      full => NLW_fifo_sim_E_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => sim_rd,
      rd_rst_busy => NLW_fifo_sim_E_i_rd_rst_busy_UNCONNECTED,
      rst => fifo_sim_N_i_i_1_n_0,
      wr_clk => sim_clk,
      wr_en => sim_wr_E,
      wr_rst_busy => NLW_fifo_sim_E_i_wr_rst_busy_UNCONNECTED
    );
fifo_sim_N_i: component ps_deci_low_0_0_fifo_sim
     port map (
      din(127 downto 0) => sim_in_data(127 downto 0),
      dout(127 downto 114) => sim_N7(13 downto 0),
      dout(113 downto 112) => sim_out_N(113 downto 112),
      dout(111 downto 98) => sim_N6(13 downto 0),
      dout(97 downto 96) => sim_out_N(97 downto 96),
      dout(95 downto 82) => sim_N5(13 downto 0),
      dout(81 downto 80) => sim_out_N(81 downto 80),
      dout(79 downto 66) => sim_N4(13 downto 0),
      dout(65 downto 64) => sim_out_N(65 downto 64),
      dout(63 downto 50) => sim_N3(13 downto 0),
      dout(49 downto 48) => sim_out_N(49 downto 48),
      dout(47 downto 34) => sim_N2(13 downto 0),
      dout(33 downto 32) => sim_out_N(33 downto 32),
      dout(31 downto 18) => sim_N1(13 downto 0),
      dout(17 downto 16) => sim_out_N(17 downto 16),
      dout(15 downto 2) => sim_N0(13 downto 0),
      dout(1 downto 0) => sim_out_N(1 downto 0),
      empty => sim_empty_N,
      full => NLW_fifo_sim_N_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => sim_rd,
      rd_rst_busy => NLW_fifo_sim_N_i_rd_rst_busy_UNCONNECTED,
      rst => fifo_sim_N_i_i_1_n_0,
      wr_clk => sim_clk,
      wr_en => sim_wr_N,
      wr_rst_busy => NLW_fifo_sim_N_i_wr_rst_busy_UNCONNECTED
    );
fifo_sim_N_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sim_resetn,
      O => fifo_sim_N_i_i_1_n_0
    );
fifo_sim_W_i: component ps_deci_low_0_0_fifo_sim_HD1
     port map (
      din(127 downto 0) => sim_in_data(127 downto 0),
      dout(127 downto 114) => sim_W7(13 downto 0),
      dout(113 downto 112) => sim_out_W(113 downto 112),
      dout(111 downto 98) => sim_W6(13 downto 0),
      dout(97 downto 96) => sim_out_W(97 downto 96),
      dout(95 downto 82) => sim_W5(13 downto 0),
      dout(81 downto 80) => sim_out_W(81 downto 80),
      dout(79 downto 66) => sim_W4(13 downto 0),
      dout(65 downto 64) => sim_out_W(65 downto 64),
      dout(63 downto 50) => sim_W3(13 downto 0),
      dout(49 downto 48) => sim_out_W(49 downto 48),
      dout(47 downto 34) => sim_W2(13 downto 0),
      dout(33 downto 32) => sim_out_W(33 downto 32),
      dout(31 downto 18) => sim_W1(13 downto 0),
      dout(17 downto 16) => sim_out_W(17 downto 16),
      dout(15 downto 2) => sim_W0(13 downto 0),
      dout(1 downto 0) => sim_out_W(1 downto 0),
      empty => sim_empty_W,
      full => NLW_fifo_sim_W_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => sim_rd,
      rd_rst_busy => NLW_fifo_sim_W_i_rd_rst_busy_UNCONNECTED,
      rst => fifo_sim_N_i_i_1_n_0,
      wr_clk => sim_clk,
      wr_en => sim_wr_W,
      wr_rst_busy => NLW_fifo_sim_W_i_wr_rst_busy_UNCONNECTED
    );
fir_E_i: component ps_deci_low_0_0_fir_deci_low
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(31) => NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 17) => dE(13 downto 0),
      m_axis_data_tdata(16 downto 0) => NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_E,
      s_axis_data_tdata(127 downto 0) => mux_E(127 downto 0),
      s_axis_data_tready => NLW_fir_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
fir_N_i: component ps_deci_low_0_0_fir_deci_low
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(31) => NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 17) => dN(13 downto 0),
      m_axis_data_tdata(16 downto 0) => NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_N,
      s_axis_data_tdata(127 downto 0) => mux_N(127 downto 0),
      s_axis_data_tready => NLW_fir_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
fir_W_i: component ps_deci_low_0_0_fir_deci_low_HD2
     port map (
      aclk => clk,
      aresetn => resetn,
      m_axis_data_tdata(31) => NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 17) => dW(13 downto 0),
      m_axis_data_tdata(16 downto 0) => NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED(16 downto 0),
      m_axis_data_tvalid => valid_W,
      s_axis_data_tdata(127 downto 0) => mux_W(127 downto 0),
      s_axis_data_tready => NLW_fir_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
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
      s_axis_data_tdata(127 downto 0) => mux_E(127 downto 0),
      s_axis_data_tready => NLW_fir_deci_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
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
      s_axis_data_tdata(127 downto 0) => mux_N(127 downto 0),
      s_axis_data_tready => NLW_fir_deci_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
fir_deci_W_i: component ps_deci_low_0_0_fir_raw_deci_HD3
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
      s_axis_data_tdata(127 downto 0) => mux_W(127 downto 0),
      s_axis_data_tready => NLW_fir_deci_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^sim_active\
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => active_1
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => active_2
    );
ila_2_i: component ps_deci_low_0_0_ila_2
     port map (
      clk => clk,
      probe0(0) => adc_active,
      probe1(0) => sim_start,
      probe10(13 downto 0) => sim_N1(13 downto 0),
      probe11(13 downto 0) => sim_N2(13 downto 0),
      probe12(13 downto 0) => sim_N3(13 downto 0),
      probe13(13 downto 0) => sim_N4(13 downto 0),
      probe14(13 downto 0) => sim_N5(13 downto 0),
      probe15(13 downto 0) => sim_N6(13 downto 0),
      probe16(13 downto 0) => sim_N7(13 downto 0),
      probe17(13 downto 0) => sim_E0(13 downto 0),
      probe18(13 downto 0) => sim_E1(13 downto 0),
      probe19(13 downto 0) => sim_E2(13 downto 0),
      probe2(0) => \^sim_active\,
      probe20(13 downto 0) => sim_E3(13 downto 0),
      probe21(13 downto 0) => sim_E4(13 downto 0),
      probe22(13 downto 0) => sim_E5(13 downto 0),
      probe23(13 downto 0) => sim_E6(13 downto 0),
      probe24(13 downto 0) => sim_E7(13 downto 0),
      probe25(13 downto 0) => sim_W0(13 downto 0),
      probe26(13 downto 0) => sim_W1(13 downto 0),
      probe27(13 downto 0) => sim_W2(13 downto 0),
      probe28(13 downto 0) => sim_W3(13 downto 0),
      probe29(13 downto 0) => sim_W4(13 downto 0),
      probe3(0) => sim_empty_N,
      probe30(13 downto 0) => sim_W5(13 downto 0),
      probe31(13 downto 0) => sim_W6(13 downto 0),
      probe32(13 downto 0) => sim_W7(13 downto 0),
      probe4(0) => sim_empty_E,
      probe5(0) => sim_empty_W,
      probe6(0) => sim_rd,
      probe7(0) => \^stop\,
      probe8(0) => mux_active,
      probe9(13 downto 0) => sim_N0(13 downto 0)
    );
ila_5_i: component ps_deci_low_0_0_ila_5
     port map (
      clk => sim_clk,
      probe0(0) => sim_resetn,
      probe1(31 downto 0) => sim_data(31 downto 0),
      probe2(1 downto 0) => sim_channel(1 downto 0),
      probe3(0) => sim_wr_N,
      probe4(0) => sim_wr_E,
      probe5(0) => sim_wr_W,
      probe6(127 downto 0) => sim_in_data(127 downto 0),
      probe7(1 downto 0) => sim_count(1 downto 0),
      probe8(0) => sim_curr_wr,
      probe9(127 downto 0) => sim_curr_data(127 downto 0)
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
    sim_start : in STD_LOGIC;
    adc_active : in STD_LOGIC;
    sim_active : out STD_LOGIC;
    stop : out STD_LOGIC;
    sim_clk : in STD_LOGIC;
    sim_resetn : in STD_LOGIC;
    sim_wr : in STD_LOGIC;
    sim_channel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute X_INTERFACE_INFO of sim_clk : signal is "xilinx.com:signal:clock:1.0 sim_clk CLK";
  attribute X_INTERFACE_MODE of sim_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sim_clk : signal is "XIL_INTERFACENAME sim_clk, ASSOCIATED_RESET sim_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sim_resetn : signal is "xilinx.com:signal:reset:1.0 sim_resetn RST";
  attribute X_INTERFACE_MODE of sim_resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sim_resetn : signal is "XIL_INTERFACENAME sim_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_deci_low_0_0_deci_low
     port map (
      adc_active => adc_active,
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
      resetn => resetn,
      sim_active => sim_active,
      sim_channel(1 downto 0) => sim_channel(1 downto 0),
      sim_clk => sim_clk,
      sim_data(31 downto 0) => sim_data(31 downto 0),
      sim_resetn => sim_resetn,
      sim_start => sim_start,
      sim_wr => sim_wr,
      stop => stop
    );
end STRUCTURE;
